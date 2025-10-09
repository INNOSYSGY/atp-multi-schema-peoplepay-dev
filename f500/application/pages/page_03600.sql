prompt --application/pages/page_03600
begin
--   Manifest
--     PAGE: 03600
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
 p_id=>3600
,p_name=>'frmAccPayableMAINPAGE'
,p_step_title=>'PeoplePay Accounts Payable'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3854372821243766361)
,p_html_page_header=>'<meta http-equiv="refresh" content="60">'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Cards--basic .t-Card .t-Card-icon .t-Icon,',
'.t-Card--basic .t-Card-icon .t-Icon {',
'    border-radius:50%',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3806735775043971897)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3621577375195176038)
,p_plug_name=>'<font color="white">.</font>'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--info:t-Form--noPadding'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>21
,p_plug_source_type=>'NATIVE_HELP_TEXT'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 FROM TBLUSER WHERE SHOW_TIP=1 AND USER_NAME = NVL(V(''APP_USER''),USER)',
'and exists (select 1',
'            from HR_APU_TIPS',
'            where  MAIN_MODULES=''Project Management'')'))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3698529094907648512)
,p_plug_name=>'PeoplePay Accounts Payables Management'
,p_icon_css_classes=>'org-img'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>'Complete Paperless Office Processes for Payables Management'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3857595710631757511)
,p_name=>'Workflow Summary'
,p_template=>2664334895415463485
,p_display_sequence=>15
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT *',
'from (select initcap(process_name) Process_Name,count(1) val_count',
'FROM TBLNOTIFICATIONHEAD A JOIN TBLNOTIFICATIONDETAIL B ON A.NOTIFICATION_ID=B.NOTIFICATION_ID',
'JOIN TBLFORWARDLIST C ON C.FORWORD_LIST_ID=B.FORWARD_LIST_ID',
'JOIN TBLUSER D ON C.FORWARD_TO=D.USER_ID',
'WHERE d.USER_NAME=nvl(V(''APP_USER''),user)',
'AND B.NOTIFICATION_USER_STATUS in (''ACTIVE'',''OUTSTANDING'')',
'AND EXISTS (SELECT 1',
'            FROM TBLWORKFLOWSTAGELIST  M JOIN TBLWORKFLOWDTL N ON M.STAGE_ID=N.STAGE_ID',
'            JOIN APEX_APPLICATION_PAGES Q ON Q.PAGE_ID=N.WEBPAGE_ID',
'            WHERE M.STAGE_ID=C.STAGE_ID',
'            AND APPLICATION_ID=:APP_ID',
'            )',
'and TABLE_NAME like ''TBL%''  ',
'GROUP BY PROCESS_NAME',
'',
'union',
'SELECT initcap(process_name) Process_Name,count(1) val_count',
'From Tblnotificationhead A Join Tblnotificationdetail B On A.Notification_Id=B.Notification_Id',
'WHERE NOTIFICATION_USER_STATUS in (''ACTIVE'',''OUTSTANDING'')',
'AND USER_NAME=NVL(V(''APP_USER''),USER)',
'AND MANUAL=1',
'and TABLE_NAME like ''TBL%''  ',
'GROUP BY PROCESS_NAME',
')',
'order by process_name'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>14
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3825374478886005922)
,p_query_column_id=>1
,p_column_alias=>'PROCESS_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Process Name'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3825374051591005922)
,p_query_column_id=>2
,p_column_alias=>'VAL_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Occurance'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3857603018877930263)
,p_plug_name=>'Workflow Notifications'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>5
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT *',
'from (select NOTIFICATION_DETAIL_ID,A.USER_NAME "SEND BY", NOTIFICATION_TYPE, ',
'INITCAP(A.DESCRIPTION) DESCRIP,',
'SUBSTR(APP_URL_LINK,1,4)||:APP_ID||'':''|| ',
'substr(SUBSTRB(APP_URL_LINK,1,INSTR(APP_URL_LINK,'':'',1,2)-1)',
'      ,INSTR(SUBSTRB(APP_URL_LINK,1,INSTR(APP_URL_LINK,'':'',1,2)-1),'':'',1,1)+1',
'      ,  length(SUBSTRB(APP_URL_LINK,1,INSTR(APP_URL_LINK,'':'',1,2))))||'':''||:APP_SESSION||SUBSTRB(APP_URL_LINK,INSTR(APP_URL_LINK,''::''),LENGTH(APP_URL_LINK)) APP_URL_LINK,',
'A.EFFECTIVE_FROM, ',
'A.EFFECTIVE_TO,',
'B.LAST_UPDATED_BY "FORWARD ON BY",a.Notification_Id',
'From Tblnotificationhead A Join Tblnotificationdetail B On A.Notification_Id=B.Notification_Id',
'WHERE Exists (Select 1',
'              FROM TBLFORWARDLIST C JOIN TBLUSER D ON C.FORWARD_TO=D.USER_ID',
'              JOIN TBLWORKFLOWSTAGELIST  M ON M.STAGE_ID=C.STAGE_ID',
'              JOIN TBLWORKFLOWDTL N ON M.STAGE_ID=N.STAGE_ID',
'              JOIN APEX_APPLICATION_PAGES Q ON Q.PAGE_ID=N.WEBPAGE_ID',
'              WHERE (C.FORWORD_LIST_ID=B.FORWARD_LIST_ID OR C.FORWARD_TO=B.FORWARD_TO_USER)',
'              AND D.USER_NAME=NVL(V(''APP_USER''),USER)',
'              AND APPLICATION_ID=:APP_ID)',
'AND B.NOTIFICATION_USER_STATUS in (''ACTIVE'',''OUTSTANDING'')',
'and TABLE_NAME like ''TBL%''  ',
'',
'UNION',
'',
'SELECT  NOTIFICATION_DETAIL_ID,A.USER_NAME "SEND BY", NOTIFICATION_TYPE, ',
'INITCAP(A.DESCRIPTION) DESCRIP,',
'SUBSTR(APP_URL_LINK,1,4)||:APP_ID||'':''|| ',
'substr(SUBSTRB(APP_URL_LINK,1,INSTR(APP_URL_LINK,'':'',1,2)-1)',
'      ,INSTR(SUBSTRB(APP_URL_LINK,1,INSTR(APP_URL_LINK,'':'',1,2)-1),'':'',1,1)+1',
'      ,  length(SUBSTRB(APP_URL_LINK,1,INSTR(APP_URL_LINK,'':'',1,2))))||'':''||:APP_SESSION||SUBSTRB(APP_URL_LINK,INSTR(APP_URL_LINK,''::''),LENGTH(APP_URL_LINK)) APP_URL_LINK,',
'A.EFFECTIVE_FROM, ',
'A.EFFECTIVE_TO,',
'B.LAST_UPDATED_BY "FORWARD ON BY",a.Notification_Id',
'From Tblnotificationhead A Join Tblnotificationdetail B On A.Notification_Id=B.Notification_Id',
'WHERE NOTIFICATION_USER_STATUS in (''ACTIVE'',''OUTSTANDING'')',
'AND USER_NAME=NVL(V(''APP_USER''),USER)',
'AND MANUAL=1',
'and TABLE_NAME like ''TBL%''  ',
')',
'order by Notification_Id desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3857603133220930263)
,p_name=>'Worflow Notifications'
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
,p_show_highlight=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_download_formats=>'HTML'
,p_enable_mail_download=>'N'
,p_detail_link=>'f?p=&APP_ID.:1328:&SESSION.::&DEBUG.::P1328_NOTIFICATION_DETAIL_ID,P1328_SOURCE:#NOTIFICATION_DETAIL_ID#,SCMS'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'PUR_INV'
,p_internal_uid=>515704490675121856
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3825379837227005937)
,p_db_column_name=>'NOTIFICATION_DETAIL_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Notification Detail Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'NOTIFICATION_DETAIL_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3825379424527005934)
,p_db_column_name=>'SEND BY'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Send By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SEND BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3825379036953005934)
,p_db_column_name=>'NOTIFICATION_TYPE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Notification Type'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'NOTIFICATION_TYPE'
,p_rpt_named_lov=>wwv_flow_imp.id(3854388337888245940)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3825378626391005932)
,p_db_column_name=>'DESCRIP'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DESCRIP'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3825378297808005932)
,p_db_column_name=>'APP_URL_LINK'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'View Data'
,p_column_link=>'#APP_URL_LINK#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#edit_big.gif" alt="">'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'APP_URL_LINK'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3825377904015005931)
,p_db_column_name=>'EFFECTIVE_FROM'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Effective From'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_static_id=>'EFFECTIVE_FROM'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3825377514833005931)
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
 p_id=>wwv_flow_imp.id(3825377064230005928)
,p_db_column_name=>'FORWARD ON BY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Forward On By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FORWARD ON BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3825376664043005928)
,p_db_column_name=>'NOTIFICATION_ID'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Notification Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'NOTIFICATION_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3857604229958933449)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'488654'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'NOTIFICATION_TYPE:DESCRIP:SEND BY:EFFECTIVE_FROM:EFFECTIVE_TO:FORWARD ON BY:APP_URL_LINK:'
,p_break_on=>'NOTIFICATION_TYPE:0:0:0:0:0'
,p_break_enabled_on=>'NOTIFICATION_TYPE:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3871279525500981330)
,p_plug_name=>'Quick Start'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured force-fa-lg:t-Cards--displayIcons:t-Cards--5cols:t-Cards--animColorFill'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>25
,p_location=>null
,p_list_id=>wwv_flow_imp.id(3825348982561936419)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2886769488667748277
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''TRANSACTION'''))
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3825375153350005925)
,p_name=>'P3600_MAX_TIP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3871279525500981330)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select max(id)',
'from HR_APU_TIPS',
'WHERE MAIN_MODULES=''Project Management'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3825375597596005925)
,p_name=>'P3600_MIN_TIP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3871279525500981330)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select min(id)',
'from HR_APU_TIPS',
'WHERE MAIN_MODULES=''Project Management'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3825380919049005943)
,p_name=>'P3600_TIPS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3621577375195176038)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>0
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3825372778590005919)
,p_name=>'set_tip'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3825372313177005919)
,p_event_id=>wwv_flow_imp.id(3825372778590005919)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3600_TIPS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select messages',
'from HR_APU_TIPS',
'where id=floor(dbms_random.value(to_number(:P3600_MIN_TIP),to_number(:P3600_MAX_TIP)))',
'and rownum=1',
'AND MAIN_MODULES=''Project Management'''))
,p_attribute_07=>'P3600_MIN_TIP,P3600_MAX_TIP'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
