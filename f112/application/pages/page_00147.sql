prompt --application/pages/page_00147
begin
--   Manifest
--     PAGE: 00147
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
 p_id=>147
,p_name=>'rptPriorInfo'
,p_alias=>'RPTPRIORINFO'
,p_step_title=>'Employee Prior Remittance'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3297885021596700624)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326628142677335)
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66117903679342035)
,p_plug_name=>'Breadcrumb'
,p_title=>'Employee Prior Remittance'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(3268978958419337265)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(222535841274168628)
,p_plug_name=>'Interactive report '
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       EMP_ID,',
'       AS_AT_DATE,',
'       EXPENSE_ID,',
'       REMARKS,',
'       ENTRY_DATE,',
'       ENTERED_BY,',
'       LAST_CHANGED_DATE,',
'       LAST_CHANGED_BY,',
'       DATE_JOINED,',
'       EMPLOYEE_CONTRIBUTION_AS_AT,',
'       EMPLOYER_CONTRIBUTION_AS_AT,',
'       ADDITIONAL_VOLUNTARY_AS_AT,',
'       TOTAL_CREDITED_INTEREST_AS_AT,',
'       TOTAL_ACCUMULATED_ACCOUNT_BALANCE_AS_AT,',
'       EMPLOYEE_CONTRIBUTION_CURR,',
'       EMPLOYER_CONTRIBUTION_CURR,',
'       ADDITIONAL_VOLUNTARY_CURR,',
'       TOTAL_CREDITED_INTEREST_CURR,',
'       TOTAL_ACCUMULATED_ACCOUNT_BALANCE_CURR,',
'       ORG_ID,',
'       GRAND_TOTAL,',
'       VERIFIED_BY,',
'       VERIFIED_DATE',
'  from PA_PCF_PRIOR_AS_AT_VALUES'))
,p_plug_source_type=>'NATIVE_IR'
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(222535984285168629)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:65:&SESSION.::&DEBUG.:65:P65_ID,P65_ORG_ID:#ID#,#ORG_ID#'
,p_detail_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'EEITOKPAH@INNOSYSGY.COM'
,p_internal_uid=>321158939514002831
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(222536124923168630)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(222536167568168631)
,p_db_column_name=>'EMP_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3326577577836849577)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(222536294671168632)
,p_db_column_name=>'AS_AT_DATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'As At Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(222536396304168633)
,p_db_column_name=>'EXPENSE_ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Expense'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(47139155952188979)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(225443820352699184)
,p_db_column_name=>'REMARKS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(225443915328699185)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(225443989921699186)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(225444113967699187)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(225444148573699188)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(225444333780699189)
,p_db_column_name=>'DATE_JOINED'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Date Joined'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(225444356659699190)
,p_db_column_name=>'EMPLOYEE_CONTRIBUTION_AS_AT'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Emp Con As At'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(225444474486699191)
,p_db_column_name=>'EMPLOYER_CONTRIBUTION_AS_AT'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Emplyr Con As At'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(225444624866699192)
,p_db_column_name=>'ADDITIONAL_VOLUNTARY_AS_AT'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Additional Voluntary As At'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(225444706800699193)
,p_db_column_name=>'TOTAL_CREDITED_INTEREST_AS_AT'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Total Credited Interest As At'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(225444786878699194)
,p_db_column_name=>'TOTAL_ACCUMULATED_ACCOUNT_BALANCE_AS_AT'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Total Accumulated Account Balance As At'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(225444866244699195)
,p_db_column_name=>'EMPLOYEE_CONTRIBUTION_CURR'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Emp Con Curr'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(225445018393699196)
,p_db_column_name=>'EMPLOYER_CONTRIBUTION_CURR'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Emplyr Con Curr'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(225445055533699197)
,p_db_column_name=>'ADDITIONAL_VOLUNTARY_CURR'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Additional Voluntary Curr'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(225445144893699198)
,p_db_column_name=>'TOTAL_CREDITED_INTEREST_CURR'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Total Credited Interest Curr'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(225445283058699199)
,p_db_column_name=>'TOTAL_ACCUMULATED_ACCOUNT_BALANCE_CURR'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Total Accumulated Account Balance Curr'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(225445405678699200)
,p_db_column_name=>'ORG_ID'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Org Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(225445520919699201)
,p_db_column_name=>'GRAND_TOTAL'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Grand Total'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(63475557838591148)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66114271300341999)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(172149680807651716)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Unmatch Remittabces'
,p_report_seq=>10
,p_report_alias=>'1721497'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'EXPENSE_ID:EMP_ID:AS_AT_DATE:REMARKS:DATE_JOINED:EMPLOYEE_CONTRIBUTION_AS_AT:EMPLOYER_CONTRIBUTION_AS_AT:ADDITIONAL_VOLUNTARY_AS_AT:TOTAL_CREDITED_INTEREST_AS_AT:TOTAL_ACCUMULATED_ACCOUNT_BALANCE_AS_AT:EMPLOYEE_CONTRIBUTION_CURR:EMPLOYER_CONTRIBUTION'
||'_CURR:ADDITIONAL_VOLUNTARY_CURR:TOTAL_CREDITED_INTEREST_CURR:TOTAL_ACCUMULATED_ACCOUNT_BALANCE_CURR:GRAND_TOTAL:LAST_CHANGED_DATE:LAST_CHANGED_BY::APXWS_CC_001'
,p_break_on=>'EXPENSE_ID'
,p_break_enabled_on=>'EXPENSE_ID'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(172150057180651731)
,p_report_id=>wwv_flow_imp.id(172149680807651716)
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'APXWS_CC_001'
,p_operator=>'='
,p_expr=>'FALSE'
,p_condition_sql=>' (case when ((#APXWS_CC_EXPR#) = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''FALSE''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#fafafa'
,p_row_font_color=>'#f44336'
);
wwv_flow_imp_page.create_worksheet_computation(
 p_id=>wwv_flow_imp.id(172150413067651732)
,p_report_id=>wwv_flow_imp.id(172149680807651716)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'P  = Q'
,p_column_type=>'STRING'
,p_column_label=>'Matched'
,p_report_label=>'Matched'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(225456197406701190)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1620288'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'EXPENSE_ID:EMP_ID:AS_AT_DATE:REMARKS:DATE_JOINED:EMPLOYEE_CONTRIBUTION_AS_AT:EMPLOYER_CONTRIBUTION_AS_AT:ADDITIONAL_VOLUNTARY_AS_AT:TOTAL_CREDITED_INTEREST_AS_AT:TOTAL_ACCUMULATED_ACCOUNT_BALANCE_AS_AT:EMPLOYEE_CONTRIBUTION_CURR:EMPLOYER_CONTRIBUTION'
||'_CURR:ADDITIONAL_VOLUNTARY_CURR:TOTAL_CREDITED_INTEREST_CURR:TOTAL_ACCUMULATED_ACCOUNT_BALANCE_CURR:GRAND_TOTAL:LAST_CHANGED_DATE:LAST_CHANGED_BY::APXWS_CC_001'
,p_break_on=>'EXPENSE_ID'
,p_break_enabled_on=>'EXPENSE_ID'
);
wwv_flow_imp_page.create_worksheet_computation(
 p_id=>wwv_flow_imp.id(172151366629652994)
,p_report_id=>wwv_flow_imp.id(225456197406701190)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'P  = Q'
,p_column_type=>'STRING'
,p_column_label=>'Matched'
,p_report_label=>'Matched'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22635199783820033)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66117903679342035)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(63435087082115934)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(66117903679342035)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add  new'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:65:&SESSION.::&DEBUG.:65::'
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(63436481772115963)
,p_branch_name=>'ADD _NEW_2'
,p_branch_action=>'f?p=&APP_ID.:85:&SESSION.::&DEBUG.:85::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(63435087082115934)
,p_branch_sequence=>10
);
wwv_flow_imp.component_end;
end;
/
