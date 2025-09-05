prompt --application/shared_components/user_interface/lovs/employee_all_nosec
begin
--   Manifest
--     EMPLOYEE_ALL_NOSEC
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
 p_id=>wwv_flow_imp.id(139016000553197773)
,p_lov_name=>'EMPLOYEE_ALL_NOSEC'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  initcap(z.first_name || '' '' || nvl(z.surname,'''')) ||'' (''||short_name||'')'' a,x.ID b',
'from vw_employee x join hr_rcm_individual z on z.id=x.ind_id join hr_hcf_organisation org on org.id = x.org_id ',
'where pkg_global_fnts.fn_sharereforg(x.org_id) = :APP_ORG_SHR_DED',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'APPS'
,p_return_column_name=>'B'
,p_display_column_name=>'A'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
