prompt --application/pages/page_01700
begin
--   Manifest
--     PAGE: 01700
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
 p_id=>1700
,p_name=>'rptprojects'
,p_alias=>'RPTPROJECTS'
,p_step_title=>'Find, Filter and Organize Projects'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3297886235910714013)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3270740265737675303)
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(142598730140556258)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10460765779079194647)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2203735134726245683)
,p_plug_name=>'Listing of Projects'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    ID,',
'    PROJECT_CODE,',
'    PROJECT_NAME,',
'    PROJECT_SUMMARY,',
'    LOCATION,',
'    ORG_ID,',
'    START_DATE,',
'    END_DATE,',
'    ENTRY_DATE,',
'    ENTERED_BY,',
'    LAST_CHANGED_DATE,',
'    LAST_CHANGED_BY,',
'    STATUS, ',
'    PROJECT_STAGE, ',
'    PROJECT_TYPE',
'from ',
'    HR_PMS_PROJECTS',
'where',
'    ORG_ID = :APP_ORG_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Listing of Projects'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(2203735204818245683)
,p_name=>'Listing of Projects'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1710:&SESSION.::&DEBUG.:1710:P1710_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'ICARTER'
,p_internal_uid=>2087951070961931978
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1197380074865853446)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1197380478437853451)
,p_db_column_name=>'PROJECT_CODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1197380896836853452)
,p_db_column_name=>'PROJECT_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1197381232797853453)
,p_db_column_name=>'PROJECT_SUMMARY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Summary'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1197381662066853453)
,p_db_column_name=>'LOCATION'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Location'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1197382067320853454)
,p_db_column_name=>'ORG_ID'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Org Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1197382445519853456)
,p_db_column_name=>'START_DATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1197382831281853457)
,p_db_column_name=>'END_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1197383214042853458)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1197383636174853459)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1197384095753853459)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1197384416582853460)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(151103332545609409)
,p_db_column_name=>'STATUS'
,p_display_order=>22
,p_column_identifier=>'M'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(151102571692605554)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(151103363467609410)
,p_db_column_name=>'PROJECT_STAGE'
,p_display_order=>32
,p_column_identifier=>'N'
,p_column_label=>'Stage'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(151102215097580145)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(151103480465609411)
,p_db_column_name=>'PROJECT_TYPE'
,p_display_order=>42
,p_column_identifier=>'O'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(151102344689597688)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2203812052581538099)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'10281394'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PROJECT_CODE:PROJECT_NAME:PROJECT_TYPE:PROJECT_SUMMARY:LOCATION:START_DATE:END_DATE:PROJECT_STAGE:STATUS:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(142599192054556262)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(142598730140556258)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1710:&SESSION.::&DEBUG.:1710::'
);
wwv_flow_imp.component_end;
end;
/
