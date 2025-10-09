prompt --application/shared_components/navigation/breadcrumbs/employee
begin
--   Manifest
--     MENU: employee
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>221824690189185566
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(3796830500275799617)
,p_name=>'employee'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(421380093549642634)
,p_parent_id=>wwv_flow_imp.id(589141693591103431)
,p_short_name=>'Contracts'
,p_link=>'f?p=&APP_ID.:1287:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1287
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(421426224077741934)
,p_parent_id=>wwv_flow_imp.id(589141693591103431)
,p_short_name=>'Alternative Position Location'
,p_link=>'f?p=&APP_ID.:1299:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1299
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(421465724073794309)
,p_parent_id=>wwv_flow_imp.id(589141693591103431)
,p_short_name=>'Awards'
,p_link=>'f?p=&APP_ID.:1288:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1288
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(421506762722829192)
,p_parent_id=>wwv_flow_imp.id(589141693591103431)
,p_short_name=>'Work Permits'
,p_link=>'f?p=&APP_ID.:1290:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1290
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(421545072803873355)
,p_parent_id=>wwv_flow_imp.id(589141693591103431)
,p_short_name=>'Travel History'
,p_link=>'f?p=&APP_ID.:1292:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1292
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(423896016837135569)
,p_parent_id=>wwv_flow_imp.id(589141693591103431)
,p_short_name=>'Training'
,p_link=>'f?p=&APP_ID.:1289:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1289
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(589137162990057691)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(589141693591103431)
,p_parent_id=>wwv_flow_imp.id(3710567748114482618)
,p_short_name=>'Create/Edit Employees'
,p_link=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.::P1281_ID_IND,P1281_ID:&GLOBAL_IND.,&GLOBAL_EMP.'
,p_page_id=>1281
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(657776317052567642)
,p_parent_id=>wwv_flow_imp.id(589141693591103431)
,p_short_name=>'Create/Edit Leave Entitlement'
,p_link=>'f?p=&APP_ID.:1284:&SESSION.::&DEBUG.:::'
,p_page_id=>1284
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(665545720782148051)
,p_parent_id=>wwv_flow_imp.id(589141693591103431)
,p_short_name=>'Company Items'
,p_link=>'f?p=&APP_ID.:1286:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1286
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(665586194776245008)
,p_parent_id=>wwv_flow_imp.id(589141693591103431)
,p_short_name=>'Employee Rules'
,p_link=>'f?p=&APP_ID.:1283:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1283
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697815419960260815)
,p_parent_id=>wwv_flow_imp.id(589141693591103431)
,p_short_name=>'Employee Deductibles'
,p_link=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:::'
,p_page_id=>1265
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3710567748114482618)
,p_parent_id=>wwv_flow_imp.id(589137162990057691)
,p_short_name=>'Listing of Employee'
,p_link=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.:::'
,p_page_id=>66
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796828399910732021)
,p_parent_id=>wwv_flow_imp.id(589141693591103431)
,p_short_name=>'Wages/Salary'
,p_link=>'f?p=&APP_ID.:1282:&SESSION.::&DEBUG.:::'
,p_page_id=>1282
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796829220589752792)
,p_parent_id=>wwv_flow_imp.id(589141693591103431)
,p_short_name=>'Create/Edit Employee Documents'
,p_link=>'f?p=&APP_ID.:1291:&SESSION.::&DEBUG.:::'
,p_page_id=>1291
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3856521868447123953)
,p_parent_id=>wwv_flow_imp.id(589141693591103431)
,p_short_name=>'Responsibilities/Duties'
,p_link=>'f?p=&APP_ID.:3000:&SESSION.::&DEBUG.:::'
,p_page_id=>3000
);
wwv_flow_imp.component_end;
end;
/
