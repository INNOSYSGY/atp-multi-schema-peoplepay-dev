prompt --application/pages/page_01490
begin
--   Manifest
--     PAGE: 01490
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
 p_id=>1490
,p_name=>'rptAppraisalConfig'
,p_alias=>'RPTAPPRAISALCONFIG'
,p_step_title=>'Listing of Appraisal Configuration'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3825437354073075802)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3798291383900037092)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(671983686460636168)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988316897241556436)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3902337257937251084)
,p_plug_name=>'Appraisal Configuration'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>21
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'   "HR_APP_MERITCONFIG"."ID" "ID", MERIT_DESCRIPTION,',
'   "HR_APP_MERITCONFIG"."ID" PKID ,',
'   "HR_APP_MERITCONFIG"."ADD_INFO" "ADD_INFO",',
' "HR_APP_MERITCONFIG"."ID" "Attributes", ',
'   "HR_APP_MERITCONFIG"."UPPER_RANGE" "UPPER_RANGE", ',
'   "HR_APP_MERITCONFIG"."LOWER_RANGE" "LOWER_RANGE", ',
'   "HR_APP_MERITCONFIG"."MANAGEMENT_OPTIONS" "MANAGEMENT_OPTIONS", ',
'   "HR_APP_MERITCONFIG"."ORG_ID" "ORG_ID", ',
'   "HR_APP_MERITCONFIG"."EMPLOYMENT_CLASS_ID" "EMPLOYMENT_CLASS_ID", ',
'   "HR_APP_MERITCONFIG"."DATE_EFFECTIVE" "DATE_EFFECTIVE", ',
'   "HR_APP_MERITCONFIG"."SUPERVISOR" "SUPERVISOR", ',
'   "HR_APP_MERITCONFIG"."END_DATE" "END_DATE", ',
'   "HR_APP_MERITCONFIG"."ENTERED_BY" "ENTERED_BY", ',
'   "HR_APP_MERITCONFIG"."ENTRY_DATE" "ENTRY_DATE", ',
'   "HR_APP_MERITCONFIG"."VERIFIED_BY" "VERIFIED_BY", ',
'   "HR_APP_MERITCONFIG"."VERIFIED_DATE" "VERIFIED_DATE", ',
'   "HR_APP_MERITCONFIG"."LAST_CHANGED_BY" "LAST_CHANGED_BY", ',
'   "HR_APP_MERITCONFIG"."LAST_CHANGED_DATE" "LAST_CHANGED_DATE", ',
'   "HR_APP_MERITCONFIG"."DURATION_IN_MTHS" "DURATION_IN_MTHS", ',
'   "HR_APP_MERITCONFIG"."MACHINE_INSERT" "MACHINE_INSERT", ',
'   "HR_APP_MERITCONFIG"."MACHINE_UPDATE" "MACHINE_UPDATE", ',
'   "HR_APP_MERITCONFIG"."TRANSACTION_TYPE_ID" "TRANSACTION_TYPE_ID", ',
'   "HR_APP_MERITCONFIG"."STATUS" "STATUS",',
'   "HR_APP_MERITCONFIG"."APPRAISAL_TYPE" "APPRAISAL_TYPE"',
'FROM ',
'   "HR_APP_MERITCONFIG" ',
'where org_id= :APP_ORG_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3902337372023251084)
,p_name=>'Listing of Appraisal Configuration'
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
,p_detail_link=>'f?p=&APP_ID.:1491:&SESSION.::&DEBUG.::P1491_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'PPLERP'
,p_internal_uid=>3259002120004575590
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1726850817169215232)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:1491:&SESSION.::&DEBUG.:RP:P1491_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
,p_security_scheme=>wwv_flow_imp.id(1781050365662939102)
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1726851217369215232)
,p_db_column_name=>'UPPER_RANGE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Upper Range'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'UPPER_RANGE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1726851538825215233)
,p_db_column_name=>'LOWER_RANGE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Lower Range'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LOWER_RANGE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1726852014486215234)
,p_db_column_name=>'MANAGEMENT_OPTIONS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Questions'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'MANAGEMENT_OPTIONS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1726852367567215234)
,p_db_column_name=>'ORG_ID'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Organisation'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'ORG_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3844351523818200733)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1726852823048215235)
,p_db_column_name=>'EMPLOYMENT_CLASS_ID'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'EMPLOYMENT_CLASS_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3844366557973229285)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1726853172556215235)
,p_db_column_name=>'DATE_EFFECTIVE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Date Effective'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_EFFECTIVE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1726853571468215236)
,p_db_column_name=>'SUPERVISOR'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Management'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'SUPERVISOR'
,p_rpt_named_lov=>wwv_flow_imp.id(3844365834078229284)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1726853982524215236)
,p_db_column_name=>'END_DATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'END_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1726854383253215237)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1726854757862215238)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1726855083302215238)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1726855454366215239)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1726855921235215239)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1726856313681215240)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1726856712108215241)
,p_db_column_name=>'DURATION_IN_MTHS'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Duration In Mths'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'DURATION_IN_MTHS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1726857084419215241)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1726857433206215242)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1726857890881215243)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Transaction Type Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'TRANSACTION_TYPE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1726858272454215243)
,p_db_column_name=>'STATUS'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1726858705235215244)
,p_db_column_name=>'Attributes'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Attributes'
,p_column_link=>'f?p=&APP_ID.:1492:&SESSION.::&DEBUG.::P1492_MERIT_CONFIG_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'Attributes'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1726850340525215231)
,p_db_column_name=>'ADD_INFO'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Additional Info'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ADD_INFO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1726859039892215245)
,p_db_column_name=>'PKID'
,p_display_order=>32
,p_column_identifier=>'W'
,p_column_label=>'Pkid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1726859488937215246)
,p_db_column_name=>'MERIT_DESCRIPTION'
,p_display_order=>42
,p_column_identifier=>'X'
,p_column_label=>'Merit Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1726849982863215230)
,p_db_column_name=>'APPRAISAL_TYPE'
,p_display_order=>52
,p_column_identifier=>'Y'
,p_column_label=>'Appraisal Type'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3779181395348369679)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3902339667980253977)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'10282341'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'DATE_EFFECTIVE:MERIT_DESCRIPTION:APPRAISAL_TYPE:DURATION_IN_MTHS:LOWER_RANGE:UPPER_RANGE:SUPERVISOR:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671982695096636167)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(671983686460636168)
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
 p_id=>wwv_flow_imp.id(671983053648636167)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(671983686460636168)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1491:&SESSION.::&DEBUG.:1491::'
,p_security_scheme=>wwv_flow_imp.id(3806878774902039125)
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(671984516619636169)
,p_computation_sequence=>1
,p_computation_item=>'P1491_ID'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_compute_when=>'CREATE'
,p_compute_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_imp.component_end;
end;
/
