prompt --application/shared_components/logic/application_items/guide_id
begin
--   Manifest
--     APPLICATION ITEM: GUIDE_ID
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(143417888675907652)
,p_name=>'GUIDE_ID'
,p_protection_level=>'I'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
