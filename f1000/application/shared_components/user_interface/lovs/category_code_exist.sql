prompt --application/shared_components/user_interface/lovs/category_code_exist
begin
--   Manifest
--     CATEGORY_CODE_EXIST
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>1000
,p_default_id_offset=>221683928681757931
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3689592592077787717)
,p_lov_name=>'CATEGORY_CODE_EXIST'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select INITCAP(description) d, category_id r',
'from   tblcategorygroup c',
'where org_id = :APP_ORG_ID',
'and exists (select 1          ',
'            FROM TBLINVENTORYITEM a join tblorganization b on b.organization_id=a.organization_id',
'            and item_default =''Y''',
'            and c.category_id = a.category_id',
'            and b.org_id = :APP_ORG_ID     ',
'            and a.org_id = :APP_ORG_ID   ',
'           )',
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
