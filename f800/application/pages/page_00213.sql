prompt --application/pages/page_00213
begin
--   Manifest
--     PAGE: 00213
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
 p_id=>213
,p_name=>'rptachconfig'
,p_alias=>'RPTACHCONFIG'
,p_step_title=>'Listing ACH Configuration'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3825436139759062413)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3601952176819889125)
,p_plug_name=>'Listing ACH Configuration'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       RECORD_TYPE_CODE_FHR,',
'       PRIORITY_CODE,',
'       RECORD_SIZE,',
'       BLOCKING_FACTOR,',
'       FORMAT_CODE,',
'       RECORD_TYPE_CODE_CBHR,',
'       ORIGINATOR_STATUS_CODE,',
'       RECORD_TYPE_CODE_EDR,',
'       RECORD_TYPE_CODE_EAR,',
'       ADDENDA_TYPE_CODE,',
'       RECORD_TYPE_CODE_CBCR,',
'       RECORD_TYPE_CODE_FCR,',
'       CREATED,',
'       CREATED_BY,',
'       UPDATED,',
'       UPDATED_BY,',
'       START_DATE,',
'       END_DATE,',
'       COMPANY_YEAR,',
'       ORG_ID,',
'       ACH_COMPANY_ID,',
'       CONFIG_NAME, IMMEDIATE_DESTINATION, IMMEDIATE_ORIGIN, IMMEDIATE_DESTINATION_NAME, IMMEDIATE_ORIGIN_NAME,originating_dfi',
'  from PA_ACH_CONFIG',
' where ORG_ID=:APP_ORG_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Listing ACH Configuration'
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
 p_id=>wwv_flow_imp.id(3601952625051889125)
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
,p_detail_link=>'f?p=&APP_ID.:218:&SESSION.::&DEBUG.:RP,:P218_ID:\#ID#\'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-page.png" class="apex-edit-page" alt="">'
,p_owner=>'BASU'
,p_internal_uid=>134850299641667146
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3601952633534889127)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3601953059438889128)
,p_db_column_name=>'RECORD_TYPE_CODE_FHR'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'File Header Record (RTC)'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3601953503967889128)
,p_db_column_name=>'PRIORITY_CODE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Priority Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3601953867016889129)
,p_db_column_name=>'RECORD_SIZE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Record Size'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3601954311119889129)
,p_db_column_name=>'BLOCKING_FACTOR'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Blocking Factor'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3601954684439889130)
,p_db_column_name=>'FORMAT_CODE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Format Code'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3601955105656889130)
,p_db_column_name=>'RECORD_TYPE_CODE_CBHR'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Company Batch Control Record (RTC)'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3601955520414889130)
,p_db_column_name=>'ORIGINATOR_STATUS_CODE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Originator Status Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3601955881672889131)
,p_db_column_name=>'RECORD_TYPE_CODE_EDR'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Entry Detail Record (RTC)'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3601956242551889131)
,p_db_column_name=>'RECORD_TYPE_CODE_EAR'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Entry Addenda Record (RTC)'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3601956653786889131)
,p_db_column_name=>'ADDENDA_TYPE_CODE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Addenda Type Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3601957027292889132)
,p_db_column_name=>'RECORD_TYPE_CODE_CBCR'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Company Batch Control Record (RTC)'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3601957518846889132)
,p_db_column_name=>'RECORD_TYPE_CODE_FCR'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'File Control Record (RTC)'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3601957831962889133)
,p_db_column_name=>'CREATED'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3601958278636889133)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3601958705240889133)
,p_db_column_name=>'UPDATED'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3601959084230889134)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3601959509020889134)
,p_db_column_name=>'START_DATE'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3601959915164889134)
,p_db_column_name=>'END_DATE'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3601960271802889135)
,p_db_column_name=>'COMPANY_YEAR'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Company Year'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3601960656951889135)
,p_db_column_name=>'ORG_ID'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Org Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3601970424594929001)
,p_db_column_name=>'CONFIG_NAME'
,p_display_order=>41
,p_column_identifier=>'W'
,p_column_label=>'Config Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3601970503581929002)
,p_db_column_name=>'IMMEDIATE_DESTINATION'
,p_display_order=>51
,p_column_identifier=>'X'
,p_column_label=>'Immediate Destination Acc No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3601970552566929003)
,p_db_column_name=>'IMMEDIATE_ORIGIN'
,p_display_order=>61
,p_column_identifier=>'Y'
,p_column_label=>'Immediate Origin Acc No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3601970782156929005)
,p_db_column_name=>'IMMEDIATE_DESTINATION_NAME'
,p_display_order=>71
,p_column_identifier=>'Z'
,p_column_label=>'Immediate Destination Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3601970867693929006)
,p_db_column_name=>'IMMEDIATE_ORIGIN_NAME'
,p_display_order=>81
,p_column_identifier=>'AA'
,p_column_label=>'Immediate Origin Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3601973059893929028)
,p_db_column_name=>'ACH_COMPANY_ID'
,p_display_order=>91
,p_column_identifier=>'AB'
,p_column_label=>'Ach Company Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3601973220982929029)
,p_db_column_name=>'ORIGINATING_DFI'
,p_display_order=>101
,p_column_identifier=>'AC'
,p_column_label=>'Originating Dfi'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3601964146178905690)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1348619'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COMPANY_YEAR:CONFIG_NAME:IMMEDIATE_DESTINATION_NAME:IMMEDIATE_ORIGIN_NAME:IMMEDIATE_DESTINATION:IMMEDIATE_ORIGIN:START_DATE:END_DATE:'
,p_break_on=>'ACH_COMPANY_ID:COMPANY_YEAR'
,p_break_enabled_on=>'ACH_COMPANY_ID:COMPANY_YEAR'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3601962381822896023)
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3590116515564019728)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3601962381822896023)
,p_button_name=>'RETURN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_icon_css_classes=>'fa-hand-o-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3601961182299889136)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3601962381822896023)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:218:&SESSION.::&DEBUG.:216::'
,p_icon_css_classes=>'fa-plus-square-o'
);
wwv_flow_imp.component_end;
end;
/
