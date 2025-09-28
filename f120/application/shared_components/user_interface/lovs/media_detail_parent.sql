prompt --application/shared_components/user_interface/lovs/media_detail_parent
begin
--   Manifest
--     MEDIA_DETAIL_PARENT
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3632525194982481171)
,p_lov_name=>'MEDIA_DETAIL_PARENT'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select FILE_NAME, id',
'from media_detail'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'ID'
,p_display_column_name=>'FILE_NAME'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'FILE_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
