prompt --application/shared_components/user_interface/lovs/ach_filetype
begin
--   Manifest
--     ACH_FILETYPE
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
 p_id=>wwv_flow_imp.id(51829236740956426)
,p_lov_name=>'ACH_FILETYPE'
,p_lov_query=>'.'||wwv_flow_imp.id(51829236740956426)||'.'
,p_location=>'STATIC'
,p_version_scn=>44427420080246
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(51829502013956440)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'.ACH'
,p_lov_return_value=>'.ACH'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(51829951896956444)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'.CSV'
,p_lov_return_value=>'.CSV'
);
wwv_flow_imp.component_end;
end;
/
