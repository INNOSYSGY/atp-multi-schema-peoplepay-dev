prompt --application/shared_components/user_interface/lovs/bank_rbgl
begin
--   Manifest
--     BANK_RBGL
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
 p_id=>wwv_flow_imp.id(3854350106752385330)
,p_lov_name=>'BANK_RBGL'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select organisation_name,id',
'from hr_hcf_organisation',
'where organisation_type=''BANK''',
'and short_name=''RBGL''',
'and user_org_id= :APP_ORG_SHR_DED',
'AND UPPER(COUNTRY) =:APP_COUNTRY',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'ID'
,p_display_column_name=>'ORGANISATION_NAME'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
