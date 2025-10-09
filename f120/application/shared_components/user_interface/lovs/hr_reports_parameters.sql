prompt --application/shared_components/user_interface/lovs/hr_reports_parameters
begin
--   Manifest
--     HR_REPORTS_PARAMETERS
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
 p_id=>wwv_flow_imp.id(3717546984305178660)
,p_lov_name=>'HR_REPORTS_PARAMETERS'
,p_lov_query=>'.'||wwv_flow_imp.id(3717546984305178660)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3717547257795178662)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Employee'
,p_lov_return_value=>'EMPLOYEE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3717547618899178672)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Work Location'
,p_lov_return_value=>'WORK_LOCATION'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3717547915576178672)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Employment Type'
,p_lov_return_value=>'EMPLOYMENT_TYPE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3717548356514178673)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Grade Scale'
,p_lov_return_value=>'GRADE_SCALE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3717548721299178673)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Position'
,p_lov_return_value=>'POSITION'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3717549123417178673)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'Union'
,p_lov_return_value=>'UNION'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3717549506617178674)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>'Employment Class'
,p_lov_return_value=>'EMPLOYMENT_CLASS'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3717549966994178674)
,p_lov_disp_sequence=>8
,p_lov_disp_value=>'Job'
,p_lov_return_value=>'JOB'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3717550386397178674)
,p_lov_disp_sequence=>9
,p_lov_disp_value=>'Organisation Structure'
,p_lov_return_value=>'ORG_STRUCTURE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3717550750082178674)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Compute Gross'
,p_lov_return_value=>'COMPUTE_GROSS'
);
wwv_flow_imp.component_end;
end;
/
