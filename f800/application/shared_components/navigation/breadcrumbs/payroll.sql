prompt --application/shared_components/navigation/breadcrumbs/payroll
begin
--   Manifest
--     MENU: Payroll
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
 p_id=>wwv_flow_imp.id(3796530076581699054)
,p_name=>'Payroll'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(676467540578957251)
,p_short_name=>'rptPriorInfo'
,p_link=>'f?p=&APP_ID.:147:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>147
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(676491220746992022)
,p_short_name=>'Manage Prior Remittance'
,p_link=>'f?p=&APP_ID.:65:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>65
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796529482992686851)
,p_parent_id=>wwv_flow_imp.id(3796529675228690453)
,p_short_name=>'Posting Adhoc Entries'
,p_link=>'f?p=&APP_ID.:1298:&SESSION.::&DEBUG.:::'
,p_page_id=>1298
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796529675228690453)
,p_parent_id=>wwv_flow_imp.id(3796529869405693101)
,p_short_name=>'Create/Edit Payrolls'
,p_link=>'f?p=&APP_ID.:1251:&SESSION.::&DEBUG.:::'
,p_page_id=>1251
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796529869405693101)
,p_short_name=>'Listing of Payrolls'
,p_link=>'f?p=&APP_ID.:1250:&SESSION.::&DEBUG.:::'
,p_page_id=>1250
);
wwv_flow_imp.component_end;
end;
/
