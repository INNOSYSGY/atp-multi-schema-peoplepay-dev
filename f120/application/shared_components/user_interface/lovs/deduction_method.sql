prompt --application/shared_components/user_interface/lovs/deduction_method
begin
--   Manifest
--     DEDUCTION_METHOD
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
 p_id=>wwv_flow_imp.id(672079135945560363)
,p_lov_name=>'DEDUCTION_METHOD'
,p_lov_query=>'.'||wwv_flow_imp.id(672079135945560363)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(672079535019560371)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Insurance'
,p_lov_return_value=>'INSURANCE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(672079975359560374)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Union Dues'
,p_lov_return_value=>'UNION_DUES'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(672080360989560374)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Group Medical'
,p_lov_return_value=>'GROUP_MEDICAL'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(672080727803560374)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Miscellaneous'
,p_lov_return_value=>'MISCELLANEOUS'
);
wwv_flow_imp.component_end;
end;
/
