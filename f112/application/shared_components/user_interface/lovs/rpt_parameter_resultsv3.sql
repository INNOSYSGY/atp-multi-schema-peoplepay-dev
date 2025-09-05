prompt --application/shared_components/user_interface/lovs/rpt_parameter_resultsv3
begin
--   Manifest
--     RPT_PARAMETER_RESULTSV3
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3185648739794046621)
,p_lov_name=>'RPT_PARAMETER_RESULTSV3'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P89_SEARCH_OPTION=''EMPLOYMENT_CLASS'' then',
'',
'return',
' ''select distinct initcap(pkg_global_fnts.get_lookup_col(employment_class_id, ''''VALUE_DESCRIPTION''''))  display, employment_class_id return',
'    from tbluser a join tbluserdetail b on a.user_id=b.user_id',
'    Where User_Name=:APP_USER',
'    and org_id =:APP_ORG_ID',
'    and b.effective_from <= trunc(current_date)',
'    and (b.effective_to is null or b.effective_to > trunc(current_date))',
'    order by 1'';',
'',
'elsif :P89_SEARCH_OPTION=''JOB'' then',
'return',
' ''select description display, ID return',
'  from hr_hcf_job',
'  where  start_date <= trunc(current_date)',
'  and org_id =:APP_ORG_SHR_DED',
'  and (end_date is null or end_date > trunc(current_date))'';',
'',
'',
'elsif :P89_SEARCH_OPTION=''ORG_STRUCTURE'' then',
'return',
' ''Select ''''Level: ''''||Unit_Level||'''' ''''|| Unit_Name||'''' ''''||value_description display, m.id return',
'    from hr_hcf_orgstructuredtl m join hr_hcf_lookup n on m.classification=n.id',
'    where  m.start_date <= trunc(current_date)',
'    and org_id =:APP_ORG_SHR_DED',
'    and ( m.end_date is null or  m.end_date > trunc(current_date))'';',
'',
'elsif :P89_SEARCH_OPTION=''COMPUTE_GROSS'' then',
'return',
' ''select distinct initcap(compute_gross) display, compute_gross return',
'    from hr_rcm_employee',
'    where org_id=:APP_ORG_ID'';',
'',
'',
'elsif :P89_SEARCH_OPTION=''EMPLOYEE'' then',
'',
'return',
' ''select EMPLOYEE display, ID return',
'  FROM VW_AVAILEMPLOYEE A',
'  WHERE EXISTS(SELECT 1',
'              FROM VW_USERACCESS B',
'              WHERE B.payment_type =A.payment_type',
'              AND B.employment_class_id = A.employment_class_id',
'              AND B.org_id = A.org_id)',
'  AND A.ORG_ID = :APP_ORG_ID'';',
'',
'elsif  :P89_SEARCH_OPTION=''UNION'' then',
'return',
'    ''select organisation_name display, x.id return',
'    from PA_PCF_DEDUCTIONCODE w join vw_organisationCUR x on w.ENTITY_ABBREVIATION=x.id',
'    where organisation_type=''''REMITTANCE''''',
'    and UNION_DEDUCTION=1',
'    AND ORG_ID = :APP_ORG_SHR_DED',
'    order by  1'';    ',
'    ',
'elsif  :P89_SEARCH_OPTION=''POSITION'' then',
'',
'return',
'    ''select POSITION_NAME||'''':-''''||Unit_Name||'''''''' display, b.id return',
'    from HR_HCF_POSITION b join HR_HCF_ORGSTRUCTUREDTL d on d.id=B.ORGDTL_ID',
'    WHERE exists (select 1',
'                  from HR_HCF_ORGSTRUCTUREHD X',
'                  WHERE X.ID = D.ORG_STRUCTURE_ID',
'                  AND ORG_ID = :APP_ORG_ID',
'                  )',
'    and  B.start_date <= trunc(current_date)',
'    and ( B.end_date is null or B.end_date > trunc(current_date))',
'    order by 1'';',
'',
'ELSif :P89_SEARCH_OPTION=''GRADE_SCALE'' then',
'return',
'        ''select grade_description||''''(''''||grade_code||'''') as at ''''||EFFECTIVE_FROMDATE display, id return',
'        from hr_hcf_positiongrade V',
'        where  org_id =:APP_ORG_SHR_DED',
'        and  v.Effective_fromdate <= trunc(current_date)',
'        and ( v.Effective_Todate is null or v.Effective_Todate > trunc(current_date))',
'        order by grade_code'';',
'        ',
'elsif  :P89_SEARCH_OPTION=''WORK_LOCATION'' then',
'',
'return',
'    ''select distinct LOCATION_DESCRIPTION ||''''(''''||LOCATION_code||'''')'''' display, id return',
'    from HR_HCF_WORKLOCATION w',
'    WHERE   org_id =:APP_ORG_ID',
'    and  w.start_date <= trunc(current_date)',
'    and ( w.end_date is null or w.end_date > trunc(current_date))'';',
'',
'elsif  :P89_SEARCH_OPTION=''EMPLOYMENT_TYPE'' then',
'return',
'        ''select distinct case when employment_type_id=1 then ''''Temporary''''',
'                     when employment_type_id=2 then ''''Permanent''''',
'                     else ''''Other'''' end display',
'        ,employment_type_id return',
'        from vw_EmpEarn g'';',
'         ',
'else',
'',
'return',
'    ''select ''''Null'''' display, Null return',
'    from dual'';',
'',
'end if;',
''))
,p_source_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'RETURN'
,p_display_column_name=>'DISPLAY'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
