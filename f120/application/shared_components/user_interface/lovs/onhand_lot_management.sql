prompt --application/shared_components/user_interface/lovs/onhand_lot_management
begin
--   Manifest
--     ONHAND_LOT_MANAGEMENT
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3467324101639698257)
,p_lov_name=>'ONHAND_LOT_MANAGEMENT'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P21_ONHAND_ID is null then',
'return',
'    ''select id,  LOT_CONTROL_CODE||'''' (Mgf:''''||trunc(MGF_DATE)||'''' Exp:''''||trunc(EXPIRATION_DATE)||'''')'''' Batch_no,',
'    shelf_life_days, SHELF_LIFE_GRACE, RECEIPT_DATE',
'    from TBLLOTMANAGER k',
'    where EXPIRATION_DATE > trunc(current_date)',
'    AND DATE_COMPLETED IS NULL',
'    and ORGANIZATION_ID =:P21_ORGANIZATION_ID',
'    and exists (select 1',
'                from qry_userorganization m',
'                where m.org_id = K.org_id ',
'                AND m.organization_id = k.organization_id',
'                and m.org_id = :APP_ORG_ID)',
'    order by LOT_CONTROL_CODE,EXPIRATION_DATE'';',
'',
'else',
' return',
'    ''select id,  LOT_CONTROL_CODE||'''' (Mgf:''''||trunc(MGF_DATE)||'''' Exp:''''||trunc(EXPIRATION_DATE)||'''')'''' Batch_no,',
'    shelf_life_days, SHELF_LIFE_GRACE, RECEIPT_DATE',
'    from TBLLOTMANAGER k',
'    where exists (select 1',
'                from qry_userorganization m',
'                where m.org_id = K.org_id ',
'                AND m.organization_id = k.organization_id',
'                and m.org_id = :APP_ORG_ID)',
'    and ORGANIZATION_ID =:P21_ORGANIZATION_ID',
'    order by LOT_CONTROL_CODE,EXPIRATION_DATE'';',
'    ',
'end if;'))
,p_source_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'ID'
,p_display_column_name=>'BATCH_NO'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'BATCH_NO'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(3467323521195694979)
,p_query_column_name=>'ID'
,p_display_sequence=>10
,p_data_type=>'NUMBER'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(3467323289723694979)
,p_query_column_name=>'BATCH_NO'
,p_heading=>'Batch No'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(3467322811378694979)
,p_query_column_name=>'SHELF_LIFE_DAYS'
,p_heading=>'Shelf Life Days'
,p_display_sequence=>30
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(3467322418677694979)
,p_query_column_name=>'SHELF_LIFE_GRACE'
,p_heading=>'Shelf Life Grace'
,p_display_sequence=>40
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(3467322075300694978)
,p_query_column_name=>'RECEIPT_DATE'
,p_heading=>'Receipt Date'
,p_display_sequence=>50
,p_data_type=>'DATE'
);
wwv_flow_imp.component_end;
end;
/
