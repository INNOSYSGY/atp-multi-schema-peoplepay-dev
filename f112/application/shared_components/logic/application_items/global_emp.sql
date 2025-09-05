prompt --application/shared_components/logic/application_items/global_emp
begin
--   Manifest
--     APPLICATION ITEM: GLOBAL_EMP
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(2095471282488955)
,p_name=>'GLOBAL_EMP'
,p_protection_level=>'S'
,p_version_scn=>44494703081990
);
wwv_flow_imp.component_end;
end;
/
