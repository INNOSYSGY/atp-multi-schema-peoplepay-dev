prompt --application/shared_components/user_interface/lovs/earnings_period
begin
--   Manifest
--     EARNINGS_PERIOD
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
 p_id=>wwv_flow_imp.id(3853992762488144150)
,p_lov_name=>'EARNINGS_PERIOD'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select earn_description,id',
'from VW_EARNNOTPAID a',
'where org_id = :APP_ORG_ID',
'order by start_date desc'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'ID'
,p_display_column_name=>'EARN_DESCRIPTION'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
