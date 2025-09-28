prompt --application/shared_components/user_interface/lovs/master_items
begin
--   Manifest
--     MASTER_ITEMS
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
 p_id=>wwv_flow_imp.id(3540246076307180870)
,p_lov_name=>'MASTER_ITEMS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(org_item_description) ITEM, a.inventory_item_id',
'FROM tblinventoryitem A join tblorganization b on b.organization_id = a.organization_id',
'where TRANS_ENABLED_FLAG=''Y''',
'and ITEM_DEFAULT=''Y''',
'AND a.ORG_ID=:APP_ORG_ID',
'AND item_status=''ACTIVE''',
'and a.approved_by is not null',
'and a.approved_date is not null',
'order by ORG_ITEM_DESCRIPTION',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'INVENTORY_ITEM_ID'
,p_display_column_name=>'ITEM'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
