prompt --application/pages/page_01255
begin
--   Manifest
--     PAGE: 01255
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>1000
,p_default_id_offset=>221683928681757931
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>1255
,p_name=>'rptPayrollHeadDebug'
,p_alias=>'RPTPAYROLLHEADDEBUG'
,p_step_title=>'Listing of Debug Payroll'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3825576809620141424)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(552552046126253992)
,p_plug_name=>'BREADCRUMB'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(10988457567102635447)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3841751360681712003)
,p_plug_name=>'Listing of Payrolls Executed'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select A."ID", ',
'A."EARNINGS_PERIOD_ID",',
'"PAYROLL_DATE",',
'A."PAY_STATUS",',
'"PAY_TASK",',
'A."LAST_CHANGED_BY",',
'A."LAST_CHANGED_DATE",',
'A."VERIFIED_BY",',
'A."VERIFIED_DATE",',
'(SELECT EMPLOYEE',
'FROM VW_EMPLOYEENOSEC',
'WHERE ID = MANAGER_APPROVED_BY) "MANAGER_APPROVED_BY",',
'"MANAGER_APPROVED_DATE",',
'A."ENTERED_BY",',
'A."ENTRY_DATE",',
'A."MACHINE_INSERT",',
'A."MACHINE_UPDATE",A."EARNINGS_PERIOD_ID" Earn_Link,',
'initcap(pkg_global_fnts.get_lookup_col(B.employment_class_id, ''VALUE_DESCRIPTION'')) employment_class',
'from "DEBUG_PAYROLLHD" A JOIN "PA_PCF_EARNINGPERIOD" B ON A."EARNINGS_PERIOD_ID" = B."ID"',
'join HR_HCF_COMPANYYEAR x on x.id = B.company_year_id',
'WHERE B.ORG_ID =DECODE(:P1255_ORGANISATION,1, B.ORG_ID, :P1255_ORGANISATION)',
'AND company_year||EXTRACT(month FROM end_date)=DECODE(:P1255_ORGANISATION_PERIODS,''1'',company_year||EXTRACT(month FROM start_date),:P1255_ORGANISATION_PERIODS)',
'and  exists (select 1',
'             FROM VW_USERACCESS C',
'             where B.org_id=C.org_id',
'             and B.employment_class_id=C.employment_class_id',
'             AND upper(B.PAYMENT_TYPE)=C.PAYMENT_TYPE)',
'order by A.EARNINGS_PERIOD_ID DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1255_ORGANISATION,P1255_ORGANISATION_PERIODS'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3841751156275712002)
,p_name=>'Payroll Head'
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
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1256:&SESSION.::&DEBUG.:1256:P1256_ID,P1256_RETURN_VALUE:#ID#,1256'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'PUR_INV'
,p_internal_uid=>3358983809403251158
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3928828216660271140)
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
 p_id=>wwv_flow_imp.id(3928827810076271136)
,p_db_column_name=>'EARNINGS_PERIOD_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Earnings Period'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EARNINGS_PERIOD_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3854273896615290385)
,p_rpt_show_filter_lov=>'2'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3928827410138271136)
,p_db_column_name=>'PAYROLL_DATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Payroll Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'PAYROLL_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3928827004060271133)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3928826601354271133)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3928826231493271132)
,p_db_column_name=>'MANAGER_APPROVED_DATE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Manager Approved Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'MANAGER_APPROVED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3928825772691271132)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3928825022358271130)
,p_db_column_name=>'PAY_STATUS'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Payroll Status'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'PAY_STATUS'
,p_rpt_named_lov=>wwv_flow_imp.id(3854143911410093627)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3928824632329271129)
,p_db_column_name=>'PAY_TASK'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Pay Task'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'PAY_TASK'
,p_rpt_named_lov=>wwv_flow_imp.id(3847762919816535699)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3928824226072271128)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3928823831065271127)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3928823422292271127)
,p_db_column_name=>'MANAGER_APPROVED_BY'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Manager Approved By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MANAGER_APPROVED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3928822960195271126)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3928822587506271126)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3928822213128271125)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789122677671991855)
,p_db_column_name=>'EARN_LINK'
,p_display_order=>32
,p_column_identifier=>'W'
,p_column_label=>'Earn Link'
,p_column_link=>'f?p=&APP_ID.:1241:&SESSION.::&DEBUG.:RP,1241:P1241_ID:#EARN_LINK#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USER_PAGE_DML_ACCESS',
'WHERE WEBPAGE_ID=1241',
'AND CAN_VIEW=''Y'''))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3680324939978311606)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>42
,p_column_identifier=>'X'
,p_column_label=>'Emp. Class'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3841749483444711986)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'222201'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EARNINGS_PERIOD_ID:EMPLOYMENT_CLASS:PAYROLL_DATE:MANAGER_APPROVED_BY:MANAGER_APPROVED_DATE:PAY_STATUS:PAY_TASK:EARN_LINK:'
,p_sort_column_1=>'PAYROLL_DATE'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(559286775412365249)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(552552046126253992)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(559287189057365250)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(552552046126253992)
,p_button_name=>'TROUBLE_SHOOT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Trouble Shoot'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1500:&SESSION.::&DEBUG.:RP,1500:P1500_RETURN_VALUE:1250'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(559287559806365251)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(552552046126253992)
,p_button_name=>'PAYCHANGE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Pay Change'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1501:&SESSION.::&DEBUG.:RP,1501:P1501_REPORT_ID:5035'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(559288021165365252)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(552552046126253992)
,p_button_name=>'INTERNAL_PAYSLIP'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Internal Payslip'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1355:&SESSION.::&DEBUG.:RP,1355:P1355_RETURN_VALUE:1250'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(559288393342365253)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(552552046126253992)
,p_button_name=>'NEGATIVE_NETPAY'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Negative NetPay'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1506:&SESSION.::&DEBUG.:RP,1506:P1506_RETURN_VALUE:1250'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(559289153040365254)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(552552046126253992)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1256:&SESSION.::&DEBUG.:1256:P1256_RETURN_VALUE:1255'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3928829686864271183)
,p_name=>'P1255_ORGANISATION_PERIODS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3841751360681712003)
,p_prompt=>'Periods'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  a,B',
'FROM',
'    (  SELECT DISTINCT TO_CHAR(END_DATE,''MONTH'')||'' ''||w.company_year A',
'      , company_year||EXTRACT(month FROM END_DATE) b',
'      ,  company_year C, EXTRACT(month FROM END_DATE) D',
'      FROM PA_PCF_EARNINGPERIOD  join HR_HCF_COMPANYYEAR w on w.id = PA_PCF_EARNINGPERIOD.company_year_id  ',
'      WHERE PA_PCF_EARNINGPERIOD.ORG_ID =:P1255_ORGANISATION',
'      AND EXISTS (SELECT 1',
'             FROM DEBUG_PAYROLLHD X',
'             WHERE X.EARNINGS_PERIOD_ID= PA_PCF_EARNINGPERIOD.ID',
'               )   ',
'      and exists ( ',
'              select 1',
'              FROM VW_USERACCESS A ',
'              where PA_PCF_EARNINGPERIOD.org_id=a.org_id      ',
'              and PA_PCF_EARNINGPERIOD.payment_type=a.payment_type ',
'              and PA_PCF_EARNINGPERIOD.employment_class_id=a.employment_class_id ',
'                    )',
'      ) ',
'ORDER BY C DESC, D DESC'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1255_ORGANISATION'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3928830111804271185)
,p_name=>'P1255_ORGANISATION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3841751360681712003)
,p_item_default=>':APP_ORG_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Search by Organisation'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ORGANISATION_NAME A, ID b',
'FROM HR_HCF_ORGANISATION a',
'WHERE EXISTS (SELECT 1',
'              FROM PA_PCF_EARNINGPERIOD B JOIN DEBUG_PAYROLLHD C ON B.ID=C.EARNINGS_PERIOD_ID',
'              where a.id=org_id)',
'and exists (select 1',
'            from VW_USERACCESS x',
'            where x.org_id=a.id)',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--ALL--'
,p_lov_null_value=>'1'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(559298867306365305)
,p_name=>'search'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1255_ORGANISATION_PERIODS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(559299383197365308)
,p_event_id=>wwv_flow_imp.id(559298867306365305)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3841751360681712003)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
