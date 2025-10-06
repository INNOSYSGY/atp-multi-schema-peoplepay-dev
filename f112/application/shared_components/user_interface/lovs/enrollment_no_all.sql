prompt --application/shared_components/user_interface/lovs/enrollment_no_all
begin
--   Manifest
--     ENROLLMENT_NO_ALL
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
 p_id=>wwv_flow_imp.id(139017748364197775)
,p_lov_name=>'ENROLLMENT_NO_ALL'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ENROLLMENT_NO display,ID return',
'from HR_TRN_ENROLLMENT ',
'ORDER BY PROPOSED_TRAIN_START DESC',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_owner=>'APPS'
,p_return_column_name=>'RETURN'
,p_display_column_name=>'DISPLAY'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
