prompt --application/pages/page_00192
begin
--   Manifest
--     PAGE: 00192
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
 p_id=>192
,p_name=>'rptproductivityreport'
,p_alias=>'RPTPRODUCTIVITYREPORT'
,p_step_title=>'Productivity Detail Report'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3806298858087241579)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3806736716975971898)
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3758256799172640179)
,p_plug_name=>'Productivity Detail Report'
,p_region_template_options=>'#DEFAULT#:t-Region--accent3:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT *',
'FROM',
'(',
'',
' ',
'',
'(select rpad(''PY INCOME CODE'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)   as ENTRy_BY,entry_date,null as approved_by, null as approved_date,translate(verified_by using nchar_cs) AS  verified_by,verified_date from pa_pcf_incomecod'
||'e)',
'UNION',
'(select rpad(''PY DEDUCT CODE'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)   as ENTRy_BY,entry_date,NULL as approved_by, null as approved_date,translate(verified_by using nchar_cs) AS  verified_by,verified_date from pa_pcf_DEDUCTION'
||'code )',
'UNION',
'(select rpad(''PY EARNING PERIOD'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)   as ENTRy_BY,entry_date,NULL as approved_by, null as approved_date,translate(verified_by using nchar_cs) AS  verified_by,verified_date  from PA_PCF_EARNI'
||'NGPERIOD )',
'UNION',
'(select rpad(''PY POSTING'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)   as ENTRy_BY,entry_date,NULL as approved_by, null as approved_date,NULL AS verified_by,NULL AS verified_date  from pa_pcf_adhocpayment )',
'UNION',
'(select rpad(''HR GRADE'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs) as ENTRy_BY,entry_date,null as approved_by, null as approved_date,translate(verified_by using nchar_cs) AS  verified_by,verified_date from hr_hcf_positiongrade)',
'union',
'(select rpad(''HR GRADE POINT'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)  as ENTRy_BY,entry_date,null as approved_by, null as approved_date,translate(verified_by using nchar_cs) AS  verified_by,verified_date from hr_hcf_positiongr'
||'adepoint)',
'UNION',
'(select rpad(''HR JOB'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)   as ENTRy_BY,entry_date,NULL AS approved_by, null as approved_date,translate(verified_by using nchar_cs) AS  verified_by,verified_date  from hr_hcf_JOB )  ',
'UNION',
'(select rpad(''HR JOB KEYOUTPUTS'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)   as ENTRy_BY,entry_date,null as approved_by, null as approved_date,null as verified_by,null as verified_date  from hr_hcf_JOBKEYOUTPUT)  ',
'UNION',
'(select rpad(''HR JOB RESPONSIBILITY'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)   as ENTRy_BY,entry_date,null as approved_by, null as approved_date,null as verified_by,null as verified_date  from hr_hcf_JOBRESPONSIBILITY )  ',
'UNION',
'(select rpad(''HR JOB COMPETENCY'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)   as ENTRy_BY,entry_date,null as approved_by, null as approved_date,null as verified_by,null as verified_date  from hr_hcf_JOBCOMPETENCY)  ',
'UNION',
'--(select rpad(''HR JOB GENREQUIRE'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)   as ENTRy_BY,entry_date,null as approved_by, null as approved_date,null as verified_by,null as verified_date from hr_hcf_JOBGENREQUIRE)  ',
'--UNION',
'(select rpad(''HR JOB EXPERIENCE'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)   as ENTRy_BY,entry_date,null as approved_by, null as approved_date,null as verified_by,null as verified_date  from hr_hcf_JOBEXPERIENCE)  ',
'UNION',
'(select rpad(''HR JOB TRAINING'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)   as ENTRy_BY,entry_date,null as approved_by, null as approved_date,null as verified_by,null as verified_date  from hr_hcf_JOBTRAINING)  ',
'UNION',
'(select rpad(''HR WORK UNIT'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)   as ENTRy_BY,entry_date,null as approved_by, null as approved_date,translate(verified_by using nchar_cs) AS  verified_by,verified_date  from hr_hcf_ORGSTRUCTU'
||'REDTL)',
'UNION',
'(select rpad(''HR POSITION'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)   as ENTRy_BY,entry_date,NULL as approved_by, null as approved_date,translate(verified_by using nchar_cs) AS  verified_by,verified_date  from hr_hcf_position)',
'UNION',
'(select rpad(''HR INDIVIDUAL'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)  as ENTRy_BY,entry_date,NULL as approved_by, null as approved_date,translate(verified_by using nchar_cs) AS  verified_by,verified_date from hr_RCM_INDIVIDUAL)',
'UNION',
'(select rpad(''HR EMPQUAL'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)   as ENTRy_BY,entry_date,null as approved_by, null as approved_date,NULL AS verified_by,NULL AS verified_date  from hr_RCM_QUALIFICATION)',
'UNION',
'(select rpad(''HR EMPLOYEE'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)   as ENTRy_BY,entry_date,null as approved_by, null as approved_date,translate(verified_by using nchar_cs) AS  verified_by,verified_date  from hr_RCM_EMPLOYEE)',
'UNION',
'(select rpad(''HR EMPLOYEE ENTITLE'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)   as ENTRy_BY,entry_date,translate(approved_by using nchar_cs) as approved_by, null as approved_date,translate(verified_by using nchar_cs) AS  verified_'
||'by,verified_date  from hr_RCM_EMPENTITLE)',
'UNION',
'(select rpad(''HR EMPLOYEE LEAVE ENTITLE'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)   as ENTRy_BY,entry_date,null as approved_by, null as approved_date,null as verified_by,null as verified_date  from hr_RCM_EMPLEAVEENTITLE)',
'UNION',
'(select rpad(''HR LEAVE TRACK'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)   as ENTRy_BY,entry_date,null as approved_by, null as approved_date,null as verified_by,null as verified_date  from hr_LV_LEAVETRACK)',
'UNION',
'(select rpad(''HR LEAVE REQUEST'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)   as ENTRy_BY,entry_date,translate(approved_by using nchar_cs) as approved_by, approved_date,translate(verified_by using nchar_cs) AS  verified_by,verified'
||'_date  from hr_LV_LEAVEHISTORY)',
'UNION',
'(select rpad(''HR LEAVE VACATION ALLOWANCE'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)   as ENTRy_BY,entry_date,translate(approved_by using nchar_cs) as approved_by, approved_date,translate(verified_by using nchar_cs) AS  verified_'
||'by,verified_date  from hr_LV_LEAVEHISTORY_VA)',
'UNION',
'',
' ',
'',
'(select rpad(''HR MOV NEW EMPLOYMENT'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)   as ENTRy_BY,entry_date,translate(approved_by using nchar_cs) as approved_by, approved_date,translate(verified_by using nchar_cs) AS  verified_by,ver'
||'ified_date from hr_MOV_EMPMOVEMENT_NEW WHERE CHANGE_TYPE_ID = 1 )',
'UNION',
'(select rpad(''HR MOV ACTING'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)   as ENTRy_BY,entry_date,translate(approved_by using nchar_cs) as approved_by, approved_date,translate(verified_by using nchar_cs) AS  verified_by,verified_da'
||'te from hr_MOV_EMPMOVEMENT_NEW WHERE CHANGE_TYPE_ID = 2 )',
'UNION',
'(select rpad(''HR MOV CONFIRMATION OF EMPLOYMENT'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)   as ENTRy_BY,entry_date,translate(approved_by using nchar_cs) as approved_by, approved_date,translate(verified_by using nchar_cs) AS  ver'
||'ified_by,verified_date from hr_MOV_EMPMOVEMENT_NEW WHERE CHANGE_TYPE_ID = 3 )',
'UNION',
'(select rpad(''HR MOV DEMOTION'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)   as ENTRy_BY,entry_date,translate(approved_by using nchar_cs) as approved_by, approved_date,translate(verified_by using nchar_cs) AS  verified_by,verified_'
||'date from hr_MOV_EMPMOVEMENT_NEW WHERE CHANGE_TYPE_ID = 4 )',
'UNION',
'(select rpad(''HR MOV EXTENSION OF CONTRACT'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)   as ENTRy_BY,entry_date,translate(approved_by using nchar_cs) as approved_by, approved_date,translate(verified_by using nchar_cs) AS  verified'
||'_by,verified_date from hr_MOV_EMPMOVEMENT_NEW WHERE CHANGE_TYPE_ID = 5 )',
'UNION',
'(select rpad(''HR MOV EXTENSION OF TRAINING'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)   as ENTRy_BY,entry_date,translate(approved_by using nchar_cs) as approved_by, approved_date,translate(verified_by using nchar_cs) AS  verified'
||'_by,verified_date from hr_MOV_EMPMOVEMENT_NEW WHERE CHANGE_TYPE_ID = 6 )',
'UNION',
'(select rpad(''HR MOV PROMOTION'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)   as ENTRy_BY,entry_date,translate(approved_by using nchar_cs) as approved_by, approved_date,translate(verified_by using nchar_cs) AS  verified_by,verified'
||'_date from hr_MOV_EMPMOVEMENT_NEW WHERE CHANGE_TYPE_ID = 7 )',
'UNION',
'(select rpad(''HR MOV RECLASSIFICATION'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)   as ENTRy_BY,entry_date,translate(approved_by using nchar_cs) as approved_by, approved_date,translate(verified_by using nchar_cs) AS  verified_by,v'
||'erified_date from hr_MOV_EMPMOVEMENT_NEW WHERE CHANGE_TYPE_ID = 8 )',
'UNION',
'(select rpad(''HR MOV REDESIGNATION'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)   as ENTRy_BY,entry_date,translate(approved_by using nchar_cs) as approved_by, approved_date,translate(verified_by using nchar_cs) AS  verified_by,veri'
||'fied_date from hr_MOV_EMPMOVEMENT_NEW WHERE CHANGE_TYPE_ID = 9 )',
'UNION',
'(select rpad(''HR MOV REINSTATEMENT'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)   as ENTRy_BY,entry_date,translate(approved_by using nchar_cs) as approved_by, approved_date,translate(verified_by using nchar_cs) AS  verified_by,veri'
||'fied_date from hr_MOV_EMPMOVEMENT_NEW WHERE CHANGE_TYPE_ID = 10 )',
'UNION',
'(select rpad(''HR MOV SECONDMENT'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)   as ENTRy_BY,entry_date,translate(approved_by using nchar_cs) as approved_by, approved_date,translate(verified_by using nchar_cs) AS  verified_by,verifie'
||'d_date from hr_MOV_EMPMOVEMENT_NEW WHERE CHANGE_TYPE_ID = 11 )',
'UNION',
'(select rpad(''HR MOV TRANSFER'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)   as ENTRy_BY,entry_date,translate(approved_by using nchar_cs) as approved_by, approved_date,translate(verified_by using nchar_cs) AS  verified_by,verified_'
||'date from hr_MOV_EMPMOVEMENT_NEW WHERE CHANGE_TYPE_ID = 13 )',
'UNION',
'(select rpad(''HR MOV EXTENSION OF CONFIRMATION'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)   as ENTRy_BY,entry_date,translate(approved_by using nchar_cs) as approved_by, approved_date,translate(verified_by using nchar_cs) AS  veri'
||'fied_by,verified_date from hr_MOV_EMPMOVEMENT_NEW WHERE CHANGE_TYPE_ID = 14 )',
'UNION',
'(select rpad(''HR MOV NEW TRAINING'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)   as ENTRy_BY,entry_date,translate(approved_by using nchar_cs) as approved_by, approved_date,translate(verified_by using nchar_cs) AS  verified_by,verif'
||'ied_date from hr_MOV_EMPMOVEMENT_NEW WHERE CHANGE_TYPE_ID = 15 )',
'UNION',
'(select rpad(''HR MOV NEW PENSION COLLECTION'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)   as ENTRy_BY,entry_date,translate(approved_by using nchar_cs) as approved_by, approved_date,translate(verified_by using nchar_cs) AS  verifie'
||'d_by,verified_date from hr_MOV_EMPMOVEMENT_NEW WHERE CHANGE_TYPE_ID = 16 )',
'UNION',
'(select rpad(''HR MOV RESPONSIBILITY'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)   as ENTRy_BY,entry_date,translate(approved_by using nchar_cs) as approved_by, approved_date,translate(verified_by using nchar_cs) AS  verified_by,ver'
||'ified_date from hr_MOV_EMPMOVEMENT_NEW WHERE CHANGE_TYPE_ID = 17 )',
'UNION',
'(select rpad(''HR MOV CONFIRMATION OF PROMOTION'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)   as ENTRy_BY,entry_date,translate(approved_by using nchar_cs) as approved_by, approved_date,translate(verified_by using nchar_cs) AS  veri'
||'fied_by,verified_date from hr_MOV_EMPMOVEMENT_NEW WHERE CHANGE_TYPE_ID = 25 )',
'UNION',
'(select rpad(''HR MOV CHANGE EMPLOYMENT'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)   as ENTRy_BY,entry_date,translate(approved_by using nchar_cs) as approved_by, approved_date,translate(verified_by using nchar_cs) AS  verified_by,'
||'verified_date from hr_MOV_EMPMOVEMENT_NEW WHERE CHANGE_TYPE_ID = 29 )',
'',
' ',
'',
'UNION',
'',
' ',
'',
'(select rpad(''HR MOV SEPARATION'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)   as ENTRy_BY,entry_date,translate(approved_by using nchar_cs) as approved_by , approved_date ,translate(verified_by using nchar_cs) AS  verified_by,verif'
||'ied_date  from hr_MOV_SEPARATIONBENEFIT )',
'',
' ',
'',
'UNION',
'',
' ',
'',
'(select rpad(''HR MOV SEPARATION BENEFIT'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)   as ENTRy_BY,entry_date,NULL  as approved_by , NULL AS approved_date ,NULL AS verified_by,NULL AS verified_date  from hr_MOV_SEPARATIONBENEFITdet'
||'ail )',
'',
' ',
'',
'UNION',
'',
' ',
'',
'(select rpad(''HR DISCIPLINE'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)   as ENTRy_BY,entry_date,translate(approved_by using nchar_cs) as approved_by, approved_date,translate(verified_by using nchar_cs) AS  verified_by,verified_da'
||'te  from hr_GRI_DISCIPLINE )',
'UNION',
'(select rpad(''HR DISCIPLINE EMPLOYEE'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)   as ENTRy_BY,entry_date,NULL AS approved_by, NULL AS approved_date,translate(verified_by using nchar_cs) AS  verified_by,verified_date  from hr_GRI_'
||'DISCIPLINEEMP )',
'UNION',
'(select rpad(''HR GRIEVANCE'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)   as ENTRy_BY,entry_date,translate(approved_by using nchar_cs) as approved_by, approved_date,translate(verified_by using nchar_cs) AS  verified_by,verified_dat'
||'e  from hr_GRI_GRIEVANCE )',
'UNION',
'(select rpad(''HR GRIEVANCE ACTION'',35) AS PRODUCTIVITY_FACET,translate(entered_by using nchar_cs)   as ENTRy_BY,entry_date,NULL AS approved_by, NULL AS approved_date,NULL AS verified_by,NULL AS verified_date  from hr_GRI_GRIEVANCEDTL )',
'',
' ',
'',
') where entry_Date between :P192_ENTRY_DATE_START and :P192_ENTRY_DATE_END'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P192_ENTRY_DATE_START,P192_ENTRY_DATE_END'
,p_plug_required_role=>wwv_flow_imp.id(3806736716975971898)
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Productivity Detail Report'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3758256720650640179)
,p_name=>'rptproductivityreport'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'RSPRINGER'
,p_internal_uid=>34776829007835417
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3758256263220640176)
,p_db_column_name=>'PRODUCTIVITY_FACET'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Productivity Facet'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3758255852047640173)
,p_db_column_name=>'ENTRY_BY'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Entry By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3758255533630640172)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3758255059468640171)
,p_db_column_name=>'APPROVED_BY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Approved By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3758254713794640170)
,p_db_column_name=>'APPROVED_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Approved Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3758254285559640165)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3758254031764640163)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3758252688722629958)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'347809'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PRODUCTIVITY_FACET:ENTRY_BY:ENTRY_DATE:APPROVED_BY:APPROVED_DATE:VERIFIED_BY:VERIFIED_DATE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3758257377547640181)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988176195002489210)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3553023096565849365)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3758257377547640181)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3759285337178832746)
,p_name=>'P192_ENTRY_DATE_END'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3758256799172640179)
,p_item_default=>'current_date'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Entry Date End'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(3759285483248832748)
,p_name=>'P192_ENTRY_DATE_START'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3758256799172640179)
,p_item_default=>'current_date-1'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Entry Date Start'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3758251413800585295)
,p_name=>'refresh1'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P192_ENTRY_DATE_START'
,p_condition_element=>'P192_ENTRY_DATE_START'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3758251311922585294)
,p_event_id=>wwv_flow_imp.id(3758251413800585295)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3758256799172640179)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3758251228844585293)
,p_name=>'refresh2'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P192_ENTRY_DATE_END'
,p_condition_element=>'P192_ENTRY_DATE_END'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3758251103806585292)
,p_event_id=>wwv_flow_imp.id(3758251228844585293)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3758256799172640179)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3758250826254585289)
,p_name=>'set_entry_date_start'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3758250669790585288)
,p_event_id=>wwv_flow_imp.id(3758250826254585289)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P192_ENTRY_DATE_START'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  day_num NUMBER := to_char(current_date, ''d'');',
'  counter NUMBER := 0;',
'BEGIN',
'  if day_num = 2 then ',
'  return current_date;',
'',
'  elsif day_num = 1 then',
'  return current_date+1;',
'  ',
'  end if;',
'  WHILE day_num != 2',
'  LOOP',
'    day_num := day_num - 1;',
'    counter := counter + 1;',
'  END LOOP;',
'  return current_date - counter;',
'END;'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
