prompt --application/shared_components/user_interface/lovs/notify_status
begin
--   Manifest
--     NOTIFY_STATUS
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
 p_id=>wwv_flow_imp.id(3585354327300556462)
,p_lov_name=>'NOTIFY_STATUS'
,p_lov_query=>'.'||wwv_flow_imp.id(3585354327300556462)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3585353920658556461)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'ACTIVE'
,p_lov_return_value=>'ACTIVE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3585353512407556460)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'CLOSE'
,p_lov_return_value=>'CLOSE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3585353147647556460)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'OUTSTANDING'
,p_lov_return_value=>'OUTSTANDING'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3585352757240556460)
,p_lov_disp_sequence=>13
,p_lov_disp_value=>'IN-PROGRESS'
,p_lov_return_value=>'IN-PROGRESS'
);
wwv_flow_imp.component_end;
end;
/
