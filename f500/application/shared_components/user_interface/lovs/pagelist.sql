prompt --application/shared_components/user_interface/lovs/pagelist
begin
--   Manifest
--     PAGELIST
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
 p_id=>wwv_flow_imp.id(3806751913858168153)
,p_lov_name=>'PAGELIST'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APPLICATION_TAB||'': ''||WEBPAGE_NAME||'': ''||WEBPAGE_ID DISNAME,PAGE_ID    ',
'FROM TBLPAGELIST',
'order by 1,2'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'PAGE_ID'
,p_display_column_name=>'DISNAME'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
