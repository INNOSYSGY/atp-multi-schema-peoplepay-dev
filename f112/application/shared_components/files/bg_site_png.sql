prompt --application/shared_components/files/bg_site_png
begin
--   Manifest
--     APP STATIC FILES: 112
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000004000000040103000000933F0C3D00000006504C5445FFFFFFAEA79F07D207EF0000000174524E530040E6D8660000001549444154785E1DC0010D0000004030D145B739B20003880081A7BAF99C000000';
wwv_flow_imp.g_varchar2_table(2) := '0049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(3291261318699854912)
,p_file_name=>'bg-site.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
