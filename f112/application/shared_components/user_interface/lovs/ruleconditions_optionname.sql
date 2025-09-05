prompt --application/shared_components/user_interface/lovs/ruleconditions_optionname
begin
--   Manifest
--     RULECONDITIONS.OPTIONNAME
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(150979736671486701)
,p_lov_name=>'RULECONDITIONS.OPTIONNAME'
,p_lov_query=>'.'||wwv_flow_imp.id(150979736671486701)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(150980124636486703)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Employment Class'
,p_lov_return_value=>'EMPLOYMENT_CLASS'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(150980443437486705)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Compute Gross'
,p_lov_return_value=>'COMPUTE_GROSS'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(150980916304486705)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Gender'
,p_lov_return_value=>'SEX_CODE'
);
wwv_flow_imp.component_end;
end;
/
