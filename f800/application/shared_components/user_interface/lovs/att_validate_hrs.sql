prompt --application/shared_components/user_interface/lovs/att_validate_hrs
begin
--   Manifest
--     ATT_VALIDATE_HRS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>800
,p_default_id_offset=>221543258820678920
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(677322171854193920)
,p_lov_name=>'ATT_VALIDATE_HRS'
,p_lov_query=>'.'||wwv_flow_imp.id(677322171854193920)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(677322472698193928)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Calculated Total Hours Worked'
,p_lov_return_value=>'CHW'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(677322872627193929)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Calculated Shift Hours Worked'
,p_lov_return_value=>'CSHW'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(677323257872193930)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Calculated Overtime Hours Worked'
,p_lov_return_value=>'COT'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(677323658557193930)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'None'
,p_lov_return_value=>'NO_LIMIT'
);
wwv_flow_imp.component_end;
end;
/
