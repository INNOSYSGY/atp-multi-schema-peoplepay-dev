prompt --application/pages/page_01406
begin
--   Manifest
--     PAGE: 01406
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
 p_id=>1406
,p_name=>'rptInsuranceCategory'
,p_step_title=>'Listing of Insurance Category'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3297885332136703809)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3270739076761639780)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(142632065706158853)
,p_plug_name=>'bc'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>31
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10460765779079194647)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3210084592294647206)
,p_plug_name=>'Listing of Insurance Category'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>21
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ID", ',
'"CATEGORY_CODE",(select employee_contribution_per* CONTRIBUTION',
'from hr_med_insurancecatgrydtl',
'where category_id=v.ID) Employee_cntb,',
'"CATEGORY_DESCRIP",(select employer_contribution_per* CONTRIBUTION',
'from hr_med_insurancecatgrydtl',
'where category_id=v.ID) Employer_cntb,',
'"CONTRIBUTION",',
'"CONTRIBUTION_CHILD",',
'"CONTRIBUTION_SPOUSE",',
'"CONTRIBUTION_RELATIVE",',
'"DEATH_COVERAGE_SUM",',
'"DISABLEMENT_COVERAGE",',
'"MEDICAL_EXPENSES",',
'"LEDGER_CODE",',
'"ENTERED_BY",',
'"ENTRY_DATE",',
'"VERIFIED_BY",',
'"VERIFIED_DATE",',
'"CONSISTENT",',
'"START_DATE",',
'"END_DATE",',
'"LAST_CHANGED_BY",',
'"LAST_CHANGED_DATE",',
'"LEDGER_CODE_EMPLR"',
'from "HR_MED_INSURANCECATGRY" V',
'where  v.org_id= :APP_ORG_SHR_DED',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3210084387343647202)
,p_name=>'Listing of Insurance Category'
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
,p_detail_link=>'f?p=&APP_ID.:1407:&SESSION.::&DEBUG.::P1407_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(3258341133804318464)
,p_owner=>'PUR_INV'
,p_internal_uid=>136746919461657498
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301056046695933786)
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
 p_id=>wwv_flow_imp.id(3301055640589933786)
,p_db_column_name=>'CONTRIBUTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Contribution'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_static_id=>'CONTRIBUTION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301055250468933785)
,p_db_column_name=>'CONTRIBUTION_CHILD'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Contribution Child'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_static_id=>'CONTRIBUTION_CHILD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301054880188933785)
,p_db_column_name=>'CONTRIBUTION_SPOUSE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Contribution Spouse'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_static_id=>'CONTRIBUTION_SPOUSE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301054484462933784)
,p_db_column_name=>'CONTRIBUTION_RELATIVE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Contribution Relative'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_static_id=>'CONTRIBUTION_RELATIVE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301054034627933783)
,p_db_column_name=>'DEATH_COVERAGE_SUM'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Death Coverage Sum'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_static_id=>'DEATH_COVERAGE_SUM'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301053608798933783)
,p_db_column_name=>'DISABLEMENT_COVERAGE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Disablement Coverage'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_static_id=>'DISABLEMENT_COVERAGE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301053289461933783)
,p_db_column_name=>'MEDICAL_EXPENSES'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Medical Expenses'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990'
,p_tz_dependent=>'N'
,p_static_id=>'MEDICAL_EXPENSES'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301052843893933783)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301052447930933781)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301052088506933781)
,p_db_column_name=>'CONSISTENT'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Consistent'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'CONSISTENT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301051645373933781)
,p_db_column_name=>'START_DATE'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'START_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301051245465933781)
,p_db_column_name=>'END_DATE'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'END_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301050835905933779)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301050441487933779)
,p_db_column_name=>'CATEGORY_CODE'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Category Code'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CATEGORY_CODE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301050058930933776)
,p_db_column_name=>'CATEGORY_DESCRIP'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Category Descrip'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CATEGORY_DESCRIP'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301049655564933776)
,p_db_column_name=>'LEDGER_CODE'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Ledger Code'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'LEDGER_CODE'
,p_rpt_named_lov=>wwv_flow_imp.id(3326617330175913802)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301049219607933775)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301048835301933775)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301048422788933774)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301048101205933774)
,p_db_column_name=>'LEDGER_CODE_EMPLR'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Ledger Code Emplr'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'LEDGER_CODE_EMPLR'
,p_rpt_named_lov=>wwv_flow_imp.id(3326617330175913802)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3225182645413565883)
,p_db_column_name=>'EMPLOYEE_CNTB'
,p_display_order=>37
,p_column_identifier=>'AD'
,p_column_label=>'Employee Cntb'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3225182744737565884)
,p_db_column_name=>'EMPLOYER_CNTB'
,p_display_order=>47
,p_column_identifier=>'AE'
,p_column_label=>'Employer Cntb'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3210081888983630154)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'457836'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'CATEGORY_DESCRIP:CATEGORY_CODE:EMPLOYEE_CNTB:EMPLOYER_CNTB:CONTRIBUTION:CONSISTENT:START_DATE:END_DATE:LEDGER_CODE:LEDGER_CODE_EMPLR:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3301046841016933770)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(142632065706158853)
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
 p_id=>wwv_flow_imp.id(3301047291535933771)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(142632065706158853)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1407:&SESSION.::&DEBUG.:1407::'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp.component_end;
end;
/
