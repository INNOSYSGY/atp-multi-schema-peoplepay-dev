prompt --application/shared_components/user_interface/lovs/list_of_app_lov
begin
--   Manifest
--     LIST_OF_APP_LOV
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
 p_id=>wwv_flow_imp.id(3632531274057481189)
,p_lov_name=>'LIST_OF_APP_LOV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lov_name,lov_name description',
'from vw_application_lovs',
'order by lov_name',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'DESCRIPTION'
,p_display_column_name=>'LOV_NAME'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
