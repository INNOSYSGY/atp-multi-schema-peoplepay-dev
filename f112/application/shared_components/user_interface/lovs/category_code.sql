prompt --application/shared_components/user_interface/lovs/category_code
begin
--   Manifest
--     CATEGORY_CODE
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
 p_id=>wwv_flow_imp.id(3326657457702944529)
,p_lov_name=>'CATEGORY_CODE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select INITCAP(description) d, category_id r',
'from   tblcategorygroup',
'where org_id=:APP_ORG_ID',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
