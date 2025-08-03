prompt --application/pages/page_00242
begin
--   Manifest
--     PAGE: 00242
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
 p_id=>242
,p_name=>'rptdownloadsagereport'
,p_alias=>'RPTDOWNLOADSAGEREPORT'
,p_step_title=>'Download Sage Report'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3297885021596700624)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(136060014237754319)
,p_plug_name=>'Sage File  Export'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(136060915053754328)
,p_plug_name=>'File Export'
,p_parent_plug_id=>wwv_flow_imp.id(136060014237754319)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    to_char(to_date(pi.work_date,''DD-MON-YYYY''),''mm/dd/yyyy'') work_date,',
'    TO_CHAR(emp_company_no_hist) AS emp_company_no_hist,',
'    TO_CHAR((select trim(task_code) from HR_HCF_WKACTIVITY_TASK k  where pi.parent_id = k.id)) AS job_code,',
'    TO_CHAR(sub_job_code) AS sub_job_code,',
'    TO_CHAR(cost_code_number) AS cost_code_number,',
'    TO_CHAR(time_type_abbreviation) AS time_type_abbreviation,',
'    TO_CHAR(total_time) AS total_time',
'FROM (select pi.*,tk.parent_id,tk.task_desc from procore_timesheet_import pi',
'      left join HR_HCF_WKACTIVITY_TASK tk on trim(pi.cost_code_number) = trim(tk.task_code)) pi',
'JOIN pa_pcf_adhocpayment ap ON ap.procore_t_id = pi.id',
'JOIN pa_pmg_payrollincome ic ON ap.empent_id = ic.id',
'JOIN pa_pmg_payrolldtl pd ON ic.pay_slipno = pd.id',
'WHERE pd.earnings_period_id in (SELECT a_field FROM ',
'                                 xmltable(''/root/e/text()'' passing xmltype(''<root><e>''',
'                                                             || REPLACE(:P242_EARNING_PERIOD_ID,'':'',''</e><e>'')',
'                                                             || ''</e></root>'') columns a_field VARCHAR2(500) path ''/'')',
'                                        )',
'',
'UNION',
'',
'SELECT',
'    TO_CHAR(TO_DATE(work_date, ''MM/DD/YYYY''), ''MM/DD/YYYY'') AS work_date,',
'    TO_CHAR(emp_company_no_hist) AS emp_company_no_hist,',
'    TO_CHAR(job_code) AS job_code,',
'    TO_CHAR(sub_job_code) AS sub_job_code,',
'    TO_CHAR(cost_code_number) AS cost_code_number,',
'    TO_CHAR(time_type_abbreviation) AS time_type_abbreviation,',
'    TO_CHAR(total_time) AS total_time',
'FROM (',
'    SELECT',
'        TO_CHAR(TO_DATE(pd.period_start, ''DD-MON-YYYY''), ''MM/DD/YYYY'') AS work_date,',
'        emp_company_no_hist,',
'        '''' AS job_code,',
'        '''' AS sub_job_code,',
'        '''' AS cost_code_number,',
'        (',
'            SELECT',
'                sc.sage_code',
'            FROM',
'                pa_pmg_sagecode_mapping sc,',
'                TABLE(CAST(MULTISET(',
'                    SELECT LEVEL FROM dual',
'                    CONNECT BY LEVEL <= REGEXP_COUNT(sc.income_code_id, '':'') + 1',
'                ) AS sys.odcinumberlist)) levels',
'            WHERE',
'                TRIM(REGEXP_SUBSTR(sc.income_code_id, ''[^:]+'', 1, levels.column_value)) = inc.id',
'        ) AS time_type_abbreviation,',
'        quantity AS total_time',
'    FROM',
'        pa_pmg_payrollincome ic ',
'    JOIN',
'        pa_pcf_incomecode inc ON ic.income_code = inc.income_code',
'    JOIN',
'        pa_pmg_payrolldtl pd ON ic.pay_slipno = pd.id',
'    WHERE',
'        earnings_period_id in (SELECT a_field',
'                                                           FROM ',
'                                                             xmltable(''/root/e/text()'' passing xmltype(''<root><e>''',
'                                                             || REPLACE(:P242_EARNING_PERIOD_ID,'':'',''</e><e>'')',
'                                                             || ''</e></root>'') columns a_field VARCHAR2(500) path ''/'')',
'                                        )',
')',
'WHERE',
'    time_type_abbreviation not in (1,2,3)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P242_EARNING_PERIOD_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'New'
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
 p_id=>wwv_flow_imp.id(136061115012754330)
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
,p_owner=>'MKDEVELOPER'
,p_internal_uid=>20276981156440625
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136061163506754331)
,p_db_column_name=>'WORK_DATE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Work Date'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136061319938754332)
,p_db_column_name=>'EMP_COMPANY_NO_HIST'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Emp Company No Hist'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136061427127754333)
,p_db_column_name=>'JOB_CODE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Job Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136061520268754334)
,p_db_column_name=>'SUB_JOB_CODE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Sub Job Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136061541849754335)
,p_db_column_name=>'COST_CODE_NUMBER'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cost Code Number'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136061644992754336)
,p_db_column_name=>'TIME_TYPE_ABBREVIATION'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Time Type Abbreviation'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136061769147754337)
,p_db_column_name=>'TOTAL_TIME'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Total Time'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(139337157301929367)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'235531'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'WORK_DATE:EMP_COMPANY_NO_HIST:JOB_CODE:SUB_JOB_CODE:COST_CODE_NUMBER:TIME_TYPE_ABBREVIATION:TOTAL_TIME'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(136060156696754321)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(136060014237754319)
,p_button_name=>'DOWNLOAD_SAGE_REPORT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--large:t-Button--warning:t-Button--noUI:t-Button--iconRight:t-Button--hoverIconPush:t-Button--pill:t-Button--stretch:t-Button--gapLeft:t-Button--gapTop'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Download Sage Report'
,p_button_alignment=>'RIGHT'
,p_icon_css_classes=>'fa-download'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136060091984754320)
,p_name=>'P242_EARNING_PERIOD_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(136060014237754319)
,p_prompt=>'Earning Period'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EXPR1 earn_description,id',
'from VW_EARNPAID a',
'where org_id = :APP_ORG_ID',
'and exists (select 1 from pa_pmg_payrolldtl where earnings_period_id = a.id and pay_status = ''AR'')',
'order by start_date desc'))
,p_cHeight=>10
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_controls', 'ALL')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136060288144754322)
,p_name=>'P242_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(136060014237754319)
,p_prompt=>'Search'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>8
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa fa-search fa-2x'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'SEARCH',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(136060398269754323)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P242_SEARCH'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136060532368754324)
,p_event_id=>wwv_flow_imp.id(136060398269754323)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_NL.DETORA.APEX.RESTRICT_SHUTTLE_VALUES'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P242_EARNING_PERIOD_ID'
,p_attribute_01=>'P242_SEARCH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(137951879704202781)
,p_name=>'EXEUTE_DOWNLOAD'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(136060156696754321)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137952248375202782)
,p_event_id=>wwv_flow_imp.id(137951879704202781)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_UC_DOWNLOAD_FILES_DA'
,p_attribute_01=>'sql'
,p_attribute_02=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select fn_spool_query_to_temp_clob(:P242_EARNING_PERIOD_ID) file_content_clob, ',
'''peoplepay_sage_exp_''|| TO_CHAR(current_date, ''YYYYMMDDHH24MISS'') || ''.txt'' file_name, ',
'''text/plain'' file_mime_type',
'from dual'))
,p_attribute_05=>'P242_EARNING_PERIOD_ID'
,p_attribute_09=>'attachment'
,p_attribute_15=>'show-spinner'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(136060602635754325)
,p_name=>'showbutton'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P242_EARNING_PERIOD_ID'
,p_condition_element=>'P242_EARNING_PERIOD_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136060721788754326)
,p_event_id=>wwv_flow_imp.id(136060602635754325)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(136060156696754321)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136060784600754327)
,p_event_id=>wwv_flow_imp.id(136060602635754325)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(136060156696754321)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(136061914649754338)
,p_name=>'refresh'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P242_EARNING_PERIOD_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136061940023754339)
,p_event_id=>wwv_flow_imp.id(136061914649754338)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(136060915053754328)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
