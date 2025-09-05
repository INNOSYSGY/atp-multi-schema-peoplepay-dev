prompt --application/pages/page_09974
begin
--   Manifest
--     PAGE: 09974
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
 p_id=>9974
,p_name=>'rptReferenceConfig'
,p_step_title=>'Reference Configuration'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3297884603042696602)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(142627903891158811)
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
 p_id=>wwv_flow_imp.id(3284254542467486325)
,p_plug_name=>'Reference Configuration'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,CONFIG_NAME,START_DATE',
'from HR_RCM_CONFIGREF',
'where org_id=:APP_ORG_SHR_DED'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3284254432551486325)
,p_name=>'rptReferenceConfig'
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
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:9968:&SESSION.::&DEBUG.:RP:P9968_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(3279327210431677335)
,p_owner=>'GTT'
,p_internal_uid=>62576874253818375
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301213636035005845)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301213227491005843)
,p_db_column_name=>'CONFIG_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Config Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301212849011005842)
,p_db_column_name=>'START_DATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3284252854658481768)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'456188'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:CONFIG_NAME:START_DATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3301211652442005837)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(142627903891158811)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3301212031686005839)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(142627903891158811)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:9968:&SESSION.::&DEBUG.:RP,9968::'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp.component_end;
end;
/
