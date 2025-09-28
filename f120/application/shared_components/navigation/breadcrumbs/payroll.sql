prompt --application/shared_components/navigation/breadcrumbs/payroll
begin
--   Manifest
--     MENU: Payroll
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
 p_id=>wwv_flow_imp.id(3574986817761020134)
,p_name=>'Payroll'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(454924281758278331)
,p_short_name=>'rptPriorInfo'
,p_link=>'f?p=&APP_ID.:147:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>147
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(454947961926313102)
,p_short_name=>'Manage Prior Remittance'
,p_link=>'f?p=&APP_ID.:65:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>65
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3574986224172007931)
,p_parent_id=>wwv_flow_imp.id(3574986416408011533)
,p_short_name=>'Posting Adhoc Entries'
,p_link=>'f?p=&APP_ID.:1298:&SESSION.::&DEBUG.:::'
,p_page_id=>1298
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3574986416408011533)
,p_parent_id=>wwv_flow_imp.id(3574986610585014181)
,p_short_name=>'Create/Edit Payrolls'
,p_link=>'f?p=&APP_ID.:1251:&SESSION.::&DEBUG.:::'
,p_page_id=>1251
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3574986610585014181)
,p_short_name=>'Listing of Payrolls'
,p_link=>'f?p=&APP_ID.:1250:&SESSION.::&DEBUG.:::'
,p_page_id=>1250
);
wwv_flow_imp.component_end;
end;
/
