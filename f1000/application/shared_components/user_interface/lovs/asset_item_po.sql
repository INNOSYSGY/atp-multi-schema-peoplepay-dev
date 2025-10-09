prompt --application/shared_components/user_interface/lovs/asset_item_po
begin
--   Manifest
--     ASSET_ITEM_PO
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
 p_id=>wwv_flow_imp.id(3854356138133385337)
,p_lov_name=>'ASSET_ITEM_PO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ORG_ITEM_DESCRIPTION, INVENTORY_ITEM_ID',
'FROM QRY_INVENTORY_ITEM_DISCRIP ',
'WHERE ORGANIZATION_ID =:P987_ORGANIZATION_ID',
'and PURCHASING_ITEM_FLAG =''Y''',
'and TRANS_ENABLED_FLAG =''Y''',
'and INVENTORY_ASSET_FLAG=''Y''',
'and approved_by is not null',
'and approved_date is not null',
'and org_id = :APP_ORG_ID',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'INVENTORY_ITEM_ID'
,p_display_column_name=>'ORG_ITEM_DESCRIPTION'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
