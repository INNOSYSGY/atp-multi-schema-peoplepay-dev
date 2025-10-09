prompt --application/shared_components/user_interface/lovs/asset_item_misc
begin
--   Manifest
--     ASSET_ITEM_MISC
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>500
,p_default_id_offset=>221402556581611694
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3854075038601239101)
,p_lov_name=>'ASSET_ITEM_MISC'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P667_TRANSACTED=''Y'' THEN',
'RETURN',
'',
'''SELECT  upper(asset_no)||'''' ''''||ORG_ITEM_DESCRIPTION misc_descript, a.asset_reg_id',
'FROM tblassetregister a join tblinventoryitem b on a.INVENTORY_ITEM_ID=b.INVENTORY_ITEM_ID',
'WHERE asset_no is not null',
'and a.approved_by is not null',
'and a.approved_date is not null',
'and (a.active_effect_to > current_date or a.active_effect_to is null) ',
'order by 1'';',
'',
'ELSE',
'',
'RETURN',
'''SELECT  upper(asset_no)||'''' ''''||ORG_ITEM_DESCRIPTION misc_descript, a.asset_reg_id',
'FROM tblassetregister a join tblinventoryitem b on a.INVENTORY_ITEM_ID=b.INVENTORY_ITEM_ID',
'WHERE asset_no is not null',
'and a.ORGANIZATION_ID = CASE WHEN :P667_TRANSACTION_TYPE_ID IN (72,234) THEN :P667_ORAGANISATION_ID_DEST',
'                            ELSE :P667_ORGANIZATION_ID END',
'and a.approved_by is not null',
'and a.approved_date is not null',
'and (a.active_effect_to > current_date or a.active_effect_to is null) ',
'order by 1'';',
'',
'END IF;'))
,p_source_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_location=>'LOCAL'
,p_return_column_name=>'ASSET_REG_ID'
,p_display_column_name=>'MISC_DESCRIPT'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'MISC_DESCRIPT'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
