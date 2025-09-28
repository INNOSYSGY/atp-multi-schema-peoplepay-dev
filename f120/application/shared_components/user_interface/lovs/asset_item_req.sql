prompt --application/shared_components/user_interface/lovs/asset_item_req
begin
--   Manifest
--     ASSET_ITEM_REQ
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
 p_id=>wwv_flow_imp.id(3632671925172627405)
,p_lov_name=>'ASSET_ITEM_REQ'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct upper(b.segment1)||'':-''||ORG_ITEM_DESCRIPTION||''(Asset No.''||ASSET_NO||'')'' item_descrip, a.ASSET_REG_ID',
'FROM tblassetregister a join tblinventoryitem b on a.INVENTORY_ITEM_ID=b.INVENTORY_ITEM_ID',
'WHERE asset_no IS NOT NULL',
'and a.ORGANIZATION_ID =:P697_ORGANIZATION_ID ',
'and a.approved_by is not null',
'and a.approved_date is not null',
'and (a.active_effect_to > current_date or a.active_effect_to is null) ',
'and b.ORGANIZATION_ID !=122',
'and a.org_id=:APP_ORG_ID',
'ORDER BY 1',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'ASSET_REG_ID'
,p_display_column_name=>'ITEM_DESCRIP'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
