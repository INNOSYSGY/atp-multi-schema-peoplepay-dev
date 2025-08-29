prompt --application/shared_components/navigation/breadcrumbs/payroll
begin
--   Manifest
--     MENU: Payroll
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
 p_id=>wwv_flow_imp.id(3268978958419337265)
,p_name=>'Payroll'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(69015755348172732)
,p_parent_id=>wwv_flow_imp.id(167990808712398705)
,p_short_name=>'Prior Remittance'
,p_link=>'f?p=&APP_ID.:147:&SESSION.::&DEBUG.:::'
,p_page_id=>147
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(167990808712398705)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(167991486670415055)
,p_parent_id=>wwv_flow_imp.id(69015755348172732)
,p_short_name=>'Manage Prior Remittance'
,p_link=>'f?p=&APP_ID.:65:&SESSION.::&DEBUG.:::'
,p_page_id=>65
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3268978170006322678)
,p_parent_id=>wwv_flow_imp.id(3268978364830325062)
,p_short_name=>'Quick Entries'
,p_link=>'f?p=&APP_ID.:1400:&SESSION.::&DEBUG.:::'
,p_page_id=>1400
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3268978364830325062)
,p_parent_id=>wwv_flow_imp.id(3268978557066328664)
,p_short_name=>'Posting Adhoc Entries'
,p_link=>'f?p=&APP_ID.:1298:&SESSION.::&DEBUG.:::'
,p_page_id=>1298
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3268978557066328664)
,p_parent_id=>wwv_flow_imp.id(3268978751243331312)
,p_short_name=>'Create/Edit Payrolls'
,p_link=>'f?p=&APP_ID.:1251:&SESSION.::&DEBUG.:::'
,p_page_id=>1251
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3268978751243331312)
,p_parent_id=>wwv_flow_imp.id(167990808712398705)
,p_short_name=>'Listing of Payrolls'
,p_link=>'f?p=&APP_ID.:1250:&SESSION.::&DEBUG.:::'
,p_page_id=>1250
);
wwv_flow_imp.component_end;
end;
/
