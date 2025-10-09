prompt --application/shared_components/user_interface/lovs/dosageform
begin
--   Manifest
--     DOSAGEFORM
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
 p_id=>wwv_flow_imp.id(3854158647655275557)
,p_lov_name=>'DOSAGEFORM'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description a,value_description b',
'from HR_HCF_LOOKUP   -- change to this',
'WHERE table_NAME=''TBLDOSAGEFORM''',
'order by 1',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'B'
,p_display_column_name=>'A'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
