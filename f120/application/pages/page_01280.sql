prompt --application/pages/page_01280
begin
--   Manifest
--     PAGE: 01280
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
 p_id=>1280
,p_name=>'rptEmployee'
,p_step_title=>'Employee Search Center'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3825717152573565037)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#R26916693416984313{',
'    padding: 20px 20px;',
'}',
'',
'td[headers ~="IMAGE"] img {',
'  border: 4px solid #CCC; -moz-border-radius: 50%; -webkit-border-radius: 50%;',
'  width: 75px;',
'  height: 75px;',
'} '))
,p_step_template=>2526643373347724467
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'22'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3750555772628778979)
,p_name=>'Search Results'
,p_template=>4072358936313175081
,p_display_sequence=>29
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if pkg_global_fnts.fn_selfReport_to(:APP_ORG_ID)= 0 then',
'return',
'   ''select surname, first_name,v.ID, v.status, v.transaction_type_id,sex_code, v.id Edit,employment_type_id,',
'    EMP_COMPANY_NO,COMPUTE_GROSS,',
'    v.IND_ID, V.IND_ID PK_IND_ID,',
'    REPORT_TO,   to_number(PKG_GLOBAL_FNTS.fn_calcage(nvl(DOB,current_date),current_date )) AGE,',
'    CONFIRMED,',
'    PERMANENT_STAFF,EMPLOYMENT_CLASS_ID,employment_status_id,employee_status_id,',
'    initcap(EMPLOYMENT_STATUS) EMPLOYMENT_STATUS,',
'    initcap(EMPLOYEE_STATUS) EMPLOYEE_STATUS,',
'    initcap(EMPLOYMENT_CLASS) EMPLOYMENT_CLASS,',
'    PAYMENT_TYPE,',
'    DATE_EMPLOYED,',
'    w.SHIRT,',
'    w.SHOE,',
'    w.TROUSERS,',
'    w.CAP_SIZE,',
'    w.WAIST,',
'    DATE_INTERVIEWED,',
'    INTERVIEWED_BY,',
'    REPORT_TO_FUNCTIONAL,',
'    APPOINTMENT_DATE,',
'    CONTRACT_STAFF,',
'    w.BADGE,',
'    DATE_SEPARATED,',
'    REHIRED,',
'    v.PRIMARY_TAX_JOB,',
'    v.ENTERED_BY,',
'    v.ENTRY_DATE,',
'    APPLICATION_DATE,',
'    JOB_APPLIED_FOR,',
'    UNION_CODE,',
'    SEPARATED_STATUS,',
'    PAYROLL_EFFECTIVE,',
'    v.MACHINE_INSERT,',
'    v.MACHINE_UPDATE,',
'    v.LAST_CHANGED_BY,',
'    v.LAST_CHANGED_DATE,Orgdtl_Id,',
'    POSITION_NAME,(select job_id from hr_hcf_position pos where pos.id=v.position_id) job_id,',
'    UNION_CODE_ID,separated_status_id,',
'    position_id, ',
'    wklocation_id,',
'    PKG_GLOBAL_FNTS.fn_calcage(date_employed,trunc(current_date )) yrs_srv,',
'    CASE when INCLUDE_PAYROLL=''''Y'''' then ''''Yes'''' else ''''No'''' end "INCLUDE_PAYROLL"',
'    ,(Select ''''Level: ''''||Unit_Level||'''' ''''|| Unit_Name||'''' ''''||value_description A',
'    from hr_hcf_orgstructuredtl m join hr_hcf_lookup n on m.classification=n.id',
'    join hr_hcf_position c on  m.id=c.orgdtl_id',
'    where c.id =v.position_id) ORG_STRUCTURE,',
'   ''''<img src="''''|| APEX_UTIL.GET_BLOB_FILE_SRC(''''P1261_LOAD_PHOTO'''',w.id) || ''''">'''' IMAGE,',
'    --dbms_lob.getlength(PHOTO)  image, ',
'    EMP_GRADE_ID         ',
'    from HR_RCM_EMPLOYEE V join hr_rcm_individual w on w.id=v.ind_id',
'    WHERE ORG_ID=:APP_ORG_ID',
'    and  exists ( ',
'                  select 1',
'                  FROM VW_USERACCESS A ',
'                  where v.org_id=a.org_id',
'                  and v.employment_class_id=a.employment_class_id',
'                  and upper(v.payment_type)=a.payment_type',
'                 ',
'                  )   ',
'    and exists(select 1        ',
'                 from vw_useraccess_finegrain z',
'                 where NVL(z.grade_id, nvl(v.emp_grade_id,1)) = nvl(v.emp_grade_id,1)',
'                 and user_name=:APP_USER)'';',
'',
'else',
'',
'return',
'    ''select v.ID, v.status, v.transaction_type_id,sex_code, v.id Edit,employment_type_id,',
'    EMP_COMPANY_NO,COMPUTE_GROSS,',
'    v.IND_ID, V.IND_ID PK_IND_ID,',
'    REPORT_TO,   to_number(PKG_GLOBAL_FNTS.fn_calcage(nvl(DOB,current_date ),current_date)) AGE,',
'    CONFIRMED,',
'    PERMANENT_STAFF,EMPLOYMENT_CLASS_ID,employment_status_id,employee_status_id,',
'    initcap(EMPLOYMENT_STATUS) EMPLOYMENT_STATUS,',
'    initcap(EMPLOYEE_STATUS) EMPLOYEE_STATUS,',
'    initcap(EMPLOYMENT_CLASS) EMPLOYMENT_CLASS,',
'    PAYMENT_TYPE,',
'    DATE_EMPLOYED,',
'    w.SHIRT,',
'    w.SHOE,',
'    w.TROUSERS,',
'    w.CAP_SIZE,',
'    w.WAIST,',
'    DATE_INTERVIEWED,',
'    INTERVIEWED_BY,',
'    REPORT_TO_FUNCTIONAL,',
'    APPOINTMENT_DATE,',
'    CONTRACT_STAFF,',
'    w.BADGE,',
'    DATE_SEPARATED,',
'    REHIRED,',
'    v.PRIMARY_TAX_JOB,',
'    v.ENTERED_BY,',
'    v.ENTRY_DATE,',
'    APPLICATION_DATE,',
'    JOB_APPLIED_FOR,',
'    UNION_CODE,',
'    SEPARATED_STATUS,',
'    PAYROLL_EFFECTIVE,',
'    v.MACHINE_INSERT,',
'    v.MACHINE_UPDATE,',
'    v.LAST_CHANGED_BY,',
'    v.LAST_CHANGED_DATE,Orgdtl_Id,',
'    POSITION_NAME,(select job_id from hr_hcf_position pos where pos.id=v.position_id) job_id,',
'    UNION_CODE_ID,separated_status_id,',
'    position_id, ',
'    wklocation_id,',
'    PKG_GLOBAL_FNTS.fn_calcage(date_employed,trunc(current_date)) yrs_srv,',
'    CASE when INCLUDE_PAYROLL=''''Y'''' then ''''Yes'''' else ''''No'''' end INCLUDE_PAYROLL',
'    ,(Select ''''Level: ''''||Unit_Level||'''' ''''|| Unit_Name||'''' ''''||value_description A',
'    from hr_hcf_orgstructuredtl m join hr_hcf_lookup n on m.classification=n.id',
'    join hr_hcf_position c on  m.id=c.orgdtl_id',
'    where c.id =v.position_id) ORG_STRUCTURE,',
'      ''''<img src="''''|| APEX_UTIL.GET_BLOB_FILE_SRC(''''P1261_LOAD_PHOTO'''',w.id) || ''''">'''' IMAGE',
'     EMP_GRADE_ID         ',
'    from HR_RCM_EMPLOYEE V join hr_rcm_individual w on w.id=v.ind_id',
'    WHERE ORG_ID=:APP_ORG_ID',
'    and  exists(  ',
'                  select 1',
'                  FROM VW_USERACCESS A ',
'                  where v.org_id=a.org_id',
'                  and v.employment_class_id=a.employment_class_id',
'                  and upper(v.payment_type)=a.payment_type',
'                  and v.report_to = a.employee_no ',
'                 union',
'                  select 1',
'                  FROM VW_USERACCESS A ',
'                  where v.org_id=a.org_id',
'                  and v.employment_class_id=a.employment_class_id',
'                  and upper(v.payment_type)=a.payment_type',
'                  and v.id = a.employee_no ',
'                  ',
'              )'';',
'end if;              '))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES'
,p_pagination_display_position=>'TOP_LEFT'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3204109286020292851)
,p_query_column_id=>1
,p_column_alias=>'SURNAME'
,p_column_display_sequence=>68
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3204109311067292852)
,p_query_column_id=>2
,p_column_alias=>'FIRST_NAME'
,p_column_display_sequence=>78
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750712516572488216)
,p_query_column_id=>3
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750712692431488217)
,p_query_column_id=>4
,p_column_alias=>'STATUS'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750712790429488218)
,p_query_column_id=>5
,p_column_alias=>'TRANSACTION_TYPE_ID'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750712851460488219)
,p_query_column_id=>6
,p_column_alias=>'SEX_CODE'
,p_column_display_sequence=>9
,p_column_heading=>'Sex'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750888716137170106)
,p_query_column_id=>7
,p_column_alias=>'EDIT'
,p_column_display_sequence=>4
,p_column_heading=>'Edit'
,p_column_link=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:RP,1281:P1281_ID,P1281_NAVIGATOR,P1281_ID_IND:#EDIT#,1280,#PK_IND_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_disable_sort_column=>'N'
,p_report_column_required_role=>wwv_flow_imp.id(3807159759962545770)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3704186433116764905)
,p_query_column_id=>8
,p_column_alias=>'EMPLOYMENT_TYPE_ID'
,p_column_display_sequence=>55
,p_column_heading=>'Employment Type'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(3730001999198556470)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750712930535488220)
,p_query_column_id=>9
,p_column_alias=>'EMP_COMPANY_NO'
,p_column_display_sequence=>6
,p_column_heading=>'Emp Company No'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750747241278493320)
,p_query_column_id=>10
,p_column_alias=>'COMPUTE_GROSS'
,p_column_display_sequence=>53
,p_column_heading=>'Compute Gross'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(3850535505912657325)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750713056645488221)
,p_query_column_id=>11
,p_column_alias=>'IND_ID'
,p_column_display_sequence=>7
,p_column_heading=>'Employee'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(3854371014107666782)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(552692630558681626)
,p_query_column_id=>12
,p_column_alias=>'PK_IND_ID'
,p_column_display_sequence=>98
,p_column_heading=>'Pk Ind Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750713108208488222)
,p_query_column_id=>13
,p_column_alias=>'REPORT_TO'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3751272859941948810)
,p_query_column_id=>14
,p_column_alias=>'AGE'
,p_column_display_sequence=>8
,p_column_heading=>'Age'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750713296206488223)
,p_query_column_id=>15
,p_column_alias=>'CONFIRMED'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750713382184488224)
,p_query_column_id=>16
,p_column_alias=>'PERMANENT_STAFF'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750713414140488225)
,p_query_column_id=>17
,p_column_alias=>'EMPLOYMENT_CLASS_ID'
,p_column_display_sequence=>13
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750747491573493322)
,p_query_column_id=>18
,p_column_alias=>'EMPLOYMENT_STATUS_ID'
,p_column_display_sequence=>54
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3694277278656663506)
,p_query_column_id=>19
,p_column_alias=>'EMPLOYEE_STATUS_ID'
,p_column_display_sequence=>57
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750713501915488226)
,p_query_column_id=>20
,p_column_alias=>'EMPLOYMENT_STATUS'
,p_column_display_sequence=>14
,p_column_heading=>'Employment Status'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3695016855380792957)
,p_query_column_id=>21
,p_column_alias=>'EMPLOYEE_STATUS'
,p_column_display_sequence=>58
,p_column_heading=>'Employee Status'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750713605954488227)
,p_query_column_id=>22
,p_column_alias=>'EMPLOYMENT_CLASS'
,p_column_display_sequence=>15
,p_column_heading=>'Employment Class'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750713781642488228)
,p_query_column_id=>23
,p_column_alias=>'PAYMENT_TYPE'
,p_column_display_sequence=>16
,p_column_heading=>'Payment Type'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750713896045488229)
,p_query_column_id=>24
,p_column_alias=>'DATE_EMPLOYED'
,p_column_display_sequence=>17
,p_column_heading=>'Date Employed'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750713915047488230)
,p_query_column_id=>25
,p_column_alias=>'SHIRT'
,p_column_display_sequence=>18
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750714021300488231)
,p_query_column_id=>26
,p_column_alias=>'SHOE'
,p_column_display_sequence=>19
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750714115702488232)
,p_query_column_id=>27
,p_column_alias=>'TROUSERS'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750714281040488233)
,p_query_column_id=>28
,p_column_alias=>'CAP_SIZE'
,p_column_display_sequence=>21
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750714314934488234)
,p_query_column_id=>29
,p_column_alias=>'WAIST'
,p_column_display_sequence=>22
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750714429958488235)
,p_query_column_id=>30
,p_column_alias=>'DATE_INTERVIEWED'
,p_column_display_sequence=>23
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750714524771488236)
,p_query_column_id=>31
,p_column_alias=>'INTERVIEWED_BY'
,p_column_display_sequence=>24
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750714613367488237)
,p_query_column_id=>32
,p_column_alias=>'REPORT_TO_FUNCTIONAL'
,p_column_display_sequence=>25
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750714734020488238)
,p_query_column_id=>33
,p_column_alias=>'APPOINTMENT_DATE'
,p_column_display_sequence=>26
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750714868055488239)
,p_query_column_id=>34
,p_column_alias=>'CONTRACT_STAFF'
,p_column_display_sequence=>27
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750714992101488240)
,p_query_column_id=>35
,p_column_alias=>'BADGE'
,p_column_display_sequence=>28
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750715010153488241)
,p_query_column_id=>36
,p_column_alias=>'DATE_SEPARATED'
,p_column_display_sequence=>29
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750715169011488242)
,p_query_column_id=>37
,p_column_alias=>'REHIRED'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750715229159488243)
,p_query_column_id=>38
,p_column_alias=>'PRIMARY_TAX_JOB'
,p_column_display_sequence=>31
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750715367861488244)
,p_query_column_id=>39
,p_column_alias=>'ENTERED_BY'
,p_column_display_sequence=>32
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750715475306488245)
,p_query_column_id=>40
,p_column_alias=>'ENTRY_DATE'
,p_column_display_sequence=>33
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750715501428488246)
,p_query_column_id=>41
,p_column_alias=>'APPLICATION_DATE'
,p_column_display_sequence=>34
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750715692488488247)
,p_query_column_id=>42
,p_column_alias=>'JOB_APPLIED_FOR'
,p_column_display_sequence=>35
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750715741655488248)
,p_query_column_id=>43
,p_column_alias=>'UNION_CODE'
,p_column_display_sequence=>36
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750745151109493299)
,p_query_column_id=>44
,p_column_alias=>'SEPARATED_STATUS'
,p_column_display_sequence=>37
,p_column_heading=>'Separated Status'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750745283363493300)
,p_query_column_id=>45
,p_column_alias=>'PAYROLL_EFFECTIVE'
,p_column_display_sequence=>38
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750745397692493301)
,p_query_column_id=>46
,p_column_alias=>'MACHINE_INSERT'
,p_column_display_sequence=>39
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750745428375493302)
,p_query_column_id=>47
,p_column_alias=>'MACHINE_UPDATE'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750745540677493303)
,p_query_column_id=>48
,p_column_alias=>'LAST_CHANGED_BY'
,p_column_display_sequence=>41
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750745658871493304)
,p_query_column_id=>49
,p_column_alias=>'LAST_CHANGED_DATE'
,p_column_display_sequence=>42
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750746967864493317)
,p_query_column_id=>50
,p_column_alias=>'ORGDTL_ID'
,p_column_display_sequence=>52
,p_column_heading=>'Organisation Stucture'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(3854315722757558986)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750745745195493305)
,p_query_column_id=>51
,p_column_alias=>'POSITION_NAME'
,p_column_display_sequence=>43
,p_column_heading=>'Position Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3694636561585684570)
,p_query_column_id=>52
,p_column_alias=>'JOB_ID'
,p_column_display_sequence=>56
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750745870050493306)
,p_query_column_id=>53
,p_column_alias=>'UNION_CODE_ID'
,p_column_display_sequence=>44
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750745933200493307)
,p_query_column_id=>54
,p_column_alias=>'SEPARATED_STATUS_ID'
,p_column_display_sequence=>45
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750746076811493308)
,p_query_column_id=>55
,p_column_alias=>'POSITION_ID'
,p_column_display_sequence=>46
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750746193461493309)
,p_query_column_id=>56
,p_column_alias=>'WKLOCATION_ID'
,p_column_display_sequence=>47
,p_column_heading=>'Work Location'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(3838280849401578366)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750746268971493310)
,p_query_column_id=>57
,p_column_alias=>'YRS_SRV'
,p_column_display_sequence=>48
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750746337761493311)
,p_query_column_id=>58
,p_column_alias=>'INCLUDE_PAYROLL'
,p_column_display_sequence=>49
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750746401323493312)
,p_query_column_id=>59
,p_column_alias=>'ORG_STRUCTURE'
,p_column_display_sequence=>50
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2105936378209826554)
,p_query_column_id=>60
,p_column_alias=>'IMAGE'
,p_column_display_sequence=>88
,p_column_heading=>'Image'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_report_column_width=>75
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3750746511861493313)
,p_query_column_id=>61
,p_column_alias=>'EMP_GRADE_ID'
,p_column_display_sequence=>51
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3750555818430778979)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(3750555772628778979)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'batch_facet_search', 'N',
  'show_charts', 'N',
  'show_current_facets', 'Y',
  'show_total_row_count', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3750889293754170111)
,p_plug_name=>'Interactive Search'
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding:margin-left-md:margin-right-md'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23623984784857713950)
,p_plug_name=>'Employee Search Center'
,p_icon_css_classes=>'app-customer-tracker'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  t varchar2(4000) := null;',
'begin',
'',
'  if t is null or t = ''&nbsp;'' or t = ''Preference does not exist'' then',
'     sys.htp.p(''<p>Find, Filter and Organise Employees. </p>'');',
'  else',
'     sys.htp.p(''<p>''||apex_escape.html(t)||''</p>'');',
'  end if;',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'N',
  'attribute_02', 'HTML',
  'attribute_03', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23623985149093713953)
,p_plug_name=>'Search_top'
,p_parent_plug_id=>wwv_flow_imp.id(23623984784857713950)
,p_region_css_classes=>'t-Form--search'
,p_region_template_options=>'#DEFAULT#:#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>170
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3780376962729169521)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3750555772628778979)
,p_button_name=>'FACET_LIST'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Facet List'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1280:&SESSION.::&DEBUG.:1280::'
,p_button_condition=>'1280'
,p_button_condition_type=>'CURRENT_PAGE_NOT_EQUAL_CONDITION'
,p_icon_css_classes=>'fa-list-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3780377096471169523)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3750555772628778979)
,p_button_name=>'FACET_CARDS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Facet Cards'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:150:&SESSION.::&DEBUG.:150::'
,p_button_condition=>'150'
,p_button_condition_type=>'CURRENT_PAGE_NOT_EQUAL_CONDITION'
,p_icon_css_classes=>'fa-layout-nav-right-cards'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3780377051151169522)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3750555772628778979)
,p_button_name=>'INTERACTIVE_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Interactive Report'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.:66::'
,p_button_condition=>'66'
,p_button_condition_type=>'CURRENT_PAGE_NOT_EQUAL_CONDITION'
,p_icon_css_classes=>'fa-clipboard-list'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3751272604580948808)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3750555772628778979)
,p_button_name=>'ADD_EMPLOYEE_2'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Employee'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:RP,&P1280_ENTRY_SCREEN.:P51_RETURN_VALUE:1280'
,p_icon_css_classes=>'fa-table-new'
,p_security_scheme=>wwv_flow_imp.id(3807160206270545771)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3694636662650684571)
,p_name=>'P1280_JOB'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3750555818430778979)
,p_prompt=>'Job'
,p_source=>'JOB_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'JOB_NAME_CUR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPTION, id',
'from hr_hcf_job V',
'where  Trunc(Start_Date) <= Trunc(current_date)',
'and (trunc(end_date) is null or end_date >= trunc(current_date))',
'and verified_by is not null',
'and org_id=:APP_ORG_SHR_DED',
'order by 1'))
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>true
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3694636719277684572)
,p_name=>'P1280_WORK_LOCATION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3750555818430778979)
,p_prompt=>'Work Location'
,p_source=>'WKLOCATION_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'WORK_LOCATION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''-- All --'' a, 99999 id',
'from dual',
'union',
'select distinct initcap(LOCATION_DESCRIPTION) a,id',
'from HR_HCF_WORKLOCATION a',
'where  org_id= :APP_ORG_ID',
'order by 1'))
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>true
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3696290646289486177)
,p_name=>'P1280_REPORT_TO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3750555818430778979)
,p_prompt=>'Report To Admin'
,p_source=>'REPORT_TO'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'EMPLOYEE_ALL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  initcap(Surname || '', '' || nvl(First_Name, '''')) ||'' ''||nvl(Middle_Name,'''') ||''(No.:''||EMP_COMPANY_NO||'')(''||PKG_GLOBAL_FNTS.Get_Lookup_Col(employment_class_id, ''TABLE_VALUE'' )||case when x.verified_by is null then '' Unverified)'' else ',
'        case when DATE_SEPARATED is null then '' Active'' else '' Separated'' end|| '')'' end a,x.ID b',
'        from vw_employee x join hr_rcm_individual z on z.id=x.ind_id',
'        where exists(select 1        ',
'                     from vw_useraccess_finegrain k',
'                     where NVL(k.grade_id, nvl(x.emp_grade_id,1)) = nvl(x.emp_grade_id,1)',
'                     and user_name=:APP_USER)  ',
'        and exists(select 1',
'                from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER))',
'                where  t.id=x.ORGDTL_ID',
'                and X.ORGDTL_ID=decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, X.ORGDTL_ID, w.org_structure_id)         ',
'                  )',
'        and org_id=:APP_ORG_ID             ',
'        order by 1'))
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3696290787489486178)
,p_name=>'P1280_REPORT_TO_TECHNICAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3750555818430778979)
,p_prompt=>'Report To Technical/Functional'
,p_source=>'REPORT_TO_FUNCTIONAL'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'EMPLOYEE_ALL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  initcap(Surname || '', '' || nvl(First_Name, '''')) ||'' ''||nvl(Middle_Name,'''') ||''(No.:''||EMP_COMPANY_NO||'')(''||PKG_GLOBAL_FNTS.Get_Lookup_Col(employment_class_id, ''TABLE_VALUE'' )||case when x.verified_by is null then '' Unverified)'' else ',
'        case when DATE_SEPARATED is null then '' Active'' else '' Separated'' end|| '')'' end a,x.ID b',
'        from vw_employee x join hr_rcm_individual z on z.id=x.ind_id',
'        where exists(select 1        ',
'                     from vw_useraccess_finegrain k',
'                     where NVL(k.grade_id, nvl(x.emp_grade_id,1)) = nvl(x.emp_grade_id,1)',
'                     and user_name=:APP_USER)  ',
'        and exists(select 1',
'                from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER))',
'                where  t.id=x.ORGDTL_ID',
'                and X.ORGDTL_ID=decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, X.ORGDTL_ID, w.org_structure_id)         ',
'                  )',
'        and org_id=:APP_ORG_ID             ',
'        order by 1'))
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3703545236475618481)
,p_name=>'P1280_SEPARATED_STATUS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(3750555818430778979)
,p_prompt=>'Separated Status'
,p_source=>'SEPARATED_STATUS_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'SEPARATED_STATUS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VALUE_DESCRIPTION,ID',
'from table(pkg_global_fnts.get_lookup_value(''TBLSEPARATEDSTATUS'')) a',
'where org_id= :APP_ORG_SHR_DED',
'',
'ORDER BY 1',
''))
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3704186535088764906)
,p_name=>'P1280_EMPLOYMENT_TYPE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3750555818430778979)
,p_prompt=>'Employment Type'
,p_source=>'EMPLOYMENT_TYPE_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Temporary'', 1',
'from dual',
'union',
'SELECT ''Permanent'', 2',
'from dual',
'union',
'SELECT ''Other'', 3',
'from dual',
''))
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3705015805980595685)
,p_name=>'P1280_PAYMENT_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3750555818430778979)
,p_prompt=>'Payment Type'
,p_source=>'PAYMENT_TYPE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3719209685607225368)
,p_name=>'P1280_ENTRY_SCREEN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(23623985149093713953)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(sum(case when emP_hist_change=0 then 1281 else 51 end ),1281) output',
'from hr_hcf_org_rule',
'where org_id = :APP_ORG_ID',
'and start_date < trunc(current_date)',
'and (end_date > trunc(current_date) or end_date is null)'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3727240689411916313)
,p_name=>'P1280_EMPLOYMENTCLASS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3750555818430778979)
,p_prompt=>'Employment Class'
,p_source=>'EMPLOYMENT_CLASS_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'EMPLOYMENT_CLASS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.value_description a, a.id b',
'from  hr_hcf_lookup a ',
'where table_name=''TBLEMPLOYMENTCLASS''',
'and a.org_id = :APP_ORG_SHR_DED',
'and trunc(start_period) <= trunc(current_date)   ',
'and (trunc(end_period) is null or trunc(end_period) >= trunc(current_date))',
'and exists (select 1',
'           from tbluserdetail X',
'           where a.id = X.EMPLOYMENT_CLASS_ID          ',
'           AND org_id =:APP_ORG_ID',
'           and APPLICATION_SCHEMA_NAME = :G_PARSING_SCHEMA',
'           )',
'union',
'select VALUE_DESCRIPTION, ID',
'from hr_hcf_lookup x',
'where upper(table_name) = ''TBLEMPLOYMENTCLASS''',
'and  upper(table_value)= ''MULTIOPTPAYROLL''',
'and trunc(start_period) <= trunc(current_date)   ',
'and (trunc(end_period) is null or trunc(end_period) >= trunc(current_date))',
'and org_id = :APP_ORG_SHR_DED',
'and pkg_global_fnts.get_payroll_option(:APP_ORG_SHR_DED)=''DETAIL''',
''))
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>10
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3727240860340916315)
,p_name=>'P1280_SEX'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3750555818430778979)
,p_prompt=>'Sex'
,p_source=>'SEX_CODE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'SEX CODE'
,p_lov=>'.'||wwv_flow_imp.id(3854218527603438461)||'.'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'hide_radio_buttons', 'Y')).to_clob
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3730100032516465214)
,p_name=>'P1280_EMP_GOTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(23623985149093713953)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select decode(:EMP_HIST_FLAG,0,51, 51)',
'from dual'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3750556321479778982)
,p_name=>'P1280_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3750555818430778979)
,p_prompt=>'Search'
,p_source=>'SURNAME,FIRST_NAME,STATUS,EMP_COMPANY_NO,EMPLOYMENT_STATUS,EMPLOYMENT_CLASS,PAYMENT_TYPE,SHIRT,SHOE,TROUSERS,CAP_SIZE,WAIST,ENTERED_BY,JOB_APPLIED_FOR,UNION_CODE,SEPARATED_STATUS,MACHINE_INSERT,MACHINE_UPDATE,LAST_CHANGED_BY,POSITION_NAME,INCLUDE_PAY'
||'ROLL,ORG_STRUCTURE,DETAIL_IMG,PAYMENT_TYPE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'input_field', 'FACET',
  'search_type', 'ROW')).to_clob
,p_fc_filter_values=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3750746696482493314)
,p_name=>'P1280_POSITION_NAME'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3750555818430778979)
,p_prompt=>'Position Name'
,p_source=>'POSITION_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select POSITION_NAME||'':-''||initcap(unit_name)||''; Grade ''||e.grade_code||',
'(select ''(''||point||'')'' a',
'from HR_HCF_POSITIONGRADEPOINT',
'where id=b.GRADE_POINT_ID) a, b.id b',
'from HR_HCF_POSITION b join HR_HCF_ORGSTRUCTUREDTL d on d.id=B.ORGDTL_ID',
'join hr_hcf_positiongrade e on e.id=GRADE_ID',
'WHERE exists(select 1',
'            from hr_hcf_orgstructurehd x',
'            where x.id = d.org_structure_id',
'            and x.org_id=:APP_ORG_ID',
'            )       ',
'AND  exists ( ',
'              select 1',
'              FROM hr_rcm_employee Z ',
'              where e.id=z.emp_grade_id                     ',
'              )',
'order by 1              '))
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>10
,p_fc_filter_values=>true
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3750746791564493315)
,p_name=>'P1280_EMPLOYEE_GRADE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3750555818430778979)
,p_prompt=>'Employee Grade'
,p_source=>'EMP_GRADE_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select grade_description||''(''||grade_code||'') as at ''||EFFECTIVE_FROMDATE a, id',
'from hr_hcf_positiongrade V',
'where trunc(EFFECTIVE_FROMDATE) <= trunc(current_date)',
'and (trunc(EFFECTIVE_TODATE) is null or EFFECTIVE_TODATE >= trunc(current_date))',
'and verified_by is not null',
'and org_id =:APP_ORG_SHR_DED',
'AND  exists ( ',
'              select 1',
'              FROM hr_rcm_employee A ',
'              where v.id=a.emp_grade_id                     ',
'              )',
'order by 1'))
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>true
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3750746856599493316)
,p_name=>'P1280_ORGANISATION_STRUCTURE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3750555818430778979)
,p_prompt=>'Organisation Structure'
,p_source=>'ORGDTL_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ''Level: ''||Unit_Level||'' ''|| Unit_Name||'' ''||value_description A, m.Id',
'From Hr_Hcf_Orgstructuredtl M Join Hr_Hcf_Lookup N On M.Classification=N.Id',
'Where Trunc(M.Start_Date) <= Trunc(current_date)',
'and (trunc(m.end_date) is null or m.end_date >= trunc(current_date))',
'and exists(select 1',
'           from hr_rcm_employee y',
'           where y.orgdtl_id = m.id)',
'order by 1'))
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>true
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3750747044514493318)
,p_name=>'P1280_TRADE_UNION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(3750555818430778979)
,p_prompt=>'Trade Union'
,p_source=>'UNION_CODE_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select organisation_name,x.id',
'from PA_PCF_DEDUCTIONCODE w join vw_organisationCUR x on w.ENTITY_ABBREVIATION=x.id',
'where organisation_type=''REMITTANCE''',
'and UNION_DEDUCTION=1',
'and exists(select 1',
'           from hr_rcm_employee y',
'           where y.union_code_id = x.id)',
'order by 1'))
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3750747173302493319)
,p_name=>'P1280_COMPUTE_GROSS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(3750555818430778979)
,p_prompt=>'Compute Gross'
,p_source=>'COMPUTE_GROSS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct Initcap(replace(compute_gross,''_'','' '')) a, compute_gross',
'from hr_rcm_employee'))
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3750747374619493321)
,p_name=>'P1280_EMPLOYMENT_STATUS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3750555818430778979)
,p_prompt=>'Employment Status'
,p_source=>'EMPLOYMENT_STATUS_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VALUE_DESCRIPTION,ID',
'from table(pkg_global_fnts.get_lookup_value(''TBLEMPLOYMENTSTATUS'')) a',
'where exists (select 1',
'              from hr_rcm_employee b',
'              where b.employment_status_id=a.id)'))
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3751241803441994371)
,p_name=>'P1280_EMPLOYMENTCLASS_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3750889293754170111)
,p_item_default=>'0'
,p_prompt=>'Employment Class'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VALUE_DESCRIPTION A, ID B',
'from table(pkg_global_fnts.get_lookup_value(''TBLEMPLOYMENTCLASS'')) X',
'WHERE EXISTS(SELECT 1',
'             FROM HR_RCM_EMPLOYEE W',
'            WHERE X.ID=W.EMPLOYMENT_CLASS_ID)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select a Class-'
,p_cHeight=>1
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3751242215605994372)
,p_name=>'P1280_SEX_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3750889293754170111)
,p_prompt=>'Sex'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'SEX CODE'
,p_lov=>'.'||wwv_flow_imp.id(3854218527603438461)||'.'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3751242651530994373)
,p_name=>'P1280_POSITION_NAME_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3750889293754170111)
,p_prompt=>'Position Name'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select POSITION_NAME||'':-''||initcap(unit_name)||''; Grade ''||e.grade_code||',
'(select ''(''||point||'')'' a',
'from HR_HCF_POSITIONGRADEPOINT',
'where id=b.GRADE_POINT_ID) a, b.id b',
'from HR_HCF_POSITION b join HR_HCF_ORGSTRUCTUREDTL d on d.id=B.ORGDTL_ID',
'join hr_hcf_positiongrade e on e.id=GRADE_ID',
'WHERE exists(select 1',
'            from hr_hcf_orgstructurehd x',
'            where x.id = d.org_structure_id',
'            and x.org_id=:APP_ORG_ID',
'            )       ',
'AND  exists ( ',
'              select 1',
'              FROM hr_rcm_employee Z ',
'              where e.id=z.emp_grade_id                     ',
'              )',
'order by 1              '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All--'
,p_cSize=>30
,p_field_template=>3031561666792084173
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3751243079411994374)
,p_name=>'P1280_EMPLOYEE_GRADE_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3750889293754170111)
,p_item_default=>'0'
,p_prompt=>'Employee Grade'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select grade_description||''(''||grade_code||'') as at ''||EFFECTIVE_FROMDATE a, id',
'from hr_hcf_positiongrade V',
'where trunc(EFFECTIVE_FROMDATE) <= trunc(current_date)',
'and (trunc(EFFECTIVE_TODATE) is null or EFFECTIVE_TODATE >= trunc(current_date))',
'and verified_by is not null',
'and org_id =:APP_ORG_SHR_DED',
'AND  exists ( ',
'              select 1',
'              FROM hr_rcm_employee A ',
'              where v.id=a.emp_grade_id                     ',
'              )',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All--'
,p_cHeight=>1
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3751243488427994376)
,p_name=>'P1280_ORGANISATION_STRUCTURE_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3750889293754170111)
,p_prompt=>'Organisation Structure'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ''Level: ''||Unit_Level||'' ''|| Unit_Name||'' ''||value_description A, m.Id',
'From Hr_Hcf_Orgstructuredtl M Join Hr_Hcf_Lookup N On M.Classification=N.Id',
'Where Trunc(M.Start_Date) <= Trunc(current_date)',
'and (trunc(m.end_date) is null or m.end_date >= trunc(current_date))',
'and org_id =:APP_ORG_ID',
'and exists(select 1',
'           from hr_rcm_employee y',
'           where y.orgdtl_id = m.id)',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All--'
,p_cSize=>30
,p_field_template=>3031561666792084173
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3751243865308994377)
,p_name=>'P1280_TRADE_UNION_1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3750889293754170111)
,p_prompt=>'Trade Union'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select organisation_name,x.id',
'from PA_PCF_DEDUCTIONCODE w join vw_organisationCUR x on w.ENTITY_ABBREVIATION=x.id',
'where organisation_type=''REMITTANCE''',
'and UNION_DEDUCTION=1',
'and org_id =:APP_ORG_ID',
'and exists(select 1',
'           from hr_rcm_employee y',
'           where y.union_code_id = x.id)',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All--'
,p_cHeight=>1
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3751244212276994379)
,p_name=>'P1280_COMPUTE_GROSS_1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3750889293754170111)
,p_item_default=>'BASIC_PAY'
,p_prompt=>'Compute Gross'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct Initcap(replace(compute_gross,''_'','' '')) a, compute_gross',
'from hr_rcm_employee',
'WHERE org_id =:APP_ORG_ID'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3751245152961994381)
,p_name=>'P1280_EMPLOYMENT_STATUS_1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3750889293754170111)
,p_prompt=>'Employment Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VALUE_DESCRIPTION,ID',
'from table(pkg_global_fnts.get_lookup_value(''TBLEMPLOYMENTSTATUS'')) a',
'where org_id =:APP_ORG_ID',
'AND exists (select 1',
'              from hr_rcm_employee b',
'              where b.employment_status_id=a.id)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All--'
,p_cHeight=>1
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3751272996123948811)
,p_name=>'P1280_AGE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3750555818430778979)
,p_prompt=>'Age'
,p_source=>'AGE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_lov=>'STATIC2:<=21;|21,22 - 30;22|30,31 - 40;31|40,41 - 50;41|50,51 - 55;51|55,>=56;56|'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'manual_entry', 'Y',
  'select_multiple', 'Y')).to_clob
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>100
,p_fc_filter_values=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp.component_end;
end;
/
