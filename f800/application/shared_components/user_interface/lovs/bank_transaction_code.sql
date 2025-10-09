prompt --application/shared_components/user_interface/lovs/bank_transaction_code
begin
--   Manifest
--     BANK_TRANSACTION_CODE
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
 p_id=>wwv_flow_imp.id(664309271009472699)
,p_lov_name=>'BANK_TRANSACTION_CODE'
,p_lov_query=>'select VALUE_DESCRIPTION||''(''||TABLE_VALUE||'')'' a , TABLE_VALUE b from HR_HCF_LOOKUP where table_name=''TBLTRANSACTION_CODE'' AND ORG_ID =:APP_ORG_ID'
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'B'
,p_display_column_name=>'A'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'A'
,p_default_sort_direction=>'ASC'
,p_version_scn=>44432801636226
);
wwv_flow_imp.component_end;
end;
/
