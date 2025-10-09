prompt --application/shared_components/user_interface/lovs/bank_account_type_static
begin
--   Manifest
--     BANK_ACCOUNT_TYPE_STATIC
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>1000
,p_default_id_offset=>221683928681757931
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3726737790881712109)
,p_lov_name=>'BANK_ACCOUNT_TYPE_STATIC'
,p_lov_query=>'.'||wwv_flow_imp.id(3726737790881712109)||'.'
,p_location=>'STATIC'
,p_version_scn=>45412442808291
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3726738107320712114)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Savings Account (2)'
,p_lov_return_value=>'2'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3726738463391712116)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Loan Account (3)'
,p_lov_return_value=>'3'
);
wwv_flow_imp.component_end;
end;
/
