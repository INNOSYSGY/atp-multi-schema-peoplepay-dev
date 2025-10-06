prompt --application/pages/page_04017
begin
--   Manifest
--     PAGE: 04017
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
 p_id=>4017
,p_name=>'rptOilandChemical'
,p_step_title=>'COSHH- Oil and Chemical Register'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3170024634159335062)
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3162493510973142648)
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
 p_id=>wwv_flow_imp.id(3286413870931724646)
,p_plug_name=>'Listing of <b>COSHH- Oil and Chemical Register </b>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ID", ',
'"RISK_ASSESSMENT_ID",',
'"OIL_CHEMICAL_NAME",',
'"SUPPLIER_INFORMATION",',
'"CONTAINER_SIZE",',
'"WHERE_STORED",',
'"WHERE_USED",',
'"RISK_ASSESSMENT_NUM"',
'from "#OWNER#"."HR_HS_OIL_CHEMICAL_REG" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3286414271093724647)
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
,p_owner=>'MERSKINE'
,p_internal_uid=>206307180883872826
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3163603502301448618)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:4018:&SESSION.::&DEBUG.:RP,4018:P4018_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3163603115796448618)
,p_db_column_name=>'RISK_ASSESSMENT_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Risk Assessment Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3163602679796448618)
,p_db_column_name=>'OIL_CHEMICAL_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Oil Chemical Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3163602295721448617)
,p_db_column_name=>'SUPPLIER_INFORMATION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Supplier Information'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3163601908902448617)
,p_db_column_name=>'CONTAINER_SIZE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Container Size'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3163601463644448617)
,p_db_column_name=>'WHERE_STORED'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Where Stored'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3163601120975448616)
,p_db_column_name=>'WHERE_USED'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Where Used'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3163600695005448616)
,p_db_column_name=>'RISK_ASSESSMENT_NUM'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Risk Assessment Number'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3286417983065725042)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'749946'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:RISK_ASSESSMENT_ID:OIL_CHEMICAL_NAME:SUPPLIER_INFORMATION:CONTAINER_SIZE:WHERE_STORED:WHERE_USED:RISK_ASSESSMENT_NUM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3163599891993448615)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3162493510973142648)
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
 p_id=>wwv_flow_imp.id(3163599544322448615)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3162493510973142648)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:4018:&SESSION.::&DEBUG.:4018'
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp.component_end;
end;
/
