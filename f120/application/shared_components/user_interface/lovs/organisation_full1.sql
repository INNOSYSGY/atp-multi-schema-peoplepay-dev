prompt --application/shared_components/user_interface/lovs/organisation_full1
begin
--   Manifest
--     ORGANISATION_FULL1
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>221824690189185566
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3847045175080541985)
,p_lov_name=>'ORGANISATION_FULL1'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(organisation_name) a,organisation_name b',
'from HR_HCF_ORGANISATION k',
'where USE_FOR_SEEDED_DATA=1',
'ORDER BY organisation_name'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'A'
,p_display_column_name=>'B'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
