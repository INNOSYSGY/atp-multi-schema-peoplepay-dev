prompt --application/shared_components/user_interface/lovs/option_values
begin
--   Manifest
--     OPTION_VALUES
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(879087367498389507)
,p_lov_name=>'OPTION_VALUES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :OPTION_NAME=''EMPLOYEE'' then',
'',
'return',
' ''select initcap(upper(surname||'''', ''''||nvl(first_name,'''''''')||'''':- ''''||emp_company_no))||'''' ''''||initcap(compute_gross_emp) display, b.id return',
'from hr_rcm_individual a join vw_availemployee b on a.id=b.av_IND_ID',
'where (b.date_separated is null or b.date_separated > trunc(current_date))     ',
'and  org_id =:APP_ORG_ID',
'order by 1'';',
'',
'ELSif :OPTION_NAME=''GRADE_SCALE'' then',
'return',
'        ''select grade_description||''''(''''||grade_code||'''') as at ''''||EFFECTIVE_FROMDATE display, id return',
'        from hr_hcf_positiongrade V',
'        where  org_id =:APP_ORG_SHR_DED        ',
'        order by grade_code'';',
'',
'elsif  :OPTION_NAME=''DEPARTMENT'' then',
'',
'return',
'''Select ''''Level: ''''||Unit_Level||'''' ''''||short_name||'''':-''''|| Unit_Name||'''' ''''||value_description display, m.Id return',
'From Hr_Hcf_Orgstructuredtl M Join Hr_Hcf_Lookup N On M.Classification=N.Id',
'join HR_HCF_ORGSTRUCTUREHD v on v.id=m.ORG_STRUCTURE_ID',
'join hr_hcf_organisation w on w.id=v.org_id',
'where V.org_id =:APP_ORG_ID',
'order by 1'';',
'',
'elsif  :OPTION_NAME=''POSITION'' then',
'',
'return',
'''select POSITION_NAME||'''':-''''||Unit_Name||'''''''' display, b.id return',
'from HR_HCF_POSITION b',
'join HR_HCF_ORGSTRUCTUREDTL d on d.id=B.ORGDTL_ID',
'WHERE  exists (select 1',
'              from HR_HCF_JOB g',
'              where g.id = b.job_id',
'              anD org_id =:APP_ORG_SHR_DED ',
'              )',
'order by 1'';',
'',
'elsif  :OPTION_NAME=''WORK_LOCATION'' then',
'',
'return',
'''select distinct LOCATION_DESCRIPTION ||''''(''''||LOCATION_code||'''')'''' display, id return',
'from HR_HCF_WORKLOCATION C ',
'WHERE  org_id =:APP_ORG_ID',
'order by 1'';             ',
'',
'elsif  :OPTION_NAME=''EMPLOYMENT_TYPE'' then',
'return',
'        ''select distinct case when employment_type_id=1 then ''''Temporary''''',
'                     when employment_type_id=2 then ''''Permanent''''',
'                     else ''''Other'''' end display',
'        ,employment_type_id return',
'        from vw_EmpEarn g',
'        where org_id = :APP_ORG_ID'';',
'else ',
'return',
'    ''select ''''Null'''' display, Null return',
'    from dual'';',
'',
'end if;',
''))
,p_source_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_location=>'LOCAL'
,p_return_column_name=>'RETURN'
,p_display_column_name=>'DISPLAY'
,p_default_sort_column_name=>'DISPLAY'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
