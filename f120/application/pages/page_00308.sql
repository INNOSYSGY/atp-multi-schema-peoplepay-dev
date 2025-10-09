prompt --application/pages/page_00308
begin
--   Manifest
--     PAGE: 00308
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
 p_id=>308
,p_name=>'frmNotificationScheduler'
,p_step_title=>'Create/Edit Notification Scheduler'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3806720991694815451)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3807158850583545770)
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(697796620762892342)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988598328610063082)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3634232627276617467)
,p_plug_name=>'Archived Workflow Notification/s'
,p_region_name=>'NOTIFY'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent7:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  NOTIFICATION_DETAIL_ID,A.USER_NAME "SEND BY",  pkg_biz_rules.display_lable(:APP_ID, notification_type)NOTIFICATION_TYPE, user_remarks,',
'INITCAP(A.DESCRIPTION) DESCRIP,',
'--SUBSTRB(APP_URL_LINK,1,INSTR(APP_URL_LINK,'':'',1,2))||:APP_SESSION||SUBSTRB(APP_URL_LINK,INSTR(APP_URL_LINK,''::''),length(APP_URL_LINK)) APP_URL_LINK,',
'SUBSTR(APP_URL_LINK,1,4)||:APP_ID||'':''|| ',
'substr(SUBSTRB(APP_URL_LINK,1,INSTR(APP_URL_LINK,'':'',1,2)-1)',
'      ,INSTR(SUBSTRB(APP_URL_LINK,1,INSTR(APP_URL_LINK,'':'',1,2)-1),'':'',1,1)+1',
'      ,  length(SUBSTRB(APP_URL_LINK,1,INSTR(APP_URL_LINK,'':'',1,2))))||'':''||:APP_SESSION||SUBSTRB(APP_URL_LINK,INSTR(APP_URL_LINK,''::''),LENGTH(APP_URL_LINK))  APP_URL_LINK,',
'A.EFFECTIVE_FROM, ',
'A.EFFECTIVE_TO,',
'B.LAST_UPDATED_BY "FORWARD ON BY"',
',initcap(NOTIFICATION_USER_STATUS) Status, a.notification_type transaction_sTATUS',
'From Tblnotificationhead_hist A Join Tblnotificationdetail_hist B On A.Notification_Id=B.Notification_Id',
'WHERE Exists (Select 1',
'              FROM TBLFORWARDLIST C JOIN TBLUSER D ON C.FORWARD_TO=D.USER_ID',
'              JOIN TBLWORKFLOWSTAGELIST  M ON M.STAGE_ID=C.STAGE_ID',
'              JOIN TBLWORKFLOWDTL N ON M.STAGE_ID=N.STAGE_ID',
'              JOIN APEX_APPLICATION_PAGES Q ON Q.PAGE_ID=N.WEBPAGE_ID',
'              WHERE (C.FORWORD_LIST_ID=B.FORWARD_LIST_ID OR C.FORWARD_TO=B.FORWARD_TO_USER)',
'              AND UPPER(D.USER_NAME)=UPPER(NVL(V(''APP_USER''),USER)))',
'             -- AND APPLICATION_ID=:APP_ID)',
'AND exists ( ',
'              select 1',
'              FROM VW_USERACCESS W ',
'              where A.org_id=W.org_id                     ',
'              )    ',
'and UPPER(description) not like ''%SELF%SERVE%UPDAT%''                 ',
'AND B.NOTIFICATION_USER_STATUS in(''ACTIVE'',''OUTSTANDING'')',
'AND NOT EXISTS (SELECT 1',
'                FROM USER_TABLES K',
'                WHERE TABLE_NAME NOT IN (''TBLUSER'',''TBLUSERDETAIL'',''TBLRESPONSIBILITYORGPAGE'',''TBLRESPONSIBILITY'')',
'                AND UPPER(A.table_name)=UPPER(K.table_name)',
'                and table_name  like ''TBL%'')',
'order by A.NOTIFICATION_ID desc',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3634232548916617434)
,p_name=>'Workflow Notifications'
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
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_owner=>'PUR_INV'
,p_internal_uid=>243827963984631897
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3842467183951651513)
,p_db_column_name=>'NOTIFICATION_DETAIL_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:1328:&SESSION.::&DEBUG.::P1328_NOTIFICATION_DETAIL_ID,P1328_SOURCE,P1328_SET_VALUE:#NOTIFICATION_DETAIL_ID#,HRMIS,0'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'NOTIFICATION_DETAIL_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3842467996791651516)
,p_db_column_name=>'NOTIFICATION_TYPE'
,p_display_order=>2
,p_column_identifier=>'C'
,p_column_label=>'Notification'
,p_column_type=>'STRING'
,p_static_id=>'NOTIFICATION_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3842468406994651519)
,p_db_column_name=>'DESCRIP'
,p_display_order=>3
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DESCRIP'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3842468766534651519)
,p_db_column_name=>'APP_URL_LINK'
,p_display_order=>4
,p_column_identifier=>'E'
,p_column_label=>'View Notification'
,p_column_link=>'#APP_URL_LINK#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_link_checksum_type=>'1'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'APP_URL_LINK'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3842467527094651514)
,p_db_column_name=>'SEND BY'
,p_display_order=>5
,p_column_identifier=>'B'
,p_column_label=>'Send By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SEND BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3842469130924651521)
,p_db_column_name=>'EFFECTIVE_FROM'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'EFFECTIVE_FROM'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_static_id=>'EFFECTIVE_FROM'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3842469537148651521)
,p_db_column_name=>'EFFECTIVE_TO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Effective To'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_static_id=>'EFFECTIVE_TO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3842469913114651523)
,p_db_column_name=>'FORWARD ON BY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'FORWARD ON BY'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'FORWARD ON BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3842466792470651512)
,p_db_column_name=>'STATUS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3842470335991651536)
,p_db_column_name=>'USER_REMARKS'
,p_display_order=>19
,p_column_identifier=>'J'
,p_column_label=>'User Notes'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3842466314685651512)
,p_db_column_name=>'TRANSACTION_STATUS'
,p_display_order=>29
,p_column_identifier=>'K'
,p_column_label=>'Transaction Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3634231423467616331)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'355953'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>20
,p_report_columns=>'NOTIFICATION_TYPE:STATUS:APP_URL_LINK:DESCRIP:SEND BY:EFFECTIVE_TO:USER_REMARKS:NOTIFICATION_DETAIL_ID:'
,p_break_on=>'NOTIFICATION_TYPE:STATUS:0:0:0:0'
,p_break_enabled_on=>'NOTIFICATION_TYPE:STATUS:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3842461516187651492)
,p_report_id=>wwv_flow_imp.id(3634231423467616331)
,p_name=>'Anniversary '
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'DESCRIP'
,p_operator=>'like'
,p_expr=>'%Anniversary%'
,p_condition_sql=>' (case when ("DESCRIP" like #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''%Anniversary%''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#99FF99'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3842461990002651493)
,p_report_id=>wwv_flow_imp.id(3634231423467616331)
,p_name=>'Birthday '
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'DESCRIP'
,p_operator=>'like'
,p_expr=>'%Birthday %'
,p_condition_sql=>' (case when ("DESCRIP" like #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''%Birthday %''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#FFFF99'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3842462395420651494)
,p_report_id=>wwv_flow_imp.id(3634231423467616331)
,p_name=>'Confirmation'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'DESCRIP'
,p_operator=>'like'
,p_expr=>'%Confirmation%'
,p_condition_sql=>' (case when ("DESCRIP" like #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''%Confirmation%''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#FF7755'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3842462718910651495)
,p_report_id=>wwv_flow_imp.id(3634231423467616331)
,p_name=>'Gratuity'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'DESCRIP'
,p_operator=>'like'
,p_expr=>'%Gratuity%'
,p_condition_sql=>' (case when ("DESCRIP" like #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''%Gratuity%''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#FFDD44'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3842463157955651495)
,p_report_id=>wwv_flow_imp.id(3634231423467616331)
,p_name=>'Leave Completion'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'DESCRIP'
,p_operator=>'like'
,p_expr=>'%Leave Has Concluded%'
,p_condition_sql=>' (case when ("DESCRIP" like #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''%Leave Has Concluded%''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#BDAE0A'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3842463588346651496)
,p_report_id=>wwv_flow_imp.id(3634231423467616331)
,p_name=>'Contract Expire'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'DESCRIP'
,p_operator=>'like'
,p_expr=>'%contract will expire%'
,p_condition_sql=>' (case when ("DESCRIP" like #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''%contract will expire%''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#4C6BEB'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3842464001530651497)
,p_report_id=>wwv_flow_imp.id(3634231423467616331)
,p_name=>'Leave Passage'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'DESCRIP'
,p_operator=>'like'
,p_expr=>'%leave passage%'
,p_condition_sql=>' (case when ("DESCRIP" like #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''%leave passage%''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#0CE89F'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3842464361616651498)
,p_report_id=>wwv_flow_imp.id(3634231423467616331)
,p_name=>'Retirement'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'DESCRIP'
,p_operator=>'like'
,p_expr=>'%retirement%'
,p_condition_sql=>' (case when ("DESCRIP" like #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''%retirement%''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#99CCFF'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3842464753931651499)
,p_report_id=>wwv_flow_imp.id(3634231423467616331)
,p_name=>'work permit'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'DESCRIP'
,p_operator=>'like'
,p_expr=>'%work permit%'
,p_condition_sql=>' (case when ("DESCRIP" like #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''%work permit%''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#DE10DE'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3842461202373651491)
,p_report_id=>wwv_flow_imp.id(3634231423467616331)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'NOTIFICATION_TYPE'
,p_operator=>'contains'
,p_expr=>'Peoplepay Hrmis Erp: Notify'
,p_condition_sql=>'upper("NOTIFICATION_TYPE") like ''%''||upper(#APXWS_EXPR#)||''%'''
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''Peoplepay Hrmis Erp: Notify''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3667021527068086860)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Manager and Supervisor'
,p_report_seq=>10
,p_report_alias=>'355945'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>20
,p_report_columns=>'NOTIFICATION_TYPE:STATUS:APP_URL_LINK:DESCRIP:SEND BY:EFFECTIVE_TO:USER_REMARKS:NOTIFICATION_DETAIL_ID:'
,p_break_on=>'NOTIFICATION_TYPE:STATUS:0:0:0:0'
,p_break_enabled_on=>'NOTIFICATION_TYPE:STATUS:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3842465598828651504)
,p_report_id=>wwv_flow_imp.id(3667021527068086860)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'DESCRIP'
,p_operator=>'='
,p_expr=>'%Manager/Supervisor%'
,p_condition_sql=>'"DESCRIP" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''%Manager/Supervisor%''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3825594747657399999)
,p_plug_name=>'Create/Edit Notification Scheduler'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'TABLE'
,p_query_table=>'HR_APU_NOTIFY_SCHEDULER'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3825673615478850918)
,p_plug_name=>'Listing of Notification Schedules'
,p_parent_plug_id=>wwv_flow_imp.id(3825594747657399999)
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT id,DAYS_KEEP_ACTIVE,',
'    notification_name,',
'    days_notify,',
'    start_date,',
'    end_date,',
'    entry_date,',
'    entered_by,',
'    last_changed_date,',
'    last_changed_by',
'FROM hr_apu_notify_scheduler',
'where org_id=:APP_ORG_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
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
 p_id=>wwv_flow_imp.id(3825673490880850917)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
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
,p_owner=>'CLOUD_PROD_DEV'
,p_internal_uid=>48990365455322218
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3825673446879850916)
,p_db_column_name=>'NOTIFICATION_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Notification Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3825673335595850915)
,p_db_column_name=>'DAYS_NOTIFY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Prior Days Notify'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3825673210334850914)
,p_db_column_name=>'START_DATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3825673146813850913)
,p_db_column_name=>'END_DATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3825673027425850912)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3825672943676850911)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3825672787407850910)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3825672722816850909)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3825672654407850908)
,p_db_column_name=>'ID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:308:&SESSION.::&DEBUG.:RP,308:P308_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3825672349359850905)
,p_db_column_name=>'DAYS_KEEP_ACTIVE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Days Keep Active'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3825567957787467534)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'490959'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:NOTIFICATION_NAME:DAYS_NOTIFY:DAYS_KEEP_ACTIVE:START_DATE:END_DATE:ENTRY_DATE:ENTERED_BY:LAST_CHANGED_DATE:LAST_CHANGED_BY:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3825673702364850919)
,p_plug_name=>'Audit'
,p_parent_plug_id=>wwv_flow_imp.id(3825594747657399999)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3843858186749292391)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3825594001941400000)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3825594747657399999)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3825594081458400000)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3825594747657399999)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>'P308_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3807160074582545770)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3825672526669850907)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3825594747657399999)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:308:&SESSION.::&DEBUG.:RP,308::'
,p_button_condition=>'P308_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3807160206270545771)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3825594199759400000)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3825594747657399999)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P308_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3807159759962545770)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3825594289778400000)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3825594747657399999)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P308_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3807160206270545771)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3825592425270400002)
,p_branch_action=>'f?p=&APP_ID.:308:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3825588472683400039)
,p_name=>'P308_LAST_CHANGED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3825673702364850919)
,p_item_source_plug_id=>wwv_flow_imp.id(3825594747657399999)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Changed By'
,p_source=>'LAST_CHANGED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3825588946433400039)
,p_name=>'P308_LAST_CHANGED_DATE'
,p_source_data_type=>'TIMESTAMP_LTZ'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3825673702364850919)
,p_item_source_plug_id=>wwv_flow_imp.id(3825594747657399999)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Changed Date'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'LAST_CHANGED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3825589334039400039)
,p_name=>'P308_ENTERED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3825673702364850919)
,p_item_source_plug_id=>wwv_flow_imp.id(3825594747657399999)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Entered By'
,p_source=>'ENTERED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3825589732923400038)
,p_name=>'P308_ENTRY_DATE'
,p_source_data_type=>'TIMESTAMP_LTZ'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3825673702364850919)
,p_item_source_plug_id=>wwv_flow_imp.id(3825594747657399999)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Entry Date'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'ENTRY_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3825590107496400038)
,p_name=>'P308_END_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3825594747657399999)
,p_item_source_plug_id=>wwv_flow_imp.id(3825594747657399999)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End Date'
,p_source=>'END_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
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
 p_id=>wwv_flow_imp.id(3825590551132400038)
,p_name=>'P308_START_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3825594747657399999)
,p_item_source_plug_id=>wwv_flow_imp.id(3825594747657399999)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Start Date'
,p_source=>'START_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>255
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
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
 p_id=>wwv_flow_imp.id(3825590859118400038)
,p_name=>'P308_DAYS_NOTIFY'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3825594747657399999)
,p_item_source_plug_id=>wwv_flow_imp.id(3825594747657399999)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Prior Days Notify'
,p_source=>'DAYS_NOTIFY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>8
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3825591322623400038)
,p_name=>'P308_NOTIFICATION_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3825594747657399999)
,p_item_source_plug_id=>wwv_flow_imp.id(3825594747657399999)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Notification Name'
,p_source=>'NOTIFICATION_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Work Anniversary;Anniversary,Birthday;Birthday,Confirmation;Confirmation,Retirement;Retirement,Contract Expire;Contract Expire,Leave Passage;Leave Passage,Gratuity;Gratuity,work permit;work permit,Leave Completion;Leave Completion,Training Exp'
||'ire;Training,Pension Scheme;Pension Scheme,Licence Expire;Licence Expire,National Identifier;National Identifier,Wedding Anniversary;Wedding Anniversary'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3825592011958400033)
,p_name=>'P308_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3825594747657399999)
,p_item_source_plug_id=>wwv_flow_imp.id(3825594747657399999)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3825672374075850906)
,p_name=>'P308_DAYS_KEEP_ACTIVE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3825594747657399999)
,p_item_source_plug_id=>wwv_flow_imp.id(3825594747657399999)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Days Keep Active'
,p_source=>'DAYS_KEEP_ACTIVE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>8
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3825672156960850904)
,p_validation_name=>'chk_multi_active'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_cnt pls_integer:=0;',
'begin',
'',
'select count(1) into v_cnt ',
'from hr_apu_notify_scheduler',
'where org_id = :APP_ORG_ID',
'and NOTIFICATION_NAME = :P308_NOTIFICATION_NAME',
'and (end_date is null or end_date > current_date);',
'',
'IF  v_cnt >=1 AND :P1270_END_DATE IS NULL THEN',
'    RETURN FALSE;',
'ELSE',
'    RETURN TRUE;',
'END IF;',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You have an existing active record for this notification type. Close it first.'
,p_when_button_pressed=>wwv_flow_imp.id(3825594289778400000)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3825672153145850903)
,p_validation_name=>'chk_mul_active_on_save'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'declare',
'  v_cnt pls_integer:=0;',
'begin',
'',
'select count(1) into v_cnt ',
'from hr_apu_notify_scheduler',
'where org_id = :APP_ORG_ID',
'and NOTIFICATION_NAME = :P308_NOTIFICATION_NAME',
'and (end_date is null or end_date > current_date)',
'and id !=:P308_ID;',
'',
'IF  v_cnt >=1 AND :P308_END_DATE IS NULL THEN',
'RETURN FALSE;',
'ELSE',
'RETURN TRUE;',
'END IF;',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Your modification will result in more than one active record.'
,p_when_button_pressed=>wwv_flow_imp.id(3825594199759400000)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3825587680250400039)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(3825594747657399999)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Fetch Row from HR_APU_NOTIFY_SCHEDULER'
,p_internal_uid=>3181970996863217899
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3825587270286400040)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3825594747657399999)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process Row of HR_APU_NOTIFY_SCHEDULER'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>3181970586899217900
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3825586864643400040)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3825594081458400000)
,p_internal_uid=>3181970181256217900
);
wwv_flow_imp.component_end;
end;
/
