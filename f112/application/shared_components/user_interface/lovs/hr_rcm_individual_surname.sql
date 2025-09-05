prompt --application/shared_components/user_interface/lovs/hr_rcm_individual_surname
begin
--   Manifest
--     HR_RCM_INDIVIDUAL.SURNAME
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(47785542826649930)
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
