prompt --application/pages/page_09969
begin
--   Manifest
--     PAGE: 09969
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
 p_id=>9969
,p_name=>'rptRefereeGradingApplicant'
,p_step_title=>'Listing Referee Grading of Applicant'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3825576391066137402)
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(670320667779599621)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988457567102635447)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3811561117569617757)
,p_plug_name=>'Listing of Applicants who been Given References'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.ID,',
'       a.CONFIG_ID, ref_org_name, position,',
'       a.ind_id,',
'       a.REFEREE_full_name,',
'       a.ORG_ID,',
'       a.ENTERED_BY,',
'       a.ENTRY_DATE,',
'       a.VERIFIED_BY,',
'       a.DATE_VERIFIED,',
'       a.LAST_CHANGED_BY,',
'       a.GENERAL_REMARKS,',
'       a.LAST_CHANGED_DATE,',
'       a.DATE_OF_REFERENCE,',
'       a.REMARKS_COMMENTS,',
'       a.SUMMARY_RECOMMENDED_GRADE',
'  from HR_RCM_REFEREE_RATING a join hr_apl_reference b on b.id =a.referee_id',
'where org_id=:APP_ORG_SHR_DED',
'and REFEREE_ID = nvl((select id from hr_apl_reference where trim(upper(ref_email))=trim(upper(:APP_USER))),REFEREE_ID) ',
''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3811561019940617757)
,p_name=>'rptRefereeGradingApplicant'
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
,p_detail_link=>'f?p=&APP_ID.:9970:&SESSION.::&DEBUG.:RP:P9970_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'GTT'
,p_internal_uid=>62962074888127743
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3828563436844317884)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3828563018726317884)
,p_db_column_name=>'CONFIG_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Referee Config'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854104254556022846)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3828561051861317880)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3828560596921317879)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3828560237335317879)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3828559864461317879)
,p_db_column_name=>'DATE_VERIFIED'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Date Verified'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3828559445640317878)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3828558996746317878)
,p_db_column_name=>'GENERAL_REMARKS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'General Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3828558679335317877)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3828558262464317877)
,p_db_column_name=>'DATE_OF_REFERENCE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Date Of Reference'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3828557805335317876)
,p_db_column_name=>'REMARKS_COMMENTS'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Remarks Comments'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3828557466330317876)
,p_db_column_name=>'SUMMARY_RECOMMENDED_GRADE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Summary Recommended Grade'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854104571014022846)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3807820454148793481)
,p_db_column_name=>'REFEREE_FULL_NAME'
,p_display_order=>26
,p_column_identifier=>'Q'
,p_column_label=>'Referee full name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3717493502524872677)
,p_db_column_name=>'IND_ID'
,p_display_order=>36
,p_column_identifier=>'R'
,p_column_label=>'Applicants'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3854360893609385343)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(677582916748647227)
,p_db_column_name=>'POSITION'
,p_display_order=>56
,p_column_identifier=>'T'
,p_column_label=>'Position'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(677585204281647250)
,p_db_column_name=>'REF_ORG_NAME'
,p_display_order=>66
,p_column_identifier=>'U'
,p_column_label=>'Referee Company'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(677585270888647251)
,p_db_column_name=>'ORG_ID'
,p_display_order=>76
,p_column_identifier=>'V'
,p_column_label=>'Org Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3811553121719607311)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'459660'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'POSITION:CONFIG_ID:SUMMARY_RECOMMENDED_GRADE:DATE_OF_REFERENCE:GENERAL_REMARKS:REMARKS_COMMENTS:REFEREE_FULL_NAME:IND_ID'
,p_break_on=>'CONFIG_ID:0:0:0:0:0'
,p_break_enabled_on=>'CONFIG_ID:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3828556663117317866)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(670320667779599621)
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
 p_id=>wwv_flow_imp.id(3828556195340317866)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(670320667779599621)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:9970:&SESSION.::&DEBUG.:RP,9970::'
,p_security_scheme=>wwv_flow_imp.id(3807019444763118136)
);
wwv_flow_imp.component_end;
end;
/
