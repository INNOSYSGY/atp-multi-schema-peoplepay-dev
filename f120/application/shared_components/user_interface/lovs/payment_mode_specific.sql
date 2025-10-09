prompt --application/shared_components/user_interface/lovs/payment_mode_specific
begin
--   Manifest
--     PAYMENT_MODE_SPECIFIC
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>221824690189185566
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3827189467967170457)
,p_lov_name=>'PAYMENT_MODE_SPECIFIC'
,p_lov_query=>'.'||wwv_flow_imp.id(3827189467967170457)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3827189196437170375)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'CASH'
,p_lov_return_value=>'CASH'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3827188844874170371)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'BANK'
,p_lov_return_value=>'BANK'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3827188402973170369)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'CHEQUE'
,p_lov_return_value=>'CHEQUE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3827187964601170367)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'MOBILE MONEY'
,p_lov_return_value=>'MMG'
);
wwv_flow_imp.component_end;
end;
/
