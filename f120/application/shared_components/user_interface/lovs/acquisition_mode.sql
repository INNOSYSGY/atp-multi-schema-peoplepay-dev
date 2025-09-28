prompt --application/shared_components/user_interface/lovs/acquisition_mode
begin
--   Manifest
--     ACQUISITION_MODE
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
 p_id=>wwv_flow_imp.id(3632686884996627438)
,p_lov_name=>'ACQUISITION_MODE'
,p_lov_query=>'.'||wwv_flow_imp.id(3632686884996627438)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3632686587675627435)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Regular Budget'
,p_lov_return_value=>'BR'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3632686257409627426)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Project Budget'
,p_lov_return_value=>'BP'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3632685838277627426)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Adhoc/Miscellaneous'
,p_lov_return_value=>'AM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3632685421178627426)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Emergency'
,p_lov_return_value=>'EM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3632685051490627426)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Replacement'
,p_lov_return_value=>'REPL'
);
wwv_flow_imp.component_end;
end;
/
