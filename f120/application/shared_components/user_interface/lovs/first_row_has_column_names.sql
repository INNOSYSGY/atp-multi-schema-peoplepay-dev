prompt --application/shared_components/user_interface/lovs/first_row_has_column_names
begin
--   Manifest
--     FIRST ROW HAS COLUMN NAMES
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
 p_id=>wwv_flow_imp.id(528195354796045895)
,p_lov_name=>'FIRST ROW HAS COLUMN NAMES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select apex_lang.lang(''First Row has Column Names'') as d,',
'       ''Y'' as r',
'  from dual'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>41800099541324
);
wwv_flow_imp.component_end;
end;
/
