prompt --application/shared_components/user_interface/lovs/position_all_mov
begin
--   Manifest
--     POSITION_ALL_MOV
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
 p_id=>wwv_flow_imp.id(3488273600751859849)
,p_lov_name=>'POSITION_ALL_MOV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select POSITION_NAME, b.id b',
'from HR_HCF_POSITION b join HR_HCF_ORGSTRUCTUREDTL d on d.id=B.ORGDTL_ID',
'WHERE exists(select 1',
'            from hr_hcf_orgstructurehd x',
'            where x.id = d.org_structure_id',
'            and x.org_id=:APP_ORG_ID)'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'B'
,p_display_column_name=>'POSITION_NAME'
,p_default_sort_column_name=>'POSITION_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
