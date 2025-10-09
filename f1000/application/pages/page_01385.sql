prompt --application/pages/page_01385
begin
--   Manifest
--     PAGE: 01385
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
 p_id=>1385
,p_name=>'rptWorkFlowConfig'
,p_step_title=>'Listing of WorkFlow Configuration'
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
 p_id=>wwv_flow_imp.id(697658091504464729)
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
 p_id=>wwv_flow_imp.id(3742760890668477393)
,p_plug_name=>'Listing of  Workflow Configuration'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'   m."APP_MODULE_ID" "APP_MODULE_ID", ',
'   m."STAGE_ID" "STAGE_ID", ',
'   m."STAGE_CODE" "STAGE_CODE", ',
'   m."STAGE_NAME" "STAGE_NAME", ',
'   m."PRIORITY" "PRIORITY", ',
'   m."START_DATE",',
'   m."END_DATE",',
'   m."LAST_UPDATED_BY" "LAST_UPDATED_BY", ',
'   m."LAST_UPDATE_DATE" "LAST_UPDATE_DATE", ',
'   m."CREATED_BY" "CREATED_BY", ',
'   m."CREATION_DATE" "CREATION_DATE"',
'FROM "TBLWORKFLOWSTAGELIST" m',
'--WHERE EXISTS (SELECT 1',
'--              FROM APEX_APPLICATION_PAGES Q left outer JOIN TBLWORKFLOWDTL N ON Q.PAGE_ID=N.WEBPAGE_ID',
'--              WHERE  M.STAGE_ID=N.STAGE_ID',
'--              AND APPLICATION_ID=:APP_ID',
'--              )',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3742760787396477393)
,p_name=>'Listing of  Workflow Configuration'
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
,p_detail_link=>'f?p=&APP_ID.:1386:&SESSION.::&DEBUG.::P1386_STAGE_ID:#STAGE_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PUR_INV'
,p_internal_uid=>131762307432268107
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3832671424774180703)
,p_db_column_name=>'STAGE_ID'
,p_display_order=>1
,p_column_identifier=>'B'
,p_column_label=>'Edit'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'STAGE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3832671073520180701)
,p_db_column_name=>'STAGE_CODE'
,p_display_order=>2
,p_column_identifier=>'C'
,p_column_label=>'Work Flow Code'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'STAGE_CODE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3832670639263180701)
,p_db_column_name=>'STAGE_NAME'
,p_display_order=>3
,p_column_identifier=>'D'
,p_column_label=>'Workflow Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'STAGE_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3832670240092180700)
,p_db_column_name=>'PRIORITY'
,p_display_order=>4
,p_column_identifier=>'E'
,p_column_label=>'Priority'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PRIORITY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3832669861475180700)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>7
,p_column_identifier=>'H'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_UPDATED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3832669458968180699)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>8
,p_column_identifier=>'I'
,p_column_label=>'Last Update Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_UPDATE_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3832669086804180699)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>9
,p_column_identifier=>'J'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CREATED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3832668673161180698)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>10
,p_column_identifier=>'K'
,p_column_label=>'Creation Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'CREATION_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3832671859546180705)
,p_db_column_name=>'APP_MODULE_ID'
,p_display_order=>11
,p_column_identifier=>'A'
,p_column_label=>'Application Module'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'APP_MODULE_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3807038861483314393)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3832668269737180697)
,p_db_column_name=>'START_DATE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'START_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3832667873344180697)
,p_db_column_name=>'END_DATE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'END_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3742759389976477181)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'418556'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>200
,p_report_columns=>'APP_MODULE_ID:STAGE_CODE:STAGE_NAME:PRIORITY:IN_USE:START_STAGE:LAST_UPDATED_BY:LAST_UPDATE_DATE::START_DATE:END_DATE'
,p_break_on=>'APP_MODULE_ID:0:0:0:0:0'
,p_break_enabled_on=>'APP_MODULE_ID:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3832666613040180693)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3742760890668477393)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3832667013802180696)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3742760890668477393)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1386:&SESSION.::&DEBUG.:1386::'
,p_security_scheme=>wwv_flow_imp.id(3807019444763118136)
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(3832666241214180691)
,p_computation_sequence=>1
,p_computation_item=>'P1386_STAGE_ID'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_compute_when=>'CREATE'
,p_compute_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_imp.component_end;
end;
/
