prompt --application/shared_components/user_interface/lovs/individual_mov
begin
--   Manifest
--     INDIVIDUAL_MOV
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
 p_id=>wwv_flow_imp.id(3488297127101019155)
,p_lov_name=>'INDIVIDUAL_MOV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  INITCAP(A.SURNAME || '', '' || nvl(A.FIRST_NAME, ''''))||'' ''||nvl(A.MIDDLE_NAME,'''')||'' DOB:''||nvl(to_char(dob,''DD-MON-YY''),'''')',
'||'' (''||nvl(SEX_CODE,'''')||'')'' AS INDIVIDUAL  ,ID      ',
'FROM  HR_RCM_INDIVIDUAL A',
'WHERE  A.IND_ORG_ID = :APP_ORG_ID',
'order by 1',
'',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'ID'
,p_display_column_name=>'INDIVIDUAL'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
