prompt --application/shared_components/user_interface/lovs/employment_type2
begin
--   Manifest
--     EMPLOYMENT_TYPE2
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
 p_id=>wwv_flow_imp.id(3843449302409244595)
,p_lov_name=>'EMPLOYMENT_TYPE2'
,p_lov_query=>'.'||wwv_flow_imp.id(3843449302409244595)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3843448901625244595)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Temporary'
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3843448530115244587)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Permanent'
,p_lov_return_value=>'2'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3843448105994244586)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Pension'
,p_lov_return_value=>'3'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3843447760237244586)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Contract'
,p_lov_return_value=>'4'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3843447330503244585)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Training'
,p_lov_return_value=>'5'
);
wwv_flow_imp.component_end;
end;
/
