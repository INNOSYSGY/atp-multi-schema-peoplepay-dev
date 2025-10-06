prompt --application/shared_components/user_interface/lovs/option_name
begin
--   Manifest
--     OPTION_NAME
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
 p_id=>wwv_flow_imp.id(1185092218710072366)
,p_lov_name=>'OPTION_NAME'
,p_lov_query=>'.'||wwv_flow_imp.id(1185092218710072366)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1185092613824072368)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Employee'
,p_lov_return_value=>'EMPLOYEE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(450803990700807389)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Employment Class'
,p_lov_return_value=>'EMPLOYMENT_CLASS'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1185094159372072371)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Employment Type'
,p_lov_return_value=>'EMPLOYMENT_TYPE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1185093050785072369)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Grade Scale'
,p_lov_return_value=>'GRADE_SCALE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1185093799326072370)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Job'
,p_lov_return_value=>'JOB'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(446136534868312925)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'Organisation'
,p_lov_return_value=>'ORG'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(446137751880312926)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>'Sex'
,p_lov_return_value=>'SEX_CODE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(446137329528312926)
,p_lov_disp_sequence=>8
,p_lov_disp_value=>'Union'
,p_lov_return_value=>'UNION'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(446136932084312925)
,p_lov_disp_sequence=>9
,p_lov_disp_value=>'Work Location'
,p_lov_return_value=>'WORK_LOCATION'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1185093383556072370)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Work Unit'
,p_lov_return_value=>'ORG_STRUCT_LEVEL'
);
wwv_flow_imp.component_end;
end;
/
