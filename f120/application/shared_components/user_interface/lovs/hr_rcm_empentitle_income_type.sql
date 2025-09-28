prompt --application/shared_components/user_interface/lovs/hr_rcm_empentitle_income_type
begin
--   Manifest
--     HR_RCM_EMPENTITLE.INCOME_TYPE
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
 p_id=>wwv_flow_imp.id(189998411147681739)
,p_lov_name=>'HR_RCM_EMPENTITLE.INCOME_TYPE'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'HR_RCM_EMPENTITLE'
,p_return_column_name=>'ID'
,p_display_column_name=>'INCOME_TYPE'
,p_default_sort_column_name=>'INCOME_TYPE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>45056249980141
);
wwv_flow_imp.component_end;
end;
/
