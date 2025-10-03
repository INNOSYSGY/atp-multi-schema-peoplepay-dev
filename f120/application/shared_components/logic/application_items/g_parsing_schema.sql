prompt --application/shared_components/logic/application_items/g_parsing_schema
begin
--   Manifest
--     APPLICATION ITEM: G_PARSING_SCHEMA
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(1886856669100860001)
,p_name=>'G_PARSING_SCHEMA'
,p_protection_level=>'S'
,p_escape_on_http_output=>'N'
,p_version_scn=>42028444328337
);
wwv_flow_imp.component_end;
end;
/
