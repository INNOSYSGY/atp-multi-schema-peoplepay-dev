prompt --application/pages/page_00220
begin
--   Manifest
--     PAGE: 00220
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
 p_id=>220
,p_name=>'gradegradepoint'
,p_alias=>'GRADEGRADEPOINT'
,p_step_title=>'Grade Points with Details'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3100793374603347740)
,p_plug_name=>'Grade Points with Details'
,p_region_template_options=>'#DEFAULT#:t-Region--accent5:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.grade_description || '' - '' || a.grade_code Grade, b.point gdpoin, b.point_amount, a.org_id,INCREMENT_AMOUNT,GRADE_MINI,GRADE_MAX',
'from hr_hcf_positiongrade a ',
'join hr_hcf_positiongradepoint b on a.id=b.position_grade_id',
'where a.org_id = 28007',
'and upper(grade_code) !=''HRMIS01''',
'and b.end_date is null ',
'-- and a.EFFECTIVE_FROMDATE is null',
'order by b.point asc',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Grade Points with Details'
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
 p_id=>wwv_flow_imp.id(3100793442825347740)
,p_name=>'gradegradepoint'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_download_filename=>'Grade Points with Details'
,p_enable_mail_download=>'Y'
,p_owner=>'BASU'
,p_internal_uid=>161242235577487550
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3100795091911347748)
,p_db_column_name=>'GDPOIN'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Grade Point'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3100795420127347748)
,p_db_column_name=>'POINT_AMOUNT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Point Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3100795821385347749)
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
 p_id=>wwv_flow_imp.id(3095523732076478794)
,p_db_column_name=>'GRADE'
,p_display_order=>16
,p_column_identifier=>'G'
,p_column_label=>'Grade'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3095523833415478795)
,p_db_column_name=>'INCREMENT_AMOUNT'
,p_display_order=>26
,p_column_identifier=>'H'
,p_column_label=>'Increment Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3095524102296478797)
,p_db_column_name=>'GRADE_MINI'
,p_display_order=>46
,p_column_identifier=>'J'
,p_column_label=>'Grade Mini'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3095524163230478798)
,p_db_column_name=>'GRADE_MAX'
,p_display_order=>56
,p_column_identifier=>'K'
,p_column_label=>'Grade Max'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3100796453611348245)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1612453'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'GRADE:GRADE_MINI:GRADE_MAX:GDPOIN:INCREMENT_AMOUNT:POINT_AMOUNT:'
,p_sort_column_1=>'GDPOIN'
,p_sort_direction_1=>'ASC'
,p_break_on=>'GRADE:GRADE_MINI:GRADE_MAX'
,p_break_enabled_on=>'GRADE:GRADE_MINI:GRADE_MAX'
);
wwv_flow_imp.component_end;
end;
/
