prompt --application/shared_components/user_interface/lovs/hs_incident_type
begin
--   Manifest
--     HS-INCIDENT-TYPE
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
 p_id=>wwv_flow_imp.id(3164299064433677467)
,p_lov_name=>'HS-INCIDENT-TYPE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description,table_value',
'from hr_hcf_lookup',
'where table_name=''TBLINCIDENTTYPEHS''',
'order by id',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'TABLE_VALUE'
,p_display_column_name=>'VALUE_DESCRIPTION'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
