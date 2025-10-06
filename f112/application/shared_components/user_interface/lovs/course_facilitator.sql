prompt --application/shared_components/user_interface/lovs/course_facilitator
begin
--   Manifest
--     COURSE_FACILITATOR
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(139453606479371667)
,p_lov_name=>'COURSE_FACILITATOR'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    distinct B.SURNAME || '', '' || B.FIRST_NAME, to_char(A.IND_ID)',
'FROM',
'    HR_TRN_COURSE_FACILITATOR A',
'    JOIN HR_RCM_INDIVIDUAL B ON A.IND_ID = B.ID'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_owner=>'APPS'
,p_return_column_name=>'TO_CHAR(A.IND_ID)'
,p_display_column_name=>'B.SURNAME||'',''||B.FIRST_NAME'
,p_default_sort_column_name=>'B.SURNAME||'',''||B.FIRST_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
