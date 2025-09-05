prompt --application/pages/page_10020
begin
--   Manifest
--     PAGE: 10020
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
 p_id=>10020
,p_name=>'rptFindTaxPayer'
,p_step_title=>'Listing of Potential Clients'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3278888520595948027)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3167067111454640633)
,p_plug_name=>'Listing of Potential Clients'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TIN,',
'       NAME,',
'       ADDRESS,',
'       EST_EMPLOYEES,',
'       PHONE,',
'       EMAIL',
'  from HR_HCF_POTENTIALCLIENTS'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3167066948197640633)
,p_name=>'List of Active Tax Payers'
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
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_icon_view_columns_per_row=>1
,p_owner=>'GTT'
,p_internal_uid=>179764358607664067
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3283850532251401870)
,p_db_column_name=>'TIN'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Tin'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3283850128845401869)
,p_db_column_name=>'NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3283849800884401869)
,p_db_column_name=>'ADDRESS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3283849370914401869)
,p_db_column_name=>'EST_EMPLOYEES'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Est Employees'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3283848994271401869)
,p_db_column_name=>'PHONE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Phone'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3283848581113401868)
,p_db_column_name=>'EMAIL'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3167064206250623586)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'629831'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>1000
,p_report_columns=>'TIN:NAME:ADDRESS:EST_EMPLOYEES:PHONE:EMAIL'
,p_sum_columns_on_break=>'EST_EMPLOYEES'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3283847724719401868)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3167067111454640633)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:199:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp.component_end;
end;
/
