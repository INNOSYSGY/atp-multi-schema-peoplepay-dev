prompt --application/shared_components/user_interface/lovs/inventory_item_pos
begin
--   Manifest
--     INVENTORY_ITEM_POS
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
 p_id=>wwv_flow_imp.id(3632539819063481200)
,p_lov_name=>'INVENTORY_ITEM_POS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if  PKG_GLOBAL_FNTS.STATUS_DESCRIPT(:P32_STATUS)=''TRANSACTED'' then',
'',
'return',
'',
'''select initcap(org_item_description||',
'case when c.lot_control_id is null then '''''''' else',
''''':-''''||LOT_CONTROL_CODE||'''' (Mgf:''''||decode(MGF_DATE,null,''''UNKNOWN'''',MGF_DATE)||'''' Exp:''''||EXPIRATION_DATE||'''' Shelf:''''||SHELF_LIFE_DAYS||'''')'''' end) BATCH_NO,',
'c.ONHAND_ID',
'FROM QRY_INVENTORY_ITEM_DISCRIP a join tblonhand c on (A.Inventory_Item_Id=C.Inventory_Item_Id and  a.organization_id =c.organization_id )',
'join tbllotmanager d on  (d.id=c.lot_control_id and d.INVENTORY_ITEM_ID=c.inventory_item_id)',
'where TRANS_ENABLED_FLAG=''''Y'''' ',
'AND A.ORG_ID=:APP_ORG_ID',
'AND a.organization_id =:P32_ORGANIZATION_ID',
'and c.approved_by is not null',
'and c.approved_date is not null',
'order by ORG_ITEM_DESCRIPTION,SHELF_LIFE_DAYS'';',
'',
'else',
'',
'return',
'''select initcap(org_item_description||',
'case when c.lot_control_id is null then '''''''' else',
''''':-''''||LOT_CONTROL_CODE||'''' (Mgf:''''||decode(MGF_DATE,null,''''UNKNOWN'''',MGF_DATE)||'''' Exp:''''||EXPIRATION_DATE||'''' Shelf:''''||SHELF_LIFE_DAYS||'''')'''' end) BATCH_NO,',
'c.ONHAND_ID',
'FROM QRY_INVENTORY_ITEM_DISCRIP a join tblonhand c on (A.Inventory_Item_Id=C.Inventory_Item_Id and  a.organization_id =c.organization_id )',
'join tbllotmanager d on  (d.id=c.lot_control_id and d.INVENTORY_ITEM_ID=c.inventory_item_id)',
'where TRANS_ENABLED_FLAG=''''Y''''',
'And EXPIRATION_DATE > current_date',
'AND A.ORG_ID=:APP_ORG_ID',
'and c.approved_by is not null',
'and c.approved_date is not null',
'and on_hand_quantity>MIN_STOCK_QUANTITY',
'and on_hand_quantity>0',
'and a.organization_id =:P32_ORGANIZATION_ID',
'and (date_completed > current_date or date_completed is null or zero_stock_date > current_date or zero_stock_date is null)',
'order by ORG_ITEM_DESCRIPTION,SHELF_LIFE_DAYS'';',
'',
'end if;',
''))
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
