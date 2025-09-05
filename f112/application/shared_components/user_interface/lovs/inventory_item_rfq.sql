prompt --application/shared_components/user_interface/lovs/inventory_item_rfq
begin
--   Manifest
--     INVENTORY_ITEM_RFQ
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
 p_id=>wwv_flow_imp.id(3164059574366705061)
,p_lov_name=>'INVENTORY_ITEM_RFQ'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
' IF  upper(:P165_ITEM_PARTITION) = ''PHARMACEUTICALS'' THEN',
'  RETURN',
'   ''SELECT category_desc, initcap(org_item_description||',
'    case when c.lot_control_id is null then '''''''' else',
'    '''':-''''||LOT_CONTROL_CODE||'''' (Mgf:''''||decode(MGF_DATE,null,''''UNKNOWN'''',MGF_DATE)||'''' Exp:''''||EXPIRATION_DATE||'''')end) ORG_ITEM_DESCRIPTION, trim(to_char(ON_HAND_QUANTITY,''''999,999,999'''')) On_Hand,',
'    c.ONHAND_ID, a.INVENTORY_ITEM_ID',
'    FROM QRY_INV_ITEM_DRUG a join tblonhand c on (A.Inventory_Item_Id = C.Inventory_Item_Id and a.organization_id =c.organization_id )',
'    left outer join tbllotmanager d on  d.id = c.lot_control_id ',
'    where purchasing_item_flag = ''''Y''''',
'    and inventory_asset_flag= ''''N''''',
'    and c.org_id = :APP_ORG_ID',
'    and a.organization_id = :P165_ORGANIZATION_ID',
'    and not exists (select 1',
'                    from TBLPURCHASEREQLINES w',
'                    where a.INVENTORY_ITEM_ID = w.INVENTORY_ITEM_ID',
'                    and PURCHASE_REQ_ID = :P165_PURCHASE_REQ_ID )            ',
'              )',
'    order by 1'';',
'  ',
'ELSIF  upper(:P165_ITEM_PARTITION) = ''OTHER'' THEN',
'  RETURN',
'   ''SELECT category_desc, initcap(ORG_ITEM_DESCRIPTION) ORG_ITEM_DESCRIPTION, trim(to_char(ON_HAND_QUANTITY,''''999,999,999'''')) On_Hand,  c.ONHAND_ID, a.INVENTORY_ITEM_ID',
'    FROM QRY_INVENTORY_ITEM_DISCRIP a join tblonhand c on (A.Inventory_Item_Id = C.Inventory_Item_Id and a.organization_id =c.organization_id )',
'    where purchasing_item_flag =''''Y''''',
'    and inventory_asset_flag=''''N''''',
'    and c.org_id = :APP_ORG_ID',
'    and a.organization_id =:P165_ORGANIZATION_ID',
'    and not exists (select 1',
'                    from TBLPURCHASEREQLINES w',
'                    where a.INVENTORY_ITEM_ID = w.INVENTORY_ITEM_ID',
'                    and PURCHASE_REQ_ID=:P165_PURCHASE_REQ_ID )             ',
'    order by 1'';',
'  ',
'ELSE',
'  RETURN',
'   ''SELECT category_desc, ORG_ITEM_DESCRIPTION, 0 On_Hand, null ONHAND_ID, a.INVENTORY_ITEM_ID',
'    FROM QRY_ASSET_ITEM_DISCRIP a',
'    where purchasing_item_flag =''''Y''''',
'    and a.organization_id = :P165_ORGANIZATION_ID',
'    and not exists (select 1',
'                    from TBLPURCHASEREQLINES w',
'                    where a.INVENTORY_ITEM_ID = w.INVENTORY_ITEM_ID',
'                    and PURCHASE_REQ_ID=:P165_PURCHASE_REQ_ID )            ',
'    order by 1'';',
'  ',
'',
'END IF;'))
,p_source_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_location=>'LOCAL'
,p_return_column_name=>'INVENTORY_ITEM_ID'
,p_display_column_name=>'ORG_ITEM_DESCRIPTION'
,p_group_column_name=>'CATEGORY_DESC'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'ORG_ITEM_DESCRIPTION'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(3164059873607705066)
,p_query_column_name=>'ONHAND_ID'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(3164060287809705066)
,p_query_column_name=>'ORG_ITEM_DESCRIPTION'
,p_heading=>'Org Item Description'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(3164060653013705067)
,p_query_column_name=>'CATEGORY_DESC'
,p_heading=>'Category Desc'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(3164061021867705067)
,p_query_column_name=>'ON_HAND'
,p_heading=>'On Hand'
,p_display_sequence=>40
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(3164061483649705067)
,p_query_column_name=>'INVENTORY_ITEM_ID'
,p_heading=>'Inventory Item Id'
,p_display_sequence=>50
,p_data_type=>'NUMBER'
,p_is_visible=>'N'
);
wwv_flow_imp.component_end;
end;
/
