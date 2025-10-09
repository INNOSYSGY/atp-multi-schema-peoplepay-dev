prompt --application/pages/page_01413
begin
--   Manifest
--     PAGE: 01413
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
 p_id=>1413
,p_name=>'rptMedicalsManagement'
,p_step_title=>'Medical History'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3825717881667572244)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3807158850583545770)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3666342787330612407)
,p_plug_name=>'Listing of Employee Medical History'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>21
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   r.id, r.medical_type, r.hospital_code,r.date_of_occurance, r.date_examined, r.doctor_id, r.days_given, x.emp_id,SIGNS_SYMPTOMS,',
'(SELECT distinct ''Emp No: ''||EMP_COMPANY_NO_hist||''- ''|| INITCAP(LEAVE_TYPE) || '': ''|| ''( ''|| CAST(FROMDATE AS VARCHAR(12)) || '' -- '' || CAST(TODATE AS VARCHAR(12))|| '')'' AS EXPR1',
'FROM hr_lv_LeaveHistory a',
'where id =r.leave_id)  leave_id, ',
'    r.verified_by,',
'    r.verified_date,',
'    r.last_changed_by,',
'    r.last_changed_date,',
'    r.ward_no,',
'   r.med_height,',
'    r.med_weight,',
'    r.med_chest,',
'    r.abdomen,',
'    r.cns,',
'    r.eyes,',
'    r.ears,',
'    r.entry_date,',
'    r.entered_by, (select distinct initcap(medical_type ||'' Occurred on ''||date_of_occurance||'', Examined on ''|| DATE_EXAMINED||'', Submitted on ''|| DATE_SUBMITTED ||'' for ''||FINDINGS) value_d',
'                from HR_MED_MEDICALHISTORYDTL A JOIN HR_MED_MEDICALHISTORY B ON B.ID = A.MED_HIS_ID',
'                where a.id =r.parent_field_id ) parent_ref/*,',
'decode(nvl(dbms_lob.getlength(z.PHOTO),0),0,null,',
'       ''<img alt="''||apex_escape.html_attribute(SURNAME)||''" title="''||apex_escape.html_attribute(SURNAME)',
'              ||''" style="border: 4px solid #CCC; -moz-border-radius: 50%; -webkit-border-radius: 50%;" ''',
'              ||''src="''||apex_util.get_blob_file_src(''P1261_LOAD_PHOTO'',z.id)||''" height="75" width="75" />'') detail_img  */',
'FROM "#OWNER#"."HR_MED_MEDICALHISTORY"  x join hr_med_medicalhistorydtl r on x.id = r.med_his_id',
'join HR_RCM_EMPLOYEE v on v.id=x.emp_id',
'join HR_RCM_INDIVIDUAL z on z.id=v.ind_id',
'where exists ( ',
'              select 1',
'              FROM VW_USERACCESS A',
'              where v.org_id = a.org_id',
'              and v.employment_class_id = a.employment_class_id',
'              and upper(v.payment_type) = a.payment_type            ',
'              )',
'and exists(select 1        ',
'             from vw_useraccess_finegrain k',
'             where NVL(k.grade_id, nvl(v.emp_grade_id,1)) = nvl(v.emp_grade_id,1)',
'             and user_name=:APP_USER)  ',
'and exists(select 1',
'          from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT k on ( t.id = k.ORG_STRUCTURE_ID  and nvl(k.user_name,''1'') = decode(k.user_name, null, ''1'', :APP_USER))',
'          where  t.id = v.ORGDTL_ID',
'          and v.ORGDTL_ID=decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, v.ORGDTL_ID, k.org_structure_id)         ',
'          )',
'             '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'pkg_global_fnts.fn_selfReport_to(:APP_ORG_ID)=0'
,p_plug_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3666342597788612407)
,p_name=>'Listing of Medical History'
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
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1418:&SESSION.::&DEBUG.:1418:P1418_ID,P1418_RETURN_VALUE:#ID#,1413'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'PUR_INV'
,p_internal_uid=>444738549465937213
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3694726436344126910)
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
 p_id=>wwv_flow_imp.id(3694722486969126903)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3694722020232126902)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3694720413224126899)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3694719674903126897)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3694719221983126896)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3694718477705126895)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3694717273547126893)
,p_db_column_name=>'MEDICAL_TYPE'
,p_display_order=>38
,p_column_identifier=>'AC'
,p_column_label=>'Medical type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3694640358272684608)
,p_db_column_name=>'HOSPITAL_CODE'
,p_display_order=>58
,p_column_identifier=>'AE'
,p_column_label=>'Hospital Code'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3694587335226465665)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3694640131269684606)
,p_db_column_name=>'DATE_OF_OCCURANCE'
,p_display_order=>78
,p_column_identifier=>'AG'
,p_column_label=>'Date Of Occurance'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3694640093028684605)
,p_db_column_name=>'DATE_EXAMINED'
,p_display_order=>88
,p_column_identifier=>'AH'
,p_column_label=>'Date Examined'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3694639913181684604)
,p_db_column_name=>'DOCTOR_ID'
,p_display_order=>98
,p_column_identifier=>'AI'
,p_column_label=>'Doctor'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854440674497782206)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3694639881036684603)
,p_db_column_name=>'DAYS_GIVEN'
,p_display_order=>108
,p_column_identifier=>'AJ'
,p_column_label=>'Days Given'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3694639725698684602)
,p_db_column_name=>'WARD_NO'
,p_display_order=>118
,p_column_identifier=>'AK'
,p_column_label=>'Ward No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3694639628523684601)
,p_db_column_name=>'MED_HEIGHT'
,p_display_order=>128
,p_column_identifier=>'AL'
,p_column_label=>'Med Height'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3694639551304684600)
,p_db_column_name=>'MED_WEIGHT'
,p_display_order=>138
,p_column_identifier=>'AM'
,p_column_label=>'Med Weight'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3694639490128684599)
,p_db_column_name=>'MED_CHEST'
,p_display_order=>148
,p_column_identifier=>'AN'
,p_column_label=>'Med Chest'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3694639323648684598)
,p_db_column_name=>'ABDOMEN'
,p_display_order=>158
,p_column_identifier=>'AO'
,p_column_label=>'Abdomen'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3694639259955684597)
,p_db_column_name=>'CNS'
,p_display_order=>168
,p_column_identifier=>'AP'
,p_column_label=>'Cns'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3694639112298684596)
,p_db_column_name=>'EYES'
,p_display_order=>178
,p_column_identifier=>'AQ'
,p_column_label=>'Eyes'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3694639087268684595)
,p_db_column_name=>'EARS'
,p_display_order=>188
,p_column_identifier=>'AR'
,p_column_label=>'Ears'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3694638818313684593)
,p_db_column_name=>'EMP_ID'
,p_display_order=>208
,p_column_identifier=>'AT'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3854410394329718013)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3694638742349684592)
,p_db_column_name=>'SIGNS_SYMPTOMS'
,p_display_order=>218
,p_column_identifier=>'AU'
,p_column_label=>'Signs Symptoms'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3694638685204684591)
,p_db_column_name=>'LEAVE_ID'
,p_display_order=>228
,p_column_identifier=>'AV'
,p_column_label=>'Leave Reference'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3694638504384684590)
,p_db_column_name=>'PARENT_REF'
,p_display_order=>238
,p_column_identifier=>'AW'
,p_column_label=>'Parent Ref'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3666339892373612115)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'717130'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EMP_ID:MEDICAL_TYPE:HOSPITAL_CODE:DATE_OF_OCCURANCE:DATE_EXAMINED:DOCTOR_ID:DAYS_GIVEN:SIGNS_SYMPTOMS:PARENT_REF'
,p_break_on=>'EMP_ID:MEDICAL_TYPE:0:0:0:0'
,p_break_enabled_on=>'EMP_ID:MEDICAL_TYPE:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3721404688760291549)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Separated'
,p_report_seq=>10
,p_report_alias=>'717122'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>':MEDICAL_TYPE'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3694714883193126888)
,p_report_id=>wwv_flow_imp.id(3721404688760291549)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'EMP_ID'
,p_operator=>'like'
,p_expr=>'%Separated%'
,p_condition_sql=>'"EMP_ID" like #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''%Separated%''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3742176414951334384)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Employment Medicals'
,p_report_seq=>10
,p_report_alias=>'717106'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>':MEDICAL_TYPE'
,p_break_on=>'MEDICAL_TYPE:0:0:0:0:0'
,p_break_enabled_on=>'MEDICAL_TYPE:0:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3694716467538126891)
,p_report_id=>wwv_flow_imp.id(3742176414951334384)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'MEDICAL_TYPE'
,p_operator=>'like'
,p_expr=>'%EMPLOYMENT%'
,p_condition_sql=>'"MEDICAL_TYPE" like #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''%EMPLOYMENT%''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3742177625866339375)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'NIS Medicals'
,p_report_seq=>10
,p_report_alias=>'717114'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>':MEDICAL_TYPE'
,p_break_on=>'MEDICAL_TYPE:0:0:0:0:0'
,p_break_enabled_on=>'MEDICAL_TYPE:0:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3694715599462126889)
,p_report_id=>wwv_flow_imp.id(3742177625866339375)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'MEDICAL_TYPE'
,p_operator=>'like'
,p_expr=>'%NIS%'
,p_condition_sql=>'"MEDICAL_TYPE" like #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''%NIS%''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3694640640540684611)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3796820817946530328)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3739035911838125094)
,p_plug_name=>'Listing of Employee Medical History Reporting To &APP_USER.'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>22
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT r.id, r.medical_type, r.hospital_code,r.date_of_occurance, r.date_examined, r.doctor_id, r.days_given, x.emp_id,SIGNS_SYMPTOMS,',
'(SELECT distinct ''Emp No: ''||EMP_COMPANY_NO_hist||''- ''|| INITCAP(LEAVE_TYPE) || '': ''|| ''( ''|| CAST(FROMDATE AS VARCHAR(12)) || '' -- '' || CAST(TODATE AS VARCHAR(12))|| '')'' AS EXPR1',
'FROM hr_lv_LeaveHistory a',
'where id =r.leave_id)  leave_id, ',
'    r.verified_by,',
'    r.verified_date,',
'    r.last_changed_by,',
'    r.last_changed_date,',
'    r.ward_no,',
'   r.med_height,',
'    r.med_weight,',
'    r.med_chest,',
'    r.abdomen,',
'    r.cns,',
'    r.eyes,',
'    r.ears,',
'    r.entry_date,',
'    r.entered_by, (select initcap(medical_type ||'' Occurred on ''||date_of_occurance||'', Examined on ''|| DATE_EXAMINED||'', Submitted on ''|| DATE_SUBMITTED ||'' for ''||FINDINGS) value_d',
'                from HR_MED_MEDICALHISTORYDTL A JOIN HR_MED_MEDICALHISTORY B ON B.ID = A.MED_HIS_ID',
'                where a.id =r.parent_field_id ) parent_ref,',
'decode(nvl(dbms_lob.getlength(z.PHOTO),0),0,null,',
'       ''<img alt="''||apex_escape.html_attribute(SURNAME)||''" title="''||apex_escape.html_attribute(SURNAME)',
'              ||''" style="border: 4px solid #CCC; -moz-border-radius: 50%; -webkit-border-radius: 50%;" ''',
'              ||''src="''||apex_util.get_blob_file_src(''P1261_LOAD_PHOTO'',z.id)||''" height="75" width="75" />'') detail_img ',
'FROM "#OWNER#"."HR_MED_MEDICALHISTORY"  x join hr_med_medicalhistorydtl r on x.id = r.med_his_id',
'join HR_RCM_EMPLOYEE v on v.id=x.emp_id',
'join HR_RCM_INDIVIDUAL z on z.id=v.ind_id',
'where x.org_id = :APP_ORG_ID',
'and exists ( ',
'			  select 1',
'              FROM VW_USERACCESS A  join VW_SELFREPORT_TO b on a.employee_no=b.employee_no',
'              where v.org_id = a.org_id',
'              and v.employment_class_id = a.employment_class_id',
'              and upper(v.payment_type) =  upper(a.payment_type)',
'              and v.report_to = decode(pkg_global_fnts.fn_selfReport_to(:APP_ORG_ID), 1, b.employee_no, v.id)			',
'              )',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'pkg_global_fnts.fn_selfReport_to(:APP_ORG_ID)=1'
,p_plug_display_when_cond2=>'PLSQL'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
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
 p_id=>wwv_flow_imp.id(3739035540012125091)
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
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1418:&SESSION.::&DEBUG.:1418:P1418_ID,P1418_RETURN_VALUE:#ID#,1413'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'CLOUD_PROD_DEV'
,p_internal_uid=>372045607242424529
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3694737596281126947)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3694736388906126940)
,p_db_column_name=>'EMP_ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3831455935501007936)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3694732732850126937)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3694732326849126936)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3694730738373126935)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3694729958316126934)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3694729512412126934)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_static_id=>'VERIFIED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3694728756070126933)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3694728325800126933)
,p_db_column_name=>'MEDICAL_TYPE'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Medical type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3696288789925486158)
,p_db_column_name=>'DETAIL_IMG'
,p_display_order=>400
,p_column_identifier=>'BE'
,p_column_label=>'Photo'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'PCT_GRAPH:::'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3696288901559486159)
,p_db_column_name=>'HOSPITAL_CODE'
,p_display_order=>410
,p_column_identifier=>'BF'
,p_column_label=>'Hospital'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3694587335226465665)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3696288960674486160)
,p_db_column_name=>'DATE_OF_OCCURANCE'
,p_display_order=>420
,p_column_identifier=>'BG'
,p_column_label=>'Date Of Occurance'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3696289063910486161)
,p_db_column_name=>'DATE_EXAMINED'
,p_display_order=>430
,p_column_identifier=>'BH'
,p_column_label=>'Date Examined'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3696289215594486162)
,p_db_column_name=>'DOCTOR_ID'
,p_display_order=>440
,p_column_identifier=>'BI'
,p_column_label=>'Doctor'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3854440674497782206)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3696289268537486163)
,p_db_column_name=>'DAYS_GIVEN'
,p_display_order=>450
,p_column_identifier=>'BJ'
,p_column_label=>'Days Given'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3696289414320486164)
,p_db_column_name=>'SIGNS_SYMPTOMS'
,p_display_order=>460
,p_column_identifier=>'BK'
,p_column_label=>'Signs Symptoms'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3696289507085486165)
,p_db_column_name=>'LEAVE_ID'
,p_display_order=>470
,p_column_identifier=>'BL'
,p_column_label=>'Leave Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3696289563202486166)
,p_db_column_name=>'WARD_NO'
,p_display_order=>480
,p_column_identifier=>'BM'
,p_column_label=>'Ward No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3696289658546486167)
,p_db_column_name=>'MED_HEIGHT'
,p_display_order=>490
,p_column_identifier=>'BN'
,p_column_label=>'Med Height'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3696289826271486168)
,p_db_column_name=>'MED_WEIGHT'
,p_display_order=>500
,p_column_identifier=>'BO'
,p_column_label=>'Med Weight'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3696289930279486169)
,p_db_column_name=>'MED_CHEST'
,p_display_order=>510
,p_column_identifier=>'BP'
,p_column_label=>'Med Chest'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3696290031173486170)
,p_db_column_name=>'ABDOMEN'
,p_display_order=>520
,p_column_identifier=>'BQ'
,p_column_label=>'Abdomen'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3696290052905486171)
,p_db_column_name=>'CNS'
,p_display_order=>530
,p_column_identifier=>'BR'
,p_column_label=>'Cns'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3696290158818486172)
,p_db_column_name=>'EYES'
,p_display_order=>540
,p_column_identifier=>'BS'
,p_column_label=>'Eyes'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3696290337116486173)
,p_db_column_name=>'EARS'
,p_display_order=>550
,p_column_identifier=>'BT'
,p_column_label=>'Ears'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3696290432302486174)
,p_db_column_name=>'PARENT_REF'
,p_display_order=>560
,p_column_identifier=>'BU'
,p_column_label=>'Parent Ref'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3738826615777324919)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'716995'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_ID:MEDICAL_TYPE:HOSPITAL_CODE:DATE_OF_OCCURANCE:DATE_EXAMINED:DOCTOR_ID:DAYS_GIVEN:SIGNS_SYMPTOMS:WARD_NO:'
,p_break_on=>'EMP_ID:MEDICAL_TYPE:0:0:0:0'
,p_break_enabled_on=>'EMP_ID:MEDICAL_TYPE:0:0:0:0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3694714040153126886)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3694640640540684611)
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
 p_id=>wwv_flow_imp.id(3694713670941126886)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3694640640540684611)
,p_button_name=>'NIS_CALENDAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Medical Calendar'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:10004:&SESSION.::&DEBUG.:RP::'
,p_security_scheme=>wwv_flow_imp.id(3807158850583545770)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3697545430562832863)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3694640640540684611)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1418:&SESSION.::&DEBUG.:RP,1418:P1418_RETURN_VALUE:1413'
,p_security_scheme=>wwv_flow_imp.id(3807160206270545771)
);
wwv_flow_imp.component_end;
end;
/
