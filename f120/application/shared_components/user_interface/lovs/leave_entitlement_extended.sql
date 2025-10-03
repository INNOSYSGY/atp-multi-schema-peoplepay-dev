prompt --application/shared_components/user_interface/lovs/leave_entitlement_extended
begin
--   Manifest
--     LEAVE_ENTITLEMENT_EXTENDED
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
 p_id=>wwv_flow_imp.id(392010003106456592)
,p_lov_name=>'LEAVE_ENTITLEMENT_EXTENDED'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    a.leave_description || ''('' || ',
'    TO_CHAR(a.start_date, ''DD-MON-YYYY'') || '' to '' || ',
'    CASE ',
'        WHEN a.end_date IS NULL THEN ''Present'' ',
'        ELSE TO_CHAR(a.end_date, ''DD-MON-YYYY'') ',
'    END || '')''  d, ',
'    b.id  r',
'FROM ',
'    hr_lv_leavetype a',
'JOIN ',
'    hr_rcm_empleaveentitle b ',
'ON ',
'    a.id = b.leave_type_id;',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>42128262644070
);
wwv_flow_imp.component_end;
end;
/
