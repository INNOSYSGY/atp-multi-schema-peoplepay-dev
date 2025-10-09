prompt --application/shared_components/user_interface/lovs/get_record
begin
--   Manifest
--     GET_RECORD
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>1000
,p_default_id_offset=>221683928681757931
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3854243031820239169)
,p_lov_name=>'GET_RECORD'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
' If :P129_FORM_NAME=''FRMINDIVIDUAL'' Then',
'  RETURN',
'      ''select INDIVIDUAL,ID',
'       from VW_INDIVIDUAL',
'        WHERE IND_ORG_ID =:APP_ORG_ID',
'       ORDER BY INDIVIDUAL'';',
' ',
'ELSIF :P129_FORM_NAME=''FRMADMINDEDUCTIONS'' then',
'RETURN',
'        ''SELECT DESCRIPTION||'''' for ''''||employee||'''' Dated ''''||datestart INDIVIDUAL, a.id',
'        FROM PA_PCF_ADMINDEDUCTION A JOIN PA_PCF_DEDUCTIONCODE B ON A.EXPENSE_ID=B.ID',
'        JOIN vw_employeeall C ON A.EMP_ID=C.ID',
'        WHERE A.ORG_ID =:APP_ORG_ID',
'        order by 1'';',
'',
'ELSIF :P129_FORM_NAME=''FRMEMPLOYEE'' then',
'return',
'      ''select EMPLOYEE||''''(no.:''''||EMP_COMPANY_NO||'''')'''' INDIVIDUAL, id ',
'      from VW_EMPLOYEEALL ',
'      WHERE ORG_ID =:APP_ORG_ID',
'      order by 1'';',
'',
'ELSIF :P129_FORM_NAME=''FRMSALARYCANCELLATION'' then',
'return',
'        ''select EMPLOYEE||'''' salary was cancelled due to ''''||CANCEL_TYPE||'''' for period ''''||',
'        (select ',
'                upper( SHORT_NAME)||'''' ''''||Initcap(PKG_GLOBAL_FNTS.GET_LOOKUP_COL(EMPLOYMENT_CLASS_ID,''''TABLE_VALUE'''')',
'                 ||'''' ''''||PAYMENT_TYPE',
'                 || '''': '''' || TO_CHAR(a.START_DATE ,''''DD-MON-YYYY'''')',
'                 || '''' -- '''' || TO_CHAR(a.END_DATE,''''DD-Mon-YYYY''''))',
'        from PA_PCF_EARNINGPERIOD a  join HR_HCF_ORGANISATION G on G.id=a.ORG_ID where a.id=EARNINGS_PERIOD_ID) INDIVIDUAL, x.id',
'        from PA_PMG_CANCELSALARY X join VW_EMPLOYEEALL Y on X.EMP_ID=Y.id',
'        WHERE A.ORG_ID =:APP_ORG_ID',
'        order by x.DATE_PROCESSED desc'';',
'',
'ELSIF :P129_FORM_NAME=''FRMMEDICALHISTORY'' then',
'return',
'        ''select EMPLOYEE|| case when cast(HEALTH_PLAN_ID as varchar2(100)) is not null then ''''(HEALTH plan no.''''||  cast(HEALTH_PLAN_ID as varchar2(100))||'''' DATED:''''||a.DATE_HEALTHPLAN_EFFECTIVE||'''')''''',
'        else '''''''' end INDIVIDUAL, a.id',
'        from HR_MED_MEDICALHISTORY a join VW_EMPLOYEEALL B on a.EMP_ID=B.id          ',
'        WHERE A.ORG_ID =:APP_ORG_ID',
'        order by employee'';',
'        ',
'',
'ELSIF :P129_FORM_NAME=''FRMLEAVEHISTORY'' then',
'return',
'        ''select EMPLOYEE||''''(''''||leave_type||'''' between ''''||nvl(a.adjusted_fromdate,FROMDATE) ||'''' and ''''||nvl(a.adjusted_todate,toDATE)||'''')'''' INDIVIDUAL, a.id',
'        from HR_LV_LEAVEHISTORY a join VW_EMPLOYEEALL B on a.EMP_ID=B.id',
'         WHERE A.ORG_ID =:APP_ORG_ID',
'        order by 1'';',
'',
'ELSIF :P129_FORM_NAME=''FRMOFFENCEHISTORYEMP'' then',
'  return',
'      ''select B.EMPLOYEE||'''', committed offence:- ''''||(select ref_no from HR_GRI_OFFENCE where id=c.OFFENCE_ID)||'''', action taken:- ''''||OFFENCE_CLASS||'''' ''''||ACTION_DESCRIPTION INDIVIDUAL, a.id',
'      from HR_GRI_DISCIPLINEEMP a join VW_EMPLOYEEALL B on a.EMP_ID=B.id',
'      join HR_GRI_DISCIPLINARYACTION c on c.id=a.ACTION_TAKEN_ID',
'       WHERE B.ORG_ID =:APP_ORG_ID',
'      order by 1'';',
'ELSIF :P129_FORM_NAME=''FRMEMPAPPRAISAL'' then',
'  return',
'      ''select Y.EMPLOYEE||''''; Between ''''||APPRAISAL_START_PERIOD||'''' and ''''|| APPRAISAL_END_PERIOD||''''; Appraiser:- ''''||(select EMPLOYEE from VW_EMPLOYEEALL C where  C.id=APPRAISER) INDIVIDUAL   ,x.id',
'      from HR_APP_MERITINCREMENT x join VW_EMPLOYEEALL y on x.EMP_ID=y.id',
'      WHERE X.ORG_ID =:APP_ORG_ID',
'      order by 1'';',
'',
'ELSIF :P129_FORM_NAME=''FRMEMPDOCUMENTS'' then',
'    return',
'        ''select value_description||'''' Classification: ''''||classification||'''' (Level: ''''||custom_field||'''')'''' INDIVIDUAL, a.id',
'         from hr_hcf_lookup a',
'         where table_name = ''''TBLDOCUMENT''''',
'         and org_id=:APP_ORG_ID',
'         order by 1'';',
'ELSIF :P129_FORM_NAME=''FRMORGANISATION'' OR upper(:P129_FORM_NAME) LIKE UPPER(''%MENU SEPARATOR%'') then',
'    return  ',
'        ''select a.organisation_name INDIVIDUAL, a.id',
'        from HR_HCF_ORGANISATION a ',
'        where a.organisation_type = ''''SOFTWARE USER''''',
'        and a.id = :APP_ORG_ID'';',
'else',
' RETURN',
'      ''select ''''Null'''' INDIVIDUAL,NULL id',
'       from dual'';       ',
'end if;',
''))
,p_source_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'ID'
,p_display_column_name=>'INDIVIDUAL'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>44946431622040
);
wwv_flow_imp.component_end;
end;
/
