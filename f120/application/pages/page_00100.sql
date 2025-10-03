prompt --application/pages/page_00100
begin
--   Manifest
--     PAGE: 00100
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>100
,p_name=>'rptNotificationDetail'
,p_step_title=>'Listing of Detail Notification'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3584896301505629885)
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3447997777151029641)
,p_plug_name=>'You have a total of &PCNT_NOTE. Workflow Notification/s'
,p_region_name=>'NOTIFY'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent5:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
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
'From Tblnotificationhead A Join Tblnotificationdetail B On A.Notification_Id=B.Notification_Id',
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
 p_id=>wwv_flow_imp.id(3447997698791029608)
,p_name=>'Workflow Notifications'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_RIGHT'
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
,p_internal_uid=>362990106083034944
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3495996519771917921)
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
 p_id=>wwv_flow_imp.id(3495997353838917921)
,p_db_column_name=>'NOTIFICATION_TYPE'
,p_display_order=>2
,p_column_identifier=>'C'
,p_column_label=>'Notification'
,p_column_type=>'STRING'
,p_static_id=>'NOTIFICATION_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3495997724828917922)
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
 p_id=>wwv_flow_imp.id(3495998132626917923)
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
 p_id=>wwv_flow_imp.id(3495996995473917921)
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
 p_id=>wwv_flow_imp.id(3495998596174917923)
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
 p_id=>wwv_flow_imp.id(3495998975685917923)
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
 p_id=>wwv_flow_imp.id(3495999333777917923)
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
 p_id=>wwv_flow_imp.id(3495996148370917918)
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
 p_id=>wwv_flow_imp.id(3495999720392917924)
,p_db_column_name=>'USER_REMARKS'
,p_display_order=>19
,p_column_identifier=>'J'
,p_column_label=>'User Notes'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3484035035133382613)
,p_db_column_name=>'TRANSACTION_STATUS'
,p_display_order=>29
,p_column_identifier=>'K'
,p_column_label=>'Transaction Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3447996573342028505)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'316165'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>20
,p_report_columns=>'NOTIFICATION_TYPE:STATUS:APP_URL_LINK:DESCRIP:SEND BY:EFFECTIVE_TO:USER_REMARKS:NOTIFICATION_DETAIL_ID:'
,p_break_on=>'NOTIFICATION_TYPE:STATUS:0:0:0:0'
,p_break_enabled_on=>'NOTIFICATION_TYPE:STATUS:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3620082029276867265)
,p_report_id=>wwv_flow_imp.id(3447996573342028505)
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
 p_id=>wwv_flow_imp.id(3620082449372867266)
,p_report_id=>wwv_flow_imp.id(3447996573342028505)
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
 p_id=>wwv_flow_imp.id(3620082832725867267)
,p_report_id=>wwv_flow_imp.id(3447996573342028505)
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
 p_id=>wwv_flow_imp.id(3620083254431867268)
,p_report_id=>wwv_flow_imp.id(3447996573342028505)
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
 p_id=>wwv_flow_imp.id(3620083658403867269)
,p_report_id=>wwv_flow_imp.id(3447996573342028505)
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
 p_id=>wwv_flow_imp.id(3620084055673867270)
,p_report_id=>wwv_flow_imp.id(3447996573342028505)
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
 p_id=>wwv_flow_imp.id(3620084446436867270)
,p_report_id=>wwv_flow_imp.id(3447996573342028505)
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
 p_id=>wwv_flow_imp.id(3620084849902867271)
,p_report_id=>wwv_flow_imp.id(3447996573342028505)
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
 p_id=>wwv_flow_imp.id(3620085270652867273)
,p_report_id=>wwv_flow_imp.id(3447996573342028505)
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
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3480786676942499034)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Manager and Supervisor'
,p_report_seq=>10
,p_report_alias=>'946718'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>20
,p_report_columns=>'NOTIFICATION_TYPE:STATUS:APP_URL_LINK:DESCRIP:SEND BY:EFFECTIVE_TO:USER_REMARKS:NOTIFICATION_DETAIL_ID:'
,p_break_on=>'NOTIFICATION_TYPE:STATUS:0:0:0:0'
,p_break_enabled_on=>'NOTIFICATION_TYPE:STATUS:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3480787147511499043)
,p_report_id=>wwv_flow_imp.id(3480786676942499034)
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
 p_id=>wwv_flow_imp.id(3523396790505607694)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3496005685778930645)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3523396886191607695)
,p_plug_name=>'NOTIFICATION'
,p_parent_plug_id=>wwv_flow_imp.id(3523396790505607694)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Tabs--large:t-Tabs--simple:t-Tabs--iconsAbove:t-Tabs--fillLabels'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_list_id=>wwv_flow_imp.id(3495992865713911575)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>3289653489478925766
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3483586316505287731)
,p_name=>'Show Self Serve Actions'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.showSELF_SERVE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3483585424666287729)
,p_event_id=>wwv_flow_imp.id(3483586316505287731)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// find icon',
'var icon=this.triggeringElement.querySelector(".fa");',
'',
'// toggle expand/collapse',
'"fa fa-search-plus"==icon.classList?(icon.classList="fa fa-search-minus",icon.title="Collapse"):"fa fa-search-minus"==icon.classList&&(icon.classList="fa fa-search-plus",icon.title="Expand");'))
);
wwv_flow_imp.component_end;
end;
/
