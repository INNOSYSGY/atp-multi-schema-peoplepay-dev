prompt --application/shared_components/navigation/lists/accounts_receivables
begin
--   Manifest
--     LIST: accounts_receivables
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>1000
,p_default_id_offset=>221683928681757931
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(3825624995609000906)
,p_name=>'accounts_receivables'
,p_list_status=>'PUBLIC'
,p_version_scn=>41800505337942
);
wwv_flow_imp.component_end;
end;
/
