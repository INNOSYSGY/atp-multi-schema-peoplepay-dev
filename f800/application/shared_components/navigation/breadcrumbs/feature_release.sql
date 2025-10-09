prompt --application/shared_components/navigation/breadcrumbs/feature_release
begin
--   Manifest
--     MENU: feature_release
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>800
,p_default_id_offset=>221543258820678920
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(3809679807504058420)
,p_name=>'feature_release'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3809678618325033137)
,p_parent_id=>wwv_flow_imp.id(3809678813149035553)
,p_short_name=>'Release Execution Details'
,p_link=>'f?p=&APP_ID.:2019:&SESSION.::&DEBUG.:::'
,p_page_id=>2019
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3809678813149035553)
,p_parent_id=>wwv_flow_imp.id(3809679097837042649)
,p_short_name=>'Release Execution List'
,p_link=>'f?p=&APP_ID.:2018:&SESSION.::&DEBUG.:::'
,p_page_id=>2018
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3809679097837042649)
,p_parent_id=>wwv_flow_imp.id(3809679507745053218)
,p_short_name=>'Release Configuration'
,p_link=>'f?p=&APP_ID.:2017:&SESSION.::&DEBUG.:::'
,p_page_id=>2017
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3809679322194046547)
,p_parent_id=>wwv_flow_imp.id(3809679507745053218)
,p_short_name=>'Release Checklist'
,p_link=>'f?p=&APP_ID.:2016:&SESSION.::&DEBUG.:::'
,p_page_id=>2016
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3809679507745053218)
,p_parent_id=>wwv_flow_imp.id(3832895835833629329)
,p_short_name=>'Update List'
,p_link=>'f?p=&APP_ID.:2015:&SESSION.::&DEBUG.:::'
,p_page_id=>2015
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3832895835833629329)
,p_short_name=>'Utility'
,p_link=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
,p_page_id=>23
);
wwv_flow_imp.component_end;
end;
/
