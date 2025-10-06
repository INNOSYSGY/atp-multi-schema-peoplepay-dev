prompt --application/shared_components/user_interface/lovs/organisation_full
begin
--   Manifest
--     ORGANISATION_FULL
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
 p_id=>wwv_flow_imp.id(3322587738228503446)
,p_lov_name=>'ORGANISATION_FULL'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(organisation_name) organisation_name,id',
'from HR_HCF_ORGANISATION k',
'where verified_by is not null',
'ORDER BY organisation_name'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'ID'
,p_display_column_name=>'ORGANISATION_NAME'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
