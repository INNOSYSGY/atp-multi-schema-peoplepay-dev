prompt --application/shared_components/logic/application_items/post_earn_prd
begin
--   Manifest
--     APPLICATION ITEM: POST_EARN_PRD
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
 p_id=>wwv_flow_imp.id(193322436871343438)
,p_name=>'POST_EARN_PRD'
,p_protection_level=>'S'
,p_version_scn=>45056915832170
);
wwv_flow_imp.component_end;
end;
/
