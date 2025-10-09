prompt --application/shared_components/files/css_select2_classic_css
begin
--   Manifest
--     APP STATIC FILES: 1000
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>1000
,p_default_id_offset=>221683928681757931
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2E73656C656374322D73656C656374696F6E2D2D6D756C7469706C65202E73656C656374322D7365617263682D2D696E6C696E65202E73656C656374322D7365617263685F5F6669656C64207B0D0A202077696474683A206175746F2021696D706F7274';
wwv_flow_imp.g_varchar2_table(2) := '616E743B0D0A7D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(3808725924595357864)
,p_file_name=>'css/select2-classic.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
