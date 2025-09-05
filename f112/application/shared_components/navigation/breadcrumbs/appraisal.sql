prompt --application/shared_components/navigation/breadcrumbs/appraisal
begin
--   Manifest
--     MENU: Appraisal
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(3268970580096258346)
,p_name=>'Appraisal'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3326597862468895875)
,p_short_name=>'Create/Edit Evaluation'
,p_link=>'f?p=&APP_ID.:1497:&SESSION.::&DEBUG.:::'
,p_page_id=>1497
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3326598023122900466)
,p_short_name=>'Create/Edit Job Objectives'
,p_link=>'f?p=&APP_ID.:1498:&SESSION.::&DEBUG.:::'
,p_page_id=>1498
);
wwv_flow_imp.component_end;
end;
/
