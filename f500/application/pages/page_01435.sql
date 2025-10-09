prompt --application/pages/page_01435
begin
--   Manifest
--     PAGE: 01435
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>500
,p_default_id_offset=>221402556581611694
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>1435
,p_name=>'rptActivityHistory'
,p_step_title=>'Create/Edit Activity History'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3825296363170004470)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3806736716975971898)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3490974284313078483)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988176195002489210)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3778256842599757838)
,p_plug_name=>'Disabled Unique Constraint'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>21
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>'<div class="strong-text">Warning! The unique constraint on activity records is not enabled.</div>'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from user_constraints',
'where constraint_name=''UK_HR_ATT_ACTIVITY''',
'and status!=''ENABLED'';'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3787824773975303215)
,p_plug_name=>'Employee Non Work Activities for Reporting To &APP_USER.'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v."ID", ',
'x."ID" Detail,',
'(select value_description a from table(pkg_global_fnts.Get_Lookup_Value(''TBLACTIVITYTYPE'')) Where Id=Activity_Type_Id) "ACTIVITY_TYPE_ID",',
'x."START_DATE",',
'x."END_DATE",',
'Pkg_Global_Fnts.Get_Lookup_Col(VENUE_ID, ''VALUE_DESCRIPTION'') "VENUE_ID",',
'"EARNINGS_PERIOD_ID",',
'CASE WHEN UPPER("ATTRACT_PAYMENT")=''P'' THEN ''PAYMENT'' WHEN UPPER("ATTRACT_PAYMENT")=''D'' THEN ''DEDUCTION'' ELSE ''NONE'' END ATTRACT_PAYMENT,',
'v."PAY_STATUS",',
'(select ORGANISATION_NAME a from HR_HCF_ORGANISATION WHERE ID=SPONSORED_BY_ID) "SPONSORED_BY_ID",',
'"ACTIVITY_EXPENDITURE",',
'(select INDIVIDUAL a from VW_INDIVIDUAL WHERE ID=FACILITATOR_ID) "FACILITATOR_ID",',
' "EXPENSE_CODE_ID",',
'V."ENTERED_BY",',
'v."ENTRY_DATE",',
'v."VERIFIED_BY",',
'v."VERIFIED_DATE",',
'V."LAST_CHANGED_DATE",',
'V."LAST_CHANGED_BY",',
'V."MACHINE_INSERT",',
'V."MACHINE_UPDATE",',
'v."TRANSACTION_TYPE_ID",',
' pkg_global_fnts.status_descript(v.STATUS) "STATUS",',
'Emp_Id,',
'Time_Used,',
'EARNINGS,',
'(SELECT B.DESCRIPTION FROM HR_RCM_EMPENTITLE A JOIN PA_PCF_INCOMECODE B ON A.INCOME_CODE_ID=B.ID WHERE A.ID=X.EMPENT_ID) INCOME,',
'w.payment_type,',
'x.employment_class_id',
'from "HR_ATT_ACTIVITY" v left outer join HR_ATT_ACTIVITYATTENDANCE x on v.id=x.ACTIVITY_ID',
'join pa_pcf_earningperiod w on v.earnings_period_id=w.id',
'WHERE v.ORG_ID =:APP_ORG_ID',
'and trunc(v.START_DATE) between :P1435_START_DATE and :P1435_END_DATE',
'and exists ( ',
'			  select 1',
'              FROM VW_USERACCESS A  join VW_SELFREPORT_TO b on a.employee_no=b.employee_no',
'              where w.org_id = a.org_id',
'              and w.employment_class_id = a.employment_class_id',
'              and upper(w.payment_type) =  upper(a.payment_type)',
'              and nvl(x.report_to_hist,1) = decode(pkg_global_fnts.fn_selfReport_to(:APP_ORG_ID), 1, b.employee_no, nvl(x.report_to_hist,1))',
'            ) ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1435_START_DATE_1,P1435_END_DATE_1'
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
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3787825405447303221)
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
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1436:&SESSION.::&DEBUG.::P1436_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'CLOUD_PROD_DEV'
,p_internal_uid=>102039247122857335
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704769424780755488)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Detail'
,p_column_link=>'f?p=&APP_ID.:1437:&SESSION.::&DEBUG.::P1437_ID:#DETAIL#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704769857471755490)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704770182340755491)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_static_id=>'VERIFIED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704770605837755492)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704770978882755493)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704771433855755494)
,p_db_column_name=>'ACTIVITY_TYPE_ID'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Activity Type'
,p_column_type=>'STRING'
,p_static_id=>'ACTIVITY_TYPE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704771838787755494)
,p_db_column_name=>'SPONSORED_BY_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Sponsored By'
,p_column_type=>'STRING'
,p_static_id=>'SPONSORED_BY_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704772167850755495)
,p_db_column_name=>'VENUE_ID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Venue'
,p_column_type=>'STRING'
,p_static_id=>'VENUE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704772561839755495)
,p_db_column_name=>'FACILITATOR_ID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Facilitator'
,p_column_type=>'STRING'
,p_static_id=>'FACILITATOR_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704773044479755496)
,p_db_column_name=>'EXPENSE_CODE_ID'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Expense Code'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_static_id=>'EXPENSE_CODE_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3854027746099208365)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704773401851755496)
,p_db_column_name=>'EMP_ID'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3831033801893434064)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704773780964755497)
,p_db_column_name=>'TIME_USED'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Hrs'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'TIME_USED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704774216100755498)
,p_db_column_name=>'DETAIL'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Detail'
,p_column_link=>'f?p=&APP_ID.:1437:&SESSION.::&DEBUG.::P1437_ID,P1437_ACTIVITY_ID:#DETAIL#,#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'DETAIL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704774623256755498)
,p_db_column_name=>'EARNINGS'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Earnings'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704774958794755499)
,p_db_column_name=>'INCOME'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Income'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704775396799755499)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Payment type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704775786172755500)
,p_db_column_name=>'EMPLOYMENT_CLASS_ID'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Employment class id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3853987022755144140)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704776190595755500)
,p_db_column_name=>'START_DATE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_static_id=>'START_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704776600945755501)
,p_db_column_name=>'END_DATE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_static_id=>'END_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704777043571755501)
,p_db_column_name=>'EARNINGS_PERIOD_ID'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Earnings Period'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EARNINGS_PERIOD_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3853992524515144148)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704777439505755502)
,p_db_column_name=>'ACTIVITY_EXPENDITURE'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Expenditure'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990'
,p_static_id=>'ACTIVITY_EXPENDITURE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704777852820755502)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704778098623755503)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704778537419755504)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704778863692755504)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704779276844755505)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Transaction Type'
,p_column_type=>'NUMBER'
,p_static_id=>'TRANSACTION_TYPE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704779694620755505)
,p_db_column_name=>'STATUS'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_static_id=>'STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704780058359755506)
,p_db_column_name=>'ATTRACT_PAYMENT'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Attract Payment'
,p_column_type=>'STRING'
,p_static_id=>'ATTRACT_PAYMENT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704780477427755506)
,p_db_column_name=>'PAY_STATUS'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Pay Status'
,p_column_type=>'STRING'
,p_static_id=>'PAY_STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3787865813222768673)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'189947'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_ID:VENUE_ID:ACTIVITY_TYPE_ID:PAYMENT_TYPE:INCOME:TIME_USED:START_DATE:END_DATE:EARNINGS:ATTRACT_PAYMENT:EARNINGS_PERIOD_ID:DETAIL:'
,p_break_on=>'ACTIVITY_TYPE_ID:START_DATE:VENUE_ID:0:0:0'
,p_break_enabled_on=>'ACTIVITY_TYPE_ID:START_DATE:VENUE_ID:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3837034936120145759)
,p_plug_name=>'Employee Non Work Activities'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>22
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v."ID", v."ID" Pkey,',
'x."ID" Detail,',
'(select value_description a',
'from table(pkg_global_fnts.Get_Lookup_Value(''TBLACTIVITYTYPE''))',
'Where Id=Activity_Type_Id) "ACTIVITY_TYPE_ID",',
'x."START_DATE",',
'x."END_DATE",',
'Pkg_Global_Fnts.Get_Lookup_Col(VENUE_ID, ''VALUE_DESCRIPTION'') "VENUE_ID",',
'"EARNINGS_PERIOD_ID",',
'CASE WHEN UPPER("ATTRACT_PAYMENT")=''P'' THEN ''PAYMENT''',
'    WHEN UPPER("ATTRACT_PAYMENT")=''D'' THEN ''DEDUCTION''',
'  ELSE ''NONE'' END ATTRACT_PAYMENT,',
'v."PAY_STATUS",',
'(select ORGANISATION_NAME a',
'from HR_HCF_ORGANISATION',
'WHERE ID=SPONSORED_BY_ID) "SPONSORED_BY_ID",',
'"ACTIVITY_EXPENDITURE",',
'(select INDIVIDUAL a',
'from VW_INDIVIDUAL',
'WHERE ID=FACILITATOR_ID) "FACILITATOR_ID",',
' "EXPENSE_CODE_ID",',
'V."ENTERED_BY",',
'v."ENTRY_DATE",',
'v."VERIFIED_BY",',
'v."VERIFIED_DATE",',
'V."LAST_CHANGED_DATE",',
'V."LAST_CHANGED_BY",',
'V."MACHINE_INSERT",',
'V."MACHINE_UPDATE",',
'v."TRANSACTION_TYPE_ID",',
' pkg_global_fnts.status_descript(v.STATUS) "STATUS",',
'Emp_Id,',
'Time_Used,',
'EARNINGS, initcap(v.subject_course) progam,',
'(SELECT B.DESCRIPTION',
'FROM HR_RCM_EMPENTITLE A JOIN PA_PCF_INCOMECODE B ON A.INCOME_CODE_ID=B.ID',
'WHERE A.ID=X.EMPENT_ID) INCOME,',
'w.payment_type,',
'x.employment_class_id',
'from HR_ATT_ACTIVITY v left outer join HR_ATT_ACTIVITYATTENDANCE x on v.id=x.ACTIVITY_ID',
'left join pa_pcf_earningperiod w on v.earnings_period_id=w.id',
'WHERE v.ORG_ID =:APP_ORG_ID',
'and trunc(v.START_DATE) between :P1435_START_DATE and :P1435_END_DATE',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1435_START_DATE,P1435_END_DATE'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'pkg_global_fnts.fn_selfReport_to(:APP_ORG_ID)=0'
,p_plug_display_when_cond2=>'PLSQL'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3837035135994145760)
,p_name=>'Listing of Employee Non Work Activities'
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
,p_detail_link=>'f?p=&APP_ID.:1436:&SESSION.::&DEBUG.::P1436_ID:#ID#'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'PUR_INV'
,p_internal_uid=>151248977669699874
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704786817617755512)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Detail'
,p_column_link=>'f?p=&APP_ID.:1437:&SESSION.::&DEBUG.::P1437_ID,P1437_RETURN_VALUE:#DETAIL#,1435'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704788769221755514)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704789215637755515)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704789648848755515)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704789997386755515)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704790458103755515)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Transaction Type Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'TRANSACTION_TYPE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704790795538755516)
,p_db_column_name=>'STATUS'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704791998064755517)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704792399467755517)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704792855641755517)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704793254215755517)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704785574550755511)
,p_db_column_name=>'EMP_ID'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3831033801893434064)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704786033917755512)
,p_db_column_name=>'TIME_USED'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Hrs'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'TIME_USED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704786456433755512)
,p_db_column_name=>'DETAIL'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Detail'
,p_column_link=>'f?p=&APP_ID.:1437:&SESSION.::&DEBUG.::P1437_ID,P1437_ACTIVITY_ID:#DETAIL#,#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'DETAIL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704783959169755510)
,p_db_column_name=>'EARNINGS'
,p_display_order=>49
,p_column_identifier=>'AN'
,p_column_label=>'Earnings'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704784447462755511)
,p_db_column_name=>'INCOME'
,p_display_order=>59
,p_column_identifier=>'AO'
,p_column_label=>'Income'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704785227518755511)
,p_db_column_name=>'EMPLOYMENT_CLASS_ID'
,p_display_order=>79
,p_column_identifier=>'AQ'
,p_column_label=>'Employment class id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3853987022755144140)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704783627943755510)
,p_db_column_name=>'PKEY'
,p_display_order=>89
,p_column_identifier=>'AR'
,p_column_label=>'Pkey'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3703762241088191012)
,p_db_column_name=>'ACTIVITY_EXPENDITURE'
,p_display_order=>99
,p_column_identifier=>'AS'
,p_column_label=>'Activity Expenditure'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3703762323256191013)
,p_db_column_name=>'FACILITATOR_ID'
,p_display_order=>109
,p_column_identifier=>'AT'
,p_column_label=>'Facilitator Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3703762448868191014)
,p_db_column_name=>'EXPENSE_CODE_ID'
,p_display_order=>119
,p_column_identifier=>'AU'
,p_column_label=>'Expense Code Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3703762528522191015)
,p_db_column_name=>'ATTRACT_PAYMENT'
,p_display_order=>129
,p_column_identifier=>'AV'
,p_column_label=>'Attract Payment'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3703762595865191016)
,p_db_column_name=>'PAY_STATUS'
,p_display_order=>139
,p_column_identifier=>'AW'
,p_column_label=>'Pay Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3703762699788191017)
,p_db_column_name=>'SPONSORED_BY_ID'
,p_display_order=>149
,p_column_identifier=>'AX'
,p_column_label=>'Sponsored By Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3703762813907191018)
,p_db_column_name=>'START_DATE'
,p_display_order=>159
,p_column_identifier=>'AY'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3703762928511191019)
,p_db_column_name=>'END_DATE'
,p_display_order=>169
,p_column_identifier=>'AZ'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3703762989197191020)
,p_db_column_name=>'VENUE_ID'
,p_display_order=>179
,p_column_identifier=>'BA'
,p_column_label=>'Venue'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3703763092910191021)
,p_db_column_name=>'EARNINGS_PERIOD_ID'
,p_display_order=>189
,p_column_identifier=>'BB'
,p_column_label=>'Earnings Period'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3853992524515144148)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3703763219612191022)
,p_db_column_name=>'ACTIVITY_TYPE_ID'
,p_display_order=>199
,p_column_identifier=>'BC'
,p_column_label=>'Activity Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3476887437097548759)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>209
,p_column_identifier=>'BD'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3407769614573488472)
,p_db_column_name=>'PROGAM'
,p_display_order=>219
,p_column_identifier=>'BE'
,p_column_label=>'Progam'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3754546785232430429)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Employee'
,p_report_seq=>10
,p_report_alias=>'190094'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>25
,p_report_columns=>'EMP_ID:INCOME:TIME_USED:EARNINGS:EMPLOYMENT_CLASS_ID:ID'
,p_sort_column_1=>'START_DATE'
,p_sort_direction_1=>'ASC'
,p_break_on=>'EMP_ID:VENUE_ID:ACTIVITY_TYPE_ID:EMPLOYMENT_CLASS_ID:0:0'
,p_break_enabled_on=>'EMP_ID:VENUE_ID:ACTIVITY_TYPE_ID:EMPLOYMENT_CLASS_ID:0:0'
,p_sum_columns_on_break=>'TIME_USED:EARNINGS'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3704795985814755519)
,p_report_id=>wwv_flow_imp.id(3754546785232430429)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'STATUS'
,p_operator=>'='
,p_expr=>'VERIFY'
,p_condition_sql=>'"STATUS" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''VERIFY''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3805244291785100923)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Separated'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'190102'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>25
,p_report_columns=>'EMP_ID:INCOME:TIME_USED:EARNINGS:ID'
,p_sort_column_1=>'START_DATE'
,p_sort_direction_1=>'ASC'
,p_break_on=>'EMP_ID:VENUE_ID:ACTIVITY_TYPE_ID:PAYMENT_TYPE:EMPLOYMENT_CLASS_ID:0'
,p_break_enabled_on=>'EMP_ID:VENUE_ID:ACTIVITY_TYPE_ID:PAYMENT_TYPE:EMPLOYMENT_CLASS_ID:0'
,p_sum_columns_on_break=>'TIME_USED:EARNINGS'
,p_chart_type=>'line'
,p_chart_label_column=>'VENUE_ID'
,p_chart_value_column=>'TIME_USED'
,p_chart_aggregate=>'SUM'
,p_chart_sorting=>'DEFAULT'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3704796846356755520)
,p_report_id=>wwv_flow_imp.id(3805244291785100923)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'EMP_ID'
,p_operator=>'like'
,p_expr=>'%Separated%'
,p_condition_sql=>'"EMP_ID" like #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''%Separated%''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3837038031421155452)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'190110'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>25
,p_report_columns=>'EMP_ID:VENUE_ID:ACTIVITY_TYPE_ID:ATTRACT_PAYMENT:START_DATE:EARNINGS_PERIOD_ID:INCOME:TIME_USED:EARNINGS:ID:PAYMENT_TYPE:PROGAM'
,p_sort_column_1=>'START_DATE'
,p_sort_direction_1=>'ASC'
,p_break_on=>'0:VENUE_ID'
,p_break_enabled_on=>'0:VENUE_ID'
,p_sum_columns_on_break=>'TIME_USED:EARNINGS'
,p_chart_type=>'line'
,p_chart_label_column=>'VENUE_ID'
,p_chart_value_column=>'TIME_USED'
,p_chart_aggregate=>'SUM'
,p_chart_sorting=>'DEFAULT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3704797987272755521)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3490974284313078483)
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
 p_id=>wwv_flow_imp.id(3704797646904755521)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3490974284313078483)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1436:&SESSION.::&DEBUG.:1436::'
,p_security_scheme=>wwv_flow_imp.id(3806738072662971899)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3704781712280755508)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3787824773975303215)
,p_button_name=>'RETURN_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3704781282372755508)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3787824773975303215)
,p_button_name=>'CREATE_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1436:&SESSION.::&DEBUG.:1436::'
,p_security_scheme=>wwv_flow_imp.id(3806738072662971899)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3704782531583755509)
,p_name=>'P1435_START_DATE_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3787824773975303215)
,p_item_default=>'trunc((current_date),''MONTH'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Start Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>4000
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(3704782886498755509)
,p_name=>'P1435_END_DATE_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3787824773975303215)
,p_item_default=>'last_day(current_date)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'End Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(3704798766229755521)
,p_name=>'P1435_START_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3837034936120145759)
,p_item_default=>'trunc((current_date),''MONTH'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Start Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>4000
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(3704799234558755521)
,p_name=>'P1435_END_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3837034936120145759)
,p_item_default=>'last_day(current_date)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'End Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(3704799584183755523)
,p_name=>'Refresh - Detail'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3837034936120145759)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3704800084607755523)
,p_event_id=>wwv_flow_imp.id(3704799584183755523)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3837034936120145759)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3694091754700731137)
,p_name=>'show_start_date'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1435_START_DATE'
,p_condition_element=>'P1435_END_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3694091623928731136)
,p_event_id=>wwv_flow_imp.id(3694091754700731137)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3837034936120145759)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3694091500591731135)
,p_name=>'show_end_date'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1435_END_DATE'
,p_condition_element=>'P1435_START_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3694091418165731134)
,p_event_id=>wwv_flow_imp.id(3694091500591731135)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3837034936120145759)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3694597784850219115)
,p_name=>'search_region'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1435_START_DATE_1'
,p_condition_element=>'P1435_END_DATE_1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3694597841507219116)
,p_event_id=>wwv_flow_imp.id(3694597784850219115)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3787824773975303215)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3694597971231219117)
,p_name=>'search_region_end'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1435_END_DATE_1'
,p_condition_element=>'P1435_START_DATE_1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3694598027358219118)
,p_event_id=>wwv_flow_imp.id(3694597971231219117)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3787824773975303215)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
