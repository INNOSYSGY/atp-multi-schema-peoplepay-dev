prompt --application/shared_components/user_interface/lovs/activity_venues
begin
--   Manifest
--     ACTIVITY VENUES
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
 p_id=>wwv_flow_imp.id(2974600741382149425)
,p_lov_name=>'ACTIVITY VENUES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description a, id b',
'from table(pkg_global_fnts.Get_Lookup_Value(''TBLLOCATION''))',
'where org_id=:APP_ORG_SHR_DED',
'AND UPPER(COUNTRY) =:APP_COUNTRY',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'B'
,p_display_column_name=>'A'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
