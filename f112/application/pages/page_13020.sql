prompt --application/pages/page_13020
begin
--   Manifest
--     PAGE: 13020
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
 p_id=>13020
,p_name=>'rptCompetency'
,p_alias=>'RPTCOMPETENCY'
,p_step_title=>'Listing of Competencies & Skills'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3297885541186705980)
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3462190591551318322)
,p_plug_name=>'Competency Listing'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3462190672112318323)
,p_plug_name=>'Skills'
,p_parent_plug_id=>wwv_flow_imp.id(3462190591551318322)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    id, ',
'    id Pkey,',
'    org_id,',
'    competency_type,',
'    short_name, ',
'    description, ',
'    competency_def,',
'    factor_weight,',
'    start_date,',
'    end_date, ',
'    entered_by,',
'    entry_date,',
'    last_changed_by,',
'    last_changed_date',
'from ',
'    hr_hcf_competency',
'where ',
'    org_id = :APP_ORG_ID',
'    and competency_type = ''F''',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Skills'
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
 p_id=>wwv_flow_imp.id(3462190799635318324)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:13021:&SESSION.::&DEBUG.::P13021_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'ICARTER'
,p_internal_uid=>1211816755127341716
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2876745507116914623)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2876745864862914625)
,p_db_column_name=>'PKEY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Pkey'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2876746258119914626)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2876746706508914626)
,p_db_column_name=>'COMPETENCY_DEF'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Competency Definition'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2876747058283914627)
,p_db_column_name=>'FACTOR_WEIGHT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Factor Weight'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2876747461523914627)
,p_db_column_name=>'START_DATE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2876747887196914628)
,p_db_column_name=>'END_DATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2876748628994914628)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2876748956835914629)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2876749405947914629)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2876749826075914630)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2876750200723914631)
,p_db_column_name=>'ORG_ID'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Org Id'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2876750627206914631)
,p_db_column_name=>'SHORT_NAME'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Short Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2876750984374914632)
,p_db_column_name=>'COMPETENCY_TYPE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Competency Type'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(2854352117541784839)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3494008242267104994)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6263773'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SHORT_NAME:DESCRIPTION:FACTOR_WEIGHT:START_DATE:END_DATE:ENTERED_BY:ENTRY_DATE:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3469931094593426615)
,p_plug_name=>'Competencies'
,p_parent_plug_id=>wwv_flow_imp.id(3462190591551318322)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    id, ',
'    id Pkey,',
'    org_id,',
'    competency_type,',
'    short_name, ',
'    description, ',
'    competency_def,',
'    factor_weight,',
'    start_date,',
'    end_date, ',
'    entered_by,',
'    entry_date,',
'    last_changed_by,',
'    last_changed_date',
'from ',
'    hr_hcf_competency',
'where ',
'    org_id = :APP_ORG_ID',
'    and competency_type != ''F''',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Competencies'
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
 p_id=>wwv_flow_imp.id(3469931448230426619)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:13021:&SESSION.::&DEBUG.::P13021_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'ICARTER'
,p_internal_uid=>1219557403722450011
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2876752099840914638)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2876752457388914639)
,p_db_column_name=>'PKEY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Pkey'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2876756488610914643)
,p_db_column_name=>'ORG_ID'
,p_display_order=>30
,p_column_identifier=>'M'
,p_column_label=>'Org Id'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2876756848343914644)
,p_db_column_name=>'SHORT_NAME'
,p_display_order=>40
,p_column_identifier=>'N'
,p_column_label=>'Short Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2876752931806914639)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2876753292441914639)
,p_db_column_name=>'COMPETENCY_DEF'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Competency Definition'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2876753650300914640)
,p_db_column_name=>'FACTOR_WEIGHT'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Factor Weight'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2876754046039914640)
,p_db_column_name=>'START_DATE'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2876754518232914641)
,p_db_column_name=>'END_DATE'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2876754876043914641)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2876755292944914642)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2876755691231914642)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>120
,p_column_identifier=>'K'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2876756103270914643)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>130
,p_column_identifier=>'L'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2876757287003914644)
,p_db_column_name=>'COMPETENCY_TYPE'
,p_display_order=>140
,p_column_identifier=>'O'
,p_column_label=>'Competency Type'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(2854352117541784839)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3469949155087500146)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6263836'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COMPETENCY_TYPE:SHORT_NAME:DESCRIPTION:COMPETENCY_DEF:FACTOR_WEIGHT:START_DATE:END_DATE:ENTERED_BY:ENTRY_DATE:'
,p_break_on=>'COMPETENCY_TYPE:0:0:0:0:0'
,p_break_enabled_on=>'COMPETENCY_TYPE:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3469930225417424408)
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2876758378594914645)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3469930225417424408)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2876758775244914646)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3469930225417424408)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:13021:&SESSION.::&DEBUG.:13021::'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2876759921738914648)
,p_branch_name=>'Go To Page 13021'
,p_branch_action=>'f?p=&APP_ID.:13021:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(2876758775244914646)
,p_branch_sequence=>10
);
wwv_flow_imp.component_end;
end;
/
