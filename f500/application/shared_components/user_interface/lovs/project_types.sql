prompt --application/shared_components/user_interface/lovs/project_types
begin
--   Manifest
--     PROJECT_TYPES
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
 p_id=>wwv_flow_imp.id(678512760612892251)
,p_lov_name=>'PROJECT_TYPES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description a, table_value b',
'from table(pkg_global_fnts.get_lookup_value(''TBLPROJECTTYPE'')) a',
'where  org_id =:APP_ORG_SHR_DED',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'B'
,p_display_column_name=>'A'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
