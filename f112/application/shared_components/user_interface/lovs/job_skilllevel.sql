prompt --application/shared_components/user_interface/lovs/job_skilllevel
begin
--   Manifest
--     JOB_SKILLLEVEL
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
 p_id=>wwv_flow_imp.id(3275142102883873082)
,p_lov_name=>'JOB_SKILLLEVEL'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VALUE_DESCRIPTION||'' :-''||table_value disp,ID return',
'from table(pkg_global_fnts.get_lookup_value(''TBLSKILLLEVEL'')) a',
'where org_id = :APP_ORG_SHR_DED',
'ORDER BY 2'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'RETURN'
,p_display_column_name=>'DISP'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>42028477207878
);
wwv_flow_imp.component_end;
end;
/
