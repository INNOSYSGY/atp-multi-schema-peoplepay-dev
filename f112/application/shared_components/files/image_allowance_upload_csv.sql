prompt --application/shared_components/files/image_allowance_upload_csv
begin
--   Manifest
--     APP STATIC FILES: 112
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '504159524F4C4C5F49442C454D504C4F5945454E414D452C494E434F4D455F434F44452C484F5552532C444F4C4C4152530D0A';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(495381320572572)
,p_file_name=>'image/allowance_upload.csv'
,p_mime_type=>'text/csv'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
