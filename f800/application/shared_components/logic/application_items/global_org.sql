prompt --application/shared_components/logic/application_items/global_org
begin
--   Manifest
--     APPLICATION ITEM: GLOBAL_ORG
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
 p_id=>wwv_flow_imp.id(424372538982968802)
,p_name=>'GLOBAL_ORG'
,p_protection_level=>'S'
,p_version_scn=>45516906795852
);
wwv_flow_imp.component_end;
end;
/
