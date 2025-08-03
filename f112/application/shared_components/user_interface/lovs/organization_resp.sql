prompt --application/shared_components/user_interface/lovs/organization_resp
begin
--   Manifest
--     ORGANIZATION_RESP
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
 p_id=>wwv_flow_imp.id(3279343425506873590)
,p_lov_name=>'ORGANIZATION_RESP'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select description, organization_id',
'from tblorganization ',
'where trunc(from_date) <= trunc(current_date)  ',
'and (to_date is null or trunc(to_date) >= trunc(current_date)) ',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'ORGANIZATION_ID'
,p_display_column_name=>'DESCRIPTION'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
