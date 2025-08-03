prompt --application/shared_components/user_interface/lovs/deduction_type
begin
--   Manifest
--     DEDUCTION_TYPE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.7'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3326615137774913800)
,p_lov_name=>'DEDUCTION_TYPE'
,p_lov_query=>'.'||wwv_flow_imp.id(3326615137774913800)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326614728891913798)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'EMPLOYEE'
,p_lov_return_value=>'EMPLOYEE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326614310219913798)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'EMPLOYER'
,p_lov_return_value=>'EMPLOYER'
);
wwv_flow_imp.component_end;
end;
/
