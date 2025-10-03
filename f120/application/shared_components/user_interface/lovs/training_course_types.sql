prompt --application/shared_components/user_interface/lovs/training_course_types
begin
--   Manifest
--     TRAINING_COURSE_TYPES
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
 p_id=>wwv_flow_imp.id(3228517395679759527)
,p_lov_name=>'TRAINING_COURSE_TYPES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    VALUE_DESCRIPTION DISPLAY, TABLE_VALUE RETURN',
'FROM',
'    HR_HCF_LOOKUP',
'WHERE ',
'    TABLE_NAME = ''TBLTRAININGCOURSETYPE''',
'    AND ORG_ID = :APP_ORG_SHR_DED',
'    AND (END_PERIOD IS NULL OR END_PERIOD >= TRUNC(current_date))'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'RETURN'
,p_display_column_name=>'DISPLAY'
,p_default_sort_column_name=>'DISPLAY'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
