prompt --application/pages/page_01390
begin
--   Manifest
--     PAGE: 01390
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
 p_id=>1390
,p_name=>'rptWrkFlwForwardList'
,p_alias=>'RPTWRKFLWFORWARDLIST'
,p_step_title=>'WorkFlow Forward List'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3806439560326308805)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(686473678936032605)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988316897241556436)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2129193718598388306)
,p_plug_name=>'TAB'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5968505078966323804)
,p_plug_name=>'Listing of WorkFlow Forwarding to &APP_ORG_NAME. users'
,p_parent_plug_id=>wwv_flow_imp.id(2129193718598388306)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "FORWORD_LIST_ID", ',
'"USER_ID",',
'"FORWARD_TO",',
'"FORWARD_MODE",',
'"CREATED_BY",',
'"EFFECTIVE_FROM",',
'"EFFECTIVE_TO",',
'"CREATION_DATE",',
'"LAST_UPDATED_BY",',
'"LAST_UPDATE_DATE",',
'"IS_DEFAULT",',
'"STAGE_NAME",',
'"REMARKS",',
'"AUTO_CLOSE_ON_COMPLETE",',
'"STAGE_ID",',
'"WFL_STATUS_ID"',
'from "TBLFORWARDLIST" c',
'where EXISTS (SELECT 1',
'              FROM TBLWORKFLOWSTATUS M JOIN TBLWORKFLOWDTL N ON M.WORKFLOW_DTL_ID=N.id',
'              JOIN APEX_APPLICATION_PAGES Q ON Q.PAGE_ID=N.WEBPAGE_ID',
'              WHERE C.WFL_STATUS_ID=m.WFL_STATUS_ID)',
'            --  AND APPLICATION_ID=:APP_ID)         ',
'and exists (select 1',
'            from tbluserdetail a',
'            where C.FORWARD_TO = A.USER_ID            ',
'            and  a.org_id = :APP_ORG_ID',
'           AND EFFECTIVE_TO IS NULL)',
'order by "STAGE_NAME"'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5968504887265323799)
,p_name=>'Listing of Entries for Forwarding'
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
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1391:&SESSION.::&DEBUG.::P1391_FORWORD_LIST_ID:#FORWORD_LIST_ID#'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'PUR_INV'
,p_internal_uid=>5325169635246648305
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216976984463468992)
,p_db_column_name=>'FORWORD_LIST_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Forword List Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'FORWORD_LIST_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216976603035468991)
,p_db_column_name=>'USER_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Sender'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'USER_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3806886735039235377)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216976237960468991)
,p_db_column_name=>'FORWARD_TO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Forward To'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'FORWARD_TO'
,p_rpt_named_lov=>wwv_flow_imp.id(3824330306541517299)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216975819927468990)
,p_db_column_name=>'FORWARD_MODE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Forward Mode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FORWARD_MODE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216975420975468990)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CREATED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216974979173468989)
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
 p_id=>wwv_flow_imp.id(2216974551730468989)
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
 p_id=>wwv_flow_imp.id(2216974215299468989)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Creation Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'CREATION_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216973808702468988)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_UPDATED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216973399839468988)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Last Update Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'LAST_UPDATE_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216973012239468987)
,p_db_column_name=>'IS_DEFAULT'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Is Default'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'IS_DEFAULT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216972561927468987)
,p_db_column_name=>'STAGE_NAME'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Work Flow Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'STAGE_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216972147338468986)
,p_db_column_name=>'REMARKS'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REMARKS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216971762605468986)
,p_db_column_name=>'AUTO_CLOSE_ON_COMPLETE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Auto Close'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'AUTO_CLOSE_ON_COMPLETE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216971346740468985)
,p_db_column_name=>'STAGE_ID'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Stage Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'STAGE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216971124933468984)
,p_db_column_name=>'WFL_STATUS_ID'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Transaction Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'WFL_STATUS_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3853933244310931813)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5968502887506320682)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'14875609'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'STAGE_NAME:WFL_STATUS_ID:USER_ID:FORWARD_TO:FORWARD_MODE:IS_DEFAULT:REMARKS:AUTO_CLOSE_ON_COMPLETE:'
,p_break_on=>'FORWARD_TO:0:0:0:0'
,p_break_enabled_on=>'FORWARD_TO:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6036006179173883986)
,p_plug_name=>'Listing of WorkFlow Sent From &APP_ORG_NAME. users'
,p_parent_plug_id=>wwv_flow_imp.id(2129193718598388306)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "FORWORD_LIST_ID", ',
'"USER_ID",',
'"FORWARD_TO",',
'"FORWARD_MODE",',
'"CREATED_BY",',
'"EFFECTIVE_FROM",',
'"EFFECTIVE_TO",',
'"CREATION_DATE",',
'"LAST_UPDATED_BY",',
'"LAST_UPDATE_DATE",',
'"IS_DEFAULT",',
'"STAGE_NAME",',
'"REMARKS",',
'"AUTO_CLOSE_ON_COMPLETE",',
'"STAGE_ID",',
'"WFL_STATUS_ID"',
'from "TBLFORWARDLIST" c',
'where EXISTS (SELECT 1',
'              FROM TBLWORKFLOWSTATUS M JOIN TBLWORKFLOWDTL N ON M.WORKFLOW_DTL_ID=N.id',
'              JOIN APEX_APPLICATION_PAGES Q ON Q.PAGE_ID=N.WEBPAGE_ID',
'              WHERE C.WFL_STATUS_ID=m.WFL_STATUS_ID)',
'            --  AND APPLICATION_ID=:APP_ID)         ',
'and exists (select 1',
'            from tbluserdetail a',
'            where C.user_id = A.USER_ID           ',
'            AND EFFECTIVE_TO IS NULL',
'            and a.org_id = :APP_ORG_ID',
'            )',
'order by "STAGE_NAME"'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(6036005830780883983)
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
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1391:&SESSION.::&DEBUG.::P1391_FORWORD_LIST_ID:#FORWORD_LIST_ID#'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'CLOUD_PROD_DEV'
,p_internal_uid=>5392670578762208489
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216984931109469007)
,p_db_column_name=>'FORWORD_LIST_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Forword List Id'
,p_column_type=>'NUMBER'
,p_static_id=>'FORWORD_LIST_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216984470435469005)
,p_db_column_name=>'USER_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Sender'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'USER_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3806886735039235377)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216984076261469005)
,p_db_column_name=>'FORWARD_TO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Forward To'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'FORWARD_TO'
,p_rpt_named_lov=>wwv_flow_imp.id(3824330306541517299)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216983655121469004)
,p_db_column_name=>'FORWARD_MODE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Forward Mode'
,p_column_type=>'STRING'
,p_static_id=>'FORWARD_MODE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216983311486469004)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_static_id=>'CREATED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216982904455469004)
,p_db_column_name=>'EFFECTIVE_FROM'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Effective From'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'EFFECTIVE_FROM'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216982453064469003)
,p_db_column_name=>'EFFECTIVE_TO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Effective To'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'EFFECTIVE_TO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216982051647469003)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Creation Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'CREATION_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216981737021469002)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_static_id=>'LAST_UPDATED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216981336431469002)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Last Update Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'LAST_UPDATE_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216980875675469001)
,p_db_column_name=>'IS_DEFAULT'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Is Default'
,p_column_type=>'STRING'
,p_static_id=>'IS_DEFAULT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216980524094469001)
,p_db_column_name=>'STAGE_NAME'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Work Flow Name'
,p_column_type=>'STRING'
,p_static_id=>'STAGE_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216980122605469000)
,p_db_column_name=>'REMARKS'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_static_id=>'REMARKS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216979725219469000)
,p_db_column_name=>'AUTO_CLOSE_ON_COMPLETE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Auto Close'
,p_column_type=>'STRING'
,p_static_id=>'AUTO_CLOSE_ON_COMPLETE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216979293649469000)
,p_db_column_name=>'STAGE_ID'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Stage Id'
,p_column_type=>'NUMBER'
,p_static_id=>'STAGE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216978853966468999)
,p_db_column_name=>'WFL_STATUS_ID'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Transaction Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'WFL_STATUS_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3853933244310931813)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(6034434591325651432)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'14875688'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STAGE_NAME:WFL_STATUS_ID:USER_ID:FORWARD_TO:FORWARD_MODE:IS_DEFAULT:REMARKS:AUTO_CLOSE_ON_COMPLETE:'
,p_break_on=>'USER_ID:0:0:0:0'
,p_break_enabled_on=>'USER_ID:0:0:0:0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(686466493882032593)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5968505078966323804)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(686472847751032603)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6036006179173883986)
,p_button_name=>'RETURN_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(686466901985032594)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5968505078966323804)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1391:&SESSION.::&DEBUG.:1391::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(686473200891032604)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(6036006179173883986)
,p_button_name=>'CREATE_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1391:&SESSION.::&DEBUG.:1391::'
);
wwv_flow_imp.component_end;
end;
/
