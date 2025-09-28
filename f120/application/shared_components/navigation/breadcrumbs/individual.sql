prompt --application/shared_components/navigation/breadcrumbs/individual
begin
--   Manifest
--     MENU: Individual
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(3575010738191726269)
,p_name=>'Individual'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3575008910903682633)
,p_short_name=>'Relatives/Friends'
,p_link=>'f?p=&APP_ID.:1276:&SESSION.::&DEBUG.:::'
,p_page_id=>1276
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3575009131810688113)
,p_short_name=>'References'
,p_link=>'f?p=&APP_ID.:1275:&SESSION.::&DEBUG.:::'
,p_page_id=>1275
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3575009326418690634)
,p_short_name=>'Qualifications'
,p_link=>'f?p=&APP_ID.:1272:&SESSION.::&DEBUG.:::'
,p_page_id=>1272
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3575009724034706879)
,p_short_name=>'Hobby/NGO'
,p_link=>'f?p=&APP_ID.:1274:&SESSION.::&DEBUG.:::'
,p_page_id=>1274
);
wwv_flow_imp.component_end;
end;
/
