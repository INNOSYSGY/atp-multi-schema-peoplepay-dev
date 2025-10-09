prompt --application/shared_components/user_interface/lovs/national_identifier_dyn
begin
--   Manifest
--     NATIONAL_IDENTIFIER_DYN
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>800
,p_default_id_offset=>221543258820678920
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(656159104143187715)
,p_lov_name=>'NATIONAL_IDENTIFIER_DYN'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description a, value_description b',
'from table(pkg_global_fnts.get_lookup_value(''TBLNATIDENTIFIER'')) a',
'where  org_id =:APP_ORG_SHR_DED',
'AND UPPER(COUNTRY) IN (:APP_COUNTRY,''ALL_COUNTRIES'')',
'order by 1',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'B'
,p_display_column_name=>'A'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>45458203817171
);
wwv_flow_imp.component_end;
end;
/
