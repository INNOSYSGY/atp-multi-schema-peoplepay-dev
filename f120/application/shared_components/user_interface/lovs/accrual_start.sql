prompt --application/shared_components/user_interface/lovs/accrual_start
begin
--   Manifest
--     ACCRUAL_START
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
 p_id=>wwv_flow_imp.id(657636007931290346)
,p_lov_name=>'ACCRUAL_START'
,p_lov_query=>'.'||wwv_flow_imp.id(657636007931290346)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(657636468529290350)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Date of Employment'
,p_lov_return_value=>'DATE_EMPLOYED'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(657636842709290351)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Date of Confirmation'
,p_lov_return_value=>'DATE_CONFIRMED'
);
wwv_flow_imp.component_end;
end;
/
