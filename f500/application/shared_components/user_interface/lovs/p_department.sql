prompt --application/shared_components/user_interface/lovs/p_department
begin
--   Manifest
--     P_DEPARTMENT
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
 p_id=>wwv_flow_imp.id(661248307649100079)
,p_lov_name=>'P_DEPARTMENT'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a , b from',
'(',
'select cast(''ALL'' as varchar2(200)) a , 0 b from dual',
'union all',
'select distinct o1.unit_name a , o1.id b from HR_HCF_ORGSTRUCTUREDTL o1',
'join HR_HCF_ORGSTRUCTUREHD o2 on o2.id=o1.ORG_STRUCTURE_ID',
'where o2.org_id=:APP_ORG_ID',
'and end_date is null',
')',
'order by a'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'B'
,p_display_column_name=>'A'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
