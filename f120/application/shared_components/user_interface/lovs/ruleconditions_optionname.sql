prompt --application/shared_components/user_interface/lovs/ruleconditions_optionname
begin
--   Manifest
--     RULECONDITIONS.OPTIONNAME
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
 p_id=>wwv_flow_imp.id(456987596013169570)
,p_lov_name=>'RULECONDITIONS.OPTIONNAME'
,p_lov_query=>'.'||wwv_flow_imp.id(456987596013169570)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(456987983978169572)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Employment Class'
,p_lov_return_value=>'EMPLOYMENT_CLASS'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(456988302779169574)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Compute Gross'
,p_lov_return_value=>'COMPUTE_GROSS'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(456988775646169574)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Gender'
,p_lov_return_value=>'SEX_CODE'
);
wwv_flow_imp.component_end;
end;
/
