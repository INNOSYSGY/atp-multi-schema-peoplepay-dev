prompt --application/pages/page_00313
begin
--   Manifest
--     PAGE: 00313
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.7'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>313
,p_name=>'rptTrainingCourse'
,p_alias=>'RPTTRAININGCOURSE'
,p_step_title=>'Listing of Training Courses'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3027602741020425839)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(142631490099158847)
,p_plug_name=>'bc'
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
 p_id=>wwv_flow_imp.id(8208636088933412080)
,p_plug_name=>'Training Courses'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>21
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    TC.ID,',
'    PROGRAM_CODE,',
'    COURSE_NAME,',
'    COURSE_DESCRIPTION, qualification_level,',
'    ORG_ID,',
'    TC.CREATED,',
'    TC.CREATED_BY,',
'    TC.UPDATED,',
'    TC.UPDATED_BY,',
'    COURSE_NO,',
'    TC.START_DATE,',
'    TC.END_DATE,',
'    MIGRATE_DATE, ',
'    CF.FACILITATORS,',
'    CS.STRUCTURES',
'    ',
'from ',
'    HR_TRN_COURSE TC',
'    LEFT JOIN (',
'        SELECT ',
'            COURSE_ID, ',
'            LISTAGG(SURNAME|| '', '' || FIRST_NAME, ''<br>'') WITHIN GROUP(ORDER BY SURNAME, FIRST_NAME) AS FACILITATORS ',
'        FROM ',
'            HR_TRN_COURSE_FACILITATOR F',
'            JOIN HR_RCM_INDIVIDUAL B ON F.IND_ID = B.ID',
'        GROUP BY',
'            COURSE_ID) CF ON TC.ID = CF.COURSE_ID',
'            ',
'        LEFT JOIN (',
'        SELECT ',
'            COURSE_ID, ',
'            LISTAGG(structure_name, ''<br>'') WITHIN GROUP(ORDER BY structure_no) AS STRUCTURES ',
'        FROM ',
'            HR_TRN_COURSE_structure S',
'        GROUP BY',
'            COURSE_ID) CS ON TC.ID = CS.COURSE_ID',
' where pkg_global_fnts.fn_sharereforg(org_id) = :APP_ORG_SHR_DED',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Training Courses'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(8208636437725412080)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
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
,p_detail_link=>'f?p=&APP_ID.:312:&SESSION.::&DEBUG.:RP,312:P312_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'RLANGFORD'
,p_internal_uid=>8092852303869098375
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152505392738263567)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152505764508263568)
,p_db_column_name=>'COURSE_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Course Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152506158702263568)
,p_db_column_name=>'COURSE_DESCRIPTION'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Course Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152506523979263568)
,p_db_column_name=>'ORG_ID'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Organisation'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3326384236008570025)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152506939079263569)
,p_db_column_name=>'CREATED'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152507396752263569)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152507768512263570)
,p_db_column_name=>'UPDATED'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152508170305263570)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152508607166263570)
,p_db_column_name=>'COURSE_NO'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Course No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152508933076263571)
,p_db_column_name=>'START_DATE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152509344977263571)
,p_db_column_name=>'END_DATE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152509808901263572)
,p_db_column_name=>'MIGRATE_DATE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Migrate Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152505015252263567)
,p_db_column_name=>'QUALIFICATION_LEVEL'
,p_display_order=>24
,p_column_identifier=>'O'
,p_column_label=>'Qualification Level'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152504152239263566)
,p_db_column_name=>'FACILITATORS'
,p_display_order=>34
,p_column_identifier=>'P'
,p_column_label=>'Facilitators'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152504530060263566)
,p_db_column_name=>'PROGRAM_CODE'
,p_display_order=>44
,p_column_identifier=>'Q'
,p_column_label=>'Program Name'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(139178560259261838)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152510202806263572)
,p_db_column_name=>'STRUCTURES'
,p_display_order=>54
,p_column_identifier=>'R'
,p_column_label=>'Structures'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8208644139454429918)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'9903241'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PROGRAM_CODE:COURSE_NO:COURSE_NAME:FACILITATORS:STRUCTURES:QUALIFICATION_LEVEL:START_DATE:END_DATE:'
,p_break_on=>'0:0:0:0:0:PROGRAM_CODE'
,p_break_enabled_on=>'0:0:0:0:0:PROGRAM_CODE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(139177692664261837)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(142631490099158847)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:314:&SESSION.::&DEBUG.:314::'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp.component_end;
end;
/
