prompt --application/pages/page_00084
begin
--   Manifest
--     PAGE: 00084
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
 p_id=>84
,p_name=>'rptWorkMaster'
,p_step_title=>'Manual Time sheet Management'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3603893806588392776)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(476344119045520375)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10766773638420877516)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3534585838986567938)
,p_plug_name=>'Manual Time sheet Management'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v."ID", v."ID" Pkey,',
' x."ID" Detail,',
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
'EARNINGS,',
'(SELECT B.DESCRIPTION',
'FROM HR_RCM_EMPENTITLE A JOIN PA_PCF_INCOMECODE B ON A.INCOME_CODE_ID=B.ID',
'WHERE A.ID=X.EMPENT_ID) INCOME,',
'w.payment_type,',
'x.employment_class_id',
'from "HR_ATT_ACTIVITY" v left outer join HR_ATT_ACTIVITYATTENDANCE x on v.id=x.ACTIVITY_ID',
'join pa_pcf_earningperiod w on v.earnings_period_id=w.id',
'WHERE v.ORG_ID =:APP_ORG_ID',
'and trunc(v.START_DATE) between :P84_START_DATE and :P84_END_DATE',
'and exists(select 1',
'          from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER))',
'          where  t.id=v.ORGDTL_ID',
'          and v.ORGDTL_ID=decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, v.ORGDTL_ID, w.org_structure_id)         ',
'          ) ',
'and ( (exists ( ',
'              select 1',
'              FROM VW_USERACCESS A ',
'              WHERE  v.org_id=a.org_id',
'              and x.employment_class_id=a.employment_class_id',
'              and trim(upper(x.PAYMENT_TYPE_hist))=trim(a.payment_type)           ',
'             )         ',
'      or ',
'     exists ( ',
'              select 1',
'              FROM VW_USERACCESS A ',
'              WHERE  w.org_id=a.org_id',
'              and w.employment_class_id=a.employment_class_id',
'              and trim(upper(w.PAYMENT_TYPE))=trim(a.payment_type)',
'              and (x.ACTIVITY_ID is null or  x.ACTIVITY_ID is not null )',
'             ) )',
'     and',
'      exists(select 1        ',
'             from vw_useraccess_finegrain k',
'             where NVL(k.grade_id, nvl(x.emp_grade_id,1)) = nvl(x.emp_grade_id,1)',
'             and user_name=:APP_USER)   ',
'   )     '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'pkg_global_fnts.fn_selfReport_to(:APP_ORG_ID)=0'
,p_plug_display_when_cond2=>'PLSQL'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3534585639112567937)
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
,p_detail_link=>'f?p=&APP_ID.:78:&SESSION.::&DEBUG.:78:P78_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'PUR_INV'
,p_internal_uid=>238637857356330575
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3507054270935307337)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Detail'
,p_column_link=>'f?p=&APP_ID.:1437:&SESSION.::&DEBUG.::P1437_ID:#DETAIL#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3507052676981307325)
,p_db_column_name=>'EMPLOYMENT_CLASS_ID'
,p_display_order=>79
,p_column_identifier=>'AQ'
,p_column_label=>'Employment Class'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632584466173532446)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3538724596555164052)
,p_db_column_name=>'PKEY'
,p_display_order=>89
,p_column_identifier=>'AR'
,p_column_label=>'Pkey'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3538724682134164053)
,p_db_column_name=>'DETAIL'
,p_display_order=>99
,p_column_identifier=>'AS'
,p_column_label=>'Detail'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3538724778197164054)
,p_db_column_name=>'ACTIVITY_TYPE_ID'
,p_display_order=>109
,p_column_identifier=>'AT'
,p_column_label=>'Activity Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3538724835429164055)
,p_db_column_name=>'START_DATE'
,p_display_order=>119
,p_column_identifier=>'AU'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3538725002279164056)
,p_db_column_name=>'END_DATE'
,p_display_order=>129
,p_column_identifier=>'AV'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3538725026579164057)
,p_db_column_name=>'VENUE_ID'
,p_display_order=>139
,p_column_identifier=>'AW'
,p_column_label=>'Venue'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3538725164790164058)
,p_db_column_name=>'EARNINGS_PERIOD_ID'
,p_display_order=>149
,p_column_identifier=>'AX'
,p_column_label=>'Earnings Period'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3538725240716164059)
,p_db_column_name=>'ATTRACT_PAYMENT'
,p_display_order=>159
,p_column_identifier=>'AY'
,p_column_label=>'Attract Payment'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3538725406886164060)
,p_db_column_name=>'PAY_STATUS'
,p_display_order=>169
,p_column_identifier=>'AZ'
,p_column_label=>'Pay Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3538725476048164061)
,p_db_column_name=>'SPONSORED_BY_ID'
,p_display_order=>179
,p_column_identifier=>'BA'
,p_column_label=>'Sponsored By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3538725517574164062)
,p_db_column_name=>'ACTIVITY_EXPENDITURE'
,p_display_order=>189
,p_column_identifier=>'BB'
,p_column_label=>'Activity Expenditure'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3538725647286164063)
,p_db_column_name=>'FACILITATOR_ID'
,p_display_order=>199
,p_column_identifier=>'BC'
,p_column_label=>'Facilitator'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3538725732328164064)
,p_db_column_name=>'EXPENSE_CODE_ID'
,p_display_order=>209
,p_column_identifier=>'BD'
,p_column_label=>'Expense Code'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3538725828035164065)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>219
,p_column_identifier=>'BE'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3538725933429164066)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>229
,p_column_identifier=>'BF'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3538726095860164067)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>239
,p_column_identifier=>'BG'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3538726118269164068)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>249
,p_column_identifier=>'BH'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3538726212738164069)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>259
,p_column_identifier=>'BI'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3538726346651164070)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>269
,p_column_identifier=>'BJ'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3538726468699164071)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>279
,p_column_identifier=>'BK'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3538726570026164072)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>289
,p_column_identifier=>'BL'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3538726649263164073)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>299
,p_column_identifier=>'BM'
,p_column_label=>'Transaction Type'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3538726738862164074)
,p_db_column_name=>'STATUS'
,p_display_order=>309
,p_column_identifier=>'BN'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3538726854576164075)
,p_db_column_name=>'EMP_ID'
,p_display_order=>319
,p_column_identifier=>'BO'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3538726965030164076)
,p_db_column_name=>'TIME_USED'
,p_display_order=>329
,p_column_identifier=>'BP'
,p_column_label=>'Time Used'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3538727061409164077)
,p_db_column_name=>'EARNINGS'
,p_display_order=>339
,p_column_identifier=>'BQ'
,p_column_label=>'Earnings'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3538727132378164078)
,p_db_column_name=>'INCOME'
,p_display_order=>349
,p_column_identifier=>'BR'
,p_column_label=>'Income'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3538727299333164079)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>359
,p_column_identifier=>'BS'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3534582743685558245)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'49166'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>25
,p_report_columns=>'ID:PKEY:DETAIL:ACTIVITY_TYPE_ID:START_DATE:END_DATE:VENUE_ID_PERIOD_ID:ATTRACT_PAYMENT:PAY_SPONSORED_BY_ID:ACTIVITY_EXPENDITURE:FACILITATOR_ID:EXPENSE_CODE_ID:ENTERED_BY:ENTRY_DATE:VERIFIED_BY:VERIFIED_DATE:LAST_CHANGED_DATE:LAST_CHANGED_BY:MACHINE_I'
||'NSERT:MACHINE_UPDATE:TRANSACTION_TYPE_ID:STATUS:EMP_ID:TIME_USED:EARNINGS:INCOME:PAYMENT_TYPE'
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
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3566376483321612774)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Separated'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'49158'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>25
,p_report_columns=>'ID'
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
 p_id=>wwv_flow_imp.id(3507064113734307406)
,p_report_id=>wwv_flow_imp.id(3566376483321612774)
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
 p_id=>wwv_flow_imp.id(3617073989874283268)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Employee'
,p_report_seq=>10
,p_report_alias=>'49150'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>25
,p_report_columns=>'EMPLOYMENT_CLASS_ID:ID'
,p_sort_column_1=>'START_DATE'
,p_sort_direction_1=>'ASC'
,p_break_on=>'EMP_ID:VENUE_ID:ACTIVITY_TYPE_ID:EMPLOYMENT_CLASS_ID:0:0'
,p_break_enabled_on=>'EMP_ID:VENUE_ID:ACTIVITY_TYPE_ID:EMPLOYMENT_CLASS_ID:0:0'
,p_sum_columns_on_break=>'TIME_USED:EARNINGS'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3507063363178307400)
,p_report_id=>wwv_flow_imp.id(3617073989874283268)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'STATUS'
,p_operator=>'='
,p_expr=>'VERIFY'
,p_condition_sql=>'"STATUS" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''VERIFY''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3583796001131410482)
,p_plug_name=>'Manual Time sheet Management for Reporting Management'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v."ID", ',
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
'EARNINGS,',
'(SELECT B.DESCRIPTION',
'FROM HR_RCM_EMPENTITLE A JOIN PA_PCF_INCOMECODE B ON A.INCOME_CODE_ID=B.ID',
'WHERE A.ID=X.EMPENT_ID) INCOME,',
'w.payment_type,',
'x.employment_class_id',
'from "HR_ATT_ACTIVITY" v left outer join HR_ATT_ACTIVITYATTENDANCE x on v.id=x.ACTIVITY_ID',
'join pa_pcf_earningperiod w on v.earnings_period_id=w.id',
'WHERE v.ORG_ID =:APP_ORG_ID',
'and trunc(v.START_DATE) between :P84_START_DATE_1 and :P84_END_DATE_1',
'and  ( exists(',
'              select 1',
'              FROM VW_USERACCESS A  join VW_SELFREPORT_TO b on a.employee_no=b.employee_no',
'              where v.org_id=a.org_id',
'              and x.employment_class_id=a.employment_class_id',
'              and upper(x.payment_type_hist)=a.payment_type',
'              and nvl(x.REPORT_TO_HIST,1)=decode(pkg_global_fnts.fn_selfReport_to(:APP_ORG_ID),1,b.employee_no,nvl(x.REPORT_TO_HIST,1))',
'              )    ',
'       or ',
'     exists ( ',
'              select 1',
'              FROM VW_USERACCESS A ',
'              WHERE  w.org_id=a.org_id',
'              and w.employment_class_id=a.employment_class_id',
'              and upper(w.PAYMENT_TYPE)=a.payment_type',
'              and  x.ACTIVITY_ID is null                           ',
'             )',
'      )',
'union              ',
'select v."ID", ',
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
'EARNINGS,',
'(SELECT B.DESCRIPTION',
'FROM HR_RCM_EMPENTITLE A JOIN PA_PCF_INCOMECODE B ON A.INCOME_CODE_ID=B.ID',
'WHERE A.ID=X.EMPENT_ID) INCOME,',
'w.payment_type,',
'x.employment_class_id',
'from "HR_ATT_ACTIVITY" v left outer join HR_ATT_ACTIVITYATTENDANCE x on v.id=x.ACTIVITY_ID',
'join pa_pcf_earningperiod w on v.earnings_period_id=w.id',
'WHERE v.ORG_ID =:APP_ORG_ID',
'and trunc(v.START_DATE) between :P84_START_DATE_1 and :P84_END_DATE_1',
'and  exists ( ',
'              select 1',
'              FROM VW_USERACCESS A ',
'              where v.org_id=a.org_id',
'              and x.employment_class_id=a.employment_class_id',
'              and upper(x.payment_type_hist)=a.payment_type',
'              and x.emp_id= case when pkg_global_fnts.fn_selfReport_to(:APP_ORG_ID)=1 then a.employee_no else decode(pkg_global_fnts.fn_selfserveuser(:APP_ORG_ID),1,a.employee_no,x.emp_id) end',
'              )',
''))
,p_plug_source_type=>'NATIVE_IR'
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
 p_id=>wwv_flow_imp.id(3583795369659410476)
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
,p_internal_uid=>189428126809488036
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3507036992938307175)
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
 p_id=>wwv_flow_imp.id(3507037396534307179)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3507037714616307182)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_static_id=>'VERIFIED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3507038178328307185)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3507038574915307188)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3507038968842307191)
,p_db_column_name=>'ACTIVITY_TYPE_ID'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Activity Type'
,p_column_type=>'STRING'
,p_static_id=>'ACTIVITY_TYPE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3507039226887307194)
,p_db_column_name=>'SPONSORED_BY_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Sponsored By'
,p_column_type=>'STRING'
,p_static_id=>'SPONSORED_BY_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3507039702367307197)
,p_db_column_name=>'VENUE_ID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Venue'
,p_column_type=>'STRING'
,p_static_id=>'VENUE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3507040047056307199)
,p_db_column_name=>'FACILITATOR_ID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Facilitator'
,p_column_type=>'STRING'
,p_static_id=>'FACILITATOR_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3507040476068307202)
,p_db_column_name=>'EXPENSE_CODE_ID'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Expense Code'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_static_id=>'EXPENSE_CODE_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3565432916951416052)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3507040898273307205)
,p_db_column_name=>'EMP_ID'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3609631245311822370)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3507041212604307208)
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
 p_id=>wwv_flow_imp.id(3507041690660307211)
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
 p_id=>wwv_flow_imp.id(3507042041576307214)
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
 p_id=>wwv_flow_imp.id(3507042502767307217)
,p_db_column_name=>'INCOME'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Income'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3507042870851307220)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Payment type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3507043225419307223)
,p_db_column_name=>'EMPLOYMENT_CLASS_ID'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Employment class id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632584466173532446)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3507043706000307226)
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
 p_id=>wwv_flow_imp.id(3507044030984307229)
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
 p_id=>wwv_flow_imp.id(3507044424754307234)
,p_db_column_name=>'EARNINGS_PERIOD_ID'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Earnings Period'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EARNINGS_PERIOD_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3632589967933532454)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3507044869816307239)
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
 p_id=>wwv_flow_imp.id(3507045266644307244)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3507045652794307246)
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
 p_id=>wwv_flow_imp.id(3507046109813307250)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3507046505144307253)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3507046815183307256)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Transaction Type Id'
,p_column_type=>'NUMBER'
,p_static_id=>'TRANSACTION_TYPE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3507047292530307260)
,p_db_column_name=>'STATUS'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_static_id=>'STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3507047667841307264)
,p_db_column_name=>'ATTRACT_PAYMENT'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Attract Payment'
,p_column_type=>'STRING'
,p_static_id=>'ATTRACT_PAYMENT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3507048015118307267)
,p_db_column_name=>'PAY_STATUS'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Pay Status'
,p_column_type=>'STRING'
,p_static_id=>'PAY_STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3583754961883945024)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'49005'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_ID:VENUE_ID:ACTIVITY_TYPE_ID:PAYMENT_TYPE:INCOME:TIME_USED:START_DATE:END_DATE:EARNINGS:ATTRACT_PAYMENT:EARNINGS_PERIOD_ID:DETAIL:'
,p_break_on=>'EMP_ID:VENUE_ID:ACTIVITY_TYPE_ID:PAYMENT_TYPE:0:0'
,p_break_enabled_on=>'EMP_ID:VENUE_ID:ACTIVITY_TYPE_ID:PAYMENT_TYPE:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3593363932506955859)
,p_plug_name=>'Disabled Unique Constraint'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3507048861038307293)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3583796001131410482)
,p_button_name=>'CREATE_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:78:&SESSION.::&DEBUG.:78::'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3507066506735307416)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(476344119045520375)
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
 p_id=>wwv_flow_imp.id(3507066036200307415)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(476344119045520375)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:78:&SESSION.::&DEBUG.:78::'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3507049549348307295)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3583796001131410482)
,p_button_name=>'P84_SEARCH_1'
,p_button_static_id=>'P1435_SEARCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3507066853140307416)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(476344119045520375)
,p_button_name=>'P84_SEARCH'
,p_button_static_id=>'P1435_SEARCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3507049945740307298)
,p_name=>'P84_START_DATE_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3583796001131410482)
,p_item_default=>'trunc(current_date)'
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
 p_id=>wwv_flow_imp.id(3507050383915307304)
,p_name=>'P84_END_DATE_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3583796001131410482)
,p_item_default=>'trunc(current_date)'
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
 p_id=>wwv_flow_imp.id(3507064934629307412)
,p_name=>'P84_START_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3534585838986567938)
,p_item_default=>'trunc(current_date)'
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
 p_id=>wwv_flow_imp.id(3507065400393307413)
,p_name=>'P84_END_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3534585838986567938)
,p_item_default=>'trunc(current_date)'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3507068447291307444)
,p_name=>'Refresh - Detail'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3534585838986567938)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3507068931519307449)
,p_event_id=>wwv_flow_imp.id(3507068447291307444)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3534585838986567938)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
