prompt --application/shared_components/user_interface/lovs/managed_by
begin
--   Manifest
--     MANAGED_BY
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
 p_id=>wwv_flow_imp.id(3854212265063239109)
,p_lov_name=>'MANAGED_BY'
,p_lov_query=>'.'||wwv_flow_imp.id(3854212265063239109)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854211875839239107)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'PSM'
,p_lov_return_value=>'PSM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854211433706239107)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'DONOR'
,p_lov_return_value=>'DONOR'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854211013742239107)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'EMPLOYER'
,p_lov_return_value=>'EMPLOYER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854210644894239106)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'OTHER'
,p_lov_return_value=>'OTHER'
);
wwv_flow_imp.component_end;
end;
/
