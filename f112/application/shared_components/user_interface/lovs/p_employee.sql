prompt --application/shared_components/user_interface/lovs/p_employee
begin
--   Manifest
--     P_EMPLOYEE
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
 p_id=>wwv_flow_imp.id(133839034669852337)
,p_lov_name=>'P_EMPLOYEE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a,b from',
'(',
'select cast(''ALL'' as varchar2(200)) a , 0 b from dual',
'union all  ',
'SELECT  initcap(Surname || '' '' || nvl(z.First_Name,'''')) ||''(''||EMP_COMPANY_NO||'')'' a,x.ID b',
'from vw_employee x join hr_rcm_individual z on z.id=x.ind_id',
'where org_id=:APP_ORG_ID)         ',
'order by a'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'B'
,p_display_column_name=>'A'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>41800247053619
);
wwv_flow_imp.component_end;
end;
/
