prompt --application/pages/page_01408
begin
--   Manifest
--     PAGE: 01408
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>1408
,p_name=>'rptMedicalHistory'
,p_step_title=>'Listing of Employee Medical Plan'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3297885332136703809)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3270739076761639780)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3201987389034755640)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3268988268415661893)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3210199364942594004)
,p_plug_name=>'Employee Medical Plan'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT X."ID", ',
'X."EMP_ID", x.emp_id emp_key,',
'UPPER(X."HEALTH_PLAN_ID") "HEALTH_PLAN_ID",',
'(select LISTAGG(medical_type,'', '') WITHIN GROUP (ORDER BY DATE_OF_OCCURANCE) "medical_type"',
' from HR_MED_MEDICALHISTORYDTL y',
' where y.MED_HIS_ID = x.id) medical_type,',
'X."SMOKER",',
'X."DATE_QUIT_SMOKE",',
'X."DRINKER",',
'x."DATE_QUIT_DRINK",',
'X."DRUG_USER",',
'X."DATE_QUIT_DRUG",',
'x."MEDICALLY_UNFIT",',
'X."DATE_MED_UNFIT",',
'X."ENTERED_BY",',
'X."ENTRY_DATE",',
'X."VERIFIED_BY",',
'X."VERIFIED_DATE",',
'X."CATEGORY_ID",',
'X."DATE_HEALTHPLAN_EFFECTIVE",',
'X."KNOWN_AILMENT",',
'X."DATE_HEALTHPLAN_CLOSE",',
'X."LAST_CHANGED_BY",',
'X."LAST_CHANGED_DATE",',
'X."MACHINE_INSERT",',
'X."MACHINE_UPDATE",',
'decode(nvl(dbms_lob.getlength(z.PHOTO),0),0,null,',
'       ''<img alt="''||apex_escape.html_attribute(SURNAME)||''" title="''||apex_escape.html_attribute(SURNAME)',
'              ||''" style="border: 4px solid #CCC; -moz-border-radius: 50%; -webkit-border-radius: 50%;" ''',
'              ||''src="''||apex_util.get_blob_file_src(''P1261_LOAD_PHOTO'',z.id)||''" height="75" width="75" />'') detail_img ',
'FROM "#OWNER#"."HR_MED_MEDICALHISTORY"  x join HR_RCM_EMPLOYEE v on v.id=x.emp_id',
'join HR_RCM_INDIVIDUAL z on z.id=v.ind_id',
'where exists ( ',
'              select 1',
'              FROM VW_USERACCESS A ',
'              where v.org_id=a.org_id',
'              and v.employment_class_id=a.employment_class_id',
'              and upper(v.payment_type)=a.payment_type            ',
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
 p_id=>wwv_flow_imp.id(3210199175400594004)
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
,p_detail_link=>'f?p=&APP_ID.:1409:&SESSION.::&DEBUG.::P1409_ID,P1409_RETURN_VALUE:#ID#,1408'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(3258341133804318464)
,p_owner=>'PUR_INV'
,p_internal_uid=>136632131404710696
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301183019421971221)
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
 p_id=>wwv_flow_imp.id(3301182663885971219)
,p_db_column_name=>'EMP_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3303623385970139501)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301182237494971218)
,p_db_column_name=>'SMOKER'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Smoker'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'SMOKER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301181854984971217)
,p_db_column_name=>'DATE_QUIT_SMOKE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Date Quit Smoke'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_QUIT_SMOKE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301181440595971217)
,p_db_column_name=>'DRINKER'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Drinker'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'DRINKER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301181106066971216)
,p_db_column_name=>'DATE_QUIT_DRINK'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Date Quit Drink'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_QUIT_DRINK'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301180628970971216)
,p_db_column_name=>'DRUG_USER'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Drug User'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'DRUG_USER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301180239601971215)
,p_db_column_name=>'DATE_QUIT_DRUG'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Date Quit Drug'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_QUIT_DRUG'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301179859616971215)
,p_db_column_name=>'MEDICALLY_UNFIT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Medically Unfit'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'MEDICALLY_UNFIT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301179454234971214)
,p_db_column_name=>'DATE_MED_UNFIT'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Date Med Unfit'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_MED_UNFIT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301179094796971209)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301178632692971206)
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
 p_id=>wwv_flow_imp.id(3301178294570971206)
,p_db_column_name=>'CATEGORY_ID'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Insurance Category'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'CATEGORY_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3326535105437798336)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301177812571971205)
,p_db_column_name=>'DATE_HEALTHPLAN_EFFECTIVE'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Health Plan Effective'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_HEALTHPLAN_EFFECTIVE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301177416190971205)
,p_db_column_name=>'DATE_HEALTHPLAN_CLOSE'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Health Plan Close'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_HEALTHPLAN_CLOSE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301177120963971204)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301176775172971204)
,p_db_column_name=>'HEALTH_PLAN_ID'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Health Plan No.'
,p_column_type=>'STRING'
,p_static_id=>'HEALTH_PLAN_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301176354440971203)
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
 p_id=>wwv_flow_imp.id(3301175997796971203)
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
 p_id=>wwv_flow_imp.id(3301175586128971202)
,p_db_column_name=>'KNOWN_AILMENT'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Known Ailment'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'KNOWN_AILMENT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301175115060971202)
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
 p_id=>wwv_flow_imp.id(3301174719108971202)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301174320867971201)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3282889719549106664)
,p_db_column_name=>'MEDICAL_TYPE'
,p_display_order=>38
,p_column_identifier=>'AC'
,p_column_label=>'Medical type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3319559216423082944)
,p_db_column_name=>'DETAIL_IMG'
,p_display_order=>48
,p_column_identifier=>'AD'
,p_column_label=>'Photo'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'PCT_GRAPH:::'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3326859865838342093)
,p_db_column_name=>'EMP_KEY'
,p_display_order=>58
,p_column_identifier=>'AE'
,p_column_label=>'Emp Key'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3166294651195360384)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Employee Health Plans'
,p_report_seq=>10
,p_report_alias=>'723003'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_view_mode=>'REPORT'
,p_report_columns=>'EMP_ID:HEALTH_PLAN_ID:DATE_HEALTHPLAN_EFFECTIVE:CATEGORY_ID:DATE_HEALTHPLAN_CLOSE::MEDICAL_TYPE:DETAIL_IMG'
,p_break_on=>'MEDICAL_TYPE:0:0:0:0:0'
,p_break_enabled_on=>'MEDICAL_TYPE:0:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3166294307970360379)
,p_report_id=>wwv_flow_imp.id(3166294651195360384)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'CATEGORY_ID'
,p_operator=>'is not null'
,p_condition_sql=>'"CATEGORY_ID" is not null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3176046088180339490)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'NIS Medicals'
,p_report_seq=>10
,p_report_alias=>'625489'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_view_mode=>'REPORT'
,p_report_columns=>'EMP_ID:HEALTH_PLAN_ID:DATE_HEALTHPLAN_EFFECTIVE:CATEGORY_ID:DATE_HEALTHPLAN_CLOSE::MEDICAL_TYPE:DETAIL_IMG'
,p_break_on=>'MEDICAL_TYPE:0:0:0:0:0'
,p_break_enabled_on=>'MEDICAL_TYPE:0:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3176045735859339488)
,p_report_id=>wwv_flow_imp.id(3176046088180339490)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'MEDICAL_TYPE'
,p_operator=>'like'
,p_expr=>'%NIS%'
,p_condition_sql=>'"MEDICAL_TYPE" like #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''%NIS%''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3176047299095344481)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Employment Medicals'
,p_report_seq=>10
,p_report_alias=>'625477'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_view_mode=>'REPORT'
,p_report_columns=>'EMP_ID:HEALTH_PLAN_ID:DATE_HEALTHPLAN_EFFECTIVE:CATEGORY_ID:DATE_HEALTHPLAN_CLOSE::MEDICAL_TYPE:DETAIL_IMG'
,p_break_on=>'MEDICAL_TYPE:0:0:0:0:0'
,p_break_enabled_on=>'MEDICAL_TYPE:0:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3176046886069344477)
,p_report_id=>wwv_flow_imp.id(3176047299095344481)
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
 p_id=>wwv_flow_imp.id(3210196469985593712)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'456573'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_view_mode=>'REPORT'
,p_report_columns=>'MEDICAL_TYPE:EMP_ID:HEALTH_PLAN_ID:DATE_HEALTHPLAN_EFFECTIVE:CATEGORY_ID:DATE_HEALTHPLAN_CLOSE:DETAIL_IMG:'
,p_break_on=>'MEDICAL_TYPE:0:0:0:0:0'
,p_break_enabled_on=>'MEDICAL_TYPE:0:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3265261266372273146)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Separated'
,p_report_seq=>10
,p_report_alias=>'815701'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_view_mode=>'REPORT'
,p_report_columns=>'EMP_ID:HEALTH_PLAN_ID:DATE_HEALTHPLAN_EFFECTIVE:CATEGORY_ID:DATE_HEALTHPLAN_CLOSE::MEDICAL_TYPE'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3265260026008272029)
,p_report_id=>wwv_flow_imp.id(3265261266372273146)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'EMP_ID'
,p_operator=>'like'
,p_expr=>'%Separated%'
,p_condition_sql=>'"EMP_ID" like #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''%Separated%''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3282892489450106691)
,p_plug_name=>'Employee Medical Plan Reporting To &APP_USER.'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT X."ID", ',
'X."EMP_ID",',
'UPPER(X."HEALTH_PLAN_ID") "HEALTH_PLAN_ID",',
'trim(get_medical(x.id))  medical_type,',
'X."SMOKER",',
'X."DATE_QUIT_SMOKE",',
'X."DRINKER",',
'x."DATE_QUIT_DRINK",',
'X."DRUG_USER",',
'X."DATE_QUIT_DRUG",',
'x."MEDICALLY_UNFIT",',
'X."DATE_MED_UNFIT",',
'X."ENTERED_BY",',
'X."ENTRY_DATE",',
'X."VERIFIED_BY",',
'X."VERIFIED_DATE",',
'X."CATEGORY_ID",',
'X."DATE_HEALTHPLAN_EFFECTIVE",',
'X."KNOWN_AILMENT",',
'X."DATE_HEALTHPLAN_CLOSE",',
'X."LAST_CHANGED_BY",',
'X."LAST_CHANGED_DATE",',
'X."MACHINE_INSERT",',
'X."MACHINE_UPDATE"',
'FROM "#OWNER#"."HR_MED_MEDICALHISTORY"  x join HR_RCM_EMPLOYEE v on v.id=x.emp_id',
'where exists(',
'              select 1',
'              FROM VW_USERACCESS A  join VW_SELFREPORT_TO b on a.employee_no=b.employee_no',
'              where v.org_id=a.org_id',
'              and v.employment_class_id=a.employment_class_id',
'              and upper(v.payment_type)=a.payment_type',
'              and v.report_to=decode(pkg_global_fnts.fn_selfReport_to(:APP_ORG_ID),1,b.employee_no,v.id)',
'              )',
'union',
'SELECT X."ID", ',
'X."EMP_ID",',
'UPPER(X."HEALTH_PLAN_ID") "HEALTH_PLAN_ID",',
'trim(get_medical(x.id))  medical_type,',
'X."SMOKER",',
'X."DATE_QUIT_SMOKE",',
'X."DRINKER",',
'x."DATE_QUIT_DRINK",',
'X."DRUG_USER",',
'X."DATE_QUIT_DRUG",',
'x."MEDICALLY_UNFIT",',
'X."DATE_MED_UNFIT",',
'X."ENTERED_BY",',
'X."ENTRY_DATE",',
'X."VERIFIED_BY",',
'X."VERIFIED_DATE",',
'X."CATEGORY_ID",',
'X."DATE_HEALTHPLAN_EFFECTIVE",',
'X."KNOWN_AILMENT",',
'X."DATE_HEALTHPLAN_CLOSE",',
'X."LAST_CHANGED_BY",',
'X."LAST_CHANGED_DATE",',
'X."MACHINE_INSERT",',
'X."MACHINE_UPDATE"',
'FROM "#OWNER#"."HR_MED_MEDICALHISTORY"  x join HR_RCM_EMPLOYEE v on v.id=x.emp_id',
'where exists ( ',
'              select 1',
'              FROM VW_USERACCESS A ',
'              where v.org_id=a.org_id',
'              and v.employment_class_id=a.employment_class_id',
'              and upper(v.payment_type)=a.payment_type',
'              and x.emp_id=a.employee_no',
'              )'))
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
 p_id=>wwv_flow_imp.id(3282892117624106688)
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
,p_detail_link=>'f?p=&APP_ID.:1409:&SESSION.::&DEBUG.::P1409_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(3258341133804318464)
,p_owner=>'CLOUD_PROD_DEV'
,p_internal_uid=>63939189181198012
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3282892022691106687)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3282891958919106686)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3282891843844106685)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3282891710380106684)
,p_db_column_name=>'EMP_ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3303623385970139501)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3282891698452106683)
,p_db_column_name=>'SMOKER'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Smoker'
,p_column_type=>'NUMBER'
,p_static_id=>'SMOKER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3282891580909106682)
,p_db_column_name=>'DATE_QUIT_SMOKE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Date Quit Smoke'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_QUIT_SMOKE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3282891498895106681)
,p_db_column_name=>'DRINKER'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Drinker'
,p_column_type=>'NUMBER'
,p_static_id=>'DRINKER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3282891340066106680)
,p_db_column_name=>'DATE_QUIT_DRINK'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Date Quit Drink'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_QUIT_DRINK'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3282891232724106679)
,p_db_column_name=>'DRUG_USER'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Drug User'
,p_column_type=>'NUMBER'
,p_static_id=>'DRUG_USER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3282891157000106678)
,p_db_column_name=>'DATE_QUIT_DRUG'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Date Quit Drug'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_QUIT_DRUG'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3282891047520106677)
,p_db_column_name=>'MEDICALLY_UNFIT'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Medically Unfit'
,p_column_type=>'NUMBER'
,p_static_id=>'MEDICALLY_UNFIT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3282890924365106676)
,p_db_column_name=>'DATE_MED_UNFIT'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Date Med Unfit'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_MED_UNFIT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3282890868870106675)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3282890730891106674)
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
 p_id=>wwv_flow_imp.id(3282890646110106673)
,p_db_column_name=>'CATEGORY_ID'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Insurance Category'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'CATEGORY_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3326535105437798336)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3282890517714106672)
,p_db_column_name=>'DATE_HEALTHPLAN_EFFECTIVE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Health Plan Effective'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_HEALTHPLAN_EFFECTIVE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3282890437043106671)
,p_db_column_name=>'DATE_HEALTHPLAN_CLOSE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Health Plan Close'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_HEALTHPLAN_CLOSE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3282890401914106670)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3282890266054106669)
,p_db_column_name=>'HEALTH_PLAN_ID'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Health Plan No.'
,p_column_type=>'STRING'
,p_static_id=>'HEALTH_PLAN_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3282890179489106668)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3282890035423106667)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_static_id=>'VERIFIED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3282889967665106666)
,p_db_column_name=>'KNOWN_AILMENT'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Known Ailment'
,p_column_type=>'STRING'
,p_static_id=>'KNOWN_AILMENT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3282889831049106665)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3282889703526106663)
,p_db_column_name=>'MEDICAL_TYPE'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Medical type'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3282683193389306516)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'641482'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_ID:CATEGORY_ID:DATE_HEALTHPLAN_EFFECTIVE:DATE_HEALTHPLAN_CLOSE:HEALTH_PLAN_ID:MEDICAL_TYPE:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3282892375581106690)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3282892489450106691)
,p_button_name=>'RETURN_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3301173184668971191)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3201987389034755640)
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
 p_id=>wwv_flow_imp.id(3275838931853504280)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3201987389034755640)
,p_button_name=>'NIS_CALENDAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Medical Calendar'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:10004:&SESSION.::&DEBUG.:RP::'
,p_security_scheme=>wwv_flow_imp.id(3279326301052677335)
);
wwv_flow_imp.component_end;
end;
/
