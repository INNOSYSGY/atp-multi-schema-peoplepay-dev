prompt --application/shared_components/user_interface/lovs/employee_short_all
begin
--   Manifest
--     EMPLOYEE_SHORT_ALL
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.7'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(134470429490875385)
,p_lov_name=>'EMPLOYEE_SHORT_ALL'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  initcap(Surname || '' '' || nvl(z.First_Name,'''')) ||''(''||EMP_COMPANY_NO||'')'' a,x.ID b',
'        from vw_employee x join hr_rcm_individual z on z.id=x.ind_id',
'        where org_id=:APP_ORG_ID             ',
'        order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'B'
,p_display_column_name=>'A'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>41800246863010
);
wwv_flow_imp.component_end;
end;
/
