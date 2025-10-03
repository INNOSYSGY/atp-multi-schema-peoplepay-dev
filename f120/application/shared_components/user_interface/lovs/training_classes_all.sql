prompt --application/shared_components/user_interface/lovs/training_classes_all
begin
--   Manifest
--     TRAINING_CLASSES_ALL
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
 p_id=>wwv_flow_imp.id(445030284161880648)
,p_lov_name=>'TRAINING_CLASSES_ALL'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    to_char(cc.CLASS_START_TIME,''DD-MON-YYYY HH:MI PM'') ',
'        ||'' to ''',
'        ||to_char(cc.CLASS_END_TIME,''DD-MON-YYYY HH:MI PM'') ',
'    || '' :- '' ||',
'    CLASS_NAME display, ',
'    cc.id return_value ',
'from HR_TRN_COURSE_CLASS cc ',
'join HR_TRN_COURSE_STRUCTURE cs on cs.id = cc.COURSE_STRUCTURE_ID',
'order by cc.CLASS_START_TIME  '))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'RETURN_VALUE'
,p_display_column_name=>'DISPLAY'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
