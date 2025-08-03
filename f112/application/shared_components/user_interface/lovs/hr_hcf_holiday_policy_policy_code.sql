prompt --application/shared_components/user_interface/lovs/hr_hcf_holiday_policy_policy_code
begin
--   Manifest
--     HR_HCF_HOLIDAY_POLICY.POLICY_CODE
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
 p_id=>wwv_flow_imp.id(150952808348040348)
,p_lov_name=>'HR_HCF_HOLIDAY_POLICY.POLICY_CODE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT policy_code, id',
'from hr_hcf_holiday_policy'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'ID'
,p_display_column_name=>'POLICY_CODE'
,p_default_sort_column_name=>'POLICY_CODE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
