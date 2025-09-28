prompt --application/shared_components/user_interface/lovs/grievance_action
begin
--   Manifest
--     GRIEVANCE_ACTION
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
 p_id=>wwv_flow_imp.id(3550872246858197332)
,p_lov_name=>'GRIEVANCE_ACTION'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description a,id b',
'from table(pkg_global_fnts.get_lookup_value(''TBLGRIEVANCEACTION'')) a',
'where exists (select 1',
'                 from vw_useraccess v',
'                 where v.org_id=a.org_id)',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'B'
,p_display_column_name=>'A'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
