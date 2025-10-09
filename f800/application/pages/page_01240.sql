prompt --application/pages/page_01240
begin
--   Manifest
--     PAGE: 01240
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>800
,p_default_id_offset=>221543258820678920
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>1240
,p_name=>'rptEarningsPeriod'
,p_alias=>'RPTEARNINGSPERIOD'
,p_step_title=>'Create/Edit Earnings Period'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3825436659349067769)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3825574549504131715)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(578390945113682639)
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
 p_id=>wwv_flow_imp.id(670178545193520595)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988316897241556436)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3633034754492189468)
,p_plug_name=>'Listing of Earnings Period'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x."ID", COMPUTE_GROSS,natural_account_code,EARN_PRD_DTL_OPTION,tax_method,',
'"START_DATE",',
'"END_DATE",',
'INITCAP(PKG_GLOBAL_FNTS.Get_Lookup_Col("EMPLOYMENT_CLASS_ID",''VALUE_DESCRIPTION'')) "EMPLOYMENT_CLASS_ID",',
' x."ORG_ID",',
'case when "PAY_STATUS"=''N'' then ''No'' else ''Yes'' end "PAY_STATUS",',
'"PAYMENT_PERIOD_NO",',
'CASE WHEN "EPAYROLL_STATUS"=''N'' then ''No'' else ''Yes'' end "EPAYROLL_STATUS",',
'"PAYROLL_CUTOFF",',
'"COMPANY_YEAR_ID",',
'"EARNINGS_TYPE",',
'"START_PAID_FOR",',
'"END_PAID_FOR",',
'"ESCOTIA_STATUS",',
'x."LAST_CHANGED_BY",',
'x."LAST_CHANGED_DATE",',
'"VERIFIED_BY",',
'"VERIFIED_DATE",',
'x."MACHINE_INSERT",',
'x."MACHINE_UPDATE",',
'x."ENTERED_BY",',
'x."ENTRY_DATE",',
'initcap(x."PAYMENT_TYPE") PAYMENT_TYPE,',
'OT_PARENT_PERIOD ,(select id from pa_pmg_payrollhd w where w.earnings_period_id=x.id) Payroll ',
'from "PA_PCF_EARNINGPERIOD" x join HR_HCF_COMPANYYEAR v on v.id = x.company_year_id',
'WHERE company_year||EXTRACT(month FROM END_DATE)=DECODE(:P1240_ORGANISATION_PERIODS,''1'',company_year||EXTRACT(month FROM END_DATE),:P1240_ORGANISATION_PERIODS)',
'and  exists (select 1',
'             FROM VW_USERACCESS A',
'             where x.org_id=a.org_id',
'             AND X.EMPLOYMENT_CLASS_ID=A.EMPLOYMENT_CLASS_ID',
'             AND upper(x.PAYMENT_TYPE)=UPPER(A.PAYMENT_TYPE))',
'       ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1240_ORGANISATION_PERIODS'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3633034954058189468)
,p_name=>'Earnings Period'
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
,p_detail_link=>'f?p=&APP_ID.:1241:&SESSION.::&DEBUG.::P1241_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_detail_link_attr=>'title="Edit"'
,p_owner=>'PUR_INV'
,p_internal_uid=>554441086763762776
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3711450323089441447)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3711446712754441446)
,p_db_column_name=>'START_DATE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'START_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3711446306176441445)
,p_db_column_name=>'END_DATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'END_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3711450655246441447)
,p_db_column_name=>'COMPUTE_GROSS'
,p_display_order=>55
,p_column_identifier=>'AK'
,p_column_label=>'Compute Gross'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3850254074544150679)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3711451476949441447)
,p_db_column_name=>'NATURAL_ACCOUNT_CODE'
,p_display_order=>75
,p_column_identifier=>'AM'
,p_column_label=>'Natural Account Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3711451929385441447)
,p_db_column_name=>'EARN_PRD_DTL_OPTION'
,p_display_order=>85
,p_column_identifier=>'AN'
,p_column_label=>'Payroll Option'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3759815709593630465)
,p_rpt_show_filter_lov=>'1'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'select 1',
'from HR_HCF_ORG_RULE',
'where PAYROLL_OPTIONS=''DETAIL''',
'AND ORG_ID = :APP_ORG_ID',
'AND start_date <= trunc(current_date)',
'and (end_date is null or end_date >= trunc(current_date))'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655360471676402396)
,p_db_column_name=>'EMPLOYMENT_CLASS_ID'
,p_display_order=>95
,p_column_identifier=>'AO'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655360637570402397)
,p_db_column_name=>'ORG_ID'
,p_display_order=>105
,p_column_identifier=>'AP'
,p_column_label=>'Org Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655360695261402398)
,p_db_column_name=>'PAY_STATUS'
,p_display_order=>115
,p_column_identifier=>'AQ'
,p_column_label=>'Pay Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655360797958402399)
,p_db_column_name=>'PAYMENT_PERIOD_NO'
,p_display_order=>125
,p_column_identifier=>'AR'
,p_column_label=>'Payment Period No'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655360903588402400)
,p_db_column_name=>'EPAYROLL_STATUS'
,p_display_order=>135
,p_column_identifier=>'AS'
,p_column_label=>'Epayroll Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655361015060402401)
,p_db_column_name=>'PAYROLL_CUTOFF'
,p_display_order=>145
,p_column_identifier=>'AT'
,p_column_label=>'Payroll Cutoff'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655361135403402402)
,p_db_column_name=>'COMPANY_YEAR_ID'
,p_display_order=>155
,p_column_identifier=>'AU'
,p_column_label=>'Company Year '
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854207954318306317)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655361168207402403)
,p_db_column_name=>'EARNINGS_TYPE'
,p_display_order=>165
,p_column_identifier=>'AV'
,p_column_label=>'Earnings Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655361287588402404)
,p_db_column_name=>'START_PAID_FOR'
,p_display_order=>175
,p_column_identifier=>'AW'
,p_column_label=>'Start Paid For'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655361366559402405)
,p_db_column_name=>'END_PAID_FOR'
,p_display_order=>185
,p_column_identifier=>'AX'
,p_column_label=>'End Paid For'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655361495897402406)
,p_db_column_name=>'ESCOTIA_STATUS'
,p_display_order=>195
,p_column_identifier=>'AY'
,p_column_label=>'Escotia Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655361645651402407)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>205
,p_column_identifier=>'AZ'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655361663067402408)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>215
,p_column_identifier=>'BA'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655361783820402409)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>225
,p_column_identifier=>'BB'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655361868390402410)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>235
,p_column_identifier=>'BC'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655361957755402411)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>245
,p_column_identifier=>'BD'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655362070084402412)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>255
,p_column_identifier=>'BE'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655362152188402413)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>265
,p_column_identifier=>'BF'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655362292040402414)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>275
,p_column_identifier=>'BG'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655362412587402415)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>285
,p_column_identifier=>'BH'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655362454969402416)
,p_db_column_name=>'OT_PARENT_PERIOD'
,p_display_order=>295
,p_column_identifier=>'BI'
,p_column_label=>'Ot Parent Period'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655362642786402417)
,p_db_column_name=>'PAYROLL'
,p_display_order=>305
,p_column_identifier=>'BJ'
,p_column_label=>'Payroll'
,p_column_link=>'f?p=&APP_ID.:1251:&SESSION.::&DEBUG.:1251:P1251_ID,P1251_RETURN_VALUE:#PAYROLL#,1240'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_link_attr=>'title="View payroll if exist"'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(471800648187607768)
,p_db_column_name=>'TAX_METHOD'
,p_display_order=>315
,p_column_identifier=>'BK'
,p_column_label=>'Tax Method'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3633037344847189474)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'817335'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'COMPANY_YEAR_ID:EMPLOYMENT_CLASS_ID:EARNINGS_TYPE:PAYMENT_TYPE:START_DATE:END_DATE:START_PAID_FOR:END_PAID_FOR:PAYROLL_CUTOFF:PAYMENT_PERIOD_NO:COMPUTE_GROSS:PAY_STATUS:TAX_METHOD:PAYROLL:'
,p_sort_column_1=>'EMPLOYMENT_CLASS_ID'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'START_DATE'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'COMPANY_YEAR_ID:0:0:0:0:EMPLOYMENT_CLASS_ID:EARNINGS_TYPE'
,p_break_enabled_on=>'COMPANY_YEAR_ID:0:0:0:0:EMPLOYMENT_CLASS_ID:EARNINGS_TYPE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3821506817846925154)
,p_plug_name=>'Listing of Earnings Period By Start and End Dates'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x."ID", COMPUTE_GROSS,natural_account_code,EARN_PRD_DTL_OPTION,',
'"START_DATE",',
'"END_DATE",',
' INITCAP(PKG_GLOBAL_FNTS.Get_Lookup_Col("EMPLOYMENT_CLASS_ID",''VALUE_DESCRIPTION'')) "EMPLOYMENT_CLASS_ID",',
' x."ORG_ID",',
'case when "PAY_STATUS"=''N'' then ''No'' else ''Yes'' end "PAY_STATUS",',
'"PAYMENT_PERIOD_NO",',
'CASE WHEN "EPAYROLL_STATUS"=''N'' then ''No'' else ''Yes'' end "EPAYROLL_STATUS",',
'"PAYROLL_CUTOFF",',
'"COMPANY_YEAR_ID",',
'"EARNINGS_TYPE",',
'"START_PAID_FOR",',
'"END_PAID_FOR",',
'"ESCOTIA_STATUS",',
'x."LAST_CHANGED_BY",',
'x."LAST_CHANGED_DATE",',
'"VERIFIED_BY",',
'"VERIFIED_DATE",',
'x."MACHINE_INSERT",',
'x."MACHINE_UPDATE",',
'x."ENTERED_BY",',
'x."ENTRY_DATE",',
'initcap(x."PAYMENT_TYPE") PAYMENT_TYPE,',
'OT_PARENT_PERIOD, (select id from pa_pmg_payrollhd w where w.earnings_period_id=x.id) Payroll',
'from "PA_PCF_EARNINGPERIOD" x join HR_HCF_COMPANYYEAR v on v.id = x.company_year_id',
'WHERE start_date between :P1240_START_DATE and :P1240_END_DATE',
'and  exists (select 1',
'             FROM VW_USERACCESS A',
'             where x.org_id=a.org_id',
'             AND X.EMPLOYMENT_CLASS_ID=A.EMPLOYMENT_CLASS_ID',
'             AND upper(x.PAYMENT_TYPE)=UPPER(A.PAYMENT_TYPE))',
'       ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1240_START_DATE,P1240_END_DATE'
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
 p_id=>wwv_flow_imp.id(3821506604975925152)
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
,p_detail_link=>'f?p=&APP_ID.:1241:&SESSION.::&DEBUG.::P1241_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_detail_link_attr=>'title="Edit"'
,p_owner=>'PEOPLEPAY'
,p_internal_uid=>316321297482190278
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3711465269157441460)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3711462882651441459)
,p_db_column_name=>'EPAYROLL_STATUS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Epay Status'
,p_column_type=>'STRING'
,p_static_id=>'EPAYROLL_STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3711462492858441458)
,p_db_column_name=>'PAYROLL_CUTOFF'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Payroll Cutoff'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'PAYROLL_CUTOFF'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3711462096968441458)
,p_db_column_name=>'EMPLOYMENT_CLASS_ID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_static_id=>'EMPLOYMENT_CLASS_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3711461694839441458)
,p_db_column_name=>'ORG_ID'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Company'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_static_id=>'ORG_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3806579699393846043)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3711460943482441458)
,p_db_column_name=>'COMPUTE_GROSS'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Compute Gross'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3850254074544150679)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3711460076714441458)
,p_db_column_name=>'NATURAL_ACCOUNT_CODE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Natural Account Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3711459739851441458)
,p_db_column_name=>'START_DATE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'START_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3711459279428441458)
,p_db_column_name=>'END_DATE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'END_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3711458876091441457)
,p_db_column_name=>'PAYMENT_PERIOD_NO'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Prd No.'
,p_column_type=>'NUMBER'
,p_static_id=>'PAYMENT_PERIOD_NO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3711455319083441450)
,p_db_column_name=>'PAY_STATUS'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Pay Status'
,p_column_type=>'STRING'
,p_static_id=>'PAY_STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3711465662198441462)
,p_db_column_name=>'EARN_PRD_DTL_OPTION'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Payroll Option'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3759815709593630465)
,p_rpt_show_filter_lov=>'1'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'select 1',
'from HR_HCF_ORG_RULE',
'where PAYROLL_OPTIONS=''DETAIL''',
'AND ORG_ID = :APP_ORG_ID',
'AND start_date <= trunc(current_date)',
'and (end_date is null or end_date >= trunc(current_date))'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655362678290402418)
,p_db_column_name=>'COMPANY_YEAR_ID'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Company Year Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655362797288402419)
,p_db_column_name=>'EARNINGS_TYPE'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Earnings Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655362949162402420)
,p_db_column_name=>'START_PAID_FOR'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Start Paid For'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655363034227402421)
,p_db_column_name=>'END_PAID_FOR'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'End Paid For'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655363099376402422)
,p_db_column_name=>'ESCOTIA_STATUS'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Escotia Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655363232446402423)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655363254039402424)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655363430351402425)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655363459194402426)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655363628641402427)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655363699104402428)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655363822315402429)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655363922737402430)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655364041772402431)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655364111466402432)
,p_db_column_name=>'OT_PARENT_PERIOD'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Ot Parent Period'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655364239608402433)
,p_db_column_name=>'PAYROLL'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Payroll'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3818301462669889683)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'817197'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COMPUTE_GROSS:EMPLOYMENT_CLASS_ID:START_DATE:END_DATE:PAYMENT_PERIOD_NO:PAY_STATUS:EARN_PRD_DTL_OPTION'
,p_break_on=>'PAYMENT_TYPE:COMPUTE_GROSS:0:0:0:0'
,p_break_enabled_on=>'PAYMENT_TYPE:COMPUTE_GROSS:0:0:0:0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3711452974089441449)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(670178545193520595)
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
 p_id=>wwv_flow_imp.id(3711452555762441449)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(670178545193520595)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1241:&SESSION.::&DEBUG.:1241::'
,p_security_scheme=>wwv_flow_imp.id(3806878774902039125)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3711440315579441444)
,p_name=>'P1240_ORGANISATION_PERIODS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3633034754492189468)
,p_prompt=>'Periods'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a,B',
'FROM',
'    (  SELECT DISTINCT TO_CHAR(END_DATE,''MONTH'')||'' ''||company_year A',
'      , company_year||EXTRACT(month FROM END_DATE) b',
'      ,  company_year C, EXTRACT(month FROM END_DATE) D',
'      FROM PA_PCF_EARNINGPERIOD  v join HR_HCF_COMPANYYEAR x on x.id = v.company_year_id',
'     where  exists ( ',
'              select 1',
'              FROM VW_USERACCESS A ',
'              where v.org_id=a.org_id      ',
'              and v.payment_type=a.payment_type ',
'              and v.employment_class_id=a.employment_class_id ',
'                    ) ',
'      )',
'ORDER BY C DESC, D DESC    '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'---ALL--'
,p_lov_null_value=>'1'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
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
 p_id=>wwv_flow_imp.id(3711453656592441450)
,p_name=>'P1240_END_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3821506817846925154)
,p_prompt=>'End Date'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3711454064482441450)
,p_name=>'P1240_START_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3821506817846925154)
,p_prompt=>'Start Date'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3711439015547441443)
,p_name=>'Refresh - Create'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3711452555762441449)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3711438490078441441)
,p_event_id=>wwv_flow_imp.id(3711439015547441443)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3633034754492189468)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3711438090580441441)
,p_name=>'Refresh - Edit'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3633034754492189468)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3711437562383441441)
,p_event_id=>wwv_flow_imp.id(3711438090580441441)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3633034754492189468)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3711437169851441440)
,p_name=>'search'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1240_ORGANISATION_PERIODS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3711436712526441440)
,p_event_id=>wwv_flow_imp.id(3711437169851441440)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3633034754492189468)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3711436344145441440)
,p_name=>'fresher'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1240_START_DATE'
,p_condition_element=>'P1240_END_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3711435804303441440)
,p_event_id=>wwv_flow_imp.id(3711436344145441440)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3821506817846925154)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3711435444914441440)
,p_name=>'fresher1'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1240_END_DATE'
,p_condition_element=>'P1240_START_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3711434911353441440)
,p_event_id=>wwv_flow_imp.id(3711435444914441440)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3821506817846925154)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
