prompt --application/shared_components/user_interface/lovs/asset_category1
begin
--   Manifest
--     ASSET_CATEGORY1
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
 p_id=>wwv_flow_imp.id(3848287391952099183)
,p_lov_name=>'ASSET_CATEGORY1'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(a) b, CATEGORY_ID',
'from ',
'(select DISTINCT(cat.DESCRIPTION) a, cat.CATEGORY_ID',
'from tblcategorygroup cat join tblinventoryitem inv on cat.CATEGORY_ID=inv.CATEGORY_ID',
'join tblassetregister areg on inv.INVENTORY_ITEM_ID=areg.INVENTORY_ITEM_ID',
'where inv.ORGANIZATION_ID!=122',
')',
'ORDER BY a ASC'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'CATEGORY_ID'
,p_display_column_name=>'B'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
