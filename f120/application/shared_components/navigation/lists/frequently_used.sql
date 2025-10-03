prompt --application/shared_components/navigation/lists/frequently_used
begin
--   Manifest
--     LIST: Frequently_Used
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
 p_id=>wwv_flow_imp.id(3632985547248634237)
,p_name=>'Frequently_Used'
,p_list_status=>'PUBLIC'
,p_version_scn=>41800191727182
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3632985190278634231)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'<b>Activity</b>'
,p_list_item_link_target=>'f?p=&APP_ID.:1435:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bicycle'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''TRANSACTION''',
'AND upper(WEBPAGE_NAME)=''RPTACTIVITYHISTORY'''))
,p_list_text_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Manage none work activities.',
'Training, Jury Service & Manual Time Punches '))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3632984860154634229)
,p_list_item_display_sequence=>2
,p_list_item_link_text=>'<b>Appraisal</b>'
,p_list_item_link_target=>'f?p=&APP_ID.:1495:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-graduation-cap'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''TRANSACTION''',
'AND upper(WEBPAGE_NAME)=''RPTEMPAPPRAISAL'''))
,p_list_text_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Evaluation of employee performance ',
'over an specific period of time.'))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3632984441384634228)
,p_list_item_display_sequence=>3
,p_list_item_link_text=>'<b>Calendar</b>'
,p_list_item_link_target=>'f?p=&APP_ID.:1442:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''UTILITY''',
'AND upper(WEBPAGE_NAME)=''FRMEMPCALENDAR'''))
,p_list_text_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Every employee has a calendar',
'which is a repository for HR processes.'))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3632983974703634228)
,p_list_item_display_sequence=>4
,p_list_item_link_text=>'<b>Deductions</b>'
,p_list_item_link_target=>'f?p=&APP_ID.:1296:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cut'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''SETUP''',
'AND upper(WEBPAGE_NAME)=''RPTADMINDEDUCTIONS'''))
,p_list_text_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Manages all non-statutory deductions',
'categorised by employee or employer,',
'recurring or fixed period'))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3632983604416634228)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>'<b>Discipline</b>'
,p_list_item_link_target=>'f?p=&APP_ID.:1422:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-gavel'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''TRANSACTION''',
'AND upper(WEBPAGE_NAME)=''RPTOFFENCEHISTORY'''))
,p_list_text_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Employer aspect of Grievance Management.',
'Records actions taken by the company when code of conduct is broken.'))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3632977579086634220)
,p_list_item_display_sequence=>6
,p_list_item_link_text=>'<b>Document Center</b>'
,p_list_item_link_target=>'f?p=&APP_ID.:128:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''TRANSACTION''',
'AND upper(WEBPAGE_NAME)=''RPTMEDIAHEADER'''))
,p_list_text_01=>'Feature rich HR Document management module. Allows for annotations to any record in any module. The creation of Rich text documents stored in the database, and lastly the attachment of any document. Preview options in PDF is available.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3632982842180634228)
,p_list_item_display_sequence=>7
,p_list_item_link_text=>'<b>Earnings Period</b>'
,p_list_item_link_target=>'f?p=&APP_ID.:1240:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-list-alt'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE upper(WEBPAGE_NAME)=''RPTEARNINGSPERIOD'''))
,p_list_text_01=>'Specific start and end date used for HR and Payroll processes e.g Calendar, time punches and computation of Salary.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3632982389353634227)
,p_list_item_display_sequence=>8
,p_list_item_link_text=>'<b>Employees</b>'
,p_list_item_link_target=>'f?p=&APP_ID.:1280:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-male'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''SETUP''',
'AND upper(WEBPAGE_NAME)=''RPTEMPLOYEE'''))
,p_list_text_01=>'Workers for the company. Commonly classified by employment classes which define contractual obligation for conditions of work related to benefits, incentives, hours of work and salary.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3632981967872634227)
,p_list_item_display_sequence=>9
,p_list_item_link_text=>'<b>Forward</b>'
,p_list_item_link_target=>'f?p=&APP_ID.:1390:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-toggle-right'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''UTILITY''',
'AND upper(WEBPAGE_NAME)=''RPTWRKFLWFORWARDLIST'''))
,p_list_text_01=>'Predefines the flows of notifications in the software. These are initiated either by a users or the system.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3632981597641634227)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'<b>Individuals</b>'
,p_list_item_link_target=>'f?p=&APP_ID.:1260:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-child'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''SETUP''',
'AND upper(WEBPAGE_NAME)=''RPTINDIVIDUAL'''))
,p_list_text_01=>'Data on everyone who directly (employees) or indirectly (references, relatives and friends) interacts with the software through their data use.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3632983218156634228)
,p_list_item_display_sequence=>11
,p_list_item_link_text=>'<b>Hiring</b>'
,p_list_item_link_target=>'f?p=&APP_ID.:2008:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-text'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''TRANSACTION''',
'AND upper(WEBPAGE_NAME)=''RPTMEDIAHEADER'''))
,p_list_text_01=>'PeoplePay HRMIS has complete Recruitment Cycle automation. Starting from staff Requisition to Hiring. This system has online CV submission, interview assessment and online Referee assessment.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3632981178661634227)
,p_list_item_display_sequence=>11
,p_list_item_link_text=>'<b>Leave</b>'
,p_list_item_link_target=>'f?p=&APP_ID.:1416:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-plane'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''TRANSACTION''',
'AND upper(WEBPAGE_NAME)=''RPTLEAVEHISTORY'''))
,p_list_text_01=>'Absent management is crucial to the HR management process. Use Leave management to classify away time by leave types and whether the employee will paid for it or actually be away from work.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3632980845132634227)
,p_list_item_display_sequence=>12
,p_list_item_link_text=>'<b>Medicals</b>'
,p_list_item_link_target=>'f?p=&APP_ID.:1408:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-medkit'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''TRANSACTION''',
'AND upper(WEBPAGE_NAME)=''RPTMEDICALHISTORY''',
''))
,p_list_text_01=>'Manages three types of medical certificates national insurance, annual medicals and employment medicals. At the very least employers by law should manage national insurance medicals submitted by employees.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3632980442762634225)
,p_list_item_display_sequence=>13
,p_list_item_link_text=>'<b>Movement</b>'
,p_list_item_link_target=>'f?p=&APP_ID.:1412:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-arrows'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''TRANSACTION''',
'AND upper(WEBPAGE_NAME)=''RPTEMPMOVEMENT''',
''))
,p_list_text_01=>'Employee progression or regression during their work stint needs to be managed. Movement covers Acting, Transfer, Promotion, Demotion, Re-Employment, Out-Station, Seconded and Re-Assignment.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3632980061622634225)
,p_list_item_display_sequence=>14
,p_list_item_link_text=>'<b>Pay Query</b>'
,p_list_item_link_target=>'f?p=&APP_ID.:1500:&SESSION.::&DEBUG.:1500:::'
,p_list_item_icon=>'fa-spinner'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''UTILITY''',
'AND upper(WEBPAGE_NAME)=''RPTPAYROLLTROUBLESHOOT''',
''))
,p_list_text_01=>'Use this utility to troubleshoot and validate keep rules and parameters required for payroll execution.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3632979619691634224)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>'<b>Payroll</b>'
,p_list_item_link_target=>'f?p=&APP_ID.:1250:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-dollar'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''TRANSACTION''',
'AND upper(WEBPAGE_NAME)=''RPTPAYROLLHEAD'''))
,p_list_text_01=>'Execute payrolls, specific to an earnings period. Payroll execution involved pre-processing i.e. the accumulation of gross pay, by addition of entries for manual entitlements e.g. overtime, meal allowance etc. These entries can be done via post entri'
||'es, quick entries or generation based on past payroll entries.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3632979242141634224)
,p_list_item_display_sequence=>16
,p_list_item_link_text=>'<b>Payslip</b>'
,p_list_item_link_target=>'f?p=&APP_ID.:1355:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-money'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''UTILITY''',
'AND upper(WEBPAGE_NAME)=''RPTPAYROLLANALYSIS''',
''))
,p_list_text_01=>'A report that list in detail all earnings, allowances, incentives & benefits along with all deductions statutory or non-statutory. PeoplePay payslip displays in detail all non-statutory deductions on employee payslip e.g. University loan repayment, m'
||'ortgage deductions etc.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3632978824415634224)
,p_list_item_display_sequence=>17
,p_list_item_link_text=>'<b>References</b>'
,p_list_item_link_target=>'f?p=&APP_ID.:1200:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-list-alt'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''SETUP''',
'AND upper(WEBPAGE_NAME)=''RPTLOOKUP''',
''))
,p_list_text_01=>'Repository for all system references e.g. towns, villages and wards.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3632978434201634221)
,p_list_item_display_sequence=>18
,p_list_item_link_text=>'<b>eNIS</b>'
,p_list_item_link_target=>'f?p=&APP_ID.:1403:&SESSION.::&DEBUG.:1403:::'
,p_list_item_icon=>'fa-bolt'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''UTILITY''',
'AND upper(WEBPAGE_NAME)=''FRMENIS'''))
,p_list_text_01=>'Use to electronically remit employee deductions made for National Insurance.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3632977984131634220)
,p_list_item_display_sequence=>19
,p_list_item_link_text=>'<b>eTAX</b>'
,p_list_item_link_target=>'f?p=&APP_ID.:3011:&SESSION.::&DEBUG.:3011:::'
,p_list_item_icon=>'fa-keyboard-o'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE upper(WEBPAGE_NAME)=''RPTVIEWBFEXPORT''',
''))
,p_list_text_01=>'Use to electronically remit employee deductions made for PAYE or payroll taxes.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3625964373686129898)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'<b> eBanking </b>'
,p_list_item_link_target=>'f?p=&APP_ID.:1404:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-dollar'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE upper(WEBPAGE_NAME)=''FRMEBANKINGRBGL''',
''))
,p_list_text_01=>'Electronic remittance of wages and salary specific to the banks assigned. The system produces either CSV or text files for importation to the banks system. '
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3573026958372557489)
,p_list_item_display_sequence=>29
,p_list_item_link_text=>'<b> MMG Disbursement </b>'
,p_list_item_link_target=>'f?p=&APP_ID.:1003:&SESSION.::&DEBUG.:1003:::'
,p_list_item_icon=>'fa-money'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE upper(WEBPAGE_NAME)=''RPTMMGDISBURSEMENT''',
''))
,p_list_text_01=>'Ensure your company is a registered agent or merchant and employees has valid MMG accounts, before attempting to remit employee salary.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3602535871531744611)
,p_list_item_display_sequence=>49
,p_list_item_link_text=>'<b> Referee Evaluation </b> '
,p_list_item_link_target=>'f?p=&APP_ID.:9969:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-emoji-sweet-smile'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from tbluser a join tbluserdetail b on a.user_id=b.user_id',
'join tblresponsibility c on c.responsibility_id=b.responsibility_id',
'where user_name=:APP_USER',
'and UPPER(c.responsibility_name)=''ONLINE REFERENCING'''))
,p_list_text_01=>'This feature allows Referees to respond to specific questions are by the employer about potential employees.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
