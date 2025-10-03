prompt --application/shared_components/user_interface/lovs/company_items
begin
--   Manifest
--     COMPANY_ITEMS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3632664977771627398)
,p_lov_name=>'COMPANY_ITEMS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT VALUE_DESCRIPTION A,ID B',
'FROM TABLE(PKG_GLOBAL_FNTS.GET_LOOKUP_VALUE(''TBLITEM'')) a',
'where a.org_id = :APP_ORG_SHR_DED',
'order by 1'))
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
