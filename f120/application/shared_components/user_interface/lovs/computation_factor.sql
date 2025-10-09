prompt --application/shared_components/user_interface/lovs/computation_factor
begin
--   Manifest
--     COMPUTATION_FACTOR
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
 p_id=>wwv_flow_imp.id(3619368536538429554)
,p_lov_name=>'COMPUTATION_FACTOR'
,p_lov_query=>'.'||wwv_flow_imp.id(3619368536538429554)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3474802151588270864)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Fixed  Rate'
,p_lov_return_value=>'FIXED_RATE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3619368803075429557)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Basic Pay Only'
,p_lov_return_value=>'BASIC_PAY'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3619369165206429559)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Basic Pay + System Tax Entitlement'
,p_lov_return_value=>'SYS_TAX_ADD_INCOME'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3619370010638429560)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Basic Pay + System Non Tax Entitlement'
,p_lov_return_value=>'SYS_NONTAX_ADD_INCOME'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3619370433256429560)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Basic Pay + All Systematic Entitlement'
,p_lov_return_value=>'ALL_SYS'
);
wwv_flow_imp.component_end;
end;
/
