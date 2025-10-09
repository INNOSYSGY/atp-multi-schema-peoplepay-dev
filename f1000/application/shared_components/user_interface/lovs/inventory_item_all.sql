prompt --application/shared_components/user_interface/lovs/inventory_item_all
begin
--   Manifest
--     INVENTORY_ITEM_ALL
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
 p_id=>wwv_flow_imp.id(3689188586928596688)
,p_lov_name=>'INVENTORY_ITEM_ALL'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(org_item_description) DESCRIPT_VALUE, A.inventory_item_id',
'FROM tblinventoryitem a ',
'where a.ORG_ID=:APP_ORG_ID',
'and exists (select 1',
'               from tblorganization b',
'               where b.organization_id = a.organization_id',
'               and a.ORG_ID=:APP_ORG_ID',
'               and item_default=''N'')',
'order by ORG_ITEM_DESCRIPTION'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'INVENTORY_ITEM_ID'
,p_display_column_name=>'DESCRIPT_VALUE'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
