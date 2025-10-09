prompt --application/pages/page_01439
begin
--   Manifest
--     PAGE: 01439
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
 p_id=>1439
,p_name=>'rptLeaveMakeup'
,p_step_title=>'Listing of Leave MakeUp Payments'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3825436450299065598)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3798291069032028746)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3636589893725329808)
,p_plug_name=>'Listing of Leave MakeUp Payments'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HR_LV_MAKEUPPAYMENT.ID as ID,',
'    (SELECT EMP_COMPANY_NO || '' :- '' || ind.surname || '', '' || ind.first_name || ''- ''|| INITCAP(PKG_GLOBAL_FNTS.Get_Lookup_Col(C.LEAVE_TYPE_ID,''VALUE_DESCRIPTION'')) || '': ''|| ''( ''|| CAST(FROMDATE AS VARCHAR(12)) || '' -- '' || CAST(TODATE AS VARCHAR(12'
||'))|| '')'' AS EXPR1',
'FROM hr_lv_LeaveHistory a JOIN hr_rcm_employee b ON a.Emp_id= b.id ',
'join hr_rcm_individual ind on b.ind_id=ind.id',
'join hr_rcm_empleaveentitle c on (b.id=c.emp_id and a.EMPLVENT_ID=c.id)',
'where a.id=HR_LV_MAKEUPPAYMENT.LEAVE_ID) as LEAVE_ID,',
'    (SELECT z.Employee||'':- ''||x.DESCRIPTION',
'    from VW_EMPENTITLE z join pa_pcf_incomecode x on z.income_code=x.id',
'    where z.id= HR_LV_MAKEUPPAYMENT.EMPENT_ID) as EMPENT_ID,',
'    HR_LV_MAKEUPPAYMENT.AVG_DAYS_PAY as AVG_DAYS_PAY,',
'    HR_LV_MAKEUPPAYMENT.NIS_AMOUNT as NIS_AMOUNT,',
'    HR_LV_MAKEUPPAYMENT.NIS_START_PERIOD as NIS_START_PERIOD,',
'    HR_LV_MAKEUPPAYMENT.NIS_END_PERIOD as NIS_END_PERIOD,',
'    HR_LV_MAKEUPPAYMENT.COMPANY_AMOUNT as COMPANY_AMOUNT,',
'    HR_LV_MAKEUPPAYMENT.COMPANY_START_PERIOD as COMPANY_START_PERIOD,',
'    HR_LV_MAKEUPPAYMENT.COMPANY_END_PERIOD as COMPANY_END_PERIOD,',
'    HR_LV_MAKEUPPAYMENT.ENTERED_BY as ENTERED_BY,',
'    HR_LV_MAKEUPPAYMENT.ENTRY_DATE as ENTRY_DATE,',
'    HR_LV_MAKEUPPAYMENT.PAY_STATUS as PAY_STATUS,',
'    HR_LV_MAKEUPPAYMENT.COMPANY_AMOUNT_INC as COMPANY_AMOUNT_INC,',
'    HR_LV_MAKEUPPAYMENT.INCREASE_ID as INCREASE_ID,',
'    HR_LV_MAKEUPPAYMENT.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    HR_LV_MAKEUPPAYMENT.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    HR_LV_MAKEUPPAYMENT.MACHINE_INSERT as MACHINE_INSERT,',
'    HR_LV_MAKEUPPAYMENT.MACHINE_UPDATE as MACHINE_UPDATE ',
' from HR_LV_MAKEUPPAYMENT HR_LV_MAKEUPPAYMENT  join HR_LV_LEAVEHISTORY L ON L.ID = HR_LV_MAKEUPPAYMENT.LEAVE_ID',
' where HR_LV_MAKEUPPAYMENT.org_id=:APP_ORG_ID',
'  and exists ( ',
'            select 1',
'            FROM VW_USERACCESS w ',
'            where HR_LV_MAKEUPPAYMENT.org_id=w.org_id',
'            and HR_LV_MAKEUPPAYMENT.employment_class_id = w.employment_class_id',
'            AND UPPER(HR_LV_MAKEUPPAYMENT.PAYMENT_TYPE_HIST) = UPPER(w.PAYMENT_TYPE)           ',
'            ) '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3636589805949329808)
,p_name=>'Listing of Leave MakeUp Payments'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
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
,p_detail_link=>'f?p=&APP_ID.:1438:&SESSION.::&DEBUG.::P1438_ID:#ID#'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'PUR_INV'
,p_internal_uid=>237792619018336681
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3818492571818882975)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3818492208341882975)
,p_db_column_name=>'AVG_DAYS_PAY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Avg Days Pay'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'AVG_DAYS_PAY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3818491754914882975)
,p_db_column_name=>'NIS_AMOUNT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'NIB/SS Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'NIS_AMOUNT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3818491365228882975)
,p_db_column_name=>'NIS_START_PERIOD'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'NIB/SS Start '
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'NIS_START_PERIOD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3818491004988882974)
,p_db_column_name=>'NIS_END_PERIOD'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'NIB/SS End '
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'NIS_END_PERIOD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3818490574856882974)
,p_db_column_name=>'COMPANY_AMOUNT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Company Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_static_id=>'COMPANY_AMOUNT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3818490169548882974)
,p_db_column_name=>'COMPANY_START_PERIOD'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Company Start '
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'COMPANY_START_PERIOD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3818489810411882974)
,p_db_column_name=>'COMPANY_END_PERIOD'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Company End '
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'COMPANY_END_PERIOD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3818488932589882973)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3818488589050882973)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3818488166871882973)
,p_db_column_name=>'PAY_STATUS'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Pay Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PAY_STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3818487742730882973)
,p_db_column_name=>'COMPANY_AMOUNT_INC'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Company Amount Inc'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'COMPANY_AMOUNT_INC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3818487383989882973)
,p_db_column_name=>'INCREASE_ID'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Increase Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'INCREASE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3818486966957882973)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3818486599460882973)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3818486160327882972)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3818485727180882972)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3818493366597882976)
,p_db_column_name=>'LEAVE_ID'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Leave Type'
,p_column_type=>'STRING'
,p_static_id=>'LEAVE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3818492936433882975)
,p_db_column_name=>'EMPENT_ID'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Entitlement'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'EMPENT_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3636587494138327803)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'558970'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'AVG_DAYS_PAY:NIS_AMOUNT:NIS_START_PERIOD:NIS_END_PERIOD:COMPANY_AMOUNT:COMPANY_START_PERIOD:COMPANY_END_PERIOD:LEAVE_ID:EMPENT_ID'
,p_break_on=>'LEAVE_ID:0:0:0:0'
,p_break_enabled_on=>'LEAVE_ID:0:0:0:0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3818484998144882970)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3636589893725329808)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3818484539345882970)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3636589893725329808)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1438:&SESSION.::&DEBUG.:1438::'
,p_security_scheme=>wwv_flow_imp.id(3806878774902039125)
);
wwv_flow_imp.component_end;
end;
/
