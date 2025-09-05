prompt --application/shared_components/user_interface/lovs/issue_transaction
begin
--   Manifest
--     ISSUE_TRANSACTION
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
 p_id=>wwv_flow_imp.id(3326531058138798330)
,p_lov_name=>'ISSUE_TRANSACTION'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TRANSACTION_DESCRIPTION,TRANSACTION_TYPE_ID',
'FROM qry_transactiontype B ',
'WHERE EXISTS (SELECT 1',
'              FROM TBLSTORESREQ A ',
'              WHERE A.TRANSACTION_TYPE_ID=B.TRANSACTION_TYPE_ID',
'              AND STORES_REQ_NO = :P600_STORES_REQ_NO )'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'TRANSACTION_TYPE_ID'
,p_display_column_name=>'TRANSACTION_DESCRIPTION'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'TRANSACTION_DESCRIPTION'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
