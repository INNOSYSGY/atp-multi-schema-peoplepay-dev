prompt --application/shared_components/navigation/breadcrumbs/employee
begin
--   Manifest
--     MENU: employee
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.7'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(3268997950744931182)
,p_name=>'employee'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(61304613459189256)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(61309144060234996)
,p_parent_id=>wwv_flow_imp.id(3182735198583614183)
,p_short_name=>'Create/Edit Employees'
,p_link=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.::P1281_ID_IND,P1281_ID:&GLOBAL_IND.,&GLOBAL_EMP.'
,p_page_id=>1281
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(129943767521699207)
,p_parent_id=>wwv_flow_imp.id(61309144060234996)
,p_short_name=>'Create/Edit Leave Entitlement'
,p_link=>'f?p=&APP_ID.:1284:&SESSION.::&DEBUG.:::'
,p_page_id=>1284
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(169982870429392380)
,p_parent_id=>wwv_flow_imp.id(61309144060234996)
,p_short_name=>'Employee Deductibles'
,p_link=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:::'
,p_page_id=>1265
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3182735198583614183)
,p_parent_id=>wwv_flow_imp.id(61304613459189256)
,p_short_name=>'Listing of Employee'
,p_link=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.:::'
,p_page_id=>66
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3268745481499371043)
,p_parent_id=>wwv_flow_imp.id(61309144060234996)
,p_short_name=>'Alternative Position Location'
,p_link=>'f?p=&APP_ID.:1299:&SESSION.::&DEBUG.:::'
,p_page_id=>1299
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3268995180140849709)
,p_parent_id=>wwv_flow_imp.id(61309144060234996)
,p_short_name=>'Training'
,p_link=>'f?p=&APP_ID.:1289:&SESSION.::&DEBUG.:::'
,p_page_id=>1289
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3268995462025858182)
,p_parent_id=>wwv_flow_imp.id(61309144060234996)
,p_short_name=>'Work Permits'
,p_link=>'f?p=&APP_ID.:1290:&SESSION.::&DEBUG.:::'
,p_page_id=>1290
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3268995656418860716)
,p_parent_id=>wwv_flow_imp.id(61309144060234996)
,p_short_name=>'Travel History'
,p_link=>'f?p=&APP_ID.:1292:&SESSION.::&DEBUG.:::'
,p_page_id=>1292
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3268995850379863586)
,p_parent_id=>wwv_flow_imp.id(61309144060234996)
,p_short_name=>'Wages/Salary'
,p_link=>'f?p=&APP_ID.:1282:&SESSION.::&DEBUG.:::'
,p_page_id=>1282
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3268996256837875752)
,p_parent_id=>wwv_flow_imp.id(61309144060234996)
,p_short_name=>'Company Items'
,p_link=>'f?p=&APP_ID.:1286:&SESSION.::&DEBUG.:::'
,p_page_id=>1286
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3268996671058884357)
,p_parent_id=>wwv_flow_imp.id(61309144060234996)
,p_short_name=>'Create/Edit Employee Documents'
,p_link=>'f?p=&APP_ID.:1291:&SESSION.::&DEBUG.:::'
,p_page_id=>1291
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3268996864373887408)
,p_parent_id=>wwv_flow_imp.id(61309144060234996)
,p_short_name=>'Contracts'
,p_link=>'f?p=&APP_ID.:1287:&SESSION.::&DEBUG.:::'
,p_page_id=>1287
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3268997160466919622)
,p_parent_id=>wwv_flow_imp.id(61309144060234996)
,p_short_name=>'Awards'
,p_link=>'f?p=&APP_ID.:1288:&SESSION.::&DEBUG.:::'
,p_page_id=>1288
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3268997353780922778)
,p_parent_id=>wwv_flow_imp.id(61309144060234996)
,p_short_name=>'Requirements'
,p_link=>'f?p=&APP_ID.:1283:&SESSION.::&DEBUG.:::'
,p_page_id=>1283
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3299270909108000848)
,p_parent_id=>wwv_flow_imp.id(61309144060234996)
,p_short_name=>'Other Remuneration'
,p_link=>'f?p=&APP_ID.:1285:&SESSION.::&DEBUG.:::'
,p_page_id=>1285
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3328689318916255518)
,p_parent_id=>wwv_flow_imp.id(61309144060234996)
,p_short_name=>'Responsibilities/Duties'
,p_link=>'f?p=&APP_ID.:3000:&SESSION.::&DEBUG.:::'
,p_page_id=>3000
);
wwv_flow_imp.component_end;
end;
/
