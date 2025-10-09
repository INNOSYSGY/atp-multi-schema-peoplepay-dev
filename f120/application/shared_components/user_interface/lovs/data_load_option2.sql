prompt --application/shared_components/user_interface/lovs/data_load_option2
begin
--   Manifest
--     DATA_LOAD_OPTION2
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
 p_id=>wwv_flow_imp.id(528194722136045893)
,p_lov_name=>'DATA_LOAD_OPTION2'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select apex_lang.lang(''Upload file, comma separated (*.csv) or tab delimited'') d, ''UPLOAD'' r',
'from dual',
'union all ',
'select apex_lang.lang(''Copy and Paste'') d, ''PASTE'' r',
'from dual'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>41800099541234
);
wwv_flow_imp.component_end;
end;
/
