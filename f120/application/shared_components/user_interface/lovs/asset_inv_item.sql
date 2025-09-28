prompt --application/shared_components/user_interface/lovs/asset_inv_item
begin
--   Manifest
--     ASSET_INV_ITEM
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
 p_id=>wwv_flow_imp.id(3632673071275627407)
,p_lov_name=>'ASSET_INV_ITEM'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ORG_ITEM_DESCRIPTION,INVENTORY_ITEM_ID',
'from QRY_ASSET_ITEM_DISCRIP',
'where org_id = :APP_ORG_ID',
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
