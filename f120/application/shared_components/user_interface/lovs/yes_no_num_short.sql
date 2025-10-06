prompt --application/shared_components/user_interface/lovs/yes_no_num_short
begin
--   Manifest
--     YES_NO_NUM_SHORT
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
 p_id=>wwv_flow_imp.id(3356723100414314719)
,p_lov_name=>'YES_NO_NUM_SHORT'
,p_lov_query=>'.'||wwv_flow_imp.id(3356723100414314719)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3356723538240314720)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'N'
,p_lov_return_value=>'0'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3356723966051314720)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Y'
,p_lov_return_value=>'1'
);
wwv_flow_imp.component_end;
end;
/
