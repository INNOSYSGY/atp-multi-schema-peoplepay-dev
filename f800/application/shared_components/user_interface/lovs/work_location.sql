prompt --application/shared_components/user_interface/lovs/work_location
begin
--   Manifest
--     WORK_LOCATION
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
 p_id=>wwv_flow_imp.id(3837999418033071720)
,p_lov_name=>'WORK_LOCATION'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''-- All --'' a, 99999 id',
'from dual',
'union',
'select distinct initcap(LOCATION_DESCRIPTION) a,id',
'from HR_HCF_WORKLOCATION a',
'where  org_id= :APP_ORG_ID',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'ID'
,p_display_column_name=>'A'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>45529984156083
);
wwv_flow_imp.component_end;
end;
/
