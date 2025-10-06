prompt --application/shared_components/user_interface/lovs/notification_mode
begin
--   Manifest
--     NOTIFICATION_MODE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3279030349206484256)
,p_lov_name=>'NOTIFICATION_MODE'
,p_lov_query=>'.'||wwv_flow_imp.id(3279030349206484256)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3279030035355484255)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'EMAIL'
,p_lov_return_value=>'EMAIL'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3279029545384484255)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'NOTIFICATION'
,p_lov_return_value=>'NOTIFICATION'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3279029218681484255)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'BOTH'
,p_lov_return_value=>'BOTH'
);
wwv_flow_imp.component_end;
end;
/
