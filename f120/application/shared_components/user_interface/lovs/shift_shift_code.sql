prompt --application/shared_components/user_interface/lovs/shift_shift_code
begin
--   Manifest
--     SHIFT-SHIFT-CODE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>221824690189185566
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3728180054990563488)
,p_lov_name=>'SHIFT-SHIFT-CODE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    shift_code,',
'    id',
'FROM',
'    hr_att_shift',
'WHERE',
'    end_date IS NULL',
'and org_id =:APP_ORG_SHR_DED',
'ORDER BY',
'    1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'ID'
,p_display_column_name=>'SHIFT_CODE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
