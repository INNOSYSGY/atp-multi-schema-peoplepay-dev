prompt --application/pages/page_04050
begin
--   Manifest
--     PAGE: 04050
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
 p_id=>4050
,p_name=>'rptSHIncident'
,p_step_title=>'Listing of Incidents'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3170024634159335062)
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3160470811777304806)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10460765779079194647)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3284902061408262512)
,p_plug_name=>'<b>Listing of Incidents </b>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct "ID", ',
'"DESCRIPTION",',
'"INCIDENT_TYPE",',
'"INCIDENT_DATE",',
'"INCIDENT_LOCATION",',
'"INCIDENT_CATEGORY",',
'created_by,',
'created_on,',
'updated_by,',
'updated_on,',
'verified_by,',
'verified_date',
'from HR_HS_INCIDENT',
'where org_id=:APP_ORG_ID',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3284902510565262512)
,p_name=>'Report 1'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
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
,p_owner=>'SKOTHAPALLY'
,p_internal_uid=>204795420355410691
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3164296787969658055)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:4051:&SESSION.::&DEBUG.:RP,4051:P4051_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3164296411663658055)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>21
,p_column_identifier=>'B'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3164297157781658056)
,p_db_column_name=>'INCIDENT_CATEGORY'
,p_display_order=>31
,p_column_identifier=>'G'
,p_column_label=>'Incident category'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3164296000397658054)
,p_db_column_name=>'INCIDENT_DATE'
,p_display_order=>41
,p_column_identifier=>'D'
,p_column_label=>'Incident Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3164295632007658054)
,p_db_column_name=>'INCIDENT_LOCATION'
,p_display_order=>51
,p_column_identifier=>'E'
,p_column_label=>'Incident Location'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3164297548120658058)
,p_db_column_name=>'INCIDENT_TYPE'
,p_display_order=>61
,p_column_identifier=>'F'
,p_column_label=>'Incident type'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3240081315390934925)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3163100218186782263)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>71
,p_column_identifier=>'H'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3163100100850782262)
,p_db_column_name=>'CREATED_ON'
,p_display_order=>81
,p_column_identifier=>'I'
,p_column_label=>'Created On'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3163099960933782261)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>91
,p_column_identifier=>'J'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3163099894492782260)
,p_db_column_name=>'UPDATED_ON'
,p_display_order=>101
,p_column_identifier=>'K'
,p_column_label=>'Updated On'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3163099781637782259)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>111
,p_column_identifier=>'L'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3163099685087782258)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>121
,p_column_identifier=>'M'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3284905052845267166)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'742997'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:INCIDENT_TYPE:INCIDENT_CATEGORY:DESCRIPTION:INCIDENT_LOCATION:INCIDENT_DATE:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3164294790996658051)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3160470811777304806)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-hand-o-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3164294401083658051)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3160470811777304806)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:4051:&SESSION.::&DEBUG.:4051'
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp.component_end;
end;
/
