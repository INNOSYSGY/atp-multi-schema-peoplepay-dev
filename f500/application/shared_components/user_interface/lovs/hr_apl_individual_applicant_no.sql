prompt --application/shared_components/user_interface/lovs/hr_apl_individual_applicant_no
begin
--   Manifest
--     HR_APL_INDIVIDUAL.APPLICANT_NO
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>500
,p_default_id_offset=>221402556581611694
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3215385941849797468)
,p_lov_name=>'HR_APL_INDIVIDUAL.APPLICANT_NO'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'HR_APL_INDIVIDUAL'
,p_return_column_name=>'ID'
,p_display_column_name=>'APPLICANT_NO'
,p_default_sort_column_name=>'APPLICANT_NO'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
