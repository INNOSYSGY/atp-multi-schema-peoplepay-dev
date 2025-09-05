prompt --application/pages/page_00174
begin
--   Manifest
--     PAGE: 00174
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
 p_id=>174
,p_name=>'rptemployeegrievance'
,p_alias=>'RPTEMPLOYEEGRIEVANCE'
,p_step_title=>'Listing of Employee Grievances'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3297885620181706846)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3197311121273405946)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10460765779079194647)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3197319305371405953)
,p_plug_name=>'Listing of Employee Grievance'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       EMP_ID,',
'       ORGDTL_ID,',
'       JOB_ID,',
'       DATE_OF_COMPLAINT,',
'       TYPE_OF_COMPLAINT,',
'       GRIEVANCE_STATUS,',
'       TRANSACTION_TYPE_ID,',
'       STATUS,',
'       VERIFIED_BY,',
'       VERIFIED_DATE,',
'       ENTERED_BY,',
'       ENTRY_DATE,',
'       LAST_CHANGED_BY,',
'       LAST_CHANGED_DATE,',
'       APPROVED_BY,',
'       APPROVED_DATE,',
'       MACHINE_INSERT,',
'       MACHINE_UPDATE,',
'       NATURE_OF_COMPLAINT,',
'       GRIEVANCE_SOURCE,',
'       GRIEVANCE_METHOD',
'  from HR_GRI_GRIEVANCE G',
'where EXISTS(SELECT 1 ',
'                FROM HR_HCF_ORGSTRUCTUREDTL A ',
'                JOIN HR_HCF_ORGSTRUCTUREHD B ON A.ORG_STRUCTURE_ID = B.ID ',
'                WHERE A.ID = G.ORGDTL_ID',
'                AND B.ORG_ID = :APP_ORG_ID)'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Listing of Employee Grievance'
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
 p_id=>wwv_flow_imp.id(3197318965377405953)
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
,p_detail_link=>'f?p=&APP_ID.:175:&SESSION.::&DEBUG.:RP,:P175_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'RSPRINGER'
,p_internal_uid=>68304168357775080
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3249164180546461951)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3249163755684461951)
,p_db_column_name=>'EMP_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3326578119485849578)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3249163404437461951)
,p_db_column_name=>'ORGDTL_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Department'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3326483173226690551)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3249163029799461951)
,p_db_column_name=>'JOB_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Job Title'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3326524363047798320)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3249162606523461950)
,p_db_column_name=>'DATE_OF_COMPLAINT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Date Of Complaint'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3249162199135461950)
,p_db_column_name=>'TYPE_OF_COMPLAINT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Type Of Complaint'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3249151583787461932)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3249161392933461950)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Transaction Type'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3249161006437461950)
,p_db_column_name=>'STATUS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3249160573653461950)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3249160157987461950)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3249159757140461950)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3249159355183461949)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3249158996892461949)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3249158623691461949)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3249157368835461949)
,p_db_column_name=>'APPROVED_BY'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Approved By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3249156943044461949)
,p_db_column_name=>'APPROVED_DATE'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Approved Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3249156610748461949)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>29
,p_column_identifier=>'T'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3249156189837461948)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>39
,p_column_identifier=>'U'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3248847002640976926)
,p_db_column_name=>'GRIEVANCE_SOURCE'
,p_display_order=>49
,p_column_identifier=>'Y'
,p_column_label=>'Grievance Source'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3248846836456976925)
,p_db_column_name=>'GRIEVANCE_METHOD'
,p_display_order=>59
,p_column_identifier=>'Z'
,p_column_label=>'Grievance Method'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3249154934792461948)
,p_db_column_name=>'NATURE_OF_COMPLAINT'
,p_display_order=>69
,p_column_identifier=>'X'
,p_column_label=>'Nature Of Complaint'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3248843704222976893)
,p_db_column_name=>'GRIEVANCE_STATUS'
,p_display_order=>79
,p_column_identifier=>'AA'
,p_column_label=>'Grievance Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3197055034088322110)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'164685'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_ID:ORGDTL_ID:JOB_ID:DATE_OF_COMPLAINT:VERIFIED_BY:VERIFIED_DATE:GRIEVANCE_SOURCE:GRIEVANCE_METHOD:GRIEVANCE_STATUS:NATURE_OF_COMPLAINT:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3249153855056461939)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3197311121273405946)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-hand-o-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3249153496982461938)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3197311121273405946)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:175:&SESSION.::&DEBUG.:175::'
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp.component_end;
end;
/
