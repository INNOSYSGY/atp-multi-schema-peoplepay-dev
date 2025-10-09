prompt --application/shared_components/user_interface/lovs/salary_amounts1
begin
--   Manifest
--     SALARY AMOUNTS1
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>1000
,p_default_id_offset=>221683928681757931
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3806628138219632494)
,p_lov_name=>'SALARY AMOUNTS1'
,p_lov_query=>'.'||wwv_flow_imp.id(3806628138219632494)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3806627697258632493)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'$1,000 or less'
,p_lov_return_value=>'1000'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3806627348466632492)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'$2,000 or less'
,p_lov_return_value=>'2000'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3806626923661632492)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'$3,000 or less'
,p_lov_return_value=>'3000'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3806626569314632492)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'$4,000 or less'
,p_lov_return_value=>'4000'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3806626159682632492)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'$5,000 or less'
,p_lov_return_value=>'5000'
);
wwv_flow_imp.component_end;
end;
/
