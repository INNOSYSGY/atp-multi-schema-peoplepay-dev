prompt --application/shared_components/navigation/lists/inventoryitemspages
begin
--   Manifest
--     LIST: InventoryItemsPages
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(3611129725373786165)
,p_name=>'InventoryItemsPages'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
