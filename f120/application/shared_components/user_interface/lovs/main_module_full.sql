prompt --application/shared_components/user_interface/lovs/main_module_full
begin
--   Manifest
--     MAIN_MODULE_FULL
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
 p_id=>wwv_flow_imp.id(334867940960856876)
,p_lov_name=>'MAIN_MODULE_FULL'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(main_module_name) display, id ',
'from app_MAIN_MODULE z',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'ID'
,p_display_column_name=>'DISPLAY'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>44429676357852
);
wwv_flow_imp.component_end;
end;
/
