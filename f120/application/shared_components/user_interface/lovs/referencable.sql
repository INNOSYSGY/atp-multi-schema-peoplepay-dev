prompt --application/shared_components/user_interface/lovs/referencable
begin
--   Manifest
--     REFERENCABLE
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
 p_id=>wwv_flow_imp.id(3631400386769484090)
,p_lov_name=>'REFERENCABLE'
,p_lov_query=>'.'||wwv_flow_imp.id(3631400386769484090)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3631400650429484091)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'Yes'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3631401047154484091)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'No'
,p_lov_return_value=>'No'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3631401456150484091)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'Potentially'
,p_lov_return_value=>'Potentially'
);
wwv_flow_imp.component_end;
end;
/
