prompt --application/shared_components/navigation/lists/global_search
begin
--   Manifest
--     LIST: Global_Search
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(3632960637577005981)
,p_name=>'Global_Search'
,p_list_status=>'PUBLIC'
,p_version_scn=>45057943763703
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3632960273924005976)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Remuneration'
,p_list_item_link_target=>'f?p=&APP_ID.:1401:&SESSION.::&DEBUG.:1401:P1401_STAY:REMUNERATION:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#remuneration.png'
,p_list_item_icon_attributes=>'height="64" width="64"'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''UTILITY''',
'AND upper(WEBPAGE_NAME)=''FRMGENERATOR'''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3632959897990005971)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Requirement'
,p_list_item_link_target=>'f?p=&APP_ID.:1401:&SESSION.::&DEBUG.:1401:P1401_STAY:REQUIREMENT:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#requirement.png'
,p_list_item_icon_attributes=>'height="64" width="64"'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''UTILITY''',
'AND upper(WEBPAGE_NAME)=''FRMGENERATOR'''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3632959559424005971)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Leave'
,p_list_item_link_target=>'f?p=&APP_ID.:1402:&SESSION.::&DEBUG.:1402:P1401_STAY:LEAVEENT:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#vacation.png'
,p_list_item_icon_attributes=>'height="64" width="64"'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''UTILITY''',
'AND upper(WEBPAGE_NAME)=''FRMGENERATELEAVE''',
''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3632959143762005971)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Deductions'
,p_list_item_link_target=>'f?p=&APP_ID.:1401:&SESSION.::&DEBUG.:1401:P1401_STAY:DEDUCTION:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#deductions.png'
,p_list_item_icon_attributes=>'height="64" width="64"'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''UTILITY''',
'AND upper(WEBPAGE_NAME)=''FRMGENERATOR'''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3632958697769005971)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'eNIS'
,p_list_item_link_target=>'f?p=&APP_ID.:1403:&SESSION.::&DEBUG.:1403:::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#enis.png'
,p_list_item_icon_attributes=>'height="64" width="64"'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''UTILITY''',
'AND upper(WEBPAGE_NAME)=''FRMENIS''',
''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3632958300681005971)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'eBanking'
,p_list_item_link_target=>'f?p=&APP_ID.:1404:&SESSION.::&DEBUG.:1404:::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#ebanking.png'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''UTILITY''',
'AND upper(WEBPAGE_NAME)=''FRMEBANKINGRBGL'''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3632957924211005969)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Generate Flow List'
,p_list_item_link_target=>'f?p=&APP_ID.:1401:&SESSION.::&DEBUG.:1401:P1401_STAY:FORWARD:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#generate workflow.png'
,p_list_item_icon_attributes=>'height="64" width="64"'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''UTILITY''',
'AND upper(WEBPAGE_NAME)=''FRMGENERATOR'''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(334822299959758181)
,p_list_item_display_sequence=>91
,p_list_item_link_text=>'Attribute Setup'
,p_list_item_link_target=>'f?p=&APP_ID.:3150:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3632957536683005969)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Etime Uploading'
,p_list_item_link_target=>'f?p=&APP_ID.:1371:&SESSION.::&DEBUG.:1371:::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#Upload_timesheets.png'
,p_list_item_icon_attributes=>'height="64" width="64"'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''UTILITY''',
'AND upper(WEBPAGE_NAME)=''RPTETIMESHEETLOAD''',
''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3602430367440537182)
,p_list_item_display_sequence=>105
,p_list_item_link_text=>'Etime Uploading QSSI'
,p_list_item_link_target=>'f?p=&APP_ID.:7000:&SESSION.::&DEBUG.:7000:::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#Upload_timesheets.png'
,p_list_item_icon_attributes=>'height="64" width="64"'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''UTILITY''',
'AND upper(WEBPAGE_NAME)=''RPTETIMESHEETLOAD''',
'AND :APP_ORG_ID=8375'))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3632957100071005969)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Remuneration Changes'
,p_list_item_link_target=>'f?p=&APP_ID.:1470:&SESSION.::&DEBUG.:1470:::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#salary_increase.png'
,p_list_item_icon_attributes=>'height="64" width="64"'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''UTILITY''',
'AND upper(WEBPAGE_NAME)=''RPTSALARYINCREASE''',
''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3632956713558005969)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Updates'
,p_list_item_link_target=>'f?p=&APP_ID.:2015:&SESSION.::&DEBUG.:2015:::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#SoftwareUpdates.png'
,p_list_item_icon_attributes=>'height="64" width="64"'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''UTILITY''',
'AND upper(WEBPAGE_NAME)=''RPTRELEASE_CHECKLIST''',
'and :APP_USER=''PEOPLEPAY'''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3632956276709005968)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'GRA eRemit'
,p_list_item_link_target=>'f?p=&APP_ID.:3011:&SESSION.::&DEBUG.:3011:::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#paying_taxes.png'
,p_list_item_icon_attributes=>'height="64" width="64"'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''UTILITY''',
'AND upper(WEBPAGE_NAME)=''RPTVIEWBFEXPORT'''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3632955962159005968)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'System No. Configuration'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:16:::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#clipart-numbers.jpeg'
,p_list_item_icon_attributes=>'height="64" width="64"'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''UTILITY''',
'AND upper(WEBPAGE_NAME)=''FRMSYSNUMBER''',
''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3603733120952377457)
,p_list_item_display_sequence=>141
,p_list_item_link_text=>'Notification Scheduler'
,p_list_item_link_target=>'f?p=&APP_ID.:308:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3632955510468005967)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'Move Reporting To'
,p_list_item_link_target=>'f?p=&APP_ID.:1025:&SESSION.::&DEBUG.:1025:::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#em_movement1.jpg'
,p_list_item_icon_attributes=>'height="64" width="64"'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''UTILITY''',
'AND upper(WEBPAGE_NAME)=''FRMMASSMIGRATION'''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3632955117946005967)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Move Position Location'
,p_list_item_link_target=>'f?p=&APP_ID.:1026:&SESSION.::&DEBUG.:1026:::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#emp_movement2.png'
,p_list_item_icon_attributes=>'height="64" width="64"'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''UTILITY''',
'AND upper(WEBPAGE_NAME)=''FRMMASSMIGRATION2'''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3604270932110867480)
,p_list_item_display_sequence=>161
,p_list_item_link_text=>'Move Payment Frequency'
,p_list_item_link_target=>'f?p=&APP_ID.:1001:&SESSION.::&DEBUG.::::'
,p_list_text_01=>'Facilitates mass movement of employee from one payment type to another, along with employment class change. System will generate proposed new salary and requirements.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3632954755630005966)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>'Upload Quotation'
,p_list_item_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3583789176915598875)
,p_list_item_display_sequence=>190
,p_list_item_link_text=>'Load Previous YTD'
,p_list_item_link_target=>'f?p=&APP_ID.:6100:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3583187418290978296)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>'Load Individual & Employee'
,p_list_item_link_target=>'f?p=&APP_ID.:6120:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3582385002908178557)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>'Load YTD Leave'
,p_list_item_link_target=>'f?p=&APP_ID.:6180:&SESSION.::&DEBUG.::::'
,p_list_text_01=>'Load data into the following fields only: emp_id, pending, company_year and leave_type. Ensure that leave type spelling match those assigned in the leave entitlements'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3573027433703570283)
,p_list_item_display_sequence=>220
,p_list_item_link_text=>'MMG Disbursement'
,p_list_item_link_target=>'f?p=&APP_ID.:1003:&SESSION.::&DEBUG.:1003:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3620996005044127582)
,p_list_item_display_sequence=>230
,p_list_item_link_text=>'Global Posting Search'
,p_list_item_link_target=>'f?p=&APP_ID.:492:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''UTILITY''',
'AND upper(WEBPAGE_NAME)=''RPTGLOBALPOSTINGSEARCH'''))
,p_list_text_01=>'Allows the querying of payroll entries specific to user access across multiple payroll periods'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3620473907477356332)
,p_list_item_display_sequence=>240
,p_list_item_link_text=>'Mass Employee Inter-Organisation Transfer'
,p_list_item_link_target=>'f?p=&APP_ID.:491:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''UTILITY''',
'AND upper(WEBPAGE_NAME)=''FRMMASSINTERORGTRANSFER'''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3618830154207123771)
,p_list_item_display_sequence=>250
,p_list_item_link_text=>'Global Payslip Search'
,p_list_item_link_target=>'f?p=&APP_ID.:70:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''UTILITY''',
'AND upper(WEBPAGE_NAME)=''RPTGLOBALPAYSLIPSEARCH'''))
,p_list_text_01=>'Allows you to search across payroll periods for employee payments'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3498703243793522854)
,p_list_item_display_sequence=>260
,p_list_item_link_text=>'Broadcast Messages'
,p_list_item_link_target=>'f?p=&APP_ID.:90:&SESSION.::&DEBUG.::::'
,p_list_text_01=>'Send messages throughout the entire application, to all users'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3474110872462466600)
,p_list_item_display_sequence=>270
,p_list_item_link_text=>'Page Help'
,p_list_item_link_target=>'f?p=&APP_ID.:132:&SESSION.::&DEBUG.::::'
,p_list_text_01=>'On this page you can see all the help that was added for specific pages also you can add help for pages that do not have.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3569786069368095882)
,p_list_item_display_sequence=>280
,p_list_item_link_text=>'Summary Timesheet Load'
,p_list_item_link_target=>'f?p=&APP_ID.:161:&SESSION.::&DEBUG.::::'
,p_list_text_01=>'Load Gpl Approved hours and absence hours into payroll'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(337979664996431001)
,p_list_item_display_sequence=>290
,p_list_item_link_text=>'Debug Payroll'
,p_list_item_link_target=>'f?p=&APP_ID.:1255:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':APP_USER like ''%@INNOSYSGY.COM'''
,p_list_item_disp_condition2=>'PLSQL'
,p_security_scheme=>wwv_flow_imp.id(3585333832930360203)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(197528624750731809)
,p_list_item_display_sequence=>300
,p_list_item_link_text=>'Application Page help'
,p_list_item_link_target=>'f?p=&APP_ID.:10200:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-address-card-o'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'upper(:APP_USER) like ''%@INNOSYSGY%'''
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_01=>'Allows you to enter help for page items that need explanation or clarification. It is then shown dynamically based on the page you are on. Only System Adminstrators can see this.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
