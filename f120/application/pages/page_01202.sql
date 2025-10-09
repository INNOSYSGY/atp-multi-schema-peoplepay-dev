prompt --application/pages/page_01202
begin
--   Manifest
--     PAGE: 01202
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
 p_id=>1202
,p_name=>'rptDailyRegSAAS'
,p_step_title=>'Listing Daily Registration for SAAS'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3806721070126816462)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3836796118718771031)
,p_plug_name=>'Daily Registered SAAS Client'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct',
'  (SELECT  INITCAP(SURNAME || '', '' || NVL(FIRST_NAME, '''')) ||'' ''||NVL(MIDDLE_NAME,'''') ||''(No.:''||EMP_COMPANY_NO||'')''',
'||'' At ''||A.LOCATION_DESCRIPTION a',
'FROM VW_EMPLOYEE X JOIN HR_RCM_INDIVIDUAL Z ON Z.ID=X.IND_ID',
'JOIN  HR_HCF_WORKLOCATION A ON A.ID=X.WKLOCATION_ID',
'JOIN HR_HCF_POSITION B ON B.ID=X.POSITION_ID',
'where x.id=Employee_No )  Employee,',
'  A.User_Name,',
'  a.EMAIL,',
'  A.Effective_From,',
'  a.Effective_To,',
'  FIRST_NAME,',
'  LAST_NAME,',
'  PASSWORD_DURATION,',
'  a.REMARKS,',
'  TRIAL_DURATION,',
'  TRIAL_USER,',
'  Accept_Saas,',
'(Select Organisation_Name From Hr_Hcf_Organisation C Where B.Org_Id=C.Id ) Organisation_Name',
',(Select Short_Name From Hr_Hcf_Organisation C Where B.Org_Id=C.Id ) Short_Name',
',(Select Address From Hr_Hcf_Organisation C Where B.Org_Id=C.Id ) Address',
',(select TELNUM from hr_hcf_organisation c where b.org_id=c.id ) TELNUM',
'From Tbluser A Join Tbluserdetail B On A.User_Id=B.User_Id',
'Where Accept_Saas=''Y''',
'and a.REMARKS like ''%''||to_char(trunc(current_date),''DD-MON-YYYY'')||''%''',
'and TRIAL_USER=''Y'''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3836796012719771031)
,p_name=>'Daily Registered SAAS Client'
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
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_icon_view_columns_per_row=>1
,p_owner=>'GTT'
,p_internal_uid=>37867843616402104
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854017786722665920)
,p_db_column_name=>'USER_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'User Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854017413705665919)
,p_db_column_name=>'EMAIL'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854016995749665918)
,p_db_column_name=>'EFFECTIVE_FROM'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Effective From'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854016643251665918)
,p_db_column_name=>'EFFECTIVE_TO'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Effective To'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854016232167665918)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854015778503665918)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854015363925665916)
,p_db_column_name=>'PASSWORD_DURATION'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Password Duration'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854014977724665915)
,p_db_column_name=>'REMARKS'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854014608287665915)
,p_db_column_name=>'TRIAL_DURATION'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Trial Duration'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854014252848665914)
,p_db_column_name=>'TRIAL_USER'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Trial User'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854013839813665914)
,p_db_column_name=>'ACCEPT_SAAS'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Accept Saas'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854013418759665912)
,p_db_column_name=>'ORGANISATION_NAME'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Organisation Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854013010136665911)
,p_db_column_name=>'SHORT_NAME'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Short Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854012573968665911)
,p_db_column_name=>'ADDRESS'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854012237863665911)
,p_db_column_name=>'TELNUM'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Telnum'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854011775365665911)
,p_db_column_name=>'EMPLOYEE'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Employee'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3836775636786765985)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'206524'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMPLOYEE:USER_NAME:EMAIL:EFFECTIVE_FROM:EFFECTIVE_TO:FIRST_NAME:LAST_NAME:PASSWORD_DURATION:REMARKS:TRIAL_DURATION:TRIAL_USER:ACCEPT_SAAS:ORGANISATION_NAME:SHORT_NAME:ADDRESS:TELNUM:'
,p_break_on=>'ORGANISATION_NAME:SHORT_NAME:ADDRESS:TELNUM:0:0'
,p_break_enabled_on=>'ORGANISATION_NAME:SHORT_NAME:ADDRESS:TELNUM:0:0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3854011052211665906)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3836796118718771031)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:199:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp.component_end;
end;
/
