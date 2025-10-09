prompt --application/shared_components/user_interface/lovs/qualification_level
begin
--   Manifest
--     QUALIFICATION_LEVEL
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>500
,p_default_id_offset=>221402556581611694
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3726675756766306668)
,p_lov_name=>'QUALIFICATION_LEVEL'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description a,value_description b',
'from table(pkg_global_fnts.get_lookup_value(''TBLQUALIFICATIONLEVEL'')) a',
'where org_id = :APP_ORG_SHR_DED',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'B'
,p_display_column_name=>'A'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>42028494424432
);
wwv_flow_imp.component_end;
end;
/
