prompt --application/shared_components/user_interface/lovs/managed_by
begin
--   Manifest
--     MANAGED_BY
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
 p_id=>wwv_flow_imp.id(3632528336381481178)
,p_lov_name=>'MANAGED_BY'
,p_lov_query=>'.'||wwv_flow_imp.id(3632528336381481178)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3632527947157481176)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'PSM'
,p_lov_return_value=>'PSM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3632527505024481176)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'DONOR'
,p_lov_return_value=>'DONOR'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3632527085060481176)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'EMPLOYER'
,p_lov_return_value=>'EMPLOYER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3632526716212481175)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'OTHER'
,p_lov_return_value=>'OTHER'
);
wwv_flow_imp.component_end;
end;
/
