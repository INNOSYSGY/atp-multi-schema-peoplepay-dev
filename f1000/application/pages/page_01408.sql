prompt --application/pages/page_01408
begin
--   Manifest
--     PAGE: 01408
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
 p_id=>1408
,p_name=>'rptMedicalHistory'
,p_step_title=>'Listing of Employee Medical Plan'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3825577120160144609)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3798430864785080580)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(694750988528089970)
,p_plug_name=>'Listing of Employees Not on Health Plan'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select e.id, i.first_name ||'', ''|| i.surname || '' '' || i.middle_name full_name, e.emp_company_no employee_no, initcap(e.employment_status) employment_status, initcap(e.payment_type)',
'       payment_type, case when confirmed = 1 then ''Yes'' else ''No'' end confirmed, initcap(e.employment_class) employment_class, e.position_name,',
'       org_structure, employment_type_id',
'from hr_rcm_employee e',
'join hr_rcm_individual i on i.id = e.ind_id',
'where (date_separated is null or date_separated >= sysdate)',
'and e.verified_by is not null',
'--and confirmed = 0',
'and org_id =:APP_ORG_ID',
'and employment_status = ''ACTIVE''',
'and not exists(select 1',
'                 from HR_MED_MEDICALHISTORY m',
'                 where m.emp_id = e.id',
'                 and CATEGORY_ID is null',
'              )',
'and exists ( ',
'              select 1',
'              FROM VW_USERACCESS A ',
'              where e.org_id= a.org_id',
'              and e.employment_class_id= a.employment_class_id',
'              and upper(e.payment_type)= Upper(a.payment_type)         ',
'              )'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':G_PARSING_SCHEMA = ''GAFOORS'''
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
 p_id=>wwv_flow_imp.id(694751050864089971)
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
,p_detail_link=>'f?p=&APP_ID.:1409:&SESSION.::&DEBUG.::P1409_ID,P1409_RETURN_VALUE:#ID#,1408'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'APPS'
,p_internal_uid=>284171854071707406
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(694751149348089972)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(694753783527089998)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>20
,p_column_identifier=>'AA'
,p_column_label=>'Full Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(694753876091089999)
,p_db_column_name=>'EMPLOYEE_NO'
,p_display_order=>30
,p_column_identifier=>'AB'
,p_column_label=>'Employee No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(694753928462090000)
,p_db_column_name=>'EMPLOYMENT_STATUS'
,p_display_order=>40
,p_column_identifier=>'AC'
,p_column_label=>'Employment Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(694754086066090001)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>50
,p_column_identifier=>'AD'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(694754181153090002)
,p_db_column_name=>'CONFIRMED'
,p_display_order=>60
,p_column_identifier=>'AE'
,p_column_label=>'Confirmed'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(694754254129090003)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>70
,p_column_identifier=>'AF'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(694754323985090004)
,p_db_column_name=>'POSITION_NAME'
,p_display_order=>80
,p_column_identifier=>'AG'
,p_column_label=>'Position Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(694754403484090005)
,p_db_column_name=>'ORG_STRUCTURE'
,p_display_order=>90
,p_column_identifier=>'AH'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(694754540063090006)
,p_db_column_name=>'EMPLOYMENT_TYPE_ID'
,p_display_order=>100
,p_column_identifier=>'AI'
,p_column_label=>'Employment Type'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3226651844341960061)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(694785273805010210)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2842061'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'FULL_NAME:EMPLOYEE_NO:EMPLOYMENT_STATUS:PAYMENT_TYPE:CONFIRMED:EMPLOYMENT_CLASS:POSITION_NAME:ORG_STRUCTURE:EMPLOYMENT_TYPE_ID:'
,p_break_on=>'ORG_STRUCTURE'
,p_break_enabled_on=>'ORG_STRUCTURE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(694754671184090007)
,p_plug_name=>'rs'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>9
,p_location=>null
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'USER')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3729679177058196440)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3796680056439102693)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3737891152966034804)
,p_plug_name=>'Employee Medical Plan'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
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
 p_id=>wwv_flow_imp.id(3737890963424034804)
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
,p_detail_link_auth_scheme=>wwv_flow_imp.id(3786032921827759264)
,p_owner=>'PUR_INV'
,p_internal_uid=>136632131404710696
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3828874807445412021)
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
 p_id=>wwv_flow_imp.id(3828874451909412019)
,p_db_column_name=>'EMP_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3831315173993580301)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3828874025518412018)
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
 p_id=>wwv_flow_imp.id(3828873643008412017)
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
 p_id=>wwv_flow_imp.id(3828873228619412017)
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
 p_id=>wwv_flow_imp.id(3828872894090412016)
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
 p_id=>wwv_flow_imp.id(3828872416994412016)
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
 p_id=>wwv_flow_imp.id(3828872027625412015)
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
 p_id=>wwv_flow_imp.id(3828871647640412015)
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
 p_id=>wwv_flow_imp.id(3828871242258412014)
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
 p_id=>wwv_flow_imp.id(3828870882820412009)
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
 p_id=>wwv_flow_imp.id(3828870420716412006)
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
 p_id=>wwv_flow_imp.id(3828870082594412006)
,p_db_column_name=>'CATEGORY_ID'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Insurance Category'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'CATEGORY_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3854226893461239136)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3828869600595412005)
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
 p_id=>wwv_flow_imp.id(3828869204214412005)
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
 p_id=>wwv_flow_imp.id(3828868908987412004)
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
 p_id=>wwv_flow_imp.id(3828868563196412004)
,p_db_column_name=>'HEALTH_PLAN_ID'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Health Plan No.'
,p_column_type=>'STRING'
,p_static_id=>'HEALTH_PLAN_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3828868142464412003)
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
 p_id=>wwv_flow_imp.id(3828867785820412003)
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
 p_id=>wwv_flow_imp.id(3828867374152412002)
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
 p_id=>wwv_flow_imp.id(3828866903084412002)
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
 p_id=>wwv_flow_imp.id(3828866507132412002)
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
 p_id=>wwv_flow_imp.id(3828866108891412001)
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
 p_id=>wwv_flow_imp.id(3810581507572547464)
,p_db_column_name=>'MEDICAL_TYPE'
,p_display_order=>38
,p_column_identifier=>'AC'
,p_column_label=>'Medical type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3847251004446523744)
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
 p_id=>wwv_flow_imp.id(3854551653861782893)
,p_db_column_name=>'EMP_KEY'
,p_display_order=>58
,p_column_identifier=>'AE'
,p_column_label=>'Emp Key'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3693986439218801184)
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
 p_id=>wwv_flow_imp.id(3693986095993801179)
,p_report_id=>wwv_flow_imp.id(3693986439218801184)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'CATEGORY_ID'
,p_operator=>'is not null'
,p_condition_sql=>'"CATEGORY_ID" is not null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3703737876203780290)
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
 p_id=>wwv_flow_imp.id(3703737523882780288)
,p_report_id=>wwv_flow_imp.id(3703737876203780290)
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
 p_id=>wwv_flow_imp.id(3703739087118785281)
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
 p_id=>wwv_flow_imp.id(3703738674092785277)
,p_report_id=>wwv_flow_imp.id(3703739087118785281)
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
 p_id=>wwv_flow_imp.id(3737888258009034512)
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
 p_id=>wwv_flow_imp.id(3792953054395713946)
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
 p_id=>wwv_flow_imp.id(3792951814031712829)
,p_report_id=>wwv_flow_imp.id(3792953054395713946)
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
 p_id=>wwv_flow_imp.id(3810584277473547491)
,p_plug_name=>'Employee Medical Plan Reporting To &APP_USER.'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
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
 p_id=>wwv_flow_imp.id(3810583905647547488)
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
,p_detail_link_auth_scheme=>wwv_flow_imp.id(3786032921827759264)
,p_owner=>'CLOUD_PROD_DEV'
,p_internal_uid=>63939189181198012
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810583810714547487)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810583746942547486)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810583631867547485)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810583498403547484)
,p_db_column_name=>'EMP_ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3831315173993580301)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810583486475547483)
,p_db_column_name=>'SMOKER'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Smoker'
,p_column_type=>'NUMBER'
,p_static_id=>'SMOKER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810583368932547482)
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
 p_id=>wwv_flow_imp.id(3810583286918547481)
,p_db_column_name=>'DRINKER'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Drinker'
,p_column_type=>'NUMBER'
,p_static_id=>'DRINKER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810583128089547480)
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
 p_id=>wwv_flow_imp.id(3810583020747547479)
,p_db_column_name=>'DRUG_USER'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Drug User'
,p_column_type=>'NUMBER'
,p_static_id=>'DRUG_USER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810582945023547478)
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
 p_id=>wwv_flow_imp.id(3810582835543547477)
,p_db_column_name=>'MEDICALLY_UNFIT'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Medically Unfit'
,p_column_type=>'NUMBER'
,p_static_id=>'MEDICALLY_UNFIT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810582712388547476)
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
 p_id=>wwv_flow_imp.id(3810582656893547475)
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
 p_id=>wwv_flow_imp.id(3810582518914547474)
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
 p_id=>wwv_flow_imp.id(3810582434133547473)
,p_db_column_name=>'CATEGORY_ID'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Insurance Category'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'CATEGORY_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3854226893461239136)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810582305737547472)
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
 p_id=>wwv_flow_imp.id(3810582225066547471)
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
 p_id=>wwv_flow_imp.id(3810582189937547470)
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
 p_id=>wwv_flow_imp.id(3810582054077547469)
,p_db_column_name=>'HEALTH_PLAN_ID'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Health Plan No.'
,p_column_type=>'STRING'
,p_static_id=>'HEALTH_PLAN_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810581967512547468)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810581823446547467)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_static_id=>'VERIFIED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810581755688547466)
,p_db_column_name=>'KNOWN_AILMENT'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Known Ailment'
,p_column_type=>'STRING'
,p_static_id=>'KNOWN_AILMENT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810581619072547465)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810581491549547463)
,p_db_column_name=>'MEDICAL_TYPE'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Medical type'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3810374981412747316)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'641482'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_ID:CATEGORY_ID:DATE_HEALTHPLAN_EFFECTIVE:DATE_HEALTHPLAN_CLOSE:HEALTH_PLAN_ID:MEDICAL_TYPE:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3810584163604547490)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3810584277473547491)
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
 p_id=>wwv_flow_imp.id(3828864972692411991)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3729679177058196440)
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
 p_id=>wwv_flow_imp.id(3803530719876945080)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3729679177058196440)
,p_button_name=>'NIS_CALENDAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Medical Calendar'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:10004:&SESSION.::&DEBUG.:RP::'
,p_security_scheme=>wwv_flow_imp.id(3807018089076118135)
);
wwv_flow_imp.component_end;
end;
/
