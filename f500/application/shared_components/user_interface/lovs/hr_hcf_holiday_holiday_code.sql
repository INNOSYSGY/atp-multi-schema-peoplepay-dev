prompt --application/shared_components/user_interface/lovs/hr_hcf_holiday_holiday_code
begin
--   Manifest
--     HR_HCF_HOLIDAY.HOLIDAY_CODE
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
 p_id=>wwv_flow_imp.id(678310383277726165)
,p_lov_name=>'HR_HCF_HOLIDAY.HOLIDAY_CODE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HOLIDAY_descrip || ''-'' || holiday_date d, id r',
' from HR_HCF_HOLIDAY'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
