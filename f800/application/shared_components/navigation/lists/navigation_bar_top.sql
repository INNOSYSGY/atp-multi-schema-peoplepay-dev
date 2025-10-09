prompt --application/shared_components/navigation/lists/navigation_bar_top
begin
--   Manifest
--     LIST: Navigation Bar (Top)
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>800
,p_default_id_offset=>221543258820678920
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(4741376481718397897)
,p_name=>'Navigation Bar (Top)'
,p_list_status=>'PUBLIC'
,p_version_scn=>44428996139938
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(663451584401671601)
,p_list_item_display_sequence=>0
,p_list_item_link_text=>'Search'
,p_list_item_link_target=>'f?p=&APP_ID.:249:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-flashlight'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(677715073177890778)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Chat'
,p_list_item_link_target=>'f?p=&APP_ID.:4806:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-comments'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3854512161006781924)
,p_list_item_display_sequence=>7
,p_list_item_link_text=>'Setup Wizards'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::P2020_ID:&APP_ORG_ID.:'
,p_list_item_icon=>'fa-chain-broken'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT 1',
'  From Tbluser',
'  WHERE UPPER(user_name)=:APP_USER',
'  AND DISPLAY_WIZARD=''Y'';'))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3832234125906061593)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Human Resources Configuration'
,p_list_item_link_target=>'f?p=&APP_ID.:2020:&SESSION.::&DEBUG.::P2020_ID:&APP_ORG_ID.:'
,p_parent_list_item_id=>wwv_flow_imp.id(3854512161006781924)
,p_security_scheme=>wwv_flow_imp.id(3806876477283039123)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3807688093162398251)
,p_list_item_display_sequence=>91
,p_list_item_link_text=>'New Position'
,p_list_item_link_target=>'f?p=&APP_ID.:2024:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(3854512161006781924)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3824429804421370293)
,p_list_item_display_sequence=>92
,p_list_item_link_text=>'Short Listing & Recruitment coming soon'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(3854512161006781924)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3807686976636367637)
,p_list_item_display_sequence=>93
,p_list_item_link_text=>'New Employee coming soon'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(3854512161006781924)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3807685816657347056)
,p_list_item_display_sequence=>94
,p_list_item_link_text=>'NIS HR Processing coming soon'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(3854512161006781924)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3807640759954245995)
,p_list_item_display_sequence=>95
,p_list_item_link_text=>'Payroll Preparation & Execution coming soon'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(3854512161006781924)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3824428991733335131)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'On Boarding coming soon'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(3854512161006781924)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3832233550730055268)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>'Purchasing, Invenntory & Assets coming soon'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(3854512161006781924)
,p_security_scheme=>wwv_flow_imp.id(3853720164720814522)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3832233884336059059)
,p_list_item_display_sequence=>220
,p_list_item_link_text=>'General Ledger coming soon'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(3854512161006781924)
,p_security_scheme=>wwv_flow_imp.id(3825013553615196964)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3832233278657051945)
,p_list_item_display_sequence=>230
,p_list_item_link_text=>'Projects coming soon'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(3854512161006781924)
,p_security_scheme=>wwv_flow_imp.id(3825013399455168204)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3772662878898492787)
,p_list_item_display_sequence=>8
,p_list_item_link_text=>'Workflow'
,p_list_item_link_target=>'f?p=&APP_ID.:99:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-arrows-alt'
,p_list_text_01=>'&PCNT_NOTE.'
,p_list_text_02=>'app-navBar--notificationCount'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3854511146168759869)
,p_list_item_display_sequence=>12
,p_list_item_link_text=>'Reports '
,p_list_item_link_target=>'f?p=&APP_ID.:404:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-list-ul'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''TRANSACTION'''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(677713965434879654)
,p_list_item_display_sequence=>23
,p_list_item_link_text=>'Tools'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-exclamation-circle-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3806509640465764247)
,p_list_item_display_sequence=>9
,p_list_item_link_text=>'Security'
,p_list_item_link_target=>'f?p=&APP_ID.:199:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-key-alt'
,p_parent_list_item_id=>wwv_flow_imp.id(677713965434879654)
,p_security_scheme=>wwv_flow_imp.id(3798127399832092471)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3854510881529756359)
,p_list_item_display_sequence=>13
,p_list_item_link_text=>'Manage Reports'
,p_list_item_link_target=>'f?p=&APP_ID.:400:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-outdent'
,p_parent_list_item_id=>wwv_flow_imp.id(677713965434879654)
,p_security_scheme=>wwv_flow_imp.id(3806877091751039123)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3854510614391750997)
,p_list_item_display_sequence=>14
,p_list_item_link_text=>'Analytics '
,p_list_item_link_target=>'f?p=&APP_ID.:1370:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-pie-chart-5'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE trim(APPLICATION_TAB) = ''UTILITY'''))
,p_parent_list_item_id=>wwv_flow_imp.id(677713965434879654)
,p_security_scheme=>wwv_flow_imp.id(3798281280610898272)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3854510316703746096)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>'Utilities '
,p_list_item_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cog'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE trim(APPLICATION_TAB) = ''UTILITY''',
''))
,p_parent_list_item_id=>wwv_flow_imp.id(677713965434879654)
,p_security_scheme=>wwv_flow_imp.id(3798281697419905640)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3806890079295833951)
,p_list_item_display_sequence=>24
,p_list_item_link_text=>'More'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-exclamation-circle-o'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':APP_USER LIKE ''%@INNOSYSGY.COM'''
,p_list_item_disp_condition2=>'PLSQL'
,p_security_scheme=>wwv_flow_imp.id(3806877091751039123)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3695626272344036425)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Help'
,p_list_item_link_target=>'f?p=&APP_ID.:133:&SESSION.::&DEBUG.::P133_PAGE_ID:&APP_PAGE_ID.:'
,p_list_item_icon=>'fa-question-circle'
,p_parent_list_item_id=>wwv_flow_imp.id(3806890079295833951)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4132254049661654173)
,p_list_item_display_sequence=>3
,p_list_item_link_text=>'Whats New'
,p_list_item_link_target=>'f?p=&APP_ID.:2101:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-question-circle'
,p_parent_list_item_id=>wwv_flow_imp.id(3806890079295833951)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3806916870720328301)
,p_list_item_display_sequence=>4
,p_list_item_link_text=>'FAQ'
,p_list_item_link_target=>'f?p=&APP_ID.:1444:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-question-circle'
,p_parent_list_item_id=>wwv_flow_imp.id(3806890079295833951)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3854509500014714758)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>'Help Desk'
,p_list_item_link_target=>'javascript:var x=window.open(''https://g27af03a20b1899-innoapps.adb.us-ashburn-1.oraclecloudapps.com/ords/r/poultry/helpdesk/login_desktop'',''_blank'');'||wwv_flow.LF||
''
,p_list_item_icon=>'fa-list-alt'
,p_parent_list_item_id=>wwv_flow_imp.id(3806890079295833951)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3718159897920339043)
,p_list_item_display_sequence=>7
,p_list_item_link_text=>'Dev Tools'
,p_list_item_link_target=>'javascript:var x=window.open(''https://apex.oracle.com/pls/apex/apex_pm/r/icons/home'',''_blank'');'
,p_list_item_icon=>'fa-clipboard-wrench'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from tblresponsibility c ',
'where exists (select 1',
'             from tbluser a join tbluserdetail b on a.user_id=b.user_id',
'              where B.RESPONSIBILITY_ID=C.RESPONSIBILITY_ID',
'              and USER_NAME=nvl(v(''APP_USER''),user)',
'              and TRUNC(b.EFFECTIVE_FROM) <= TRUNC(current_date)',
'              and (TRUNC(b.effective_to) IS NULL OR TRUNC(b.effective_to) >= TRUNC(current_date))',
'              and upper(user_name) in (''RLANGFORD'',''GRACE.MCCALMAN'',''ANDREA.DAYAL'',''ANISLSA.WILLIAMSON'',''RSPRINGER'',''JAY.KHAN'',''AHERRERA'')',
'              )',
'and RESPONSIBILITY_NAME like ''%SYS%ADMIN%''',
''))
,p_parent_list_item_id=>wwv_flow_imp.id(3806890079295833951)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3718161550935487914)
,p_list_item_display_sequence=>8
,p_list_item_link_text=>'Apex Documentation'
,p_list_item_link_target=>'javascript:var x=window.open(''https://apex.oracle.com/en/learn/documentation/'',''_blank'');'
,p_list_item_icon=>'fa-align-left'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from tblresponsibility c ',
'where exists (select 1',
'             from tbluser a join tbluserdetail b on a.user_id=b.user_id',
'              where B.RESPONSIBILITY_ID=C.RESPONSIBILITY_ID',
'              and USER_NAME=nvl(v(''APP_USER''),user)',
'              and TRUNC(b.EFFECTIVE_FROM) <= TRUNC(current_date)',
'              and (TRUNC(b.effective_to) IS NULL OR TRUNC(b.effective_to) >= TRUNC(current_date))',
'              and upper(user_name) in (''RLANGFORD'',''GRACE.MCCALMAN'',''ANDREA.DAYAL'',''ANISLSA.WILLIAMSON'',''RSPRINGER'',''JAY.KHAN'',''AHERRERA'')',
'              )',
'and RESPONSIBILITY_NAME like ''%SYS%ADMIN%''',
''))
,p_parent_list_item_id=>wwv_flow_imp.id(3806890079295833951)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3712847420843336249)
,p_list_item_display_sequence=>11
,p_list_item_link_text=>'Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:101110:&SESSION.::&DEBUG.:101110:P101110_PAGE_ID:&APP_PAGE_ID.:'
,p_list_item_icon=>'fa-comment-o'
,p_parent_list_item_id=>wwv_flow_imp.id(3806890079295833951)
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(3712820628009336188)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(670985386115313054)
,p_list_item_display_sequence=>240
,p_list_item_link_text=>'User Guides'
,p_list_item_link_target=>'f?p=&APP_ID.:13040:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-book'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from vw_useraccess',
'where upper(user_name) like upper(''%@innosysgy.com'')'))
,p_parent_list_item_id=>wwv_flow_imp.id(3806890079295833951)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4132254531476659671)
,p_list_item_display_sequence=>25
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4741376669540397920)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_parent_list_item_id=>wwv_flow_imp.id(4132254531476659671)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
