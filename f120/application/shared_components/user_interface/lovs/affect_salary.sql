prompt --application/shared_components/user_interface/lovs/affect_salary
begin
--   Manifest
--     AFFECT_SALARY
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
 p_id=>wwv_flow_imp.id(3290265049247875347)
,p_lov_name=>'AFFECT_SALARY'
,p_lov_query=>'.'||wwv_flow_imp.id(3290265049247875347)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3290265726125875354)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Deduction'
,p_lov_return_value=>'DEDUCTION'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3290265350954875352)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Payment'
,p_lov_return_value=>'PAYMENT'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3296085953988861443)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Deduction + Payment'
,p_lov_return_value=>'DEDUCTION,PAYMENT'
);
wwv_flow_imp.component_end;
end;
/
