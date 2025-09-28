prompt --application/shared_components/user_interface/lovs/income_status
begin
--   Manifest
--     INCOME_STATUS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(453439825843670712)
,p_lov_name=>'INCOME_STATUS'
,p_lov_query=>'.'||wwv_flow_imp.id(453439825843670712)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(453440192135670718)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'In Progress'
,p_lov_return_value=>'IP'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(453440533770670719)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Closed'
,p_lov_return_value=>'CL'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(453440955523670719)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Suspended'
,p_lov_return_value=>'SP'
);
wwv_flow_imp.component_end;
end;
/
