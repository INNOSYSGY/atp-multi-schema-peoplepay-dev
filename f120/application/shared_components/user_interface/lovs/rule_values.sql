prompt --application/shared_components/user_interface/lovs/rule_values
begin
--   Manifest
--     RULE_VALUES
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
 p_id=>wwv_flow_imp.id(435820120768104793)
,p_lov_name=>'RULE_VALUES'
,p_lov_query=>'.'||wwv_flow_imp.id(435820120768104793)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(435820496411104793)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'YEARS OF SERVICE'
,p_lov_return_value=>'YEARS_OF_SERVICE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(435820954704104794)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'AGE'
,p_lov_return_value=>'AGE'
);
wwv_flow_imp.component_end;
end;
/
