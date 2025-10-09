prompt --application/pages/page_01248
begin
--   Manifest
--     PAGE: 01248
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
 p_id=>1248
,p_name=>'rptPayrollRecons'
,p_step_title=>'Listing of Payroll Control'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3825717571127569059)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3807158850583545770)
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3695298071237193279)
,p_plug_name=>'Listing of Payroll Control'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.ID,',
'       a.ORG_ID,EARNINGS_PERIOD_ID,PRV_EARNINGS_PERIOD_ID,CURRENT_NO_EMPLOYEES,CURRENT_OTH_EARNING,',
'       PREVIOUS_MONTH_YEAR,',
'       PREVIOUS_NO_EMPLOYEES,',
'       PREVIOUS_BASIC_PAY,',
'       PREVIOUS_ALLOWANCES,',
'       PREVIOUS_INCENTIVES,',
'       PREVIOUS_BENEFITS,',
'       PREVIOUS_OTH_EARNINGS,',
'       CURRENT_MONTH_YEAR,',
'       SEPARATED_EMPLOYEES,',
'       CURRENT_BASIC_PAY,',
'       CURRENT_ALLOWANCES,',
'       CURRENT_INCENTIVES,',
'       CURRENT_BENEFITS,',
'       REMARKS,',
'       a.ENTRY_DATE,',
'       a.ENTERED_BY,',
'       a.LAST_CHANGED_BY,',
'       a.LAST_CHANGED_DATE,',
'       a.NEW_EMPLOYEES,',
'       a.TRANSACTION_TYPE_ID,',
'       a.STATUS,',
'       a.VERIFIED_BY,',
'       a.VERIFIED_DATE',
'  from PA_PMG_PAYROLLRECONS A JOIN pa_pcf_earningperiod b on b.id = a.EARNINGS_PERIOD_ID',
'  WHERE employment_class_id = :P1248_EMPLOYMENT_CLASS'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1248_EMPLOYMENT_CLASS'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3695297734896193279)
,p_name=>'Report 1'
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
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1249:&SESSION.::&DEBUG.:RP:P1249_ID:\#ID#\'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'PEOPLEPAY'
,p_internal_uid=>415783412358356341
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3719983092954502442)
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
 p_id=>wwv_flow_imp.id(3719983452016502444)
,p_db_column_name=>'ORG_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Org Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3719983860180502444)
,p_db_column_name=>'PREVIOUS_MONTH_YEAR'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Prv Payroll'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3719984291721502444)
,p_db_column_name=>'PREVIOUS_NO_EMPLOYEES'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Prv No Emps'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3719984719256502444)
,p_db_column_name=>'PREVIOUS_BASIC_PAY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Prv Basic Pay'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3719985078799502445)
,p_db_column_name=>'PREVIOUS_ALLOWANCES'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Prv Allowances'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3719985534811502445)
,p_db_column_name=>'PREVIOUS_INCENTIVES'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Prv Incentives'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3719985912928502445)
,p_db_column_name=>'PREVIOUS_BENEFITS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Prv Benefits'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3719986306148502446)
,p_db_column_name=>'PREVIOUS_OTH_EARNINGS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Prv Oth Earnings'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3719986717613502446)
,p_db_column_name=>'CURRENT_MONTH_YEAR'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Cur Payroll'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3719987072305502446)
,p_db_column_name=>'SEPARATED_EMPLOYEES'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Sep Emp'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3719987476636502447)
,p_db_column_name=>'CURRENT_BASIC_PAY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Curr Basic Pay'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3719987890530502447)
,p_db_column_name=>'CURRENT_ALLOWANCES'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Cur Allowances'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3719988326231502447)
,p_db_column_name=>'CURRENT_INCENTIVES'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Cur Incentives'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3719988673773502447)
,p_db_column_name=>'CURRENT_BENEFITS'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Cur Benefits'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3719989129756502448)
,p_db_column_name=>'REMARKS'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3719989539599502448)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3719989916282502448)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3719990330811502449)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3719990737858502449)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3719991134343502449)
,p_db_column_name=>'NEW_EMPLOYEES'
,p_display_order=>30
,p_column_identifier=>'U'
,p_column_label=>'New Emp'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3719991524762502449)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>40
,p_column_identifier=>'V'
,p_column_label=>'Transaction Type'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3719991913946502450)
,p_db_column_name=>'STATUS'
,p_display_order=>50
,p_column_identifier=>'W'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3719992240248502450)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>60
,p_column_identifier=>'X'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3719992722243502450)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>70
,p_column_identifier=>'Y'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3719993083141502451)
,p_db_column_name=>'EARNINGS_PERIOD_ID'
,p_display_order=>80
,p_column_identifier=>'Z'
,p_column_label=>'Cur Earnings Period'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854414658122718020)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3719993482284502451)
,p_db_column_name=>'PRV_EARNINGS_PERIOD_ID'
,p_display_order=>90
,p_column_identifier=>'AA'
,p_column_label=>'Prv Earnings Period'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854414658122718020)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3719993877190502451)
,p_db_column_name=>'CURRENT_NO_EMPLOYEES'
,p_display_order=>100
,p_column_identifier=>'AB'
,p_column_label=>'Current No Employees'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3719994334687502452)
,p_db_column_name=>'CURRENT_OTH_EARNING'
,p_display_order=>110
,p_column_identifier=>'AC'
,p_column_label=>'Current Oth Earning'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3694251286888725549)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1120550'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PREVIOUS_MONTH_YEAR:CURRENT_MONTH_YEAR:PRV_EARNINGS_PERIOD_ID:EARNINGS_PERIOD_ID:PREVIOUS_NO_EMPLOYEES:NEW_EMPLOYEES:SEPARATED_EMPLOYEES:CURRENT_NO_EMPLOYEES:PREVIOUS_BASIC_PAY:CURRENT_BASIC_PAY:PREVIOUS_ALLOWANCES:CURRENT_ALLOWANCES:PREVIOUS_INCENTI'
||'VES:CURRENT_INCENTIVES:PREVIOUS_BENEFITS:CURRENT_BENEFITS:PREVIOUS_OTH_EARNINGS:CURRENT_OTH_EARNING:LAST_CHANGED_BY:LAST_CHANGED_DATE:'
,p_sort_column_1=>'PREVIOUS_MONTH_YEAR'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'PREVIOUS_MONTH_YEAR:0:0:0:0:0'
,p_break_enabled_on=>'PREVIOUS_MONTH_YEAR:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3719995113893502452)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3695298071237193279)
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
 p_id=>wwv_flow_imp.id(3719995470429502453)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3695298071237193279)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1249:&SESSION.::&DEBUG.:1249'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3719995920250502453)
,p_name=>'P1248_EMPLOYMENT_CLASS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3695298071237193279)
,p_prompt=>'Employment Class'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(VALUE_DESCRIPTION) A, ID B',
'from table(pkg_global_fnts.get_lookup_value(''TBLEMPLOYMENTCLASS'')) X',
'WHERE exists (select 1',
'             FROM VW_USERACCESS A',
'             where x.ID=a.employment_class_id',
'             and x.org_id=a.org_id)',
'and exists(select 1',
'           from pa_pmg_payrollrecons w JOIN pa_pcf_earningperiod y on y.id = w.EARNINGS_PERIOD_ID',
'           WHERE y.employment_class_id = x.id       ',
'           )',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3719996287979502453)
,p_name=>'search Data'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1248_EMPLOYMENT_CLASS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3719996747942502454)
,p_event_id=>wwv_flow_imp.id(3719996287979502453)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3695298071237193279)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
