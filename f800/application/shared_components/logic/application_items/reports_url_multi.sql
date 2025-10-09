prompt --application/shared_components/logic/application_items/reports_url_multi
begin
--   Manifest
--     APPLICATION ITEM: REPORTS_URL_MULTI
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>800
,p_default_id_offset=>221543258820678920
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(635087218084419340)
,p_name=>'REPORTS_URL_MULTI'
,p_protection_level=>'P'
,p_version_scn=>42210302619945
);
wwv_flow_imp.component_end;
end;
/
