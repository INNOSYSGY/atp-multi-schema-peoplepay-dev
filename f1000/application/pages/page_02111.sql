prompt --application/pages/page_02111
begin
--   Manifest
--     PAGE: 02111
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
 p_id=>2111
,p_name=>'rptSetEmpJobAppraisals'
,p_alias=>'RPTSETEMPJOBAPPRAISALS'
,p_step_title=>'Listing of Employee Project Job Objectives'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3825578023934154813)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3486054706915157837)
,p_plug_name=>'Listing of  Project Objectives for Appraisal '
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select OBJECTIVES,',
'       COMMENTS,',
'       WEIGHTING,',
'       ENTERED_BY,',
'       ENTRY_DATE,',
'       LAST_CHANGED_BY,',
'       LAST_CHANGED_DATE,',
'       ID,',
'       DATE_ASSIGN,',
'       PROJECTED_COMPLETED,',
'       EMP_ID,',
'       PROJECT_NAME,',
'       OBJ_CODE,',
'       OBJ_SEQUENCE',
'  from HR_APP_EMPOBJECTIVES',
'  where exists (select 1',
'               from hr_rcm_employee a join vw_useraccess b on (a.org_id=b.org_id and a.payment_type=b.payment_type and a.employment_class_id= b.employment_class_id)',
'               where HR_APP_EMPOBJECTIVES.emp_id = a.id',
'               and a.org_id =:APP_ORG_ID )'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Listing of  Project Objectives for Appraisal '
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
 p_id=>wwv_flow_imp.id(3486055067584157838)
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
,p_detail_link=>'f?p=&APP_ID.:2112:&SESSION.::&DEBUG.:RP:P2112_ID:\#ID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'RLANGFORD'
,p_internal_uid=>317732939141900955
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3486055196223157839)
,p_db_column_name=>'OBJECTIVES'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Objectives'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3486055542358157840)
,p_db_column_name=>'COMMENTS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Comments'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3486056006335157841)
,p_db_column_name=>'WEIGHTING'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Weighting'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3486056329354157841)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3486056732770157842)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3486057130606157842)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3486057554263157842)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3486058016064157843)
,p_db_column_name=>'ID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3486058392491157843)
,p_db_column_name=>'DATE_ASSIGN'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Date Assign'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3486058809459157844)
,p_db_column_name=>'PROJECTED_COMPLETED'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Projected Completed'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3486059174198157844)
,p_db_column_name=>'EMP_ID'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854269907509290378)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3486059624871157845)
,p_db_column_name=>'PROJECT_NAME'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Project Name'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3486357939026404265)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3187324714636889738)
,p_db_column_name=>'OBJ_CODE'
,p_display_order=>22
,p_column_identifier=>'M'
,p_column_label=>'Obj Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3187324755264889739)
,p_db_column_name=>'OBJ_SEQUENCE'
,p_display_order=>32
,p_column_identifier=>'N'
,p_column_label=>'Obj Sequence'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3486060624327167108)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3177385'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PROJECT_NAME:EMP_ID:OBJECTIVES:COMMENTS:WEIGHTING:DATE_ASSIGN:PROJECTED_COMPLETED:LAST_CHANGED_BY:LAST_CHANGED_DATE::OBJ_CODE:OBJ_SEQUENCE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3486060048958157845)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3486054706915157837)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:2112:&SESSION.::&DEBUG.:2112'
);
wwv_flow_imp.component_end;
end;
/
