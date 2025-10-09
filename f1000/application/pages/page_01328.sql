prompt --application/pages/page_01328
begin
--   Manifest
--     PAGE: 01328
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
 p_id=>1328
,p_name=>'frmNotification'
,p_step_title=>'Search Notifications Sent By and To You'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3806580230187387816)
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script language="JavaScript" type="text/javascript">',
'<!--',
'',
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'//-->',
'</script>'))
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3692123439960992381)
,p_plug_name=>'Search and Delete your Notifications (click edit to display in Update/forward Region below)'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent2:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>9
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NOTIFICATION_DETAIL_ID,a.USER_NAME "SEND BY", ',
'pkg_biz_rules.display_lable(:APP_ID, notification_type) NOTIFICATION_TYPE, ',
'PROCESS_NAME||'': ''||A.DESCRIPTION DESCRIP,',
'APP_URL_LINK,',
'A.EFFECTIVE_FROM, ',
'A.EFFECTIVE_TO,',
'B.LAST_UPDATED_BY "FORWARD ON BY",',
'B.NOTIFICATION_USER_STATUS,',
'B.FORWARD_LIST_ID,',
'Description',
'FROM TBLNOTIFICATIONHEAD A JOIN TBLNOTIFICATIONDETAIL B ON A.NOTIFICATION_ID=B.NOTIFICATION_ID',
'JOIN TBLFORWARDLIST C ON C.FORWORD_LIST_ID=B.FORWARD_LIST_ID',
'JOIN TBLUSER D ON C.FORWARD_TO=D.USER_ID',
'WHERE (D.USER_NAME=nvl(V(''APP_USER''),user) OR A.CREATED_BY =nvl(V(''APP_USER''),user))',
'AND EXISTS (SELECT 1',
'              FROM TBLWORKFLOWSTATUS M JOIN TBLWORKFLOWDTL N ON M.WORKFLOW_DTL_ID=N.id',
'              JOIN APEX_APPLICATION_PAGES Q ON Q.PAGE_ID=N.WEBPAGE_ID',
'              WHERE C.WFL_STATUS_ID=m.WFL_STATUS_ID',
'              AND D.USER_NAME=NVL(V(''APP_USER''),USER)',
'              AND APPLICATION_ID=:APP_ID)     ',
'and A.EFFECTIVE_FROM between :P1328_START_DATE and :P1328_END_DATE      ',
'and a.USER_NAME =decode(:P1328_FROM_USER, ''1'', a.USER_NAME, :P1328_FROM_USER)',
'and org_id=:APP_ORG_ID',
'order by A.NOTIFICATION_ID desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3692123215151992375)
,p_name=>'Notifications Sent By and To You'
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
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PUR_INV'
,p_internal_uid=>133617815035487524
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3806956801509068417)
,p_db_column_name=>'NOTIFICATION_DETAIL_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:1328:&SESSION.::&DEBUG.:1328:P1328_NOTIFICATION_DETAIL_ID:#NOTIFICATION_DETAIL_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'NOTIFICATION_DETAIL_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3806956360592068416)
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
 p_id=>wwv_flow_imp.id(3806955985490068416)
,p_db_column_name=>'DESCRIP'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Descrip'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'DESCRIP'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3806955542209068416)
,p_db_column_name=>'APP_URL_LINK'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'App Url Link'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'APP_URL_LINK'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3806955164472068415)
,p_db_column_name=>'EFFECTIVE_FROM'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Effective From'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'EFFECTIVE_FROM'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3806954740769068415)
,p_db_column_name=>'EFFECTIVE_TO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Effective To'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'EFFECTIVE_TO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3806954387042068415)
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
 p_id=>wwv_flow_imp.id(3806953969204068415)
,p_db_column_name=>'NOTIFICATION_USER_STATUS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'NOTIFICATION_USER_STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3806953595586068415)
,p_db_column_name=>'NOTIFICATION_TYPE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Transaction Status'
,p_column_type=>'STRING'
,p_static_id=>'NOTIFICATION_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3806953210048068414)
,p_db_column_name=>'FORWARD_LIST_ID'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Send To'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_static_id=>'FORWARD_LIST_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3806944929057068404)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3806952787778068414)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DESCRIPTION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3692122245757992366)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'187886'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'NOTIFICATION_DETAIL_ID:DESCRIPTION:NOTIFICATION_TYPE:SEND BY:FORWARD_LIST_ID:EFFECTIVE_FROM:EFFECTIVE_TO:FORWARD ON BY:NOTIFICATION_USER_STATUS:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3692126826451992400)
,p_plug_name=>'Update/Forward Specific Notification'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'TABLE'
,p_query_table=>'QRY_NOTIFICATION'
,p_include_rowid_column=>true
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3692124430805992383)
,p_plug_name=>'Audit'
,p_parent_plug_id=>wwv_flow_imp.id(3692126826451992400)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent4:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_list_template_id=>wwv_flow_imp.id(3696210304754617202)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P1328_NOTIFICATION_DETAIL_ID'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3745081272927367079)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3717689614460688576)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3745081368613367080)
,p_plug_name=>'NOTIFICATION'
,p_parent_plug_id=>wwv_flow_imp.id(3745081272927367079)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Tabs--large:t-Tabs--simple:t-Tabs--iconsAbove:t-Tabs--fillLabels'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_list_id=>wwv_flow_imp.id(3717676794395669506)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>3289653489478925766
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3823713166760563383)
,p_plug_name=>'Remarks History'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    id,',
'    notification_detail_id,',
'    user_remarks,',
'    last_updated_by,',
'    last_update_date',
'FROM',
'    tblnotificationdetailchat',
'where notification_detail_id =:P1328_NOTIFICATION_DETAIL_ID    '))
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
 p_id=>wwv_flow_imp.id(3823713010677563382)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'CLOUD_PROD_DEV'
,p_internal_uid=>50810084151182118
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3823712940435563381)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3823712826702563380)
,p_db_column_name=>'NOTIFICATION_DETAIL_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Notification Detail Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3823712769228563379)
,p_db_column_name=>'USER_REMARKS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Old User Notes'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3823712682100563378)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3823712564249563377)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Last Update Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3823676201071164564)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'508469'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USER_REMARKS:LAST_UPDATE_DATE:'
,p_sort_column_1=>'LAST_UPDATE_DATE'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3806963777499068427)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3692123439960992381)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3806952027837068410)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3692123439960992381)
,p_button_name=>'P1328_SUBMIT_SEARCH'
,p_button_static_id=>'P1328_SUBMIT_SEARCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Search'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3806963405422068427)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3692126826451992400)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_security_scheme=>wwv_flow_imp.id(3807019313075118135)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3806951586962068410)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3692123439960992381)
,p_button_name=>'P1328_DELETE_SEARCH'
,p_button_static_id=>'P1328_DELETE_SEARCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete Search'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_button_condition=>'P1328_SET_VALUE'
,p_button_condition2=>'1'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3806964148473068429)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3692126826451992400)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save/Forward Workflow'
,p_button_position=>'EDIT'
,p_security_scheme=>wwv_flow_imp.id(3807018998455118135)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3826126903326502689)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3692123439960992381)
,p_button_name=>'VIEW_HISTORY'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'View History'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:71:&SESSION.::&DEBUG.:RP::'
,p_security_scheme=>wwv_flow_imp.id(3807018089076118135)
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3806945472511068405)
,p_branch_name=>'delete_branch'
,p_branch_action=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3806963405422068427)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3806946241356068406)
,p_branch_name=>'delete_notification_branch'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3806951586962068410)
,p_branch_sequence=>2
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3806945859885068406)
,p_branch_action=>'f?p=&APP_ID.:1328:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>3
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3806232073002466397)
,p_name=>'P1328_SET_VALUE'
,p_item_sequence=>88
,p_item_plug_id=>wwv_flow_imp.id(3692123439960992381)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3806950375606068409)
,p_name=>'P1328_FROM_USER'
,p_item_sequence=>78
,p_item_plug_id=>wwv_flow_imp.id(3692123439960992381)
,p_prompt=>'From User'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT a.USER_NAME A,  a.USER_NAME B',
'FROM TBLNOTIFICATIONHEAD A JOIN TBLNOTIFICATIONDETAIL B ON A.NOTIFICATION_ID=B.NOTIFICATION_ID',
'JOIN TBLFORWARDLIST C ON C.FORWORD_LIST_ID=B.FORWARD_LIST_ID',
'JOIN TBLUSER D ON C.FORWARD_TO=D.USER_ID',
'WHERE (D.USER_NAME=nvl(V(''APP_USER''),user) OR A.CREATED_BY =nvl(V(''APP_USER''),user))',
'AND EXISTS (SELECT 1',
'              FROM TBLWORKFLOWSTATUS M JOIN TBLWORKFLOWDTL N ON M.WORKFLOW_DTL_ID=N.id',
'              JOIN APEX_APPLICATION_PAGES Q ON Q.PAGE_ID=N.WEBPAGE_ID',
'              WHERE C.WFL_STATUS_ID=m.WFL_STATUS_ID',
'              AND D.USER_NAME=NVL(V(''APP_USER''),USER)',
'              AND APPLICATION_ID=:APP_ID)     ',
'and A.EFFECTIVE_FROM between :P1328_START_DATE and :P1328_END_DATE      ',
'and a.USER_NAME =decode(:P1328_FROM_USER, ''1'', a.USER_NAME, :P1328_FROM_USER)',
'and A.org_id=:APP_ORG_ID',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All--'
,p_lov_null_value=>'1'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3806950786770068410)
,p_name=>'P1328_END_DATE'
,p_item_sequence=>68
,p_item_plug_id=>wwv_flow_imp.id(3692123439960992381)
,p_item_default=>'trunc(current_date)+1'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Effective To'
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
 p_id=>wwv_flow_imp.id(3806951132380068410)
,p_name=>'P1328_START_DATE'
,p_item_sequence=>58
,p_item_plug_id=>wwv_flow_imp.id(3692123439960992381)
,p_item_default=>'trunc(current_date)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Effective From'
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
 p_id=>wwv_flow_imp.id(3806957471547068421)
,p_name=>'P1328_LAST_UPDATE_DATE'
,p_source_data_type=>'TIMESTAMP_LTZ'
,p_is_query_only=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3692124430805992383)
,p_item_source_plug_id=>wwv_flow_imp.id(3692126826451992400)
,p_prompt=>'Last Update Date'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'LAST_UPDATE_DATE'
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
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3806957864662068422)
,p_name=>'P1328_LAST_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_sequence=>39
,p_item_plug_id=>wwv_flow_imp.id(3692124430805992383)
,p_item_source_plug_id=>wwv_flow_imp.id(3692126826451992400)
,p_prompt=>'Last Updated By'
,p_source=>'LAST_UPDATED_BY'
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
  'send_on_page_submit', 'N',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3806958296498068422)
,p_name=>'P1328_CREATION_DATE'
,p_source_data_type=>'TIMESTAMP_LTZ'
,p_is_query_only=>true
,p_item_sequence=>19
,p_item_plug_id=>wwv_flow_imp.id(3692124430805992383)
,p_item_source_plug_id=>wwv_flow_imp.id(3692126826451992400)
,p_prompt=>'Creation Date'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'CREATION_DATE'
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
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3806958674967068422)
,p_name=>'P1328_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_imp.id(3692124430805992383)
,p_item_source_plug_id=>wwv_flow_imp.id(3692126826451992400)
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
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
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3806959411218068423)
,p_name=>'P1328_EFFECTIVE_FROM'
,p_source_data_type=>'DATE'
,p_item_sequence=>68
,p_item_plug_id=>wwv_flow_imp.id(3692126826451992400)
,p_item_source_plug_id=>wwv_flow_imp.id(3692126826451992400)
,p_prompt=>'Effective From'
,p_source=>'EFFECTIVE_FROM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3806959826847068423)
,p_name=>'P1328_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>47
,p_item_plug_id=>wwv_flow_imp.id(3692126826451992400)
,p_item_source_plug_id=>wwv_flow_imp.id(3692126826451992400)
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3806960226784068423)
,p_name=>'P1328_NOTIFICATION_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>46
,p_item_plug_id=>wwv_flow_imp.id(3692126826451992400)
,p_item_source_plug_id=>wwv_flow_imp.id(3692126826451992400)
,p_source=>'NOTIFICATION_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3806960614904068424)
,p_name=>'P1328_TRANSACTION_STATUS'
,p_item_sequence=>58
,p_item_plug_id=>wwv_flow_imp.id(3692126826451992400)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Transaction Status'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select WFL_STATUS_DESCRIPTION',
'from TBLWORKFLOWSTATUS ',
'where WFL_STATUS_ID=:P1328_NOTIFICATION_TYPE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3806961024352068424)
,p_name=>'P1328_EFFECTIVE_TO'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>25
,p_item_plug_id=>wwv_flow_imp.id(3692126826451992400)
,p_item_source_plug_id=>wwv_flow_imp.id(3692126826451992400)
,p_prompt=>'Effective To'
,p_source=>'EFFECTIVE_TO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>15
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
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
 p_id=>wwv_flow_imp.id(3806961400985068425)
,p_name=>'P1328_FORWARD_TO_USER'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_imp.id(3692126826451992400)
,p_item_source_plug_id=>wwv_flow_imp.id(3692126826451992400)
,p_prompt=>'Forward To User'
,p_source=>'FORWARD_TO_USER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select user_name,user_id',
'from tbluser a',
'where exists (select 1',
'            from TBLUSERDETAIL b',
'            where a.USER_ID =b.USER_ID',
'            and org_id=:APP_ORG_ID',
'            )',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM (SELECT 1 ',
'      FROM tbluser',
'      WHERE user_name= nvl(V(''APP_USER''),user)',
'      AND forward_default_only=''N''',
'         union',
'      select 1',
'      from TBLSYSTEMCONFIGURATION',
'      where AUTO_FORWARD=''CHOOSE''',
'      )',
'where :P1328_NOTIFICATION_DETAIL_ID is not null'))
,p_display_when_type=>'EXISTS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_help_text=>'Please note this person will see the full history of all the notes and comments made for this work flow. Much the same way forwarded email work.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3806961758117068425)
,p_name=>'P1328_FORWARD_LIST_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_imp.id(3692126826451992400)
,p_item_source_plug_id=>wwv_flow_imp.id(3692126826451992400)
,p_source=>'FORWARD_LIST_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3806962193894068425)
,p_name=>'P1328_USER_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_imp.id(3692126826451992400)
,p_item_source_plug_id=>wwv_flow_imp.id(3692126826451992400)
,p_prompt=>'User Notes'
,p_source=>'USER_REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>2000
,p_cMaxlength=>2000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_help_text=>'Enter a new remark to be forward to another user the old remarks will be keep in history below.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'Y',
  'character_counter', 'Y',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_show_quick_picks=>'Y'
,p_quick_pick_label_01=>'Clear User Notes'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3806962569844068425)
,p_name=>'P1328_NOTIFICATION_USER_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_imp.id(3692126826451992400)
,p_item_source_plug_id=>wwv_flow_imp.id(3692126826451992400)
,p_prompt=>'Notification User Status'
,p_source=>'NOTIFICATION_USER_STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'NOTIFY_STATUS'
,p_lov=>'.'||wwv_flow_imp.id(3807038255982314393)||'.'
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
 p_id=>wwv_flow_imp.id(3806962930948068427)
,p_name=>'P1328_NOTIFICATION_DETAIL_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(3692126826451992400)
,p_item_source_plug_id=>wwv_flow_imp.id(3692126826451992400)
,p_source=>'NOTIFICATION_DETAIL_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3825263933406987654)
,p_name=>'P1328_SOURCE'
,p_item_sequence=>78
,p_item_plug_id=>wwv_flow_imp.id(3692126826451992400)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3806947986763068407)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(3692126826451992400)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Fetch Row from QRY_NOTIFICATION'
,p_process_error_message=>'Unable to fetch row.'
,p_internal_uid=>3163472064883313902
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3806947531075068407)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'500'
,p_process_when_button_id=>wwv_flow_imp.id(3806963777499068427)
,p_internal_uid=>3163471609195313902
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3806947179928068407)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Apply_Changes'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'pkg_biz_rules.UPDATE_NOTIFY(:P1328_USER_REMARKS , :P1328_NOTIFICATION_USER_STATUS, to_number(:P1328_NOTIFICATION_DETAIL_ID) ,to_date(:P1328_EFFECTIVE_TO),to_number(:P1328_FORWARD_TO_USER) );',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'The update to notification failed.'
,p_process_when_button_id=>wwv_flow_imp.id(3806964148473068429)
,p_process_when=>'P1328_NOTIFICATION_USER_STATUS'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'You have successfully update the notification.'
,p_internal_uid=>3163471258048313902
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3806946754151068407)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete_Notify'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' PKG_BIZ_RULES.DELETE_NOTIFY(:P1328_NOTIFICATION_DETAIL_ID);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'The notification failed to be deleted.'
,p_process_when_button_id=>wwv_flow_imp.id(3806963405422068427)
,p_process_success_message=>'The notification has been successfully deleted.'
,p_internal_uid=>3163470832271313902
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3806948361137068408)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'delete_notification'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    ',
' BEGIN',
'  ',
'DELETE',
'FROM TBLNOTIFICATIONDETAIL B',
'WHERE EXISTS (SELECT 1                                 ',
'              FROM TBLFORWARDLIST C ',
'              WHERE C.FORWORD_LIST_ID=B.FORWARD_LIST_ID',
'              AND C.FORWARD_TO=(SELECT USER_ID FROM TBLUSER WHERE USER_NAME=:APP_USER)',
'              )',
'and exists (select 1',
'            from TBLNOTIFICATIONHEAD A ',
'             where A.NOTIFICATION_ID=B.NOTIFICATION_ID ',
'             and a.EFFECTIVE_FROM BETWEEN :P1328_START_DATE AND :P1328_END_DATE ',
'             AND ORG_ID=:APP_ORG_ID',
'             ); ',
'                     ',
'DELETE',
'FROM TBLNOTIFICATIONHEAD a',
'WHERE NOT EXISTS(SELECT 1',
'                FROM TBLNOTIFICATIONDETAIL B',
'                WHERE A.NOTIFICATION_ID=B.NOTIFICATION_ID',
'                );',
'COMMIT;                ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3806951586962068410)
,p_process_success_message=>'Successful deletion of Records.'
,p_internal_uid=>3163472439257313903
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3806231926556466396)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set_value_del'
,p_process_sql_clob=>':P1328_SET_VALUE:=1'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3162756004676711891
);
wwv_flow_imp.component_end;
end;
/
