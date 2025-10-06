prompt --application/shared_components/user_interface/lovs/employee_with_position_and_location
begin
--   Manifest
--     EMPLOYEE_WITH_POSITION_AND_LOCATION
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
 p_id=>wwv_flow_imp.id(3190185264347778100)
,p_lov_name=>'EMPLOYEE_WITH_POSITION_AND_LOCATION'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  INITCAP(SURNAME || '', '' || NVL(FIRST_NAME, '''')) ||'':- ''||NVL(b.position_name,'''') ||''(No.:''||EMP_COMPANY_NO||'')''',
'||'' At ''||LOCATION_DESCRIPTION a,x.ID b',
'FROM VW_EMPLOYEE X JOIN HR_RCM_INDIVIDUAL Z ON Z.ID=X.IND_ID        ',
'JOIN HR_HCF_POSITION B ON B.ID=x.POSITION_ID',
'JOIN HR_HCF_WORKLOCATION C ON C.ID=x.WKLOCATION_ID',
'where x.org_id =:APP_ORG_ID',
'order by surname'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'B'
,p_display_column_name=>'A'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>41800246938419
);
wwv_flow_imp.component_end;
end;
/
