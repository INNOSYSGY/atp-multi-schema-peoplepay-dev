prompt --application/shared_components/user_interface/lovs/acquisition_mode
begin
--   Manifest
--     ACQUISITION_MODE
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
 p_id=>wwv_flow_imp.id(3854370813678385369)
,p_lov_name=>'ACQUISITION_MODE'
,p_lov_query=>'.'||wwv_flow_imp.id(3854370813678385369)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854370516357385366)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Regular Budget'
,p_lov_return_value=>'BR'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854370186091385357)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Project Budget'
,p_lov_return_value=>'BP'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854369766959385357)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Adhoc/Miscellaneous'
,p_lov_return_value=>'AM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854369349860385357)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Emergency'
,p_lov_return_value=>'EM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854368980172385357)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Replacement'
,p_lov_return_value=>'REPL'
);
wwv_flow_imp.component_end;
end;
/
