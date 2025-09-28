prompt --application/pages/page_01231
begin
--   Manifest
--     PAGE: 01231
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
 p_id=>1231
,p_name=>'rptPayrollEmailBatch'
,p_alias=>'RPTPAYROLLEMAILBATCH'
,p_step_title=>'Payroll Email in Batch '
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3585334160394360204)
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(475512104468216007)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10766773638420877516)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3454476537540096642)
,p_plug_name=>'Payroll Email Batch'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3454476917359096646)
,p_plug_name=>'Payroll Batch List'
,p_parent_plug_id=>wwv_flow_imp.id(3454476537540096642)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID,PAY_YEAR,TO_CHAR(TO_DATE(PAY_MONTH, ''MM''), ''Month'') PAY_MONTH,DESCRIPTION,EARNINGS_PERIOD_ID,LIST_COUNT,EMAIL_COUNT,EMAIL_SEND_OUT,',
'STATUS,DATE_SENT',
'FROM PA_PMG_PAYROLL_EMAIL_HEADER',
'WHERE ORG_ID=:APP_ORG_ID',
'and to_number(PAY_YEAR) = to_number(case when to_number(:P1231_PAYROLL_YEAR) is null then to_number(PAY_YEAR) else to_number(:P1231_PAYROLL_YEAR) end)',
'and to_number(PAY_MONTH) = to_number(case when to_number(:P1231_PAYROLL_MONTH) is null then to_number(PAY_MONTH) else to_number(:P1231_PAYROLL_MONTH) end)',
'and to_number(EARNINGS_PERIOD_ID) = to_number(case when to_number(:P1231_EARNINGS_PERIOD_ID) is null then to_number(EARNINGS_PERIOD_ID) else to_number(:P1231_EARNINGS_PERIOD_ID) end)',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1231_PAYROLL_YEAR,P1231_PAYROLL_MONTH,P1231_EARNINGS_PERIOD_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Payroll Batch List'
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
 p_id=>wwv_flow_imp.id(3454477071302096647)
,p_max_row_count=>'1000000'
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
,p_enable_mail_download=>'Y'
,p_owner=>'GTT'
,p_internal_uid=>208918004712553588
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3362179081643361550)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>' Review'
,p_column_link=>'f?p=&APP_ID.:1232:&SESSION.::&DEBUG.::P1232_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_link_attr=>'#ID#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3362179511503361551)
,p_db_column_name=>'PAY_YEAR'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Pay Year'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3362179927541361551)
,p_db_column_name=>'PAY_MONTH'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Pay Month'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3362180320497361551)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3362180705537361552)
,p_db_column_name=>'EARNINGS_PERIOD_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Earnings Period Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3362181115322361552)
,p_db_column_name=>'LIST_COUNT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'List Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3362181534958361553)
,p_db_column_name=>'EMAIL_COUNT'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Email Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3362181870287361553)
,p_db_column_name=>'EMAIL_SEND_OUT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Email Send Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3362182315182361554)
,p_db_column_name=>'STATUS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3362182667576361554)
,p_db_column_name=>'DATE_SENT'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Date Sent'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3454510274059490269)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1166240'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:PAY_YEAR:PAY_MONTH:DESCRIPTION:LIST_COUNT:EMAIL_COUNT:EMAIL_SEND_OUT:STATUS:DATE_SENT:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(475512210779216008)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(475512104468216007)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3362176845348361543)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(475512104468216007)
,p_button_name=>'List'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Payroll Email Notification List'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1230:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3362177189365361543)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(475512104468216007)
,p_button_name=>'Individual'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Individual Payslip'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1234:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3362176389388361542)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(475512104468216007)
,p_button_name=>'Generate_Email_List'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Generate Email List'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1231_EARNINGS_PERIOD_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585334780499360204)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3362177582192361544)
,p_name=>'P1231_PAYROLL_YEAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3454476537540096642)
,p_prompt=>'Payroll Year'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COMPANY_YEAR year_desc,COMPANY_YEAR',
'from (',
'select distinct COMPANY_YEAR',
'from vw_earning_period_name',
'where org_id=:APP_ORG_ID',
') b order by 1 desc'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3362177993849361544)
,p_name=>'P1231_PAYROLL_MONTH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3454476537540096642)
,p_prompt=>'Payroll Month'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(date ''2000-12-01'' + numtoyminterval(level,''month''),''MONTH'') as month,level as num',
'from dual',
'connect by level <= 12'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3362178398980361545)
,p_name=>'P1231_EARNINGS_PERIOD_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3454476537540096642)
,p_prompt=>'Earnings Period'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select earning_name,earning_id',
'from vw_earning_period_name a',
'where org_id=:APP_ORG_ID',
'and COMPANY_YEAR=:P1231_PAYROLL_YEAR',
'and month=to_number(case when to_number(:P1231_PAYROLL_MONTH) is null then month else to_number(:P1231_PAYROLL_MONTH) end)',
'and exists (',
'select 1 from PA_PMG_PAYROLLHD b',
'join pa_pmg_payrolldtl pa on b.id=pa.pay_batch_id',
'where b.EARNINGS_PERIOD_ID=a.earning_id',
'and MANAGER_APPROVED_DATE  IS NOT NULL',
')'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_lov_cascade_parent_items=>'P1231_PAYROLL_YEAR,P1231_PAYROLL_MONTH'
,p_ajax_items_to_submit=>'P1231_PAYROLL_YEAR,P1231_PAYROLL_MONTH'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3362183889094361559)
,p_name=>'Change ErningPeriod'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1231_EARNINGS_PERIOD_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3362184395240361560)
,p_event_id=>wwv_flow_imp.id(3362183889094361559)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3362183513415361558)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Generate Payroll Email Template'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_number number;',
'begin',
'v_number :=1;',
'',
'IF :P1231_EARNINGS_PERIOD_ID IS NOT NULL THEN',
'PKG_PAYROLL_NOTICATION.POP_PAYSLIP_MESSAGE(P_ORG_ID =>:APP_ORG_ID,P_EARNING_PERIOD_ID =>:P1231_EARNINGS_PERIOD_ID,P_NOTIFICATION_TYPE=>''EMAIL'');',
'commit;',
'END IF;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3362176389388361542)
,p_internal_uid=>2940391520217364984
);
wwv_flow_imp.component_end;
end;
/
