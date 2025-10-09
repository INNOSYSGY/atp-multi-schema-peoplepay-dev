prompt --application/shared_components/user_interface/lovs/employment_type
begin
--   Manifest
--     EMPLOYMENT_TYPE
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
 p_id=>wwv_flow_imp.id(3730001999198556470)
,p_lov_name=>'EMPLOYMENT_TYPE'
,p_lov_query=>'.'||wwv_flow_imp.id(3730001999198556470)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3730002252331556538)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Temporary'
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3730002648218556541)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Permanent'
,p_lov_return_value=>'2'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3730003088747556542)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Pension'
,p_lov_return_value=>'3'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3690164066428813558)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Contract'
,p_lov_return_value=>'4'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3690163770957813557)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Training'
,p_lov_return_value=>'5'
);
wwv_flow_imp.component_end;
end;
/
