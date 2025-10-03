prompt --application/shared_components/user_interface/lovs/p_movement
begin
--   Manifest
--     P_MOVEMENT
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(449556977379475843)
,p_lov_name=>'P_MOVEMENT'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    Initcap(change_type) || '' Movement for '' ||  ind.first_name  || '' ''  || ind.surname movement, mov.id',
'from ',
'    hr_mov_empmovement_new mov ',
'    join hr_rcm_employee emp on mov.emp_id = emp.id',
'    join hr_rcm_individual ind on emp.ind_id = ind.id',
'where ',
'    mov.org_id = :APP_ORG_ID',
'union',
'select ',
'    Initcap(pkg_global_fnts.get_lookup_col(separation_type, ''VALUE_DESCRIPTION'')) || '' Movement for '' ||  ind.first_name  || '' ''  || ind.surname movement, mov.id',
'from ',
'    hr_mov_separationbenefit mov ',
'    join hr_rcm_employee emp on mov.emp_id = emp.id',
'    join hr_rcm_individual ind on emp.ind_id = ind.id',
'where ',
'    mov.org_id = :APP_ORG_ID'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'ID'
,p_display_column_name=>'MOVEMENT'
,p_default_sort_column_name=>'MOVEMENT'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
