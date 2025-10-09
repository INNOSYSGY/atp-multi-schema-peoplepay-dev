prompt --application/shared_components/user_interface/lovs/deduction_method
begin
--   Manifest
--     DEDUCTION_METHOD
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>800
,p_default_id_offset=>221543258820678920
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(671797704577053717)
,p_lov_name=>'DEDUCTION_METHOD'
,p_lov_query=>'.'||wwv_flow_imp.id(671797704577053717)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(671798103651053725)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Insurance'
,p_lov_return_value=>'INSURANCE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(671798543991053728)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Union Dues'
,p_lov_return_value=>'UNION_DUES'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(671798929621053728)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Group Medical'
,p_lov_return_value=>'GROUP_MEDICAL'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(671799296435053728)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Miscellaneous'
,p_lov_return_value=>'MISCELLANEOUS'
);
wwv_flow_imp.component_end;
end;
/
