prompt --application/shared_components/user_interface/lovs/qualification_class
begin
--   Manifest
--     QUALIFICATION_CLASS
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
 p_id=>wwv_flow_imp.id(3275146198012873093)
,p_lov_name=>'QUALIFICATION_CLASS'
,p_lov_query=>'.'||wwv_flow_imp.id(3275146198012873093)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3275146565397873093)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Training'
,p_lov_return_value=>'TRAINING'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3275146933941873094)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Licence'
,p_lov_return_value=>'LICENCE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3275147345030873094)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Qualification'
,p_lov_return_value=>'QUALIFICATION'
);
wwv_flow_imp.component_end;
end;
/
