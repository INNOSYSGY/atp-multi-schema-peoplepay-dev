prompt --application/pages/page_01800
begin
--   Manifest
--     PAGE: 01800
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
 p_id=>1800
,p_name=>'rptLicensePayment'
,p_step_title=>'PeoplePay License Management'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3806721070126816462)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3807158850583545770)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2778550727266536725)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3811954368725527341)
,p_plug_name=>'Listing of License Payments'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ID", MANAGED_BY,',
'"START_LICENCE_DATE",',
'"EXPIRY_LICENCE_DATE",',
'APP_MODULE_ID,',
'(SELECT ORGANISATION_NAME',
'FROM HR_HCF_ORGANISATION',
'WHERE ID= A.ORG_ID) "ORGANISATION_NAME",',
'"ORG_ID",',
'"NO_OF_EMPLOYEES",',
'"LICENCE_FEE",',
'"AUTHENTICATION_SCHEMA",',
'"DATE_PAID" ',
'from "APP_MODULE_LICENCE" A',
'where a.licenSe_schema_name = :G_PARSING_SCHEMA',
''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3811954035123527340)
,p_name=>'rptLicensePayment'
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
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1801:&SESSION.::&DEBUG.::P1801_ID,P1801_GEN_ORGANISATION:#ID#,#ORG_ID#'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(3807159759962545770)
,p_owner=>'GTT'
,p_internal_uid=>62709821212645795
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854639130719885800)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854638850316885795)
,p_db_column_name=>'START_LICENCE_DATE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Start Licence Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854638411538885795)
,p_db_column_name=>'EXPIRY_LICENCE_DATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Expiry Licence Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854638016957885794)
,p_db_column_name=>'NO_OF_EMPLOYEES'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'No Of Employees/Units'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854637629808885794)
,p_db_column_name=>'LICENCE_FEE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Licence Fee'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854637157451885787)
,p_db_column_name=>'AUTHENTICATION_SCHEMA'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Authentication Schema'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854636817644885787)
,p_db_column_name=>'DATE_PAID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Date Last Paid'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854636405539885786)
,p_db_column_name=>'ORGANISATION_NAME'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Organisation Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854635996562885786)
,p_db_column_name=>'APP_MODULE_ID'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Sub Module'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3807179622990742028)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854635579394885785)
,p_db_column_name=>'ORG_ID'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Org Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3853168099629007788)
,p_db_column_name=>'MANAGED_BY'
,p_display_order=>21
,p_column_identifier=>'L'
,p_column_label=>'Managed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3811950093849522389)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'200286'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'ORGANISATION_NAME:APP_MODULE_ID:START_LICENCE_DATE:EXPIRY_LICENCE_DATE:NO_OF_EMPLOYEES:LICENCE_FEE:AUTHENTICATION_SCHEMA:DATE_PAID::MANAGED_BY'
,p_sort_column_1=>'EXPIRY_LICENCE_DATE'
,p_sort_direction_1=>'DESC'
,p_break_on=>'MANAGED_BY:ORGANISATION_NAME:0:0:0:0'
,p_break_enabled_on=>'MANAGED_BY:ORGANISATION_NAME:0:0:0:0'
,p_count_columns_on_break=>'DATE_PAID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3836868410531360382)
,p_plug_name=>'Current License Use'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.managed_by ,C.ORGANISATION_NAME,c.id, count(1) current_used, max(NO_OF_EMPLOYEES) License_for ',
',max(get_latestexpiry(b.org_id)) Expiry_Date, max(b.org_id) Organisation_id, c.start_date',
'from hr_rcm_employee a join hr_hcf_organisation c on c.id=a.org_id',
'left outer join APP_MODULE_LICENCE b on c.id=b.org_id',
'where Separated_Status is null',
'and Date_Separated is null',
'and B.APP_MODULE_ID=23',
'and payment_status=''ACTIVE''',
'and exists (select 1',
'           from hr_rcm_individual w ',
'           where w.id = a.ind_id',
'          )',
'AND B.licenSe_schema_name = :G_PARSING_SCHEMA          ',
'group by b.managed_by,  C.ORGANISATION_NAME, c.id, c.start_date ',
'union',
'select b.managed_by , C.ORGANISATION_NAME,c.id, 0 current_used, max(NO_OF_EMPLOYEES) License_for ',
',max(get_latestexpiry(b.org_id)) Expiry_Date, max(b.org_id) Organisation_id, c.start_date',
'from hr_hcf_organisation c join APP_MODULE_LICENCE b on c.id=b.org_id',
'where not exists (select 1',
'                from hr_rcm_employee a',
'                where a.org_id = c.id',
'                ) ',
'and B.APP_MODULE_ID=23              ',
'and payment_status=''ACTIVE''',
'AND B.licenSe_schema_name = :G_PARSING_SCHEMA',
'group by b.managed_by ,C.ORGANISATION_NAME,c.id, c.start_date     ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
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
 p_id=>wwv_flow_imp.id(3836868273176360381)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GTT'
,p_internal_uid=>37795583159812754
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854641019538885812)
,p_db_column_name=>'ORGANISATION_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Organisation name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854640565109885807)
,p_db_column_name=>'CURRENT_USED'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Current used'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854640173152885806)
,p_db_column_name=>'LICENSE_FOR'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'License for'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3853819847975768934)
,p_db_column_name=>'MANAGED_BY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Managed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3834043430428224409)
,p_db_column_name=>'EXPIRY_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Expiry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3834043237558224407)
,p_db_column_name=>'ORGANISATION_ID'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Organisation Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3846887652192365573)
,p_db_column_name=>'START_DATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2778551540205536733)
,p_db_column_name=>'ID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3834631349651264448)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'200240'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APXWS_CC_001:ORGANISATION_NAME:CURRENT_USED:LICENSE_FOR:MANAGED_BY:START_DATE:EXPIRY_DATE:ORGANISATION_ID:'
,p_break_on=>'APXWS_CC_001:0:0:0:0:0'
,p_break_enabled_on=>'APXWS_CC_001:0:0:0:0:0'
,p_sum_columns_on_break=>'CURRENT_USED:LICENSE_FOR'
,p_count_columns_on_break=>'ORGANISATION_NAME'
);
wwv_flow_imp_page.create_worksheet_computation(
 p_id=>wwv_flow_imp.id(2132434835612128953)
,p_report_id=>wwv_flow_imp.id(3834631349651264448)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'CASE WHEN E < CURRENT_DATE then ''Inactive'' else ''Active'' end'
,p_column_type=>'STRING'
,p_column_label=>'Status'
,p_report_label=>'Status'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3854647997410299008)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3796772003441378196)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3854634402054885773)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3811954368725527341)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:199:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3854634810366885784)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3811954368725527341)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1801:&SESSION.::&DEBUG.:1801::'
,p_security_scheme=>wwv_flow_imp.id(3807160206270545771)
);
wwv_flow_imp.component_end;
end;
/
