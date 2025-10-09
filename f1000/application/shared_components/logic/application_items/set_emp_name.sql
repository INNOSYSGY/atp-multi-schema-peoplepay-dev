prompt --application/shared_components/logic/application_items/set_emp_name
begin
--   Manifest
--     APPLICATION ITEM: SET_EMP_NAME
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>1000
,p_default_id_offset=>221683928681757931
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(3713186889373554646)
,p_name=>'SET_EMP_NAME'
,p_protection_level=>'I'
,p_escape_on_http_output=>'N'
,p_item_comment=>'FOR PAGE 51'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
