prompt --application/pages/page_02008
begin
--   Manifest
--     PAGE: 02008
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
 p_id=>2008
,p_name=>'rptRecruitmentOpenings'
,p_step_title=>'Listing Recruitment Openings'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3297885541186705980)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(142628075453158813)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10460765779079194647)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3235622455884548092)
,p_plug_name=>'Listing of Positions with Openings'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.ID as ID,',
'(',
'select org_structure',
'from hr_rcm_staff_requisition x WHERE x.ID= a.hr_req_number) as Req_details,',
'    a.position_id,',
'    a.APPLICATION_START as APPLICATION_START,',
'    a.APPLICATION_END as APPLICATION_END,',
'    a.EXPECTED_SHORT_LIST as EXPECTED_SHORT_LIST,',
'    a.APPLICANT_TYPE as APPLICANT_TYPE,',
'    a.SEGMENT1 as SEGMENT1,',
'    a.SEGMENT2 as SEGMENT2,',
'    a.SEGMENT_EFFECT1 as SEGMENT_EFFECT1,',
'    a.SEGMENT_EFFECT2 as SEGMENT_EFFECT2,',
'    a.SEGMENT_NO1 as SEGMENT_NO1,',
'    a.SEGMENT_NO2 as SEGMENT_NO2,',
'    (select count(1) from hr_apl_jobrequest x where x.jobopening_id = a.id and upper(pkg_global_fnts.status_descript(x.STATUS)) = ''ACCEPTANCE SHORT LIST'') Actual_short_list',
' from HR_HCF_JOBOPENING  a ',
'  where exists ( ',
'          SELECT 1',
'          FROM VW_USERACCESS e JOIN HR_HCF_ORGSTRUCTUREHD f ON e.ORG_ID = f.ORG_ID ',
'          JOIN HR_HCF_ORGSTRUCTUREDTL G ON F.ID = G.ORG_STRUCTURE_ID',
'          JOIN HR_HCF_POSITION W ON W.ORGDTL_ID=g.ID',
'          WHERE a.position_id=w.id               ',
'          )',
''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3235622357032548092)
,p_name=>'Listing of Positions with Openings'
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
,p_detail_link=>'f?p=&APP_ID.:1395:&SESSION.::&DEBUG.:1395:P1395_ID,P1395_NAVIGATION:#ID#,2008'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(3279327210431677335)
,p_owner=>'PPLERP'
,p_internal_uid=>111208949772756608
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3300987956633915368)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3300987157901915364)
,p_db_column_name=>'APPLICATION_START'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Short List Start'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'APPLICATION_START'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3300986741510915363)
,p_db_column_name=>'APPLICATION_END'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Short List  End'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'APPLICATION_END'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3300986337552915363)
,p_db_column_name=>'EXPECTED_SHORT_LIST'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Req. Short List'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'EXPECTED_SHORT_LIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3300985958290915363)
,p_db_column_name=>'APPLICANT_TYPE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Applicant Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'APPLICANT_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3300985554615915361)
,p_db_column_name=>'SEGMENT1'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Segment1'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SEGMENT1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3300985148588915361)
,p_db_column_name=>'SEGMENT2'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Segment2'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SEGMENT2'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3300984714175915361)
,p_db_column_name=>'SEGMENT_EFFECT1'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Segment Effect1'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'SEGMENT_EFFECT1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3300984403665915361)
,p_db_column_name=>'SEGMENT_EFFECT2'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Segment Effect2'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'SEGMENT_EFFECT2'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3300983931118915359)
,p_db_column_name=>'SEGMENT_NO1'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Segment No1'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'SEGMENT_NO1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3300983530364915359)
,p_db_column_name=>'SEGMENT_NO2'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Segment No2'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'SEGMENT_NO2'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3255384517831795094)
,p_db_column_name=>'REQ_DETAILS'
,p_display_order=>44
,p_column_identifier=>'AA'
,p_column_label=>'Unit Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3255384405533795093)
,p_db_column_name=>'POSITION_ID'
,p_display_order=>54
,p_column_identifier=>'AB'
,p_column_label=>'Position'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3326449683329652825)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2687945484822273309)
,p_db_column_name=>'ACTUAL_SHORT_LIST'
,p_display_order=>64
,p_column_identifier=>'AC'
,p_column_label=>'Actual Short List'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3235619565186545832)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'458529'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'REQ_DETAILS:APPLICATION_START:POSITION_ID:APPLICANT_TYPE:APPLICATION_END:EXPECTED_SHORT_LIST:ACTUAL_SHORT_LIST'
,p_sort_column_1=>'APPLICATION_START'
,p_sort_direction_1=>'DESC'
,p_break_on=>'REQ_DETAILS:APPLICATION_START:0:0:0:0'
,p_break_enabled_on=>'REQ_DETAILS:APPLICATION_START:0:0:0:0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3300977538464915350)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(142628075453158813)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3303705436697614984)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(142628075453158813)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1395:&SESSION.::&DEBUG.:RP,1395::'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp.component_end;
end;
/
