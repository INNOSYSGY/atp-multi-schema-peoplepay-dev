prompt --application/shared_components/user_interface/lovs/inventory_item_po
begin
--   Manifest
--     INVENTORY_ITEM_PO
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>800
,p_default_id_offset=>221543258820678920
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3854083418839160122)
,p_lov_name=>'INVENTORY_ITEM_PO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'If pkg_global_fnts.status_descript(:P620_STATUS)  like ''COMPLE%'' then ',
'return',
'    ''SELECT initcap(ORG_ITEM_DESCRIPTION)ORG_ITEM_DESCRIPTION, a.INVENTORY_ITEM_ID',
'    FROM QRY_INVENTORY_ITEM_DISCRIP a',
'    WHERE PURCHASING_ITEM_FLAG =''''Y''''',
'    and TRANS_ENABLED_FLAG =''''Y''''',
'    and a.approved_by is not null',
'    and a.approved_date is not null',
'    and inventory_asset_flag=''''N''''',
'    and a.ORGANIZATION_ID =:P620_ORGANIZATION_ID ',
'    and exists(select 1',
'               from tblonhand c ',
'               where a.inventory_item_id=c.inventory_item_id) ',
'    and org_id=:APP_ORG_ID',
'    order by 1'';',
'',
' else',
' ',
'return   ',
'  ''SELECT initcap(ORG_ITEM_DESCRIPTION)ORG_ITEM_DESCRIPTION, a.INVENTORY_ITEM_ID',
'    FROM QRY_INVENTORY_ITEM_DISCRIP a',
'    WHERE PURCHASING_ITEM_FLAG =''''Y''''',
'    and TRANS_ENABLED_FLAG =''''Y''''',
'    and ',
'    a.approved_by is not null',
'    and a.approved_date is not null',
'    and inventory_asset_flag=''''N''''',
'    and a.ORGANIZATION_ID =:P620_ORGANIZATION_ID  ',
'    and exists(select 1',
'               from tblonhand c ',
'               where a.inventory_item_id=c.inventory_item_id) ',
'    and exists (        ',
'                select 1',
'                from TBLSUPPLIER_ITEMCATEGORY m ',
'                where a.category_id=m.category_id',
'                and m.supplier_org_id=:P620_SUPPLIER_ID',
'                ) ',
'    and org_id=:APP_ORG_ID',
'  order by 1'';  ',
'',
'end if;  '))
,p_source_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_location=>'LOCAL'
,p_return_column_name=>'INVENTORY_ITEM_ID'
,p_display_column_name=>'ORG_ITEM_DESCRIPTION'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'ORG_ITEM_DESCRIPTION'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
