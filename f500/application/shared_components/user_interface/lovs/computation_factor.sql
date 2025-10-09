prompt --application/shared_components/user_interface/lovs/computation_factor
begin
--   Manifest
--     COMPUTATION_FACTOR
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
 p_id=>wwv_flow_imp.id(3618946402930855682)
,p_lov_name=>'COMPUTATION_FACTOR'
,p_lov_query=>'.'||wwv_flow_imp.id(3618946402930855682)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3474380017980696992)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Fixed  Rate'
,p_lov_return_value=>'FIXED_RATE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3618946669467855685)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Basic Pay Only'
,p_lov_return_value=>'BASIC_PAY'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3618947031598855687)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Basic Pay + System Tax Entitlement'
,p_lov_return_value=>'SYS_TAX_ADD_INCOME'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3618947877030855688)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Basic Pay + System Non Tax Entitlement'
,p_lov_return_value=>'SYS_NONTAX_ADD_INCOME'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3618948299648855688)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Basic Pay + All Systematic Entitlement'
,p_lov_return_value=>'ALL_SYS'
);
wwv_flow_imp.component_end;
end;
/
