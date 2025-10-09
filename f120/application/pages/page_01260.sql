prompt --application/pages/page_01260
begin
--   Manifest
--     PAGE: 01260
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>221824690189185566
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>1260
,p_name=>'rptIndividual'
,p_step_title=>'Listing of All Individuals'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(571577838282799188)
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'td[headers ~="image"] img {',
'  border: 4px solid #CCC; -moz-border-radius: 50%; -webkit-border-radius: 50%;',
'  width: 75px;',
'  height: 75px;',
'} '))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3807158850583545770)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(533222782123677140)
,p_plug_name=>'Listing of Employees with Referees'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct c.emp_company_no, trim(initcap(surname)) surname, trim(initcap(FIRST_NAME)) FIRST_NAME, DOB, trim(upper(SEX_CODE)) SEX_CODE, ',
'orgdtl_id, position_name,',
'(select ID from hr_rcm_individual x where x.id=b.ind_id) ind_id,',
'REF_DATE,',
'a.id pk_id,',
'(select trim(initcap(surname)) from hr_rcm_individual x where x.id=b.ind_id) Rel_surname,',
'(select trim(initcap(FIRST_NAME))  from hr_rcm_individual x where x.id=b.ind_id) rl_FIRST_NAME,',
'(select DOB from hr_rcm_individual x where x.id=b.ind_id) rel_DOB,',
'(select pkg_global_fnts.fn_calcage(DOB,current_date) from hr_rcm_individual x where x.id=b.ind_id) Age,',
'(select sex_code from hr_rcm_individual x where x.id=b.ind_id) rel_sex_code,',
'(select organisation_name from hr_hcf_organisation W where  W.id=b.org_id) organisation_name',
'from hr_rcm_individual A JOIN hr_rcm_reference b on a.id = b.referee_for',
'join hr_rcm_employee c on c.ind_id = a.id',
'where ind_org_id  in (:APP_ORG_SHR_DED,:APP_ORG_ID)          ',
'and trunc(b.entry_date) between :P1260_ENTRY_START_2 AND :P1260_ENTRY_END_2'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1260_ENTRY_START_2,P1260_ENTRY_END_2'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
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
 p_id=>wwv_flow_imp.id(533222927469677141)
,p_max_row_count=>'1000000'
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
,p_detail_link=>'f?p=&APP_ID.:1261:&SESSION.::&DEBUG.:1261:P1261_ID,P1261_NAVIGATOR:#IND_ID#,1260'
,p_detail_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'TEMPLATE_APPV8'
,p_internal_uid=>32914091486032923
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(533223003275677142)
,p_db_column_name=>'EMP_COMPANY_NO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Emp Company No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(533223079466677143)
,p_db_column_name=>'SURNAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Surname'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(533223193989677144)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(533223251885677145)
,p_db_column_name=>'DOB'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Dob'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(533223432507677146)
,p_db_column_name=>'SEX_CODE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Sex Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(533223519570677147)
,p_db_column_name=>'ORGDTL_ID'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Work Unit'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854315722757558986)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(533223624841677148)
,p_db_column_name=>'POSITION_NAME'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Position Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(533223655488677149)
,p_db_column_name=>'IND_ID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Ind Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(533224647392677159)
,p_db_column_name=>'PK_ID'
,p_display_order=>180
,p_column_identifier=>'I'
,p_column_label=>'Pk Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(533224788308677160)
,p_db_column_name=>'REL_SURNAME'
,p_display_order=>190
,p_column_identifier=>'J'
,p_column_label=>'Surname'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(533224875956677161)
,p_db_column_name=>'RL_FIRST_NAME'
,p_display_order=>200
,p_column_identifier=>'K'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(533224993337677162)
,p_db_column_name=>'REL_DOB'
,p_display_order=>210
,p_column_identifier=>'L'
,p_column_label=>'DOB'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(533225089082677163)
,p_db_column_name=>'AGE'
,p_display_order=>220
,p_column_identifier=>'M'
,p_column_label=>'Age'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(533225228105677164)
,p_db_column_name=>'REL_SEX_CODE'
,p_display_order=>230
,p_column_identifier=>'N'
,p_column_label=>'Sex Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(533225379600677166)
,p_db_column_name=>'REF_DATE'
,p_display_order=>240
,p_column_identifier=>'O'
,p_column_label=>'Ref Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(533225451946677167)
,p_db_column_name=>'ORGANISATION_NAME'
,p_display_order=>250
,p_column_identifier=>'P'
,p_column_label=>'Organisation Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(537588206813912705)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'372794'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ORGDTL_ID:POSITION_NAME:EMP_COMPANY_NO:SURNAME:FIRST_NAME:ORGANISATION_NAME:RL_FIRST_NAME:REL_SURNAME:DOB:SEX_CODE:REL_DOB:AGE:REL_SEX_CODE:REF_DATE:'
,p_break_on=>'ORGDTL_ID:POSITION_NAME:EMP_COMPANY_NO:SURNAME:FIRST_NAME'
,p_break_enabled_on=>'ORGDTL_ID:POSITION_NAME:EMP_COMPANY_NO:SURNAME:FIRST_NAME'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(560104141701897001)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>9
,p_location=>null
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'USER')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(560104224289897002)
,p_plug_name=>'Listing of Employees with Relatives'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    distinct c.emp_company_no, ',
'    trim(initcap(surname)) surname, ',
'    trim(initcap(FIRST_NAME)) FIRST_NAME, ',
'    DOB, trim(upper(SEX_CODE)) SEX_CODE, ',
'    orgdtl_id, ',
'    position_name,',
'    (select ID from hr_rcm_individual x where x.id=b.ind_id) ind_id,',
'    primary_contact, ',
'    EMERGENCY_CONTACT, ',
'    COURT_APPOINTED,  ',
'    CASE WHEN TAX_DEDUCTIBLE=0 THEN ''N'' ELSE ''Y'' END TAX_DEDUCTIBLE, ',
'    BENEFICIARY, ',
'    RELATION_ID, STUDENT, ',
'    initcap(RELATION) RELATION,',
'    b.DEPENDANT, ',
'    a.id pk_id,',
'    (select trim(initcap(surname)) from hr_rcm_individual x where x.id=b.ind_id) Rel_surname,',
'    (select trim(initcap(FIRST_NAME))  from hr_rcm_individual x where x.id=b.ind_id) rl_FIRST_NAME,',
'    (select DOB from hr_rcm_individual x where x.id=b.ind_id) rel_DOB,',
'    (select pkg_global_fnts.fn_calcage(DOB,current_date) from hr_rcm_individual x where x.id=b.ind_id) Age,',
'    (select sex_code from hr_rcm_individual x where x.id=b.ind_id) rel_sex_code,',
'    (select MAX(ID) from hr_rcm_natidentifier W where iD_type=''BIRTH CERT NO'' AND W.ind_id=b.ind_id) PK_BIRTH_CERT,',
'    email',
'from hr_rcm_individual A JOIN hr_rcm_relativesfrd b on a.id = b.related_to',
'join hr_rcm_employee c on c.ind_id = a.id',
'where ind_org_id  in (:APP_ORG_SHR_DED,:APP_ORG_ID)          ',
'and trunc(b.entry_date) between :P1260_ENTRY_START_1 AND :P1260_ENTRY_END_1'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1260_ENTRY_START_1,P1260_ENTRY_END_1'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
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
 p_id=>wwv_flow_imp.id(565015583352064902)
,p_max_row_count=>'1000000'
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
,p_detail_link=>'f?p=&APP_ID.:1261:&SESSION.::&DEBUG.:1261:P1261_ID,P1261_NAVIGATOR:#IND_ID#,1260'
,p_detail_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'TEMPLATE_APPV8'
,p_internal_uid=>82107474972176423
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(565015639986064903)
,p_db_column_name=>'EMP_COMPANY_NO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Emp Company No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(565015805586064904)
,p_db_column_name=>'SURNAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Surname'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(565015821221064905)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(565015933465064906)
,p_db_column_name=>'DOB'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Dob'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(565016062082064907)
,p_db_column_name=>'SEX_CODE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Sex Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(565016155851064908)
,p_db_column_name=>'ORGDTL_ID'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Work Unit'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854315722757558986)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(565016275390064909)
,p_db_column_name=>'POSITION_NAME'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Position Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(565016383630064910)
,p_db_column_name=>'IND_ID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Ind Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(565016460753064911)
,p_db_column_name=>'PRIMARY_CONTACT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Primary Contact'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(565016540431064912)
,p_db_column_name=>'EMERGENCY_CONTACT'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Emergency Contact'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(565016681272064913)
,p_db_column_name=>'COURT_APPOINTED'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Court Appointed'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(565016723005064914)
,p_db_column_name=>'TAX_DEDUCTIBLE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Tax Deductible'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(565016810242064915)
,p_db_column_name=>'BENEFICIARY'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Beneficiary'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(565016996813064916)
,p_db_column_name=>'RELATION_ID'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Relation Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(565017070163064917)
,p_db_column_name=>'STUDENT'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Student'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(565017126565064918)
,p_db_column_name=>'RELATION'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Relation'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(565017307591064919)
,p_db_column_name=>'DEPENDANT'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Dependant'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(565017354042064920)
,p_db_column_name=>'PK_ID'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Pk Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(565017451367064921)
,p_db_column_name=>'REL_SURNAME'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Surname'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(565017596247064922)
,p_db_column_name=>'RL_FIRST_NAME'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(565017632785064923)
,p_db_column_name=>'REL_DOB'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'DOB'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(565017792110064924)
,p_db_column_name=>'AGE'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Age'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(565017848902064925)
,p_db_column_name=>'REL_SEX_CODE'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Sex Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(565107423801266600)
,p_db_column_name=>'PK_BIRTH_CERT'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Birth Cert'
,p_column_link=>'f?p=&APP_ID.:1271:&SESSION.::&DEBUG.:1271:P1271_ID,P1271_IND_ID:#PK_BIRTH_CERT#,#IND_ID#'
,p_column_linktext=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(665749765208891103)
,p_db_column_name=>'EMAIL'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(565065052559120640)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'821570'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ORGDTL_ID:POSITION_NAME:EMP_COMPANY_NO:SURNAME:FIRST_NAME:REL_SURNAME:RL_FIRST_NAME:REL_DOB:RELATION:AGE:REL_SEX_CODE:TAX_DEDUCTIBLE:PRIMARY_CONTACT:EMERGENCY_CONTACT:COURT_APPOINTED:BENEFICIARY:STUDENT:DEPENDANT:PK_BIRTH_CERT:'
,p_break_on=>'ORGDTL_ID:POSITION_NAME:EMP_COMPANY_NO:SURNAME:FIRST_NAME'
,p_break_enabled_on=>'ORGDTL_ID:POSITION_NAME:EMP_COMPANY_NO:SURNAME:FIRST_NAME'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(571609893266526886)
,p_plug_name=>'Listing of Individuals Only'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ID", case when PKG_GLOBAL_FNTS.test_act_employee(id)=1 then ''Active Employee'' else ''Separated/Individual Only'' end Emp_Status ,',
'--PKG_GLOBAL_FNTS.Ind_status(id) Status,',
'"SURNAME",',
'"FIRST_NAME",',
'"MIDDLE_NAME",',
'"ALIAS",',
'"DOB",',
'"DOD",',
'"PLACE_OF_BIRTH",',
'"SEX_CODE",',
'"MARITAL_CODE",',
'"MAIDEN_NAME",',
'"NO_OF_CHILDREN",',
'"HEIGHT",',
'"WEIGHT",',
'"EYE_COLOUR",',
'"HAIR_COLOUR",',
'"BUILT",',
'"DISTINGUISHED_MARKS",',
'"RACE_ID",',
'"NATIONALITY",',
'"TELEPHONE",',
'"BANK_BRANCH_ID",',
'"BANK_ACCOUNT_NO",',
'"ENTERED_BY",',
'"ENTRY_DATE",',
'"VERIFIED_BY",',
'"VERIFIED_DATE",',
'"RELIGION",',
'"CELL_PHONE",',
'"EMAIL",',
'"DATE_OF_MARRIAGE",',
'"PLACE_OF_MARRIAGE",',
'--case when dbms_lob.getlength(photo) is null then ''#APP_IMAGES#No_photo.jpg'' else apex_util.prepare_url(''f?p=''||:APP_ID||''.:IMAGE:''||:APP_SESSION||''::::GET_ID:''',
'  ---            ||id) end "PHOTO",',
'first_name || '' '' || surname photo_label,',
'''nowhere'' photo_link,',
'"JOINT_ACCOUNT",',
'"MACHINE_INSERT",',
'"MACHINE_UPDATE",',
'"LAST_CHANGED_BY",',
'"LAST_CHANGED_DATE",',
'to_number(PKG_GLOBAL_FNTS.fn_calcage(nvl(dob,current_date),current_date)) age,',
'--  decode(nvl(dbms_lob.getlength(PHOTO),0),0,null,',
'--        ''<img alt="''||apex_escape.html_attribute(SURNAME)||''" title="''||apex_escape.html_attribute(SURNAME)',
'--               ||''" style="border: 4px solid #CCC; -moz-border-radius: 50%; -webkit-border-radius: 50%;" ''',
'--               ||''src="''||apex_util.get_blob_file_src(''P1261_LOAD_PHOTO'',x.id) ||''" height="75" width="75" />'') detail_img',
'              (select max(id) from hr_rcm_employee w where w.ind_id=x.id) Emp_Link',
'              , dbms_lob.getlength(PHOTO)  image ,work_phone, alternative_email',
'from "HR_RCM_INDIVIDUAL" x',
'where IND_ORG_ID in (:APP_ORG_ID,:APP_ORG_SHR_DED)',
'and trunc(entry_date) between :P1260_START_DATE AND :P1260_END_DATE',
'and not exists (select 1    ',
'                from hr_rcm_employee Y',
'                where y.ind_id = x.id)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1260_START_DATE,P1260_END_DATE'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'pkg_global_fnts.fn_selfReport_to(:APP_ORG_ID)=0'
,p_plug_display_when_cond2=>'PLSQL'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
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
 p_id=>wwv_flow_imp.id(571609950656526887)
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1261:&SESSION.::&DEBUG.::P1261_ID,P1261_NAVIGATOR,P1261_SEARCH_COMP,P1261_SEARCH_COMP_APP,P1261_SEARCH_COMP_EXT,P1261_SEARCH_COMP_NAT,P1261_SEARCH_COMP_PAST,P1261_SEARCH_COMP_QUAL,P1261_SEARCH_COMP_REF,P1261_SEARCH_COMP_REL:#ID#,1260,0,0'
||',0,0,0,0,0,0'
,p_detail_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(3807159759962545770)
,p_owner=>'TEMPLATE_APPV8'
,p_internal_uid=>88701842276638408
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(571610013830526888)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(571610146834526889)
,p_db_column_name=>'DOB'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'DOB'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(571610234762526890)
,p_db_column_name=>'DOD'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'DOD'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(571610402744526891)
,p_db_column_name=>'NO_OF_CHILDREN'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'No Of Children'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(571610464251526892)
,p_db_column_name=>'HEIGHT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Height'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(571610528821526893)
,p_db_column_name=>'WEIGHT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Weight'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(571610642444526894)
,p_db_column_name=>'RACE_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Race Id'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(571610716821526895)
,p_db_column_name=>'BANK_BRANCH_ID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Bank Branch Id'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(571610868886526896)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(571610947554526897)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(571611052524526898)
,p_db_column_name=>'DATE_OF_MARRIAGE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Date Of Marriage'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(571611117051526899)
,p_db_column_name=>'JOINT_ACCOUNT'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Joint Account'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(571611280659526900)
,p_db_column_name=>'SURNAME'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Surname'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(571611360056526901)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(571611440683526902)
,p_db_column_name=>'MIDDLE_NAME'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Middle Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(571611560515526903)
,p_db_column_name=>'ALIAS'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Alias'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(571611662070526904)
,p_db_column_name=>'PLACE_OF_BIRTH'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Place Of Birth'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(571611754708526905)
,p_db_column_name=>'SEX_CODE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Gender'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3854218527603438461)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(571611854679526906)
,p_db_column_name=>'MARITAL_CODE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Marital Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(571611911595526907)
,p_db_column_name=>'MAIDEN_NAME'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Maiden Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(571612075621526908)
,p_db_column_name=>'EYE_COLOUR'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Eye Colour'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(571612162438526909)
,p_db_column_name=>'HAIR_COLOUR'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Hair Colour'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(571612221531526910)
,p_db_column_name=>'BUILT'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Built'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(571612314956526911)
,p_db_column_name=>'DISTINGUISHED_MARKS'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Distinguished Marks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(571612427333526912)
,p_db_column_name=>'NATIONALITY'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Nationality'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(571612539045526913)
,p_db_column_name=>'TELEPHONE'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Telephone'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(571612636976526914)
,p_db_column_name=>'BANK_ACCOUNT_NO'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Bank Account No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(571612730289526915)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(571612886224526916)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(571612965175526917)
,p_db_column_name=>'RELIGION'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Religion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(571613048424526918)
,p_db_column_name=>'CELL_PHONE'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Cell Phone'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(571613165708526919)
,p_db_column_name=>'EMAIL'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(571613308362526920)
,p_db_column_name=>'PLACE_OF_MARRIAGE'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Place Of Marriage'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(571613336700526921)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(571613489358526922)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(571613604805526923)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(571613673003526924)
,p_db_column_name=>'EMP_STATUS'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Emp status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(571613774440526925)
,p_db_column_name=>'PHOTO_LABEL'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Photo label'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(571613858377526926)
,p_db_column_name=>'PHOTO_LINK'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Photo link'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(571613910820526927)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(571614032731526928)
,p_db_column_name=>'AGE'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Age'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(571614147644526929)
,p_db_column_name=>'EMP_LINK'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Emp Link'
,p_column_link=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:RP,1281:P1281_ID,P1281_NAVIGATOR:#EMP_LINK#,1260'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_link_attr=>'title="Most Recent Employment"'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USER_PAGE_DML_ACCESS',
'WHERE WEBPAGE_ID=1281',
'AND CAN_VIEW=''Y'''))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(581466978215166880)
,p_db_column_name=>'IMAGE'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Image'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'IMAGE:HR_RCM_INDIVIDUAL:PHOTO:ID::MIMETYPE:FILENAME:::::'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(581467077443166881)
,p_db_column_name=>'WORK_PHONE'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Work Phone'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(581467158627166882)
,p_db_column_name=>'ALTERNATIVE_EMAIL'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Work Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(581487448513196734)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'985794'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FIRST_NAME:SURNAME:DOB:NO_OF_CHILDREN:SEX_CODE:MARITAL_CODE:MAIDEN_NAME:TELEPHONE:NATIONALITY:CELL_PHONE:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3744270603303688342)
,p_plug_name=>'Listing of All Individuals'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ID", case when PKG_GLOBAL_FNTS.test_act_employee(id)=1 then ''Active Employee'' else ''Separated/Individual Only'' end Emp_Status ,',
'--PKG_GLOBAL_FNTS.Ind_status(id) Status,',
'"SURNAME",',
'"FIRST_NAME",',
'"MIDDLE_NAME",',
'"ALIAS",',
'"DOB",',
'"DOD",',
'"PLACE_OF_BIRTH",',
'"SEX_CODE",',
'"MARITAL_CODE",',
'"MAIDEN_NAME",',
'"NO_OF_CHILDREN",',
'"HEIGHT",',
'"WEIGHT",',
'"EYE_COLOUR",',
'"HAIR_COLOUR",',
'"BUILT",',
'"DISTINGUISHED_MARKS",',
'"RACE_ID",',
'"NATIONALITY",',
'"TELEPHONE",',
'"BANK_BRANCH_ID",',
'"BANK_ACCOUNT_NO",',
'"ENTERED_BY",',
'"ENTRY_DATE",',
'"VERIFIED_BY",',
'"VERIFIED_DATE",',
'"RELIGION",',
'"CELL_PHONE",',
'"EMAIL",',
'"DATE_OF_MARRIAGE",',
'"PLACE_OF_MARRIAGE",',
'pkg_global_fnts.fn_getcurnistaxno(x.id, ''TIN'', sysdate) TIN,',
'pkg_global_fnts.fn_getcurnistaxno(x.id, ''NIS NUMBER'', sysdate) NIS,',
'--case when dbms_lob.getlength(photo) is null then ''#APP_IMAGES#No_photo.jpg'' else apex_util.prepare_url(''f?p=''||:APP_ID||''.:IMAGE:''||:APP_SESSION||''::::GET_ID:''',
'  ---            ||id) end "PHOTO",',
'first_name || '' '' || surname photo_label,',
'''nowhere'' photo_link,',
'"JOINT_ACCOUNT",',
'"MACHINE_INSERT",',
'"MACHINE_UPDATE",',
'"LAST_CHANGED_BY",',
'"LAST_CHANGED_DATE",',
'to_number(PKG_GLOBAL_FNTS.fn_calcage(nvl(dob,current_date),current_date)) age,',
'--  decode(nvl(dbms_lob.getlength(PHOTO),0),0,null,',
'--        ''<img alt="''||apex_escape.html_attribute(SURNAME)||''" title="''||apex_escape.html_attribute(SURNAME)',
'--               ||''" style="border: 4px solid #CCC; -moz-border-radius: 50%; -webkit-border-radius: 50%;" ''',
'--               ||''src="''||apex_util.get_blob_file_src(''P1261_LOAD_PHOTO'',x.id) ||''" height="75" width="75" />'') detail_img',
'              (select max(id) from hr_rcm_employee w where w.ind_id=x.id) Emp_Link',
'              , dbms_lob.getlength(PHOTO)  image ,work_phone, alternative_email',
'from "HR_RCM_INDIVIDUAL" x',
'where IND_ORG_ID in (:APP_ORG_ID,:APP_ORG_SHR_DED)',
'and trunc(entry_date) between :P1260_ENTRY_START AND :P1260_ENTRY_END',
'union',
'select "ID", case when PKG_GLOBAL_FNTS.test_act_employee(id)=1 then ''Active Employee'' else ''Separated/Individual Only'' end Emp_Status ,',
'--PKG_GLOBAL_FNTS.Ind_status(id) Status,',
'"SURNAME",',
'"FIRST_NAME",',
'"MIDDLE_NAME",',
'"ALIAS",',
'"DOB",',
'"DOD",',
'"PLACE_OF_BIRTH",',
'"SEX_CODE",',
'"MARITAL_CODE",',
'"MAIDEN_NAME",',
'"NO_OF_CHILDREN",',
'"HEIGHT",',
'"WEIGHT",',
'"EYE_COLOUR",',
'"HAIR_COLOUR",',
'"BUILT",',
'"DISTINGUISHED_MARKS",',
'"RACE_ID",',
'"NATIONALITY",',
'"TELEPHONE",',
'"BANK_BRANCH_ID",',
'"BANK_ACCOUNT_NO",',
'"ENTERED_BY",',
'"ENTRY_DATE",',
'"VERIFIED_BY",',
'"VERIFIED_DATE",',
'"RELIGION",',
'"CELL_PHONE",',
'"EMAIL",',
'"DATE_OF_MARRIAGE",',
'"PLACE_OF_MARRIAGE",',
'pkg_global_fnts.fn_getcurnistaxno(x.id, ''TIN'', sysdate) TIN,',
'pkg_global_fnts.fn_getcurnistaxno(x.id, ''NIS NUMBER'', sysdate) NIS,',
'--case when dbms_lob.getlength(photo) is null then ''#APP_IMAGES#No_photo.jpg'' else apex_util.prepare_url(''f?p=''||:APP_ID||''.:IMAGE:''||:APP_SESSION||''::::GET_ID:''',
'  --            ||id) end "PHOTO",',
'first_name || '' '' || surname photo_label,',
'''nowhere'' photo_link,',
'"JOINT_ACCOUNT",',
'"MACHINE_INSERT",',
'"MACHINE_UPDATE",',
'"LAST_CHANGED_BY",',
'"LAST_CHANGED_DATE",',
'PKG_GLOBAL_FNTS.fn_calcage(nvl(dob,current_date),current_date) age,',
'-- decode(nvl(dbms_lob.getlength(PHOTO),0),0,null,',
'--        ''<img alt="''||apex_escape.html_attribute(SURNAME)||''" title="''||apex_escape.html_attribute(SURNAME)',
'--               ||''" style="border: 4px solid #CCC; -moz-border-radius: 50%; -webkit-border-radius: 50%;" ''',
'--               ||''src="''||apex_util.get_blob_file_src(''P1261_LOAD_PHOTO'',x.id) ||''" height="75" width="75" />'') detail_img',
'                (select max(id) from hr_rcm_employee w where w.ind_id=x.id) Emp_Link',
'                , dbms_lob.getlength(PHOTO) image,work_phone, alternative_email',
'from HR_RCM_INDIVIDUAL x ',
'where exists ( ',
'              select 1',
'              FROM HR_RCM_RELATIVESFRD w join hr_rcm_employee c on w.ind_id=c.ind_id',
'              WHERE w.RELATED_TO=x.id               ',
'              )',
'and IND_ORG_ID in (:APP_ORG_ID,:APP_ORG_SHR_DED)    ',
'and trunc(entry_date) between :P1260_ENTRY_START AND :P1260_ENTRY_END        ',
'union',
'select "ID", case when PKG_GLOBAL_FNTS.test_act_employee(id)=1 then ''Active Employee'' else ''Individual Only'' end Emp_Status ,',
'--PKG_GLOBAL_FNTS.Ind_status(id) Status,',
'"SURNAME",',
'"FIRST_NAME",',
'"MIDDLE_NAME",',
'"ALIAS",',
'"DOB",',
'"DOD",',
'"PLACE_OF_BIRTH",',
'"SEX_CODE",',
'"MARITAL_CODE",',
'"MAIDEN_NAME",',
'"NO_OF_CHILDREN",',
'"HEIGHT",',
'"WEIGHT",',
'"EYE_COLOUR",',
'"HAIR_COLOUR",',
'"BUILT",',
'"DISTINGUISHED_MARKS",',
'"RACE_ID",',
'"NATIONALITY",',
'"TELEPHONE",',
'"BANK_BRANCH_ID",',
'"BANK_ACCOUNT_NO",',
'"ENTERED_BY",',
'"ENTRY_DATE",',
'"VERIFIED_BY",',
'"VERIFIED_DATE",',
'"RELIGION",',
'"CELL_PHONE",',
'"EMAIL",',
'"DATE_OF_MARRIAGE",',
'"PLACE_OF_MARRIAGE",',
'pkg_global_fnts.fn_getcurnistaxno(x.id, ''TIN'', sysdate) TIN,',
'pkg_global_fnts.fn_getcurnistaxno(x.id, ''NIS NUMBER'', sysdate) NIS,',
'--case when dbms_lob.getlength(photo) is null then ''#APP_IMAGES#No_photo.jpg'' else apex_util.prepare_url(''f?p=''||:APP_ID||''.:IMAGE:''||:APP_SESSION||''::::GET_ID:''',
' --             ||id) end "PHOTO",',
'first_name || '' '' || surname photo_label,',
'''nowhere'' photo_link,',
'"JOINT_ACCOUNT",',
'"MACHINE_INSERT",',
'"MACHINE_UPDATE",',
'"LAST_CHANGED_BY",',
'"LAST_CHANGED_DATE",',
'PKG_GLOBAL_FNTS.fn_calcage(nvl(dob,current_date),current_date) age,',
'-- decode(nvl(dbms_lob.getlength(PHOTO),0),0,null,',
'--        ''<img alt="''||apex_escape.html_attribute(SURNAME)||''" title="''||apex_escape.html_attribute(SURNAME)',
'--               ||''" style="border: 4px solid #CCC; -moz-border-radius: 50%; -webkit-border-radius: 50%;" ''',
'--               ||''src="''||apex_util.get_blob_file_src(''P1261_LOAD_PHOTO'',x.id) ||''" height="75" width="75" />'') detail_img',
'                (select max(id) from hr_rcm_employee w where w.ind_id=x.id) Emp_Link',
'                , dbms_lob.getlength(PHOTO) image,work_phone, alternative_email',
'from HR_RCM_INDIVIDUAL x ',
'where exists ',
'            ( ',
'              select 1',
'              FROM HR_RCM_REFERENCE w join hr_rcm_employee c on w.referee_for=c.ind_id              ',
'              WHERE w.ind_id=x.id                     ',
'              )',
'and IND_ORG_ID in (:APP_ORG_ID,:APP_ORG_SHR_DED)              ',
'and trunc(entry_date) between :P1260_ENTRY_START AND :P1260_ENTRY_END'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1260_ENTRY_START,P1260_ENTRY_END'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'pkg_global_fnts.fn_selfReport_to(:APP_ORG_ID)=0'
,p_plug_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3744270419517688342)
,p_name=>'Create/Edit Individuals'
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
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1261:&SESSION.::&DEBUG.::P1261_ID,P1261_NAVIGATOR,P1261_SEARCH_COMP,P1261_SEARCH_COMP_APP,P1261_SEARCH_COMP_EXT,P1261_SEARCH_COMP_NAT,P1261_SEARCH_COMP_PAST,P1261_SEARCH_COMP_QUAL,P1261_SEARCH_COMP_REF,P1261_SEARCH_COMP_REL,GLOBAL_IND:#I'
||'D#,1260,0,0,0,0,0,0,0,0,#ID#'
,p_detail_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(3807159759962545770)
,p_owner=>'PUR_INV'
,p_internal_uid=>130393436818484793
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831358646198251449)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831346582039251431)
,p_db_column_name=>'DOB'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'DOB'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DOB'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831346170778251430)
,p_db_column_name=>'DOD'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'DOD'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DOD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831345771757251429)
,p_db_column_name=>'NO_OF_CHILDREN'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'No Of Children'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'NO_OF_CHILDREN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831345429790251428)
,p_db_column_name=>'HEIGHT'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Height'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'HEIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831344984514251428)
,p_db_column_name=>'WEIGHT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Weight'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'WEIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831344602066251426)
,p_db_column_name=>'RACE_ID'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Race Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'RACE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831344160962251426)
,p_db_column_name=>'BANK_BRANCH_ID'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Bank Branch Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'BANK_BRANCH_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831343780383251426)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831358221442251449)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831357772479251449)
,p_db_column_name=>'DATE_OF_MARRIAGE'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Date Of Marriage'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_OF_MARRIAGE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831357438462251447)
,p_db_column_name=>'JOINT_ACCOUNT'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Joint Account'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'JOINT_ACCOUNT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831356582244251447)
,p_db_column_name=>'SURNAME'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Surname'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SURNAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831356217795251447)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FIRST_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831355791702251445)
,p_db_column_name=>'MIDDLE_NAME'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'Middle Name'
,p_column_type=>'STRING'
,p_static_id=>'MIDDLE_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831355453943251445)
,p_db_column_name=>'ALIAS'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'Alias'
,p_column_type=>'STRING'
,p_static_id=>'ALIAS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831355047691251442)
,p_db_column_name=>'PLACE_OF_BIRTH'
,p_display_order=>45
,p_column_identifier=>'AS'
,p_column_label=>'Place Of Birth'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PLACE_OF_BIRTH'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831354563905251442)
,p_db_column_name=>'SEX_CODE'
,p_display_order=>46
,p_column_identifier=>'AT'
,p_column_label=>'Gender'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'SEX_CODE'
,p_rpt_named_lov=>wwv_flow_imp.id(3854218527603438461)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831354188249251442)
,p_db_column_name=>'MARITAL_CODE'
,p_display_order=>47
,p_column_identifier=>'AU'
,p_column_label=>'Marital Code'
,p_column_type=>'STRING'
,p_static_id=>'MARITAL_CODE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831353837592251442)
,p_db_column_name=>'MAIDEN_NAME'
,p_display_order=>48
,p_column_identifier=>'AV'
,p_column_label=>'Maiden Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MAIDEN_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831353403149251441)
,p_db_column_name=>'EYE_COLOUR'
,p_display_order=>49
,p_column_identifier=>'AW'
,p_column_label=>'Eye Colour'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'EYE_COLOUR'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831353053477251441)
,p_db_column_name=>'HAIR_COLOUR'
,p_display_order=>50
,p_column_identifier=>'AX'
,p_column_label=>'Hair Colour'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'HAIR_COLOUR'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831352628032251440)
,p_db_column_name=>'BUILT'
,p_display_order=>51
,p_column_identifier=>'AY'
,p_column_label=>'Built'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'BUILT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831352201752251440)
,p_db_column_name=>'DISTINGUISHED_MARKS'
,p_display_order=>52
,p_column_identifier=>'AZ'
,p_column_label=>'Distinguished Marks'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DISTINGUISHED_MARKS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831351783067251440)
,p_db_column_name=>'NATIONALITY'
,p_display_order=>53
,p_column_identifier=>'BA'
,p_column_label=>'Nationality'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'NATIONALITY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831351455072251438)
,p_db_column_name=>'TELEPHONE'
,p_display_order=>54
,p_column_identifier=>'BB'
,p_column_label=>'Telephone'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TELEPHONE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831351019576251437)
,p_db_column_name=>'BANK_ACCOUNT_NO'
,p_display_order=>55
,p_column_identifier=>'BC'
,p_column_label=>'Bank Account No'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'BANK_ACCOUNT_NO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831350592203251437)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>56
,p_column_identifier=>'BD'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831350167790251437)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>57
,p_column_identifier=>'BE'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831349810048251436)
,p_db_column_name=>'RELIGION'
,p_display_order=>58
,p_column_identifier=>'BF'
,p_column_label=>'Religion'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'RELIGION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831349454414251436)
,p_db_column_name=>'CELL_PHONE'
,p_display_order=>59
,p_column_identifier=>'BG'
,p_column_label=>'Cell Phone'
,p_column_type=>'STRING'
,p_static_id=>'CELL_PHONE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831348970402251435)
,p_db_column_name=>'EMAIL'
,p_display_order=>60
,p_column_identifier=>'BH'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'EMAIL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831348647381251435)
,p_db_column_name=>'PLACE_OF_MARRIAGE'
,p_display_order=>61
,p_column_identifier=>'BI'
,p_column_label=>'Place Of Marriage'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PLACE_OF_MARRIAGE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831348183157251434)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>64
,p_column_identifier=>'BL'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831347772497251434)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>65
,p_column_identifier=>'BM'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831347410566251433)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>66
,p_column_identifier=>'BN'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831359406473251451)
,p_db_column_name=>'EMP_STATUS'
,p_display_order=>79
,p_column_identifier=>'BR'
,p_column_label=>'Emp status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3855720091054320787)
,p_db_column_name=>'PHOTO_LABEL'
,p_display_order=>119
,p_column_identifier=>'BV'
,p_column_label=>'Photo label'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3855719984924320786)
,p_db_column_name=>'PHOTO_LINK'
,p_display_order=>129
,p_column_identifier=>'BW'
,p_column_label=>'Photo link'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3847468003163804288)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>139
,p_column_identifier=>'BZ'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3847468019494804289)
,p_db_column_name=>'AGE'
,p_display_order=>149
,p_column_identifier=>'CA'
,p_column_label=>'Age'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3713592180523677759)
,p_db_column_name=>'EMP_LINK'
,p_display_order=>169
,p_column_identifier=>'CC'
,p_column_label=>'Emp Link'
,p_column_link=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:RP,1281:P1281_ID,P1281_NAVIGATOR:#EMP_LINK#,1260'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_link_attr=>'title="Most Recent Employment"'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USER_PAGE_DML_ACCESS',
'WHERE WEBPAGE_ID=1281',
'AND CAN_VIEW=''Y'''))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2116786480070311718)
,p_db_column_name=>'IMAGE'
,p_display_order=>199
,p_column_identifier=>'CH'
,p_column_label=>'Image'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'IMAGE:HR_RCM_INDIVIDUAL:PHOTO:ID::MIMETYPE:FILENAME:::::'
,p_static_id=>'image'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(672139044003893548)
,p_db_column_name=>'WORK_PHONE'
,p_display_order=>209
,p_column_identifier=>'CI'
,p_column_label=>'Work Phone'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(672139157891893549)
,p_db_column_name=>'ALTERNATIVE_EMAIL'
,p_display_order=>219
,p_column_identifier=>'CJ'
,p_column_label=>'Work Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(605129342976050422)
,p_db_column_name=>'TIN'
,p_display_order=>229
,p_column_identifier=>'CL'
,p_column_label=>'Tin'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(605129375416050423)
,p_db_column_name=>'NIS'
,p_display_order=>239
,p_column_identifier=>'CM'
,p_column_label=>'Nis'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3744266514493688291)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'433216'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_view_mode=>'REPORT'
,p_report_columns=>'EMP_STATUS:IMAGE:AGE:SURNAME:FIRST_NAME:MIDDLE_NAME:DOB:ALIAS:SEX_CODE:MARITAL_CODE:CELL_PHONE:EMAIL:EMP_LINK:'
,p_break_on=>'EMP_STATUS:0:0:0:0:0'
,p_break_enabled_on=>'EMP_STATUS:0:0:0:0:0'
,p_chart_type=>'bar'
,p_chart_label_column=>'SEX_CODE'
,p_chart_value_column=>'AGE'
,p_chart_aggregate=>'COUNT'
,p_chart_sorting=>'DEFAULT'
,p_chart_orientation=>'vertical'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3784171470420630524)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Employees'
,p_report_seq=>10
,p_report_alias=>'433208'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_view_mode=>'REPORT'
,p_report_columns=>'AGE:SURNAME:FIRST_NAME:MIDDLE_NAME:DOB:ALIAS:SEX_CODE:MARITAL_CODE:CELL_PHONE:IMAGE:EMP_LINK'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(2132424273276068864)
,p_report_id=>wwv_flow_imp.id(3784171470420630524)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'EMP_STATUS'
,p_operator=>'='
,p_expr=>'Active Employee'
,p_condition_sql=>'"EMP_STATUS" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''Active Employee''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3811265314990192027)
,p_plug_name=>'Listing of All Individuals for Reporting Management to &APP_USER.'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x."ID", case when PKG_GLOBAL_FNTS.test_act_employee(x.id)=1 then ''Active Employee'' else ''Separated/Individual Only'' end Emp_Status ,',
'PKG_GLOBAL_FNTS.Ind_status(x.id) Status,',
'"SURNAME",',
'"FIRST_NAME",',
'"MIDDLE_NAME",',
'"ALIAS",',
'"DOB",',
'"DOD",',
'"PLACE_OF_BIRTH",',
'"SEX_CODE",',
'"MARITAL_CODE",',
'"MAIDEN_NAME",',
'"NO_OF_CHILDREN",',
'"HEIGHT",',
'x."WEIGHT",',
'x."EYE_COLOUR",',
'"HAIR_COLOUR",',
'"BUILT",',
'"DISTINGUISHED_MARKS",',
'"RACE_ID",',
'"NATIONALITY",',
'"TELEPHONE",',
'"BANK_BRANCH_ID",',
'"BANK_ACCOUNT_NO",',
'x."ENTERED_BY",',
'x."ENTRY_DATE",',
'x."VERIFIED_BY",',
'x."VERIFIED_DATE",',
'"RELIGION",',
'"CELL_PHONE",',
'"EMAIL",',
'"DATE_OF_MARRIAGE",',
'x."PLACE_OF_MARRIAGE",',
'case when dbms_lob.getlength(photo) is null then ''#WORKSPACE_IMAGES#position_image.png'' else apex_util.prepare_url(''f?p=''||:APP_ID||''.:IMAGE:''||:APP_SESSION||''::::GET_ID:''',
'              ||x.id) end "PHOTO",',
'first_name || '' '' || surname photo_label,',
'''nowhere'' photo_link,',
'"JOINT_ACCOUNT",',
'x."MACHINE_INSERT",',
'x."MACHINE_UPDATE",',
'x."LAST_CHANGED_BY",',
'x."LAST_CHANGED_DATE",',
'to_number(PKG_GLOBAL_FNTS.fn_calcage(dob,current_date)) age',
' , dbms_lob.getlength(PHOTO)  image ,ALTERNATIVE_EMAIL',
'from HR_RCM_INDIVIDUAL x  join hr_rcm_employee c on c.ind_id = x.id           ',
'where exists ( ',
'              select 1',
'              FROM VW_USERACCESS A JOIN VW_SELFREPORT_TO B ON A.EMPLOYEE_NO=B.EMPLOYEE_NO             ',
'              WHERE c.report_to = decode(pkg_global_fnts.fn_selfReport_to(:APP_ORG_ID),1,b.EMPLOYEE_NO, nvl(c.report_to,c.REPORT_TO_FUNCTIONAL))  ',
'              )        ',
'and IND_ORG_ID=:APP_ORG_ID       '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'pkg_global_fnts.fn_selfReport_to(:APP_ORG_ID)=1'
,p_plug_display_when_cond2=>'PLSQL'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3811264914090192023)
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1261:&SESSION.::&DEBUG.::P1261_ID:#ID#'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'CLOUD_PROD_DEV'
,p_internal_uid=>63398942245981112
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3811264851440192022)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3811264661736192021)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3811264606043192020)
,p_db_column_name=>'DATE_OF_MARRIAGE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Date Of Marriage'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_OF_MARRIAGE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3811264525484192019)
,p_db_column_name=>'JOINT_ACCOUNT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Joint Account'
,p_column_type=>'NUMBER'
,p_static_id=>'JOINT_ACCOUNT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3811264360757192018)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3811264292036192017)
,p_db_column_name=>'SURNAME'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Surname'
,p_column_type=>'STRING'
,p_static_id=>'SURNAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3811264157050192016)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_static_id=>'FIRST_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3811264110352192015)
,p_db_column_name=>'MIDDLE_NAME'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Middle Name'
,p_column_type=>'STRING'
,p_static_id=>'MIDDLE_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3811264037011192014)
,p_db_column_name=>'ALIAS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Alias'
,p_column_type=>'STRING'
,p_static_id=>'ALIAS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3811263947264192013)
,p_db_column_name=>'PLACE_OF_BIRTH'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Place Of Birth'
,p_column_type=>'STRING'
,p_static_id=>'PLACE_OF_BIRTH'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3811263764769192012)
,p_db_column_name=>'SEX_CODE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Gender'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'SEX_CODE'
,p_rpt_named_lov=>wwv_flow_imp.id(3854218527603438461)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3811263663051192011)
,p_db_column_name=>'MARITAL_CODE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Marital Code'
,p_column_type=>'STRING'
,p_static_id=>'MARITAL_CODE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3811263559886192010)
,p_db_column_name=>'MAIDEN_NAME'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Maiden Name'
,p_column_type=>'STRING'
,p_static_id=>'MAIDEN_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3811263476710192009)
,p_db_column_name=>'EYE_COLOUR'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Eye Colour'
,p_column_type=>'STRING'
,p_static_id=>'EYE_COLOUR'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3811263408747192008)
,p_db_column_name=>'HAIR_COLOUR'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Hair Colour'
,p_column_type=>'STRING'
,p_static_id=>'HAIR_COLOUR'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3811263349303192007)
,p_db_column_name=>'BUILT'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Built'
,p_column_type=>'STRING'
,p_static_id=>'BUILT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3811263171467192006)
,p_db_column_name=>'DISTINGUISHED_MARKS'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Distinguished Marks'
,p_column_type=>'STRING'
,p_static_id=>'DISTINGUISHED_MARKS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3811263128028192005)
,p_db_column_name=>'NATIONALITY'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Nationality'
,p_column_type=>'STRING'
,p_static_id=>'NATIONALITY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3811263030551192004)
,p_db_column_name=>'TELEPHONE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Telephone'
,p_column_type=>'STRING'
,p_static_id=>'TELEPHONE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3811262888401192003)
,p_db_column_name=>'BANK_ACCOUNT_NO'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Bank Account No'
,p_column_type=>'STRING'
,p_static_id=>'BANK_ACCOUNT_NO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3811262794430192002)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3811262708887192001)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_static_id=>'VERIFIED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3811262591974192000)
,p_db_column_name=>'RELIGION'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Religion'
,p_column_type=>'STRING'
,p_static_id=>'RELIGION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3811262523520191999)
,p_db_column_name=>'CELL_PHONE'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Cell Phone'
,p_column_type=>'STRING'
,p_static_id=>'CELL_PHONE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3811262408726191998)
,p_db_column_name=>'EMAIL'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_static_id=>'EMAIL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3811262307409191997)
,p_db_column_name=>'PLACE_OF_MARRIAGE'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Place Of Marriage'
,p_column_type=>'STRING'
,p_static_id=>'PLACE_OF_MARRIAGE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3811262190224191996)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3811262080788191995)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3811261968325191994)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3811261906518191993)
,p_db_column_name=>'AGE'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Age'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'AGE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3811261811957191992)
,p_db_column_name=>'STATUS'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_static_id=>'STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3811261683968191991)
,p_db_column_name=>'EMP_STATUS'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Emp status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3811261566952191990)
,p_db_column_name=>'PHOTO'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Photo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3811261530331191989)
,p_db_column_name=>'PHOTO_LABEL'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Photo label'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3811261402779191988)
,p_db_column_name=>'PHOTO_LINK'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Photo link'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3811261349042191987)
,p_db_column_name=>'DOB'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'DOB'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DOB'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3811261186344191986)
,p_db_column_name=>'DOD'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'DOD'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DOD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3811261106628191985)
,p_db_column_name=>'NO_OF_CHILDREN'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'No Of Children'
,p_column_type=>'NUMBER'
,p_static_id=>'NO_OF_CHILDREN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810725845105975134)
,p_db_column_name=>'HEIGHT'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Height'
,p_column_type=>'NUMBER'
,p_static_id=>'HEIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810725720388975133)
,p_db_column_name=>'WEIGHT'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Weight'
,p_column_type=>'NUMBER'
,p_static_id=>'WEIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810725569238975132)
,p_db_column_name=>'RACE_ID'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Race Id'
,p_column_type=>'NUMBER'
,p_static_id=>'RACE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810725494323975131)
,p_db_column_name=>'BANK_BRANCH_ID'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Bank Branch Id'
,p_column_type=>'NUMBER'
,p_static_id=>'BANK_BRANCH_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810725427198975130)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2105936250989826553)
,p_db_column_name=>'IMAGE'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Image'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'IMAGE:HR_RCM_INDIVIDUAL:PHOTO:ID::::::::'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(675913786331631562)
,p_db_column_name=>'ALTERNATIVE_EMAIL'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Work Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3810705991392965323)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'639579'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SURNAME:FIRST_NAME:MIDDLE_NAME:DOB:AGE:ALIAS:SEX_CODE:MARITAL_CODE:CELL_PHONE:STATUS:EMP_STATUS::IMAGE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3831029189843711290)
,p_plug_name=>'Breadcrumb Bar'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(10988598328610063082)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(537582002270964531)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(533222782123677140)
,p_button_name=>'QUICK_ADD_REF'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Quick Add Reference'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1275:&SESSION.::&DEBUG.:1275:P1275_LOAD_FROM_REPORT:1'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(556683892638795982)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(560104224289897002)
,p_button_name=>'ADD_RELATIVE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Quick Add Relative'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1276:&SESSION.::&DEBUG.:1276:P1276_LOAD_FROM_REPORT:1'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3831341450537251411)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3831029189843711290)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:&P1280_NAVIGATOR.:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3831341845706251415)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3831029189843711290)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1261:&SESSION.::&DEBUG.:1261:P1281_NAVIGATOR:1260'
,p_security_scheme=>wwv_flow_imp.id(3807160206270545771)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3807958659698221091)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3831029189843711290)
,p_button_name=>'PHOTO_VIEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Photo View'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:150:&SESSION.::&DEBUG.:RP,150::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3806369785876894002)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3831029189843711290)
,p_button_name=>'LOAD_DATA'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Load Data'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:6120:&SESSION.::&DEBUG.:RP,6120::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(533225559689677168)
,p_name=>'P1260_ENTRY_START_2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(533222782123677140)
,p_item_default=>'TRUNC(current_date,''YEAR'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Entry Start'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(537580821431964519)
,p_name=>'P1260_ENTRY_END_2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(533222782123677140)
,p_item_default=>'ADD_MONTHS(TRUNC (current_date ,''YEAR''),12)-1'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Entry End'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(537581278769964524)
,p_name=>'P1260_START_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(571609893266526886)
,p_item_default=>'TRUNC(current_date,''YEAR'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Start Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(537581343541964525)
,p_name=>'P1260_END_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(571609893266526886)
,p_item_default=>'ADD_MONTHS(TRUNC (current_date ,''YEAR''),12)-1'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'End Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(565015237138064899)
,p_name=>'P1260_ENTRY_START_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(560104224289897002)
,p_item_default=>'TRUNC(current_date,''YEAR'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Entry Start'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(565015371170064900)
,p_name=>'P1260_ENTRY_END_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(560104224289897002)
,p_item_default=>'ADD_MONTHS(TRUNC (current_date ,''YEAR''),12)-1'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Entry End'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(581467241031166883)
,p_name=>'P1260_ENTRY_START_1_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3811265314990192027)
,p_item_default=>'TRUNC(current_date,''YEAR'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Entry Start'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(581467360224166884)
,p_name=>'P1260_ENTRY_END_1_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3811265314990192027)
,p_item_default=>'ADD_MONTHS(TRUNC (current_date ,''YEAR''),12)-1'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Entry End'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(645546475375933171)
,p_name=>'P1280_NAVIGATOR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3744270603303688342)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2105937112164826562)
,p_name=>'P1260_ENTRY_START'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3744270603303688342)
,p_item_default=>'TRUNC(current_date,''YEAR'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Entry Start'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2105937235978826563)
,p_name=>'P1260_ENTRY_END'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3744270603303688342)
,p_item_default=>'ADD_MONTHS(TRUNC (current_date ,''YEAR''),12)-1'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Entry End'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3811265246797192026)
,p_name=>'P1260_X_2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3811265314990192027)
,p_item_default=>'&APP_ORG_ID.'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3831340994133251411)
,p_name=>'P1260_X'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3744270603303688342)
,p_item_default=>'&APP_ORG_ID.'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2105937387261826564)
,p_name=>'REFRESH_START'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1260_ENTRY_START'
,p_condition_element=>'P1260_ENTRY_END'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2105937399339826565)
,p_event_id=>wwv_flow_imp.id(2105937387261826564)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3744270603303688342)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2105937538180826566)
,p_name=>'REFRESH_END'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1260_ENTRY_END'
,p_condition_element=>'P1260_ENTRY_START'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2132400649496790417)
,p_event_id=>wwv_flow_imp.id(2105937538180826566)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3744270603303688342)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(565017989748064926)
,p_name=>'refresh_start'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1260_ENTRY_START_1'
,p_condition_element=>'P1260_ENTRY_END_1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(565018016349064927)
,p_event_id=>wwv_flow_imp.id(565017989748064926)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(560104224289897002)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(565018176759064928)
,p_name=>'refresh_end'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1260_ENTRY_END_1'
,p_condition_element=>'P1260_ENTRY_START_1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(565018233767064929)
,p_event_id=>wwv_flow_imp.id(565018176759064928)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(560104224289897002)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(537580859676964520)
,p_name=>'refresh_start_ref'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1260_ENTRY_START_2'
,p_condition_element=>'P1260_ENTRY_END_2'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(537581001284964521)
,p_event_id=>wwv_flow_imp.id(537580859676964520)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(533222782123677140)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(537581122098964522)
,p_name=>'refresh_end_ref'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1260_ENTRY_END_2'
,p_condition_element=>'P1260_ENTRY_START_2'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(537581208771964523)
,p_event_id=>wwv_flow_imp.id(537581122098964522)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(533222782123677140)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(537581437170964526)
,p_name=>'refresh_ind_only'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1260_START_DATE'
,p_condition_element=>'P1260_END_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(537581604536964527)
,p_event_id=>wwv_flow_imp.id(537581437170964526)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(571609893266526886)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(537581704446964528)
,p_name=>'refresh_ind_end'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1260_END_DATE'
,p_condition_element=>'P1260_START_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(537581737426964529)
,p_event_id=>wwv_flow_imp.id(537581704446964528)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(571609893266526886)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
