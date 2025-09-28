prompt --application/shared_components/logic/application_items/simple_mode
begin
--   Manifest
--     APPLICATION ITEM: SIMPLE_MODE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(3604046451454579362)
,p_name=>'SIMPLE_MODE'
,p_protection_level=>'P'
,p_escape_on_http_output=>'N'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
