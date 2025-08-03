prompt --application/shared_components/user_interface/lovs/income_status
begin
--   Manifest
--     INCOME_STATUS
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
 p_id=>wwv_flow_imp.id(147431966501987843)
,p_lov_name=>'INCOME_STATUS'
,p_lov_query=>'.'||wwv_flow_imp.id(147431966501987843)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(147432332793987849)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'In Progress'
,p_lov_return_value=>'IP'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(147432674428987850)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Closed'
,p_lov_return_value=>'CL'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(147433096181987850)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Suspended'
,p_lov_return_value=>'SP'
);
wwv_flow_imp.component_end;
end;
/
