prompt --application/shared_components/user_interface/lovs/benefit_plans_code
begin
--   Manifest
--     BENEFIT_PLANS_CODE
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
 p_id=>wwv_flow_imp.id(547027310831057035)
,p_lov_name=>'BENEFIT_PLANS_CODE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    hbbp.plan_code display, hbbp.id return',
'from',
'    hr_ben_benefit_plan hbbp',
'    join hr_ben_benefittype hbbt on hbbp.benefit_type_id = hbbt.id',
'where',
'    pkg_global_fnts.fn_sharereforg(hbbt.org_id) = :APP_ORG_SHR_DED'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'APPS'
,p_return_column_name=>'RETURN'
,p_display_column_name=>'DISPLAY'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'DISPLAY'
,p_default_sort_direction=>'ASC'
,p_version_scn=>44429696601169
);
wwv_flow_imp.component_end;
end;
/
