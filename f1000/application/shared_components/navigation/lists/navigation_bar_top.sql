prompt --application/shared_components/navigation/lists/navigation_bar_top
begin
--   Manifest
--     LIST: Navigation Bar (Top)
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>1000
,p_default_id_offset=>221683928681757931
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(4741517151579476908)
,p_name=>'Navigation Bar (Top)'
,p_list_status=>'PUBLIC'
,p_version_scn=>44428996139938
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(663592254262750612)
,p_list_item_display_sequence=>0
,p_list_item_link_text=>'Search'
,p_list_item_link_target=>'f?p=&APP_ID.:249:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-flashlight'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(677855743038969789)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Chat'
,p_list_item_link_target=>'f?p=&APP_ID.:4806:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-comments'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3854652830867860935)
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
 p_id=>wwv_flow_imp.id(3832374795767140604)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Human Resources Configuration'
,p_list_item_link_target=>'f?p=&APP_ID.:2020:&SESSION.::&DEBUG.::P2020_ID:&APP_ORG_ID.:'
,p_parent_list_item_id=>wwv_flow_imp.id(3854652830867860935)
,p_security_scheme=>wwv_flow_imp.id(3807017147144118134)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3807828763023477262)
,p_list_item_display_sequence=>91
,p_list_item_link_text=>'New Position'
,p_list_item_link_target=>'f?p=&APP_ID.:2024:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(3854652830867860935)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3824570474282449304)
,p_list_item_display_sequence=>92
,p_list_item_link_text=>'Short Listing & Recruitment coming soon'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(3854652830867860935)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3807827646497446648)
,p_list_item_display_sequence=>93
,p_list_item_link_text=>'New Employee coming soon'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(3854652830867860935)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3807826486518426067)
,p_list_item_display_sequence=>94
,p_list_item_link_text=>'NIS HR Processing coming soon'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(3854652830867860935)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3807781429815325006)
,p_list_item_display_sequence=>95
,p_list_item_link_text=>'Payroll Preparation & Execution coming soon'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(3854652830867860935)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3824569661594414142)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'On Boarding coming soon'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(3854652830867860935)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3832374220591134279)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>'Purchasing, Invenntory & Assets coming soon'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(3854652830867860935)
,p_security_scheme=>wwv_flow_imp.id(3853860834581893533)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3832374554197138070)
,p_list_item_display_sequence=>220
,p_list_item_link_text=>'General Ledger coming soon'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(3854652830867860935)
,p_security_scheme=>wwv_flow_imp.id(3825154223476275975)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3832373948518130956)
,p_list_item_display_sequence=>230
,p_list_item_link_text=>'Projects coming soon'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(3854652830867860935)
,p_security_scheme=>wwv_flow_imp.id(3825154069316247215)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3772803548759571798)
,p_list_item_display_sequence=>8
,p_list_item_link_text=>'Workflow'
,p_list_item_link_target=>'f?p=&APP_ID.:99:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-arrows-alt'
,p_list_text_01=>'&PCNT_NOTE.'
,p_list_text_02=>'app-navBar--notificationCount'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3854651816029838880)
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
 p_id=>wwv_flow_imp.id(677854635295958665)
,p_list_item_display_sequence=>23
,p_list_item_link_text=>'Tools'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-exclamation-circle-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3806650310326843258)
,p_list_item_display_sequence=>9
,p_list_item_link_text=>'Security'
,p_list_item_link_target=>'f?p=&APP_ID.:199:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-key-alt'
,p_parent_list_item_id=>wwv_flow_imp.id(677854635295958665)
,p_security_scheme=>wwv_flow_imp.id(3798268069693171482)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3854651551390835370)
,p_list_item_display_sequence=>13
,p_list_item_link_text=>'Manage Reports'
,p_list_item_link_target=>'f?p=&APP_ID.:400:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-outdent'
,p_parent_list_item_id=>wwv_flow_imp.id(677854635295958665)
,p_security_scheme=>wwv_flow_imp.id(3807017761612118134)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3854651284252830008)
,p_list_item_display_sequence=>14
,p_list_item_link_text=>'Analytics '
,p_list_item_link_target=>'f?p=&APP_ID.:1370:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-pie-chart-5'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE trim(APPLICATION_TAB) = ''UTILITY'''))
,p_parent_list_item_id=>wwv_flow_imp.id(677854635295958665)
,p_security_scheme=>wwv_flow_imp.id(3798421950471977283)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3854650986564825107)
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
,p_parent_list_item_id=>wwv_flow_imp.id(677854635295958665)
,p_security_scheme=>wwv_flow_imp.id(3798422367280984651)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3807030749156912962)
,p_list_item_display_sequence=>24
,p_list_item_link_text=>'More'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-exclamation-circle-o'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':APP_USER LIKE ''%@INNOSYSGY.COM'''
,p_list_item_disp_condition2=>'PLSQL'
,p_security_scheme=>wwv_flow_imp.id(3807017761612118134)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3695766942205115436)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Help'
,p_list_item_link_target=>'f?p=&APP_ID.:133:&SESSION.::&DEBUG.::P133_PAGE_ID:&APP_PAGE_ID.:'
,p_list_item_icon=>'fa-question-circle'
,p_parent_list_item_id=>wwv_flow_imp.id(3807030749156912962)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4132394719522733184)
,p_list_item_display_sequence=>3
,p_list_item_link_text=>'Whats New'
,p_list_item_link_target=>'f?p=&APP_ID.:2101:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-question-circle'
,p_parent_list_item_id=>wwv_flow_imp.id(3807030749156912962)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3807057540581407312)
,p_list_item_display_sequence=>4
,p_list_item_link_text=>'FAQ'
,p_list_item_link_target=>'f?p=&APP_ID.:1444:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-question-circle'
,p_parent_list_item_id=>wwv_flow_imp.id(3807030749156912962)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3854650169875793769)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>'Help Desk'
,p_list_item_link_target=>'javascript:var x=window.open(''https://g27af03a20b1899-innoapps.adb.us-ashburn-1.oraclecloudapps.com/ords/r/poultry/helpdesk/login_desktop'',''_blank'');'||wwv_flow.LF||
''
,p_list_item_icon=>'fa-list-alt'
,p_parent_list_item_id=>wwv_flow_imp.id(3807030749156912962)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3718300567781418054)
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
,p_parent_list_item_id=>wwv_flow_imp.id(3807030749156912962)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3718302220796566925)
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
,p_parent_list_item_id=>wwv_flow_imp.id(3807030749156912962)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3712988090704415260)
,p_list_item_display_sequence=>11
,p_list_item_link_text=>'Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:101110:&SESSION.::&DEBUG.:101110:P101110_PAGE_ID:&APP_PAGE_ID.:'
,p_list_item_icon=>'fa-comment-o'
,p_parent_list_item_id=>wwv_flow_imp.id(3807030749156912962)
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(3712961297870415199)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(671126055976392065)
,p_list_item_display_sequence=>240
,p_list_item_link_text=>'User Guides'
,p_list_item_link_target=>'f?p=&APP_ID.:13040:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-book'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from vw_useraccess',
'where upper(user_name) like upper(''%@innosysgy.com'')'))
,p_parent_list_item_id=>wwv_flow_imp.id(3807030749156912962)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4132395201337738682)
,p_list_item_display_sequence=>25
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4741517339401476931)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_parent_list_item_id=>wwv_flow_imp.id(4132395201337738682)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
