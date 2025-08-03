prompt --application/shared_components/user_interface/lovs/inventory_item_onhand
begin
--   Manifest
--     INVENTORY_ITEM_ONHAND
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.7'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3161467593594148185)
,p_lov_name=>'INVENTORY_ITEM_ONHAND'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P21_LOT_CONTROL_ID IS NULL THEN',
'RETURN ',
'      ''select ORG_ITEM_DESCRIPTION, INVENTORY_ITEM_ID,category_desc, MARKET_PRICE, tax_code,returnable_flag, PURCHASING_ITEM_FLAG, INVENTORY_ITEM_FLAG, STOCK_ENABLED_FLAG, TRANS_ENABLED_FLAG',
'        from  QRY_INVENTORY_ITEM_discrip a ',
'        WHERE a.ORGANIZATION_ID = :P21_ORGANIZATION_ID',
'        order by 1'';',
'',
'ELSE',
'RETURN',
'      ''select ORG_ITEM_DESCRIPTION, INVENTORY_ITEM_ID,category_desc, MARKET_PRICE, tax_code,returnable_flag, PURCHASING_ITEM_FLAG, INVENTORY_ITEM_FLAG, STOCK_ENABLED_FLAG, TRANS_ENABLED_FLAG',
'       from  QRY_INV_ITEM_DRUG a ',
'       WHERE a.ORGANIZATION_ID = :P21_ORGANIZATION_ID',
'       AND EXISTS(SELECT 1',
'            FROM TBLLOTMANAGER B',
'            WHERE A.INVENTORY_ITEM_ID=B.INVENTORY_ITEM_ID            ',
'            and b.id = NVL(:P21_LOT_CONTROL_ID, b.ID))',
'       order by 1'';',
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
 p_id=>wwv_flow_imp.id(3161467226420148185)
,p_query_column_name=>'INVENTORY_ITEM_ID'
,p_display_sequence=>10
,p_data_type=>'NUMBER'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(3161466844078148184)
,p_query_column_name=>'ORG_ITEM_DESCRIPTION'
,p_heading=>'Org Item Description'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(3161466431855148184)
,p_query_column_name=>'CATEGORY_DESC'
,p_heading=>'Category Desc'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(3161466025536148184)
,p_query_column_name=>'MARKET_PRICE'
,p_heading=>'Market Price'
,p_display_sequence=>40
,p_format_mask=>'FML999G999G999G999G990'
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(3161465610536148183)
,p_query_column_name=>'TAX_CODE'
,p_heading=>'Tax Code'
,p_display_sequence=>50
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(3161465194757148183)
,p_query_column_name=>'RETURNABLE_FLAG'
,p_heading=>'Returnable'
,p_display_sequence=>60
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(3161464782443148183)
,p_query_column_name=>'PURCHASING_ITEM_FLAG'
,p_heading=>'Purchasing'
,p_display_sequence=>70
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(3161464364182148183)
,p_query_column_name=>'INVENTORY_ITEM_FLAG'
,p_heading=>'Inventory'
,p_display_sequence=>80
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(3161464002464148183)
,p_query_column_name=>'STOCK_ENABLED_FLAG'
,p_heading=>'Stockable'
,p_display_sequence=>90
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(3161463579586148183)
,p_query_column_name=>'TRANS_ENABLED_FLAG'
,p_heading=>'Transactable'
,p_display_sequence=>100
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
