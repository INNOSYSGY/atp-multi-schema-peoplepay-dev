prompt --application/pages/page_00235
begin
--   Manifest
--     PAGE: 00235
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
 p_id=>235
,p_name=>'rptStarfishSageUpload'
,p_alias=>'RPTSTARFISHSAGEUPLOAD'
,p_step_title=>'Starfish Sage Upload'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3297885021596700624)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2916231581089404191)
,p_plug_name=>'Starfish Sage Upload'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  a.period_start , a.emp_company_no_hist, wk.ACTIVITY_CODE,',
'(SELECT min(ACTIVITY_CODE)',
'FROM PA_PCF_WORKACTIVITY subwk ',
'WHERE wk.id =subwk.parent_id) sub_code,',
'trim(incode.account_code) account_code, case when Hourly_Rate_Multiplier=1 then 1 else 2 end pay_code, quantity',
'from pa_pmg_payrolldtl a join pa_pmg_payrollincome b on a.id = b.pay_slipno',
'join pa_pcf_incomecode incode on upper(trim(incode.income_code)) = upper(trim(b.income_code))',
'join PA_PCF_WORKACTIVITY_DTL wkdtl on wkdtl.income_code_id = incode.id',
'join PA_PCF_WORKACTIVITY wk on wk.id = wkdtl.workactivity_id',
'where a.earnings_period_id=:P235_PAID_EARNINGS_PERIOD',
'and incode.org_id = pkg_global_fnts.fn_shareRefOrg(:APP_ORG_ID)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P235_PAID_EARNINGS_PERIOD'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Starfish Sage Upload'
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
 p_id=>wwv_flow_imp.id(2916231671624404191)
,p_name=>'rptStarfishSageUpload'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'RLANGFORD'
,p_internal_uid=>665857627116427583
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2916231953844404195)
,p_db_column_name=>'PERIOD_START'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Period Start'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2916232416180404199)
,p_db_column_name=>'EMP_COMPANY_NO_HIST'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Emp Company No Hist'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2916232842737404199)
,p_db_column_name=>'ACTIVITY_CODE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Activity Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2916233233974404200)
,p_db_column_name=>'SUB_CODE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Sub Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2916233568081404201)
,p_db_column_name=>'ACCOUNT_CODE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Account Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2916234420522404202)
,p_db_column_name=>'QUANTITY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Quantity'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2912650271285222131)
,p_db_column_name=>'PAY_CODE'
,p_display_order=>17
,p_column_identifier=>'H'
,p_column_label=>'Pay Code'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2916234949973411979)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6658610'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'PERIOD_START:EMP_COMPANY_NO_HIST:ACTIVITY_CODE:SUB_CODE:ACCOUNT_CODE:PAY_CODE:QUANTITY:'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2916250601149442248)
,p_name=>'P235_YEAR_OF_INCOME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2916231581089404191)
,p_prompt=>'Year'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct COMPANY_YEAR a, COMPANY_YEAR b',
'FROM HR_HCF_COMPANYYEAR',
'where ORG_ID=:APP_ORG_ID',
'order by 1 desc;',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Year--'
,p_cHeight=>1
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2916251111160443924)
,p_name=>'P235_PERIOD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2916231581089404191)
,p_prompt=>'Month'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a,B',
'FROM',
'    (  SELECT DISTINCT TO_CHAR(END_DATE,''MONTH'')||'' ''||company_year A',
'      , company_year||EXTRACT(month FROM END_DATE) b',
'      ,  company_year C, EXTRACT(month FROM END_DATE) D',
'      FROM PA_PCF_EARNINGPERIOD  v join HR_HCF_COMPANYYEAR x on x.id = v.company_year_id',
'      where  exists ( ',
'              select 1',
'              FROM VW_USERACCESS A ',
'              where v.org_id=a.org_id      ',
'              and v.payment_type=a.payment_type ',
'              and v.employment_class_id=a.employment_class_id ',
'                    )',
'	AND company_year = :P235_YEAR_OF_INCOME',
'      )',
'ORDER BY C DESC, D DESC;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Month--'
,p_lov_cascade_parent_items=>'P235_YEAR_OF_INCOME'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2916251409713445874)
,p_name=>'P235_PAID_EARNINGS_PERIOD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2916231581089404191)
,p_prompt=>'Paid earnings period'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EXPR1 earn_description,id',
'from VW_EARNPAID a',
'where org_id=:APP_ORG_ID',
'AND a.company_year||EXTRACT(month FROM a.END_DATE)= :P235_PERIOD;',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All--'
,p_lov_cascade_parent_items=>'P235_PERIOD'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Click search after selecting the period.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2912649971457222128)
,p_name=>'EARN_PRD_REFRESH'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P235_PAID_EARNINGS_PERIOD'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2912650073837222129)
,p_event_id=>wwv_flow_imp.id(2912649971457222128)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2916231581089404191)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
