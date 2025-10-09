prompt --application/shared_components/navigation/breadcrumbs/payroll
begin
--   Manifest
--     MENU: Payroll
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>500
,p_default_id_offset=>221402556581611694
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(3796389374342631828)
,p_name=>'Payroll'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(676326838339890025)
,p_short_name=>'rptPriorInfo'
,p_link=>'f?p=&APP_ID.:147:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>147
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(676350518507924796)
,p_short_name=>'Manage Prior Remittance'
,p_link=>'f?p=&APP_ID.:65:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>65
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796388780753619625)
,p_parent_id=>wwv_flow_imp.id(3796388972989623227)
,p_short_name=>'Posting Adhoc Entries'
,p_link=>'f?p=&APP_ID.:1298:&SESSION.::&DEBUG.:::'
,p_page_id=>1298
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796388972989623227)
,p_parent_id=>wwv_flow_imp.id(3796389167166625875)
,p_short_name=>'Create/Edit Payrolls'
,p_link=>'f?p=&APP_ID.:1251:&SESSION.::&DEBUG.:::'
,p_page_id=>1251
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796389167166625875)
,p_short_name=>'Listing of Payrolls'
,p_link=>'f?p=&APP_ID.:1250:&SESSION.::&DEBUG.:::'
,p_page_id=>1250
);
wwv_flow_imp.component_end;
end;
/
