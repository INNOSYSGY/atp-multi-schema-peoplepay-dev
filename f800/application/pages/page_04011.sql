prompt --application/pages/page_04011
begin
--   Manifest
--     PAGE: 04011
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>800
,p_default_id_offset=>221543258820678920
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>4011
,p_name=>'rptCRiskAssessment'
,p_step_title=>'COSHH Risk Assessment Records'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3697575752321696851)
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3687252579688317854)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988316897241556436)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3812946481034563566)
,p_plug_name=>'Listing of <b>COSHH Risk Assessment Records </b>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       PRODUCT_NAME,',
'       MANUFACTURER,',
'       MANUFACTURER_CONT_NUMBER,',
'       SECTION_WHERE_USED,',
'       ASSESSMENT_NO,',
'       PRODUCT_CODE,',
'       CAS_REF,',
'       DESCRIPTION,',
'       DATE_OF_MSDS,',
'       HOW_USED,',
'       HAZARDOUS_SUBSTANCES,',
'       EFFECTED_PERSON,',
'       PRECAUTIONS_PROTECTIONS,',
'       FIRST_AID_TREATMENT,',
'       EMERGENCY_ACTION,',
'       ENVIRONMENT_IMPLICATIONS,',
'       ST_DI_TRA_INFORMATION,',
'       COMPLETED_BY,',
'       COMPLETED_DATE,',
'       NEXT_REVIEW_DATE,',
'       ENTERED_BY,',
'       ENTRY_DATE,',
'       LAST_CHANGED_BY,',
'       LAST_CHANGED_DATE,',
'       EMP_ID',
'  from HR_HS_COSHH_RISK_ASSTMENT'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3812946544818563566)
,p_name=>'rptCRiskAssessment'
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
,p_owner=>'DIANTEC'
,p_internal_uid=>205288336446349956
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3691520609733097429)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:4008:&SESSION.::&DEBUG.:RP,4008:P4008_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3691520169587097427)
,p_db_column_name=>'PRODUCT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Product Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3691519831749097427)
,p_db_column_name=>'MANUFACTURER'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Manufacturer'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3691519422554097427)
,p_db_column_name=>'MANUFACTURER_CONT_NUMBER'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Manufacturer Cont Number'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3691519019961097426)
,p_db_column_name=>'SECTION_WHERE_USED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Section Where Used'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3691518626700097426)
,p_db_column_name=>'ASSESSMENT_NO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Assessment No'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3691518219033097426)
,p_db_column_name=>'PRODUCT_CODE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Product Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3691517776589097426)
,p_db_column_name=>'CAS_REF'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Cas Ref'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3691517391816097425)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3691516998221097425)
,p_db_column_name=>'DATE_OF_MSDS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Date Of Msds'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3691516647420097425)
,p_db_column_name=>'HOW_USED'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'How Used'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3691516203559097424)
,p_db_column_name=>'HAZARDOUS_SUBSTANCES'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Hazardous Substances'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3691515815833097424)
,p_db_column_name=>'EFFECTED_PERSON'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Effected Person'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3691515450885097423)
,p_db_column_name=>'PRECAUTIONS_PROTECTIONS'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Precautions Protections'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3691515012600097423)
,p_db_column_name=>'FIRST_AID_TREATMENT'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'First Aid Treatment'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3691514574097097423)
,p_db_column_name=>'EMERGENCY_ACTION'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Emergency Action'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3691514251569097423)
,p_db_column_name=>'ENVIRONMENT_IMPLICATIONS'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Environment Implications'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3691513851151097422)
,p_db_column_name=>'ST_DI_TRA_INFORMATION'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'St Di Tra Information'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3691513397557097422)
,p_db_column_name=>'COMPLETED_BY'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Completed By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3691513039949097422)
,p_db_column_name=>'COMPLETED_DATE'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Completed Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3691512637480097421)
,p_db_column_name=>'NEXT_REVIEW_DATE'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Next Review Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3691512216528097421)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3691511833012097421)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3691511457933097421)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3691511047915097420)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3691510633170097420)
,p_db_column_name=>'EMP_ID'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Emp Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3812957733229564276)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'746358'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:PRODUCT_NAME:MANUFACTURER:MANUFACTURER_CONT_NUMBER:SECTION_WHERE_USED:ASSESSMENT_NO:PRODUCT_CODE:CAS_REF:DESCRIPTION:DATE_OF_MSDS:HOW_USED:HAZARDOUS_SUBSTANCES:EFFECTED_PERSON:PRECAUTIONS_PROTECTIONS:FIRST_AID_TREATMENT:EMERGENCY_ACTION:ENVIRONMEN'
||'T_IMPLICATIONS:ST_DI_TRA_INFORMATION:COMPLETED_BY:COMPLETED_DATE:NEXT_REVIEW_DATE:ENTERED_BY:ENTRY_DATE:LAST_CHANGED_BY:LAST_CHANGED_DATE:EMP_ID'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3691509860864097419)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3687252579688317854)
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
 p_id=>wwv_flow_imp.id(3691509383418097419)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3687252579688317854)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:4008:&SESSION.::&DEBUG.:RP,4008::'
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp.component_end;
end;
/
