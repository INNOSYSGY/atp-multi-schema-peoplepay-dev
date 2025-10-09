prompt --application/pages/page_04010
begin
--   Manifest
--     PAGE: 04010
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
 p_id=>4010
,p_name=>'rptJobHazardsAnalysis'
,p_step_title=>'Job Hazards Analysis'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3697716422182775862)
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3687418158092673794)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988457567102635447)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3812995955822124227)
,p_plug_name=>'Listing of  <b>Job Hazards Analysis </b>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       OSHO_JWSHC_REVIEW_DATE,',
'       JOB_ACTIVITY,',
'       BUILDING_ROOM,',
'       WK_LOCATION_ID,',
'       REVISION_NUMBER,',
'       DATE_CONDUCTED,',
'       DATE_REVISED,',
'       SCOPE_OF_WORK,',
'       OSHO_SIGNATURE,',
'       DATE_SIGNED,',
'       SUPERVISOR_SIGN,',
'       SUPERVISOR_DATE_SIGN,',
'       VERIFIED_BY,',
'       VERIFIED_DATE,',
'       ENTERED_BY,',
'       ENTRY_DATE,',
'       LAST_CHANGED_BY,',
'       LAST_CHANGED_DATE',
'  from HR_HS_JOB_HAZARD_ANALYSIS'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3812996070804124227)
,p_name=>'rptJobHazardAnalysis'
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
,p_owner=>'MERSKINE'
,p_internal_uid=>205197192570831606
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3691671509891182453)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:4009:&SESSION.::&DEBUG.:RP,4009:P4009_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3691671110249182453)
,p_db_column_name=>'OSHO_JWSHC_REVIEW_DATE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Osho Jwshc Review Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3691670655362182453)
,p_db_column_name=>'JOB_ACTIVITY'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Job Activity'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3691670263048182452)
,p_db_column_name=>'BUILDING_ROOM'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Building Room'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3691669852938182452)
,p_db_column_name=>'REVISION_NUMBER'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Revision Number'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3691669453054182452)
,p_db_column_name=>'DATE_CONDUCTED'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Date Conducted'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3691669062149182452)
,p_db_column_name=>'DATE_REVISED'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Date Revised'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3691668729041182451)
,p_db_column_name=>'SCOPE_OF_WORK'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Scope Of Work'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3691668327427182451)
,p_db_column_name=>'OSHO_SIGNATURE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Osho Signature'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3691667858613182451)
,p_db_column_name=>'DATE_SIGNED'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Date Signed'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3691667501368182451)
,p_db_column_name=>'SUPERVISOR_SIGN'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Supervisor Sign'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3691667100361182450)
,p_db_column_name=>'SUPERVISOR_DATE_SIGN'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Supervisor Date Sign'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3691666724139182450)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3691666268709182450)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3691665902420182449)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3691665460382182449)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3691665038511182449)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>29
,p_column_identifier=>'T'
,p_column_label=>'Verified by'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3691664684988182449)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>39
,p_column_identifier=>'U'
,p_column_label=>'Verified date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3691671871087182456)
,p_db_column_name=>'WK_LOCATION_ID'
,p_display_order=>49
,p_column_identifier=>'V'
,p_column_label=>'Job Position'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854141471353093625)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3813004224686126393)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'746224'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:OSHO_JWSHC_REVIEW_DATE:JOB_ACTIVITY:BUILDING_ROOM:REVISION_NUMBER:DATE_CONDUCTED:DATE_REVISED:SCOPE_OF_WORK:OSHO_SIGNATURE:DATE_SIGNED:SUPERVISOR_SIGN:SUPERVISOR_DATE_SIGN:ENTERED_BY:ENTRY_DATE:LAST_CHANGED_BY:LAST_CHANGED_DATE:VERIFIED_BY:VERIFIE'
||'D_DATE:WK_LOCATION_ID'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3691663868685182447)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3687418158092673794)
,p_button_name=>'Return'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP,1::'
,p_icon_css_classes=>'fa-hand-o-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3691663502760182446)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3687418158092673794)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:4009:&SESSION.::&DEBUG.:RP,4009::'
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp.component_end;
end;
/
