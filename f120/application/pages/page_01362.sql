prompt --application/pages/page_01362
begin
--   Manifest
--     PAGE: 01362
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
 p_id=>1362
,p_name=>'rptUserLoginLog'
,p_step_title=>'Listing of User Logins'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3584896301505629885)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3585334160394360204)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(475973114033706788)
,p_plug_name=>'Breadcrumb'
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
 p_id=>wwv_flow_imp.id(3470830640121125957)
,p_plug_name=>'Listing of Users Logins Attempts'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TBLLOGINUSERLOG.USERLOGIN_ID as USERLOGIN_ID,TRUNC(LOGIN_DATE_TIME) LOGIN_DATE,',
'    TBLLOGINUSERLOG.APP_USER as APP_USER,',
'    TBLLOGINUSERLOG.LOGIN_DATE_TIME as LOGIN_DATE_TIME,',
'    TBLLOGINUSERLOG.LOGOUT_DATE_TIME as LOGOUT_DATE_TIME,',
'    TBLLOGINUSERLOG.SESSION_ID as SESSION_ID,',
'    TBLLOGINUSERLOG.LOGOUT_DATE_TIME - TBLLOGINUSERLOG.LOGIN_DATE_TIME as DURATION_IN_MINS,',
'    TBLLOGINUSERLOG.FROM_CLIENT as FROM_CLIENT,',
'    ROLES,',
'    LOGIN_TYPE',
' from TBLLOGINUSERLOG TBLLOGINUSERLOG',
' Where Exists(Select 1',
'              From Tbluser A Join Tbluserdetail B On A.User_Id=B.User_Id',
'              Where Upper(Tblloginuserlog.App_User)=Upper(A.User_Name)',
'              and org_id=:APP_ORG_ID',
'              )',
' AND TRUNC(LOGIN_DATE_TIME) BETWEEN :P1362_END_DATE AND :P1362_START_DATE'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3470830537848125957)
,p_name=>'Listing of Users Logins'
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
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PUR_INV'
,p_internal_uid=>133226563657596011
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3585211130306190273)
,p_db_column_name=>'USERLOGIN_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Userlogin Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'USERLOGIN_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3585210746309190273)
,p_db_column_name=>'APP_USER'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'App User'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'APP_USER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3585210303689190272)
,p_db_column_name=>'LOGIN_DATE_TIME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Login Date Time'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'Y'
,p_static_id=>'LOGIN_DATE_TIME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3585209973119190272)
,p_db_column_name=>'LOGOUT_DATE_TIME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Logout Date Time'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'LOGOUT_DATE_TIME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3585209542775190271)
,p_db_column_name=>'SESSION_ID'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Session Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SESSION_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3585209141617190271)
,p_db_column_name=>'FROM_CLIENT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'From Client'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FROM_CLIENT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3585211556221190273)
,p_db_column_name=>'DURATION_IN_MINS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Duration'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_static_id=>'DURATION_IN_MINS'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3585211903284190273)
,p_db_column_name=>'LOGIN_DATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Login Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3583034057002502750)
,p_db_column_name=>'ROLES'
,p_display_order=>19
,p_column_identifier=>'J'
,p_column_label=>'Roles'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3583033571610502746)
,p_db_column_name=>'LOGIN_TYPE'
,p_display_order=>29
,p_column_identifier=>'K'
,p_column_label=>'Login type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3470829542901122503)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'188483'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'APP_USER:LOGIN_DATE:LOGIN_DATE_TIME:LOGOUT_DATE_TIME:DURATION_IN_MINS:FROM_CLIENT:SESSION_ID::ROLES:LOGIN_TYPE'
,p_sort_column_1=>'LOGIN_DATE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'LOGIN_DATE_TIME'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'APP_USER:LOGIN_DATE:0:0:0:0'
,p_break_enabled_on=>'APP_USER:LOGIN_DATE:0:0:0:0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3585208315567190270)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3470830640121125957)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3583033939182502749)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3470830640121125957)
,p_button_name=>'FORMS_ACCESSED'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Forms Accessed'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10520:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3583033688154502747)
,p_name=>'P1362_END_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3470830640121125957)
,p_item_default=>'trunc(current_date)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'End Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(3583033841009502748)
,p_name=>'P1362_START_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3470830640121125957)
,p_item_default=>'trunc(current_date)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Start Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
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
wwv_flow_imp.component_end;
end;
/
