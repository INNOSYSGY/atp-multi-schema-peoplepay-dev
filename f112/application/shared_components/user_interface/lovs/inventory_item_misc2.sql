prompt --application/shared_components/user_interface/lovs/inventory_item_misc2
begin
--   Manifest
--     INVENTORY_ITEM_MISC2
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
 p_id=>wwv_flow_imp.id(3326532572417798333)
,p_lov_name=>'INVENTORY_ITEM_MISC2'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF PKG_GLOBAL_FNTS.STATUS_DESCRIPT(:P660_STATUS) !=''COMPLETED'' and :P660_TRANSACTION_TYPE_ID = 172 then',
'',
'return',
'''select initcap(org_item_description||',
'case when c.lot_control_id is null then '''''''' else',
''''':-''''||LOT_CONTROL_CODE||'''' (Mgf:''''||decode(MGF_DATE,null,''''UNKNOWN'''',MGF_DATE)||'''' Exp:''''||EXPIRATION_DATE||'''' Shelf:''''||SHELF_LIFE_DAYS||'''')'''' end) BATCH_NO,',
'c.ONHAND_ID',
'FROM QRY_INVENTORY_ITEM_DISCRIP a join tblonhand c on A.Inventory_Item_Id=C.Inventory_Item_Id ',
'left outer join tbllotmanager d on  d.INVENTORY_ITEM_ID=c.inventory_item_id',
'where TRANS_ENABLED_FLAG=''''Y''''',
'and c.approved_by is not null',
'and c.approved_date is not null',
'and a.organization_id =:P660_ORAGANISATION_ID_SOURCE',
'and a.INVENTORY_ASSET_FLAG=''''N''''',
'AND UPPER(trim(ITEM_STATUS))=''''ACTIVE''''',
'order by ORG_ITEM_DESCRIPTION'';',
'',
'elsIF  :P660_TRANSACTION_TYPE_ID = 213 then',
'',
'return',
'''select initcap(org_item_description||',
'case when c.lot_control_id is null then '''''''' else',
''''':-''''||LOT_CONTROL_CODE||'''' (Mgf:''''||decode(MGF_DATE,null,''''UNKNOWN'''',MGF_DATE)||'''' Exp:''''||EXPIRATION_DATE||'''' Shelf:''''||SHELF_LIFE_DAYS||'''')'''' end) BATCH_NO,',
'c.ONHAND_ID',
'FROM QRY_INVENTORY_ITEM_DISCRIP a join tblonhand c on A.Inventory_Item_Id=C.Inventory_Item_Id',
'left outer join tbllotmanager d on  d.INVENTORY_ITEM_ID=c.inventory_item_id',
'where TRANS_ENABLED_FLAG=''''Y''''',
'and c.approved_by is not null',
'and c.approved_date is not null',
'and a.organization_id =:P660_ORAGANISATION_ID_SOURCE',
'and a.INVENTORY_ASSET_FLAG=''''N''''',
'AND UPPER(trim(ITEM_STATUS))=''''ACTIVE''''',
'order by ORG_ITEM_DESCRIPTION'';',
'',
'',
'else',
'return',
'',
'''select initcap(org_item_description||',
'case when c.lot_control_id is null then '''''''' else',
''''':-''''||LOT_CONTROL_CODE||'''' (Mgf:''''||decode(MGF_DATE,null,''''UNKNOWN'''',MGF_DATE)||'''' Exp:''''||EXPIRATION_DATE||'''' Shelf:''''||SHELF_LIFE_DAYS||'''')'''' end) BATCH_NO,',
'c.ONHAND_ID',
'FROM QRY_INVENTORY_ITEM_DISCRIP a join tblonhand c on A.Inventory_Item_Id=C.Inventory_Item_Id',
'left outer join tbllotmanager d on  d.INVENTORY_ITEM_ID=c.inventory_item_id',
'where TRANS_ENABLED_FLAG=''''Y''''',
'and c.approved_by is not null',
'and c.approved_date is not null',
'and a.organization_id =:P660_ORAGANISATION_ID_SOURCE',
'and a.INVENTORY_ASSET_FLAG=''''N''''',
'AND UPPER(trim(ITEM_STATUS))=''''ACTIVE''''',
'AND EXISTS (SELECT 1',
'            FROM tblinventoryitem x ',
'            WHERE UPPER(x.SEGMENT1) = UPPER(A.SEGMENT1)',
'            AND UPPER(item_status) = ''''ACTIVE''''',
'            AND x.organization_id =decode(:P660_TRANSACTION_TYPE_ID ,193, x.organization_id, :P660_ORAGANISATION_ID_DEST)',
'            )',
'order by ORG_ITEM_DESCRIPTION'';',
'',
'end if;'))
,p_source_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_location=>'LOCAL'
,p_return_column_name=>'ONHAND_ID'
,p_display_column_name=>'BATCH_NO'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'BATCH_NO'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
