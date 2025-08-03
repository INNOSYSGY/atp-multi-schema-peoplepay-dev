prompt --application/pages/page_01325
begin
--   Manifest
--     PAGE: 01325
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.7'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>1325
,p_name=>'rptRespOrgPage'
,p_step_title=>'Search Options for Responsibility Organisation Pages'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3278888520595948027)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3165732094861233291)
,p_plug_name=>'Search Options for Responsibility Organisation Pages'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select	 "TBLRESPONSIBILITYORGPAGE"."RESP_PAGE_ORG_ID" as "RESP_PAGE_ORG_ID",',
'(select "DESCRIPTION" FROM TBLORGANIZATION WHERE ORGANIZATION_ID=',
'	 "TBLRESPONSIBILITYORGPAGE"."ORGANIZATION_ID") as "ORGANIZATION",',
'(SELECT RESPONSIBILITY_NAME RNAME  ',
'FROM TBLRESPONSIBILITY WHERE RESPONSIBILITY_ID=',
'	 "TBLRESPONSIBILITYORGPAGE"."RESPONSIBILITY_ID") as "RESPONSIBILITY",',
'(SELECT APPLICATION_TAB||'': ''||WEBPAGE_ID||'': ''||WEBPAGE_NAME RNAME  ',
'FROM TBLPAGELIST WHERE PAGE_ID= "TBLRESPONSIBILITYORGPAGE"."PAGE_ID") as "PAGE",',
'	 "TBLRESPONSIBILITYORGPAGE"."REMARKS" as "REMARKS",',
'	 "TBLRESPONSIBILITYORGPAGE"."CREATED_BY" as "CREATED_BY",',
'	 "TBLRESPONSIBILITYORGPAGE"."CREATION_DATE" as "CREATION_DATE",',
'	 "TBLRESPONSIBILITYORGPAGE"."LAST_UPDATED_BY" as "LAST_UPDATED_BY",',
'	 "TBLRESPONSIBILITYORGPAGE"."LAST_UPDATE_DATE" as "LAST_UPDATE_DATE",',
'"RESPONSIBILITY_ID" "EDIT", CAN_DELETE, CAN_EXECUTE, CAN_EDIT, CAN_VERIFY, CAN_ADD, CAN_VIEW',
' from	 "TBLRESPONSIBILITYORGPAGE" "TBLRESPONSIBILITYORGPAGE"',
'WHERE exists (select 1',
'            from tblpagelist b',
'            where "TBLRESPONSIBILITYORGPAGE".page_id=b.page_id',
'            AND APP_MODULE_ID IS NOT NULL)',
'order by RESPONSIBILITY_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_customized=>'1'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3165731910991233289)
,p_name=>'rptRespOrgPage'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more then 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_LEFT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'HTML:CSV:PDF'
,p_enable_mail_download=>'N'
,p_owner=>'RICHARD'
,p_internal_uid=>132317331172805810
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3278992263127477907)
,p_db_column_name=>'RESP_PAGE_ORG_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Link To Page'
,p_column_link=>'f?p=&APP_ID.:1321:&SESSION.::&DEBUG.::P1321_PAGE_ID:#PAGE#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="">'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_static_id=>'RESP_PAGE_ORG_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3278988716070477904)
,p_db_column_name=>'EDIT'
,p_display_order=>2
,p_column_identifier=>'M'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:1324:&SESSION.::&DEBUG.::P1324_RESPONSIBILITY_ID:#EDIT#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'EDIT'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select :APP_USER',
'from dual',
'where  :APP_USER=''GTT'''))
,p_use_as_row_header=>'N'
,p_security_scheme=>wwv_flow_imp.id(3279327210431677335)
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3278991920797477906)
,p_db_column_name=>'REMARKS'
,p_display_order=>3
,p_column_identifier=>'E'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'REMARKS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3278991474968477906)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>4
,p_column_identifier=>'F'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'CREATED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3278991076494477906)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>5
,p_column_identifier=>'G'
,p_column_label=>'Creation Date'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_static_id=>'CREATION_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3278990681272477906)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>6
,p_column_identifier=>'H'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'LAST_UPDATED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3278990271000477905)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>7
,p_column_identifier=>'I'
,p_column_label=>'Last Update Date'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_static_id=>'LAST_UPDATE_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3278989859430477905)
,p_db_column_name=>'ORGANIZATION'
,p_display_order=>8
,p_column_identifier=>'J'
,p_column_label=>'Organization'
,p_column_type=>'STRING'
,p_static_id=>'ORGANIZATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3278989456103477905)
,p_db_column_name=>'RESPONSIBILITY'
,p_display_order=>9
,p_column_identifier=>'K'
,p_column_label=>'Responsibility'
,p_column_type=>'STRING'
,p_static_id=>'RESPONSIBILITY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3278989095384477905)
,p_db_column_name=>'PAGE'
,p_display_order=>10
,p_column_identifier=>'L'
,p_column_label=>'Page'
,p_column_type=>'STRING'
,p_static_id=>'PAGE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3278994731828477908)
,p_db_column_name=>'CAN_DELETE'
,p_display_order=>11
,p_column_identifier=>'N'
,p_column_label=>'Can Delete'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3278994341134477908)
,p_db_column_name=>'CAN_EXECUTE'
,p_display_order=>12
,p_column_identifier=>'O'
,p_column_label=>'Can Exec'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3278993931164477907)
,p_db_column_name=>'CAN_EDIT'
,p_display_order=>13
,p_column_identifier=>'P'
,p_column_label=>'Can Edit'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3278993463265477907)
,p_db_column_name=>'CAN_VERIFY'
,p_display_order=>14
,p_column_identifier=>'Q'
,p_column_label=>'Can Verify'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3278993075458477907)
,p_db_column_name=>'CAN_ADD'
,p_display_order=>15
,p_column_identifier=>'R'
,p_column_label=>'Can Add'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3278992719382477907)
,p_db_column_name=>'CAN_VIEW'
,p_display_order=>16
,p_column_identifier=>'S'
,p_column_label=>'Can View'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3165730800597233284)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'190609'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'EDIT:PAGE:ORGANIZATION:RESPONSIBILITY:REMARKS:CAN_DELETE:CAN_EXECUTE:CAN_EDIT:CAN_VERIFY:CAN_ADD:CAN_VIEW:CREATED_BY:CREATION_DATE:LAST_UPDATED_BY:LAST_UPDATE_DATE:'
,p_break_on=>'RESPONSIBILITY:0:0:0:0:0'
,p_break_enabled_on=>'RESPONSIBILITY:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3278987493175477903)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3165732094861233291)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:199:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3278987914355477904)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3165732094861233291)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:1324:&SESSION.::&DEBUG.:1324::'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp.component_end;
end;
/
