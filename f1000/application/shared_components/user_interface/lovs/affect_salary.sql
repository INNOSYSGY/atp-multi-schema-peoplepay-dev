prompt --application/shared_components/user_interface/lovs/affect_salary
begin
--   Manifest
--     AFFECT_SALARY
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
 p_id=>wwv_flow_imp.id(3511948977929633278)
,p_lov_name=>'AFFECT_SALARY'
,p_lov_query=>'.'||wwv_flow_imp.id(3511948977929633278)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3511949654807633285)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Deduction'
,p_lov_return_value=>'DEDUCTION'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3511949279636633283)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Payment'
,p_lov_return_value=>'PAYMENT'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3517769882670619374)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Deduction + Payment'
,p_lov_return_value=>'DEDUCTION,PAYMENT'
);
wwv_flow_imp.component_end;
end;
/
