prompt --application/shared_components/navigation/lists/hr_amalgated
begin
--   Manifest
--     LIST: HR_Amalgated
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>221824690189185566
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(3795444500299590743)
,p_name=>'HR_Amalgated'
,p_list_status=>'PUBLIC'
,p_version_scn=>41800189251138
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3795444336900590743)
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
 p_id=>wwv_flow_imp.id(3795443879755590742)
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
 p_id=>wwv_flow_imp.id(3795443079079590742)
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
 p_id=>wwv_flow_imp.id(3795442680325590742)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>'<b>Discipline</b>'
,p_list_item_link_target=>'f?p=&APP_ID.:1422:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-pied-piper-alt'
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
 p_id=>wwv_flow_imp.id(3795442328357590742)
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
 p_id=>wwv_flow_imp.id(3795441479480590742)
,p_list_item_display_sequence=>8
,p_list_item_link_text=>'<b>New/Old Employees</b>'
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
 p_id=>wwv_flow_imp.id(3795440728758590741)
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
 p_id=>wwv_flow_imp.id(3795439911761590741)
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
 p_id=>wwv_flow_imp.id(3795439474830590741)
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
 p_id=>wwv_flow_imp.id(3795439110394590741)
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
 p_id=>wwv_flow_imp.id(3795438333949590741)
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
 p_id=>wwv_flow_imp.id(3795437483594590741)
,p_list_item_display_sequence=>17
,p_list_item_link_text=>'<b>New References</b>'
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
 p_id=>wwv_flow_imp.id(3795431395124458072)
,p_list_item_display_sequence=>27
,p_list_item_link_text=>'<b>Miscellaneous</b>'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
