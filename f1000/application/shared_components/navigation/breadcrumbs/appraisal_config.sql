prompt --application/shared_components/navigation/breadcrumbs/appraisal_config
begin
--   Manifest
--     MENU: Appraisal Config
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>1000
,p_default_id_offset=>221683928681757931
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(3809886389627620838)
,p_name=>'Appraisal Config'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3809885370313607134)
,p_parent_id=>wwv_flow_imp.id(3809885888416614003)
,p_short_name=>'Salary Application'
,p_link=>'f?p=&APP_ID.:2010:&SESSION.::&DEBUG.:::'
,p_page_id=>2010
);
wwv_flow_imp.component_end;
end;
/
