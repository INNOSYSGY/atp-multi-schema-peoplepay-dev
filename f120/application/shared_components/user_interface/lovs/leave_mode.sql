prompt --application/shared_components/user_interface/lovs/leave_mode
begin
--   Manifest
--     LEAVE MODE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3501546380102291434)
,p_lov_name=>'LEAVE MODE'
,p_lov_query=>'.'||wwv_flow_imp.id(3501546380102291434)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3501546050133291433)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Cash'
,p_lov_return_value=>'CASH'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3501545657691291433)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Time'
,p_lov_return_value=>'TIME'
);
wwv_flow_imp.component_end;
end;
/
