prompt --application/pages/page_02005
begin
--   Manifest
--     PAGE: 02005
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
 p_id=>2005
,p_name=>'rptInvSession'
,p_alias=>'RPTINVSESSION'
,p_step_title=>'Listing of Interviews'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3825295018965991165)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3806736716975971898)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(670039931214453390)
,p_plug_name=>'bc'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988176195002489210)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6617721296567161035)
,p_plug_name=>'Listing of Interviews'
,p_region_name=>'Listing of Interviewees'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT k.ID,INTERVIEW_SESSION_NAME,',
'(select c.description||'' EFFECTIVE(''||to_char(a.start_date,''DD-MON-YYYY'')||'') ''||a.DESCRIPTION ',
'From Hr_Inv_jobConfig A Join Hr_Hcf_Organisation B On A.Org_Id=B.Id',
'Join Hr_Hcf_job C On C.Id=A.job_Id',
'Where  A.ID=  POSITION_CONFIG_ID)POSITION_CONFIG_ID,',
'  ind_id,',
'  LEAD_INTERVIEWER,',
'  PANEL_DETAIL INTERVIEW_PANEL,',
'  k.DATE_INTERVIEWED,(select ''Applicant Type:''||APPLICANT_TYPE||'', Shorted No.:''||EXPECTED_SHORT_LIST||''(''||APPLICATION_START||'' to ''||APPLICATION_END||'')''',
'from HR_HCF_JOBOPENING a',
'where a.id =k.JOBOPENING_ID ) JOBOPENING_ID,',
'  initcap(FINAL_DECISION) FINAL_DECISION,',
'  TOTAL_POINTS,',
'  PERCENT_POINTS,',
'  BONUS,',
'  INTERVIEWEE_ASPIRATIONS,',
'  INTERVIEWEE_COMMENTS,',
'  INTERVIEWER_COMMENTS,',
'  AREAS_OF_STRENGHTS,',
'  AREAS_OF_WEAKNESS,',
'  TRAINING_REQUIRED,',
'  ALTER_POSITION_SUITABLE,',
'  k.REMARKS,',
'  k.LAST_CHANGED_BY,',
'  k.LAST_CHANGED_DATE,',
'  k.ENTERED_BY,',
'  k.ENTRY_DATE,',
'  k.VERIFIED_BY,',
'  k.VERIFIED_DATE,',
'  k.ORG_ID,',
'  k.MACHINE_INSERT,',
'  k.MACHINE_UPDATE,',
'  k.TRANSACTION_TYPE_ID,',
'  k.STATUS, email, cell_phone',
'FROM HR_INV_SESSION k left outer join hr_rcm_individual m on m.id=k.ind_id',
'where k.org_id =:APP_ORG_ID',
'AND nvl(k.JOBOPENING_ID,1)= nvl(:P2005_INTERVIEW_POSITION,  nvl(k.JOBOPENING_ID,1))',
'and TRUNC(DATE_INTERVIEWED) Between :P2005_START_SESSION and :P2005_END_SESSION'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P2005_INTERVIEW_POSITION,P2005_START_SESSION,P2005_END_SESSION'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(6617721113435161032)
,p_name=>'Listing of Employee Appraisals'
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
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:2006:&SESSION.::&DEBUG.::P2006_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(3806737626354971898)
,p_owner=>'PPLERP'
,p_internal_uid=>3839936653003889861
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3446392570259234283)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3446388569759234278)
,p_db_column_name=>'TOTAL_POINTS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Total Points'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'TOTAL_POINTS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3446388232646234277)
,p_db_column_name=>'PERCENT_POINTS'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Percent Points'
,p_column_type=>'NUMBER'
,p_format_mask=>'999G999G999G999G990D00'
,p_static_id=>'PERCENT_POINTS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3446387795341234277)
,p_db_column_name=>'BONUS'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Bonus'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'BONUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3446387440960234276)
,p_db_column_name=>'INTERVIEWEE_ASPIRATIONS'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Interviewee Aspirations'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'INTERVIEWEE_ASPIRATIONS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3446387055399234276)
,p_db_column_name=>'INTERVIEWEE_COMMENTS'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Interviewee Comments'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'INTERVIEWEE_COMMENTS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3446386610675234275)
,p_db_column_name=>'INTERVIEWER_COMMENTS'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Interviewer Comments'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'INTERVIEWER_COMMENTS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3446386251936234275)
,p_db_column_name=>'AREAS_OF_STRENGHTS'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Areas Of Strenghts'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'AREAS_OF_STRENGHTS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3446385833226234274)
,p_db_column_name=>'AREAS_OF_WEAKNESS'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Areas Of Weakness'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'AREAS_OF_WEAKNESS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3446385361189234274)
,p_db_column_name=>'TRAINING_REQUIRED'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Training Required'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TRAINING_REQUIRED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3446384978020234274)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3446384631791234273)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3446392200571234283)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3446391856615234282)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3446391454688234282)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3446390985362234281)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Transaction Type Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'TRANSACTION_TYPE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3446390586781234281)
,p_db_column_name=>'STATUS'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_static_id=>'STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3446390233920234280)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3446389780017234280)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>45
,p_column_identifier=>'AS'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3446389449264234279)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>46
,p_column_identifier=>'AT'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3446389009775234278)
,p_db_column_name=>'ORG_ID'
,p_display_order=>47
,p_column_identifier=>'AU'
,p_column_label=>'Organisation'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ORG_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3446384208583234273)
,p_db_column_name=>'LEAD_INTERVIEWER'
,p_display_order=>49
,p_column_identifier=>'AW'
,p_column_label=>'Lead Interviewer'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LEAD_INTERVIEWER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3446383801640234272)
,p_db_column_name=>'INTERVIEW_PANEL'
,p_display_order=>50
,p_column_identifier=>'AX'
,p_column_label=>'Interview Panel'
,p_column_type=>'STRING'
,p_static_id=>'INTERVIEW_PANEL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3446383366275234271)
,p_db_column_name=>'DATE_INTERVIEWED'
,p_display_order=>51
,p_column_identifier=>'AY'
,p_column_label=>'Date Interviewed'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_INTERVIEWED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3446383044760234271)
,p_db_column_name=>'REMARKS'
,p_display_order=>53
,p_column_identifier=>'BA'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REMARKS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3446393054633234283)
,p_db_column_name=>'POSITION_CONFIG_ID'
,p_display_order=>54
,p_column_identifier=>'BB'
,p_column_label=>'Position Config'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'POSITION_CONFIG_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3446393387283234284)
,p_db_column_name=>'ALTER_POSITION_SUITABLE'
,p_display_order=>64
,p_column_identifier=>'BC'
,p_column_label=>'Alter position suitable'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3446381421706234269)
,p_db_column_name=>'FINAL_DECISION'
,p_display_order=>74
,p_column_identifier=>'BD'
,p_column_label=>'Final decision'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3446382560738234270)
,p_db_column_name=>'JOBOPENING_ID'
,p_display_order=>84
,p_column_identifier=>'BF'
,p_column_label=>'Job Opening '
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3446382178413234270)
,p_db_column_name=>'EMAIL'
,p_display_order=>94
,p_column_identifier=>'BG'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3446381774272234270)
,p_db_column_name=>'CELL_PHONE'
,p_display_order=>104
,p_column_identifier=>'BH'
,p_column_label=>'Cell Phone'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3446381001480234269)
,p_db_column_name=>'IND_ID'
,p_display_order=>114
,p_column_identifier=>'BI'
,p_column_label=>'Applicant'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854079521509239106)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3446380571721234268)
,p_db_column_name=>'INTERVIEW_SESSION_NAME'
,p_display_order=>124
,p_column_identifier=>'BJ'
,p_column_label=>'Interview Session Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(6617716916647161025)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6686093'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'POSITION_CONFIG_ID:JOBOPENING_ID:INTERVIEW_SESSION_NAME:IND_ID:DATE_INTERVIEWED:INTERVIEW_PANEL:TOTAL_POINTS:PERCENT_POINTS:ALTER_POSITION_SUITABLE:FINAL_DECISION:EMAIL:CELL_PHONE:STATUS:'
,p_break_on=>'POSITION_CONFIG_ID:JOBOPENING_ID:0:0:0:0'
,p_break_enabled_on=>'POSITION_CONFIG_ID:JOBOPENING_ID:0:0:0:0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3446394180053234288)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(670039931214453390)
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
 p_id=>wwv_flow_imp.id(3446394656162234289)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(670039931214453390)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:2006:&SESSION.::&DEBUG.:2006::'
,p_security_scheme=>wwv_flow_imp.id(3806736716975971898)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3446394985273234290)
,p_name=>'P2005_START_SESSION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6617721296567161035)
,p_item_default=>' trunc(current_date, ''mm'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Start Session'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(3446395361645234291)
,p_name=>'P2005_END_SESSION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6617721296567161035)
,p_item_default=>'last_day(current_date)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'End Session'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(3446395853370234291)
,p_name=>'P2005_INTERVIEW_POSITION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6617721296567161035)
,p_prompt=>'Interview Position'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select position_name||'' at ''||unit_name||''; Location:-''||c.location_description,A.ID',
'from HR_HCF_JOBOPENING a join hr_hcf_position b on b.id =a.position_id',
'join hr_hcf_worklocation c on c.id=a.wklocation_id',
'join hr_hcf_orgstructuredtl d on d.id = b.orgdtl_id',
'where org_id=:APP_ORG_ID',
'and exists(select 1',
'           from hr_inv_session sess',
'           where sess.jobopening_id= a.id',
'           and date_interviewed between :P2005_START_SESSION and :P2005_END_SESSION',
'           )'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All--'
,p_lov_cascade_parent_items=>'P2005_START_SESSION,P2005_END_SESSION'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3446396247952234292)
,p_name=>'ref_start'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2005_START_SESSION'
,p_condition_element=>'P2005_END_SESSION'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3446396676670234293)
,p_event_id=>wwv_flow_imp.id(3446396247952234292)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6617721296567161035)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3446397136611234293)
,p_name=>'ref_end'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2005_END_SESSION'
,p_condition_element=>'P2005_START_SESSION'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3446397657933234294)
,p_event_id=>wwv_flow_imp.id(3446397136611234293)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6617721296567161035)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3446398019605234294)
,p_name=>'ref_records'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2005_INTERVIEW_POSITION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3446398535862234294)
,p_event_id=>wwv_flow_imp.id(3446398019605234294)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6617721296567161035)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
