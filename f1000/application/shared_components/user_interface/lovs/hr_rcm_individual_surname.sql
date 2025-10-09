prompt --application/shared_components/user_interface/lovs/hr_rcm_individual_surname
begin
--   Manifest
--     HR_RCM_INDIVIDUAL.SURNAME
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
 p_id=>wwv_flow_imp.id(575477330850090730)
,p_lov_name=>'HR_RCM_INDIVIDUAL.SURNAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'HR_RCM_INDIVIDUAL'
,p_return_column_name=>'ID'
,p_display_column_name=>'SURNAME'
,p_default_sort_column_name=>'SURNAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>44431820010681
);
wwv_flow_imp.component_end;
end;
/
