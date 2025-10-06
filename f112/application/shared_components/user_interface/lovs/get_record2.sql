prompt --application/shared_components/user_interface/lovs/get_record2
begin
--   Manifest
--     GET_RECORD2
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
 p_id=>wwv_flow_imp.id(3326551066121798359)
,p_lov_name=>'GET_RECORD2'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'If :P129_FORM_NAME=''FRMINSURANCECATEGORY'' Then',
'  RETURN',
'      ''select CATEGORY_DESCRIP||''''(''''||CATEGORY_CODE||'''') Start from:''''||start_date INDIVIDUAL ,id',
'        from HR_MED_INSURANCECATGRY',
'        WHERE ORG_ID =:APP_ORG_SHR_DED',
'        order by 1'';',
'',
'elsif :P129_FORM_NAME=''FRMSEPARATION'' then',
'  RETURN',
'      ''SELECT SURNAME||'''', ''''||FIRST_NAME||'''' ''''||INITCAP(PKG_GLOBAL_FNTS.GET_LOOKUP_COL(SEPARATION_TYPE,''''TABLE_VALUE''''))||'''' Effective:''''||A.DATE_SEPARATED INDIVIDUAL, a.id',
'      FROM HR_MOV_SEPARATIONBENEFIT A JOIN HR_RCM_EMPLOYEE B ON A.EMP_ID=B.ID',
'      JOIN HR_RCM_INDIVIDUAL C ON B.IND_ID=C.ID',
'      WHERE A.ORG_ID =:APP_ORG_ID',
'      ORDER BY 1'';',
'',
'elsif :P129_FORM_NAME=''FRMLEAVEMARKUP'' then',
'  RETURN',
'      ''select SURNAME_HIST||'''', ''''||FIRST_NAME_HIST||'''' ''''||value_description||'''' Start Period ''''||COMPANY_START_PERIOD INDIVIDUAL,a.id',
'      from HR_LV_MAKEUPPAYMENT A JOIN HR_RCM_EMPLEAVEENTITLE B ON B.ID=A.EMPENT_ID',
'      JOIN table(pkg_global_fnts.get_lookup_value(''''TBLLEAVETYPE'''')) c on c.id=LEAVE_TYPE_ID',
'      WHERE A.ORG_ID =:APP_ORG_ID',
'      order by 1'';',
'',
'elsif :P129_FORM_NAME=''FRMMOVEMENTMANAGEMENT'' then',
'  RETURN',
'      ''SELECT SURNAME||'''', ''''||FIRST_NAME||'''' ''''||initcap(CHANGE_TYPE)||'''', Status: ''''||nvl(CHANGE_TYPE_SUB,'''''''')||'''' Effective:''''||EFFECTIVE_DATE INDIVIDUAL, a.id',
'      FROM HR_MOV_EMPMOVEMENT_NEW A JOIN HR_RCM_EMPLOYEE B ON A.EMP_ID=B.ID',
'      JOIN HR_RCM_INDIVIDUAL C ON B.IND_ID=C.ID',
'      WHERE A.ORG_ID =:APP_ORG_ID',
'      ORDER BY 1'';',
'',
'elsif :P129_FORM_NAME=''FRMAPPRAISALCONFIG'' then',
'  RETURN',
'      ''select case when supervisor=''''YES'''' then ''''Mgr ''''',
'      else '''''''' end||upper(short_name)||'''' ''''||initcap(trim(c.value_description)||',
'      '''' Range ''''||lower_range||''''--''''||upper_range||'''' EFFECTIVE(''''||to_char(Date_Effective,''''DD-MON-YYYY''''))||'''')''''|| case when add_info is null then '''''''' else ''''--''''||add_info end INDIVIDUAL, a.id',
'      from HR_APP_MERITCONFIG a join HR_HCF_ORGANISATION b on a.org_id=b.id',
'      JOIN TABLE(PKG_GLOBAL_FNTS.GET_LOOKUP_VALUE(''''TBLEMPLOYMENTCLASS'''')) C ON A.EMPLOYMENT_CLASS_ID=C.ID',
'      WHERE A.ORG_ID =:APP_ORG_ID',
'      ORDER BY DATE_EFFECTIVE DESC'';',
'      ',
'',
'elsif :P129_FORM_NAME=''FRMSALARYCANCELLATION'' then',
'  RETURN',
'      ''SELECT SURNAME||'''', ''''||FIRST_NAME||'''' Salary Cancel due to ''''||CANCEL_TYPE||'''' For Period:''''|| INITCAP(PKG_GLOBAL_FNTS.GET_LOOKUP_COL(d.EMPLOYMENT_CLASS_ID,''''TABLE_VALUE''''))',
'           ||'''' ''''||d.PAYMENT_TYPE',
'           || '''': '''' || TO_CHAR(D.START_DATE ,''''DD-Mon-YYYY'''')',
'           || '''' -- '''' || TO_CHAR(d.END_DATE,''''DD-Mon-YYYY'''') INDIVIDUAL, a.id',
'        from PA_PMG_CANCELSALARY a JOIN HR_RCM_EMPLOYEE B ON A.EMP_ID=B.ID',
'        JOIN HR_RCM_INDIVIDUAL C ON B.IND_ID=C.ID ',
'        JOIN PA_PCF_EARNINGPERIOD D ON D.ID=A.EARNINGS_PERIOD_ID',
'        WHERE A.ORG_ID =:APP_ORG_ID'';',
'',
'ELSIF :P129_FORM_NAME=''FRMSEPARATION'' then',
'  return',
'        ''select b.EMPLOYEE||'''' ''''||c.VALUE_DESCRIPTION||'''' on ''''||a.DATE_SEPARATED  INDIVIDUAL, a.id',
'        from HR_MOV_SEPARATIONBENEFIT a join VW_EMPLOYEEALL B on a.EMP_ID=B.id',
'        join table(pkg_global_fnts.get_lookup_value(''''TBLSEPARATEDSTATUS'''')) c on c.id=a.SEPARATION_TYPE',
'        WHERE A.ORG_ID =:APP_ORG_ID',
'        order by 1'';',
'        ',
'else',
' RETURN',
'      ''select ''''Null'''' INDIVIDUAL, NULL ID',
'       from dual'';           ',
'end if;        '))
,p_source_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'ID'
,p_display_column_name=>'INDIVIDUAL'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
