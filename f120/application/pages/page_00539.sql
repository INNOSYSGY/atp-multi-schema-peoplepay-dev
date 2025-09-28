prompt --application/pages/page_00539
begin
--   Manifest
--     PAGE: 00539
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>539
,p_name=>'rptApplicant'
,p_alias=>'RPTAPPLICANT'
,p_step_title=>'Listing of Applicants'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3603892462384379471)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3585334160394360204)
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(448636162611841684)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10766773638420877516)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3625798866754484854)
,p_plug_name=>'Listing of Applicants'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       APPLICANT_NO,',
'       SURNAME,',
'       FIRST_NAME,',
'       MIDDLE_NAME,',
'       ALIAS,',
'       DOB,',
'       SEX_CODE,',
'       MARITAL_CODE,',
'       NATIONALITY,',
'       TELEPHONE,',
'       CELL_PHONE,',
'       EMAIL,',
'       ENTERED_BY,',
'       ENTRY_DATE,',
'       VERIFIED_BY,',
'       VERIFIED_DATE,     ',
'       LAST_CHANGED_BY,',
'       LAST_CHANGED_DATE,(select count(1) Application_count from HR_APL_JOBREQUEST  x where x.applicant_id = a.id) Application_count,',
'       decode(nvl(dbms_lob.getlength(PHOTO),0),0,null,',
'       ''<img alt="''||apex_escape.html_attribute(SURNAME)||''" title="''||apex_escape.html_attribute(SURNAME)',
'              ||''" style="border: 4px solid #CCC; -moz-border-radius: 50%; -webkit-border-radius: 50%;" ''',
'              ||''src="''||apex_util.get_blob_file_src(''P540_PHOTO'',a.id)||''" height="75" width="75" />'') PHOTO,',
'       SALUTATION,     ',
'       REMARKS,',
'       CORR_PREFERENCE,',
'       WORK_PERMIT,',
'       CERTIFY_AUTHENTIC,',
'       MISSINFO_CONSEQUENCES,',
'       SIG_PHOTO,     ',
'       USE_SOCIAL_LOGIN,',
'       CURRENT_AUTH, fn_getHasAppDetails(id) has_details',
'  from HR_APL_INDIVIDUAL A',
' where exists (select 1 ',
'                from HR_APL_INDSECURITY B',
'                where  B.APPLICANT_ID = A.ID',
'                AND ORG_ID=:APP_ORG_ID',
'                )          ',
'and a.id = decode(fn_getapplicant(:APP_USER), ''0'', a.id, fn_getapplicant(:APP_USER))',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Listing of Applicants'
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
 p_id=>wwv_flow_imp.id(3625798770575484854)
,p_name=>'rptApplicant'
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
,p_detail_link=>'f?p=&APP_ID.:540:&SESSION.::&DEBUG.:540:P540_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(3585335069773360204)
,p_owner=>'PPLPAYDEMO'
,p_internal_uid=>30437052136578911
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3625798370714484851)
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
 p_id=>wwv_flow_imp.id(3625797995664484849)
,p_db_column_name=>'APPLICANT_NO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Applicant No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3625797531982484849)
,p_db_column_name=>'SURNAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Surname'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3625797196735484848)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3625796756609484848)
,p_db_column_name=>'MIDDLE_NAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Middle Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3625796330325484847)
,p_db_column_name=>'ALIAS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Alias'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3625795933252484846)
,p_db_column_name=>'DOB'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Dob'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3625795568538484846)
,p_db_column_name=>'SEX_CODE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Sex Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3625795320831484845)
,p_db_column_name=>'MARITAL_CODE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Marital Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3625794916764484845)
,p_db_column_name=>'NATIONALITY'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Nationality'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3625794521867484844)
,p_db_column_name=>'TELEPHONE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Telephone'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3625794045709484843)
,p_db_column_name=>'CELL_PHONE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Cell Phone'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3625793656768484843)
,p_db_column_name=>'EMAIL'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3625793277517484842)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3625792874578484841)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3625792514781484841)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3625792104144484840)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3625790907387484838)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3625790437962484838)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3625788877734484835)
,p_db_column_name=>'SALUTATION'
,p_display_order=>26
,p_column_identifier=>'Y'
,p_column_label=>'Salutation'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3625787721488484833)
,p_db_column_name=>'REMARKS'
,p_display_order=>29
,p_column_identifier=>'AB'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3625787314837484833)
,p_db_column_name=>'CORR_PREFERENCE'
,p_display_order=>30
,p_column_identifier=>'AC'
,p_column_label=>'Corr Preference'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3625786891169484832)
,p_db_column_name=>'WORK_PERMIT'
,p_display_order=>31
,p_column_identifier=>'AD'
,p_column_label=>'Work Permit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3625786424224484831)
,p_db_column_name=>'CERTIFY_AUTHENTIC'
,p_display_order=>32
,p_column_identifier=>'AE'
,p_column_label=>'Certify Authentic'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3625786055488484831)
,p_db_column_name=>'MISSINFO_CONSEQUENCES'
,p_display_order=>33
,p_column_identifier=>'AF'
,p_column_label=>'Missinfo Consequences'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3625782520733484825)
,p_db_column_name=>'USE_SOCIAL_LOGIN'
,p_display_order=>43
,p_column_identifier=>'AO'
,p_column_label=>'Use Social Login'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3625782059244484824)
,p_db_column_name=>'CURRENT_AUTH'
,p_display_order=>44
,p_column_identifier=>'AP'
,p_column_label=>'Current Auth'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3628329460279362857)
,p_db_column_name=>'SIG_PHOTO'
,p_display_order=>64
,p_column_identifier=>'AR'
,p_column_label=>'Sig Photo'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3628329147292362854)
,p_db_column_name=>'PHOTO'
,p_display_order=>74
,p_column_identifier=>'AS'
,p_column_label=>'Photo'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'PCT_GRAPH:::'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3138768488598327278)
,p_db_column_name=>'APPLICATION_COUNT'
,p_display_order=>84
,p_column_identifier=>'AT'
,p_column_label=>'Application Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3218659040417905009)
,p_db_column_name=>'HAS_DETAILS'
,p_display_order=>94
,p_column_identifier=>'AU'
,p_column_label=>'Has Details'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3625780110473463990)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'304558'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PHOTO:APPLICANT_NO:SURNAME:FIRST_NAME:DOB:SEX_CODE:MARITAL_CODE:NATIONALITY:CELL_PHONE:EMAIL:CORR_PREFERENCE:APPLICATION_COUNT::HAS_DETAILS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3628329254674362855)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(448636162611841684)
,p_button_name=>'Return'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3628329399590362856)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(448636162611841684)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:540:&SESSION.::&DEBUG.:540::'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp.component_end;
end;
/
