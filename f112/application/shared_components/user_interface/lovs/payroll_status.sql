prompt --application/shared_components/user_interface/lovs/payroll_status
begin
--   Manifest
--     PAYROLL_STATUS
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
 p_id=>wwv_flow_imp.id(3326452123386652827)
,p_lov_name=>'PAYROLL_STATUS'
,p_lov_query=>'.'||wwv_flow_imp.id(3326452123386652827)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326451784162652827)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Current'
,p_lov_return_value=>'CR'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326451382020652826)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Closed'
,p_lov_return_value=>'CL'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326450911112652826)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Open'
,p_lov_return_value=>'OPEN'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326450544834652826)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Archived'
,p_lov_return_value=>'AR'
);
wwv_flow_imp.component_end;
end;
/
