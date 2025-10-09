prompt --application/shared_components/user_interface/lovs/affect_salary
begin
--   Manifest
--     AFFECT_SALARY
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
 p_id=>wwv_flow_imp.id(3511667605829487041)
,p_lov_name=>'AFFECT_SALARY'
,p_lov_query=>'.'||wwv_flow_imp.id(3511667605829487041)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3511668282707487048)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Deduction'
,p_lov_return_value=>'DEDUCTION'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3511667907536487046)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Payment'
,p_lov_return_value=>'PAYMENT'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3517488510570473137)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Deduction + Payment'
,p_lov_return_value=>'DEDUCTION,PAYMENT'
);
wwv_flow_imp.component_end;
end;
/
