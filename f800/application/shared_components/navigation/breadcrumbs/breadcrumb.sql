prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
--   Manifest
--     MENU: Breadcrumb
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
 p_id=>wwv_flow_imp.id(10988316897241556436)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(414632633399368014)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Departmental Incomes'
,p_link=>'f?p=&APP_ID.:1400:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1400
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(422292164147073524)
,p_parent_id=>wwv_flow_imp.id(676293528992587804)
,p_short_name=>'Manage Address'
,p_link=>'f?p=&APP_ID.:1270:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1270
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(422327736267122709)
,p_parent_id=>wwv_flow_imp.id(676293528992587804)
,p_short_name=>'National Identifiers'
,p_link=>'f?p=&APP_ID.:1271:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1271
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(422362543418159299)
,p_parent_id=>wwv_flow_imp.id(676293528992587804)
,p_short_name=>'Employment History'
,p_link=>'f?p=&APP_ID.:1273:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1273
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(527879871919529537)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Upload Data'
,p_link=>'f?p=&APP_ID.:244:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>244
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(529552350689634079)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>' Employees with Negative Netpay'
,p_link=>'f?p=&APP_ID.:1506:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1506
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(530171371049067499)
,p_short_name=>'frmfileoutput'
,p_link=>'f?p=&APP_ID.:219:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>219
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(556416158694535823)
,p_parent_id=>wwv_flow_imp.id(697496044851220158)
,p_short_name=>'Attribute Setup'
,p_link=>'f?p=&APP_ID.:3150:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>3150
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(559163020142368514)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of Debug Payrolls'
,p_link=>'f?p=&APP_ID.:1255:&SESSION.::&DEBUG.:::'
,p_page_id=>1255
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(559364030347403827)
,p_parent_id=>wwv_flow_imp.id(559163020142368514)
,p_short_name=>'Manage Debug Payroll'
,p_link=>'f?p=&APP_ID.:1256:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1256
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(565979909005393226)
,p_parent_id=>wwv_flow_imp.id(609060724717392239)
,p_short_name=>'Manage Employee Holiday'
,p_link=>'f?p=&APP_ID.:1322:&SESSION.::&DEBUG.:::'
,p_page_id=>1322
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(574621714439550817)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'HR Exports To Payroll'
,p_link=>'f?p=&APP_ID.:1350:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1350
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(578933511795524190)
,p_short_name=>'Create/Edit Tax Rate'
,p_link=>'f?p=&APP_ID.:1314:&SESSION.::&DEBUG.:::'
,p_page_id=>1314
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(587117048276482516)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Payroll Legacy'
,p_link=>'f?p=&APP_ID.:179:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>179
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(587157033710220412)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'List of Accessible Reports'
,p_link=>'f?p=&APP_ID.:400:&SESSION.::&DEBUG.:::'
,p_page_id=>400
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(587157226096215854)
,p_parent_id=>wwv_flow_imp.id(587157033710220412)
,p_short_name=>'Setup Reports'
,p_link=>'f?p=&APP_ID.:401:&SESSION.::&DEBUG.:::'
,p_page_id=>401
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(590847269027129737)
,p_parent_id=>wwv_flow_imp.id(3726036906110890865)
,p_short_name=>'Create&#x2F;Edit New Employment'
,p_link=>'f?p=&APP_ID.:109:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>109
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(609060724717392239)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Manage Holidays'
,p_link=>'f?p=&APP_ID.:1319:&SESSION.::&DEBUG.:::'
,p_page_id=>1319
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(613676409462252944)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Allowance Uploader'
,p_page_id=>1465
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(614172952205364137)
,p_parent_id=>wwv_flow_imp.id(3381393692986089437)
,p_short_name=>'Create&#x2F;Edit Remuneration'
,p_link=>'f?p=&APP_ID.:13001:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13001
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(614270702947429436)
,p_parent_id=>wwv_flow_imp.id(3488415853191375268)
,p_short_name=>'Other Remuneration'
,p_link=>'f?p=&APP_ID.:1285:&SESSION.::&DEBUG.:::'
,p_page_id=>1285
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(643832368880099181)
,p_parent_id=>wwv_flow_imp.id(3726186293838184190)
,p_short_name=>'Manage Grade/Salary Scales'
,p_link=>'f?p=&APP_ID.:1309:&SESSION.::&DEBUG.:::'
,p_page_id=>1309
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(644960628526336622)
,p_short_name=>'Search Directory'
,p_link=>'f?p=&APP_ID.:103:&SESSION.::&DEBUG.:::'
,p_page_id=>103
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(644962509780274685)
,p_parent_id=>wwv_flow_imp.id(644960628526336622)
,p_short_name=>'Manage Directories'
,p_link=>'f?p=&APP_ID.:104:&SESSION.::&DEBUG.:::'
,p_page_id=>104
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(647841949170735051)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Search Individual Files'
,p_link=>'f?p=&APP_ID.:9000:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>9000
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(647883323892614320)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>' Search Employee Files'
,p_link=>'f?p=&APP_ID.:150:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>150
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(651081844372062796)
,p_parent_id=>wwv_flow_imp.id(3689980930543289610)
,p_short_name=>'Create&#x2F;Edit Contract Safety Gears'
,p_link=>'f?p=&APP_ID.:4077:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4077
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(654136070981131545)
,p_parent_id=>wwv_flow_imp.id(657111351001679142)
,p_short_name=>'Create &#x2F;Edit Leave Policy'
,p_link=>'f?p=&APP_ID.:11998:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>11998
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(657111351001679142)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of Leave Policies'
,p_link=>'f?p=&APP_ID.:11999:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>11999
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(661369907293656187)
,p_parent_id=>wwv_flow_imp.id(697496044851220158)
,p_short_name=>'Listing of Employee Leave Track'
,p_link=>'f?p=&APP_ID.:1433:&SESSION.::&DEBUG.:::'
,p_page_id=>1433
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(661981751920999341)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Procore Timesheets'
,p_link=>'f?p=&APP_ID.:245:&SESSION.::&DEBUG.:::'
,p_page_id=>245
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(662013826591237168)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of Employee Leave Records'
,p_link=>'f?p=&APP_ID.:1416:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1416
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(663445930934627012)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Global PeoplePay Search'
,p_link=>'f?p=&APP_ID.:249:&SESSION.::&DEBUG.:::'
,p_page_id=>249
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(663497601935758665)
,p_parent_id=>wwv_flow_imp.id(662013826591237168)
,p_short_name=>'Manage Leave Request'
,p_link=>'f?p=&APP_ID.:1417:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1417
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(664446036858229283)
,p_short_name=>'Antigua & Barbuda Educaton Levy'
,p_link=>'f?p=&APP_ID.:1486:&SESSION.::&DEBUG.:::'
,p_page_id=>1486
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(667360650403685421)
,p_short_name=>'Edit Course Configuration'
,p_link=>'f?p=&APP_ID.:312:&SESSION.::&DEBUG.:::'
,p_page_id=>312
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670057278757968265)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Employee Holidays'
,p_link=>'f?p=&APP_ID.:1339:&SESSION.::&DEBUG.:::'
,p_page_id=>1339
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670063823248005174)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Leave Types'
,p_link=>'f?p=&APP_ID.:216:&SESSION.::&DEBUG.:::'
,p_page_id=>216
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670064098668011717)
,p_parent_id=>wwv_flow_imp.id(670063823248005174)
,p_short_name=>'Configure Leave Types'
,p_link=>'f?p=&APP_ID.:221:&SESSION.::&DEBUG.:::'
,p_page_id=>221
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670150112522918048)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Find, Filter and Organize Projects'
,p_link=>'f?p=&APP_ID.:1700:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1700
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670166212977934336)
,p_parent_id=>wwv_flow_imp.id(670150112522918048)
,p_short_name=>'Manage Projects'
,p_link=>'f?p=&APP_ID.:1710:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1710
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670189419959546726)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Earning Periods'
,p_link=>'f?p=&APP_ID.:1240:&SESSION.::&DEBUG.:::'
,p_page_id=>1240
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670189630538550293)
,p_parent_id=>wwv_flow_imp.id(670189419959546726)
,p_short_name=>'Configure Earning Period'
,p_link=>'f?p=&APP_ID.:1241:&SESSION.::&DEBUG.:::'
,p_page_id=>1241
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670191735795580392)
,p_short_name=>'Org Structures'
,p_link=>'f?p=&APP_ID.:1293:&SESSION.::&DEBUG.:::'
,p_page_id=>1293
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670196776193704593)
,p_short_name=>'Job Interviews'
,p_link=>'f?p=&APP_ID.:2012:&SESSION.::&DEBUG.:::'
,p_page_id=>2012
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670196966949708558)
,p_parent_id=>wwv_flow_imp.id(670196776193704593)
,p_short_name=>'Manage Job Interview'
,p_link=>'f?p=&APP_ID.:2001:&SESSION.::&DEBUG.:::'
,p_page_id=>2001
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670213075237149413)
,p_short_name=>'References'
,p_link=>'f?p=&APP_ID.:9974:&SESSION.::&DEBUG.:::'
,p_page_id=>9974
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670213326545156064)
,p_parent_id=>wwv_flow_imp.id(670213075237149413)
,p_short_name=>'Configure References'
,p_link=>'f?p=&APP_ID.:9968:&SESSION.::&DEBUG.:::'
,p_page_id=>9968
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670218394966220865)
,p_short_name=>'Position Openings'
,p_link=>'f?p=&APP_ID.:2008:&SESSION.::&DEBUG.:::'
,p_page_id=>2008
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670219323008227687)
,p_parent_id=>wwv_flow_imp.id(670218394966220865)
,p_short_name=>'Configure Position Opening'
,p_link=>'f?p=&APP_ID.:1395:&SESSION.::&DEBUG.:::'
,p_page_id=>1395
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670224559917536849)
,p_short_name=>'Applicants'
,p_link=>'f?p=&APP_ID.:539:&SESSION.::&DEBUG.:::'
,p_page_id=>539
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670224842975551581)
,p_parent_id=>wwv_flow_imp.id(670224559917536849)
,p_short_name=>'Applicant Register'
,p_link=>'f?p=&APP_ID.:540:&SESSION.::&DEBUG.:::'
,p_page_id=>540
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670985946241320028)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of User Guides'
,p_link=>'f?p=&APP_ID.:13040:&SESSION.::&DEBUG.:::'
,p_page_id=>13040
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(671865167976539078)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Employee Appraisal Evaluation'
,p_link=>'f?p=&APP_ID.:1499:&SESSION.::&DEBUG.:::'
,p_page_id=>1499
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(671984060693636168)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of Appraisal Configurations'
,p_link=>'f?p=&APP_ID.:1490:&SESSION.::&DEBUG.:::'
,p_page_id=>1490
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(672043467414763407)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Create/Edit Appraisal Configuration for &P1491_MERIT_DESCRIPTION.'
,p_link=>'f?p=&APP_ID.:1491:&SESSION.::&DEBUG.:::'
,p_page_id=>1491
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(672389022427522322)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of Employee Appraisals'
,p_link=>'f?p=&APP_ID.:1495:&SESSION.::&DEBUG.:::'
,p_page_id=>1495
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(672546484586629836)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Manage Employee Appraisal'
,p_link=>'f?p=&APP_ID.:1496:&SESSION.::&DEBUG.:::'
,p_page_id=>1496
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(673704116115912969)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Shift Roster'
,p_link=>'f?p=&APP_ID.:116:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>116
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(674060985003984137)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'List of System References'
,p_link=>'f?p=&APP_ID.:1200:&SESSION.::&DEBUG.:::'
,p_page_id=>1200
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675079225681475969)
,p_parent_id=>wwv_flow_imp.id(670191735795580392)
,p_short_name=>'Manage Org Structures'
,p_link=>'f?p=&APP_ID.:1294:&SESSION.::&DEBUG.:::'
,p_page_id=>1294
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675223136093820756)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Staff Requisitions'
,p_link=>'f?p=&APP_ID.:2003:&SESSION.::&DEBUG.:::'
,p_page_id=>2003
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675253554235951154)
,p_parent_id=>wwv_flow_imp.id(675223136093820756)
,p_short_name=>'Create/ Edit Staff Requisitions'
,p_link=>'f?p=&APP_ID.:2004:&SESSION.::&DEBUG.:::'
,p_page_id=>2004
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675314861513163605)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Applicants with Given References'
,p_link=>'f?p=&APP_ID.:9969:&SESSION.::&DEBUG.:::'
,p_page_id=>9969
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675321946696189409)
,p_parent_id=>wwv_flow_imp.id(675314861513163605)
,p_short_name=>'Manage Applicant References'
,p_link=>'f?p=&APP_ID.:9970:&SESSION.::&DEBUG.:::'
,p_page_id=>9970
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675322980410232341)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Recruitment Matrix'
,p_link=>'f?p=&APP_ID.:447:&SESSION.::&DEBUG.:::'
,p_page_id=>447
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675324098434252752)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Interview Schedule'
,p_link=>'f?p=&APP_ID.:2009:&SESSION.::&DEBUG.:::'
,p_page_id=>2009
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675324347279259100)
,p_parent_id=>wwv_flow_imp.id(675324098434252752)
,p_short_name=>'Interview Setup'
,p_link=>'f?p=&APP_ID.:2011:&SESSION.::&DEBUG.:::'
,p_page_id=>2011
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675519041685485246)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of Interviews'
,p_link=>'f?p=&APP_ID.:2005:&SESSION.::&DEBUG.:::'
,p_page_id=>2005
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675558867097539950)
,p_parent_id=>wwv_flow_imp.id(675519041685485246)
,p_short_name=>'Manage Interviews'
,p_link=>'f?p=&APP_ID.:2006:&SESSION.::&DEBUG.:::'
,p_page_id=>2006
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675566402624578229)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Online Interview Evaluation'
,p_link=>'f?p=&APP_ID.:2013:&SESSION.::&DEBUG.:::'
,p_page_id=>2013
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675593694798754907)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Manual Interview'
,p_link=>'f?p=&APP_ID.:337:&SESSION.::&DEBUG.:::'
,p_page_id=>337
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(676260587475557426)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Individuals'
,p_link=>'f?p=&APP_ID.:1260:&SESSION.::&DEBUG.:::'
,p_page_id=>1260
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(676293528992587804)
,p_parent_id=>wwv_flow_imp.id(676260587475557426)
,p_short_name=>'Create/Edit Individuals'
,p_link=>'f?p=&APP_ID.:1261:&SESSION.::&DEBUG.::P1261_ID:&GLOBAL_IND.'
,p_page_id=>1261
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(676540958085994370)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Manage Work Activity Tasks'
,p_link=>'f?p=&APP_ID.:10999:&SESSION.::&DEBUG.:::'
,p_page_id=>10999
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(676548996722642161)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Employee Prior Deductions'
,p_link=>'f?p=&APP_ID.:147:&SESSION.::&DEBUG.:::'
,p_page_id=>147
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(676549138260645093)
,p_parent_id=>wwv_flow_imp.id(676548996722642161)
,p_short_name=>'Manage Employee Prior Deductions'
,p_link=>'f?p=&APP_ID.:65:&SESSION.::&DEBUG.:::'
,p_page_id=>65
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(676704482103751147)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Manage Work Activity and Related Tasks'
,p_link=>'f?p=&APP_ID.:10900:&SESSION.::&DEBUG.:::'
,p_page_id=>10900
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(677439355232071694)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'All Movements'
,p_link=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:::'
,p_page_id=>28
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(677488530347590249)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Leave Transactions'
,p_link=>'f?p=&APP_ID.:12000:&SESSION.::&DEBUG.:::'
,p_page_id=>12000
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(677575016109304565)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Timesheet Master'
,p_link=>'f?p=&APP_ID.:138:&SESSION.::&DEBUG.:::'
,p_page_id=>138
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(677577999069527321)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Timesheet Incomes/Absences'
,p_link=>'f?p=&APP_ID.:12817:&SESSION.::&DEBUG.:::'
,p_page_id=>12817
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(677580600896540784)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Master Verification'
,p_link=>'f?p=&APP_ID.:224:&SESSION.::&DEBUG.:::'
,p_page_id=>224
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(677581972370551739)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Work Activity Income'
,p_link=>'f?p=&APP_ID.:12821:&SESSION.::&DEBUG.:::'
,p_page_id=>12821
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(677806127874062771)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Timeclock Upload and Process'
,p_link=>'f?p=&APP_ID.:12822:&SESSION.::&DEBUG.:::'
,p_page_id=>12822
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(677808807169114864)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Code of Conduct'
,p_link=>'f?p=&APP_ID.:1420:&SESSION.::&DEBUG.:::'
,p_page_id=>1420
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(677810394918164684)
,p_parent_id=>wwv_flow_imp.id(677808807169114864)
,p_short_name=>'Employee Offence'
,p_link=>'f?p=&APP_ID.:1421:&SESSION.::&DEBUG.:::'
,p_page_id=>1421
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(677948322220930932)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Document Centre'
,p_link=>'f?p=&APP_ID.:128:&SESSION.::&DEBUG.:::'
,p_page_id=>128
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(677962979418974520)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Document Center'
,p_link=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:::'
,p_page_id=>129
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(677964679494997952)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Mass Email Request'
,p_link=>'f?p=&APP_ID.:233:&SESSION.::&DEBUG.:::'
,p_page_id=>233
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(677965632572018126)
,p_parent_id=>wwv_flow_imp.id(677964679494997952)
,p_short_name=>'Configure Mass Email'
,p_link=>'f?p=&APP_ID.:234:&SESSION.::&DEBUG.:::'
,p_page_id=>234
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678041264122886186)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of General Memos'
,p_link=>'f?p=&APP_ID.:1430:&SESSION.::&DEBUG.:::'
,p_page_id=>1430
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678051398459913769)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Create/Edit General Memo'
,p_link=>'f?p=&APP_ID.:1431:&SESSION.::&DEBUG.:::'
,p_page_id=>1431
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678056205070217142)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of Training Programs'
,p_link=>'f?p=&APP_ID.:311:&SESSION.::&DEBUG.:::'
,p_page_id=>311
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678058240529232690)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of Training Courses'
,p_link=>'f?p=&APP_ID.:313:&SESSION.::&DEBUG.:::'
,p_page_id=>313
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678331657792702522)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Course Scheduling'
,p_link=>'f?p=&APP_ID.:319:&SESSION.::&DEBUG.:::'
,p_page_id=>319
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678333577024176136)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Class Setup'
,p_link=>'f?p=&APP_ID.:316:&SESSION.::&DEBUG.:::'
,p_page_id=>316
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678334760385252113)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Course Enrollment'
,p_link=>'f?p=&APP_ID.:317:&SESSION.::&DEBUG.:::'
,p_page_id=>317
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678337727165356142)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Class Attendance'
,p_link=>'f?p=&APP_ID.:321:&SESSION.::&DEBUG.:::'
,p_page_id=>321
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678342655392396924)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Insurance Categories'
,p_link=>'f?p=&APP_ID.:1406:&SESSION.::&DEBUG.:::'
,p_page_id=>1406
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678360937585451747)
,p_parent_id=>wwv_flow_imp.id(678342655392396924)
,p_short_name=>'Configure Insurance Categories'
,p_link=>'f?p=&APP_ID.:1407:&SESSION.::&DEBUG.:::'
,p_page_id=>1407
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678465578111793422)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of Holiday Policy'
,p_link=>'f?p=&APP_ID.:10100:&SESSION.::&DEBUG.:::'
,p_page_id=>10100
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678466793382793427)
,p_parent_id=>wwv_flow_imp.id(678465578111793422)
,p_short_name=>'Create /Edit Holiday Policy'
,p_link=>'f?p=&APP_ID.:10101:&SESSION.::&DEBUG.:::'
,p_page_id=>10101
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(684852401000192929)
,p_parent_id=>wwv_flow_imp.id(674060985003984137)
,p_short_name=>'Manage Reference Entries'
,p_link=>'f?p=&APP_ID.:1201:&SESSION.::&DEBUG.:::'
,p_page_id=>1201
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(686474200898032610)
,p_parent_id=>wwv_flow_imp.id(697496044851220158)
,p_short_name=>'WorkFlow Forward List'
,p_link=>'f?p=&APP_ID.:1390:&SESSION.::&DEBUG.:::'
,p_page_id=>1390
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(686660848430647219)
,p_parent_id=>wwv_flow_imp.id(686474200898032610)
,p_short_name=>'Manage Workflow Forward Transactions'
,p_link=>'f?p=&APP_ID.:1390:&SESSION.::&DEBUG.:::'
,p_page_id=>1391
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(686755313838750911)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Interview Calendar'
,p_link=>'f?p=&APP_ID.:12820:&SESSION.::&DEBUG.:::'
,p_page_id=>12820
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697019264932326269)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Employee Appraisal Review'
,p_link=>'f?p=&APP_ID.:1493:&SESSION.::&DEBUG.:::'
,p_page_id=>1493
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697019922052337637)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Post Appraisal Processes'
,p_link=>'f?p=&APP_ID.:1494:&SESSION.::&DEBUG.:::'
,p_page_id=>1494
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697074758286992067)
,p_parent_id=>wwv_flow_imp.id(697496044851220158)
,p_short_name=>'Payroll Entries'
,p_link=>'f?p=&APP_ID.:492:&SESSION.::&DEBUG.:::'
,p_page_id=>492
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697085123906042964)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'YTD Earnings'
,p_link=>'f?p=&APP_ID.:1332:&SESSION.::&DEBUG.:::'
,p_page_id=>1332
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697093015320065785)
,p_parent_id=>wwv_flow_imp.id(697085123906042964)
,p_short_name=>'Create/Edit YTD Earning'
,p_link=>'f?p=&APP_ID.:1333:&SESSION.::&DEBUG.:::'
,p_page_id=>1333
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697105196608168889)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Payroll Execution'
,p_link=>'f?p=&APP_ID.:1250:&SESSION.::&DEBUG.:::'
,p_page_id=>1250
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697124932023402365)
,p_parent_id=>wwv_flow_imp.id(697496044851220158)
,p_short_name=>'Global Payslip Search'
,p_link=>'f?p=&APP_ID.:70:&SESSION.::&DEBUG.:::'
,p_page_id=>70
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697127908446418101)
,p_parent_id=>wwv_flow_imp.id(697496044851220158)
,p_short_name=>'Listing of Employee Payslips'
,p_link=>'f?p=&APP_ID.:1355:&SESSION.::&DEBUG.:::'
,p_page_id=>1355
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697129909166430377)
,p_parent_id=>wwv_flow_imp.id(697127908446418101)
,p_short_name=>'Employee Payslip'
,p_link=>'f?p=&APP_ID.:1356:&SESSION.::&DEBUG.:::'
,p_page_id=>1356
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697131921872462854)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Employees with Negative Netpay'
,p_link=>'f?p=&APP_ID.:1506:&SESSION.::&DEBUG.:::'
,p_page_id=>1506
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697134713068502699)
,p_parent_id=>wwv_flow_imp.id(529552350689634079)
,p_short_name=>'Employee Negative Netpay Summary'
,p_link=>'f?p=&APP_ID.:1507:&SESSION.::&DEBUG.:::'
,p_page_id=>1507
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697136822575521751)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of Netpay Disbursements'
,p_link=>'f?p=&APP_ID.:52:&SESSION.::&DEBUG.:::'
,p_page_id=>52
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697138733049656417)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Mass Payroll Email'
,p_link=>'f?p=&APP_ID.:1231:&SESSION.::&DEBUG.:::'
,p_page_id=>1231
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697141646411711144)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Cancelled Payments'
,p_link=>'f?p=&APP_ID.:1330:&SESSION.::&DEBUG.:::'
,p_page_id=>1330
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697150878667740940)
,p_parent_id=>wwv_flow_imp.id(697496044851220158)
,p_short_name=>'eNIB'
,p_link=>'f?p=&APP_ID.:1403:&SESSION.::&DEBUG.:::'
,p_page_id=>1403
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697156445205774946)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Detailed Financial Journal'
,p_link=>'f?p=&APP_ID.:6001:&SESSION.::&DEBUG.:::'
,p_page_id=>6002
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697158966612788600)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Summary Journal'
,p_link=>'f?p=&APP_ID.:6003:&SESSION.::&DEBUG.:::'
,p_page_id=>6003
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697467006177235905)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Investigation Manager'
,p_link=>'f?p=&APP_ID.:4090:&SESSION.::&DEBUG.:::'
,p_page_id=>4090
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697482830244119636)
,p_parent_id=>wwv_flow_imp.id(697496044851220158)
,p_short_name=>'Payroll Diagnosis'
,p_link=>'f?p=&APP_ID.:1500:&SESSION.::&DEBUG.:::'
,p_page_id=>1500
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697496044851220158)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Utilities'
,p_link=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
,p_page_id=>23
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697497100373223543)
,p_parent_id=>wwv_flow_imp.id(697496044851220158)
,p_short_name=>'Generator'
,p_link=>'f?p=&APP_ID.:1401:&SESSION.::&DEBUG.:::'
,p_page_id=>1401
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697504107277237406)
,p_parent_id=>wwv_flow_imp.id(3726349095285465689)
,p_short_name=>'Configure Jobs'
,p_link=>'f?p=&APP_ID.:61:&SESSION.::&DEBUG.:::'
,p_page_id=>61
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697504314956240748)
,p_parent_id=>wwv_flow_imp.id(697496044851220158)
,p_short_name=>'Generate Leave Entitlements'
,p_link=>'f?p=&APP_ID.:1402:&SESSION.::&DEBUG.:::'
,p_page_id=>1402
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697506183313258157)
,p_parent_id=>wwv_flow_imp.id(697496044851220158)
,p_short_name=>'Timesheet Loading'
,p_link=>'f?p=&APP_ID.:1371:&SESSION.::&DEBUG.:::'
,p_page_id=>1371
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697507408042266117)
,p_parent_id=>wwv_flow_imp.id(697496044851220158)
,p_short_name=>'Remuneration Changes'
,p_link=>'f?p=&APP_ID.:1470:&SESSION.::&DEBUG.:::'
,p_page_id=>1470
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697515050044384553)
,p_parent_id=>wwv_flow_imp.id(697496044851220158)
,p_short_name=>'System No. Configuration'
,p_link=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::'
,p_page_id=>16
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697522562666423782)
,p_parent_id=>wwv_flow_imp.id(697496044851220158)
,p_short_name=>'Notification Scheduler'
,p_link=>'f?p=&APP_ID.:308:&SESSION.::&DEBUG.:::'
,p_page_id=>308
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697523332842454734)
,p_parent_id=>wwv_flow_imp.id(697496044851220158)
,p_short_name=>'Move Reporting To'
,p_link=>'f?p=&APP_ID.:1025:&SESSION.::&DEBUG.:::'
,p_page_id=>1025
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697523970212517495)
,p_parent_id=>wwv_flow_imp.id(697496044851220158)
,p_short_name=>'Move Position Location'
,p_link=>'f?p=&APP_ID.:1026:&SESSION.::&DEBUG.:::'
,p_page_id=>1026
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697526103876636171)
,p_parent_id=>wwv_flow_imp.id(697496044851220158)
,p_short_name=>'Move Payment Frequency'
,p_link=>'f?p=&APP_ID.:1001:&SESSION.::&DEBUG.:::'
,p_page_id=>1001
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697526769184644498)
,p_parent_id=>wwv_flow_imp.id(697496044851220158)
,p_short_name=>'Load Previous YTD'
,p_link=>'f?p=&APP_ID.:6100:&SESSION.::&DEBUG.:::'
,p_page_id=>6100
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697527528711650894)
,p_parent_id=>wwv_flow_imp.id(697496044851220158)
,p_short_name=>'Load Individual & Employee'
,p_link=>'f?p=&APP_ID.:6120:&SESSION.::&DEBUG.:::'
,p_page_id=>6120
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697528249898683113)
,p_parent_id=>wwv_flow_imp.id(697496044851220158)
,p_short_name=>'Load YTD Leave'
,p_link=>'f?p=&APP_ID.:6180:&SESSION.::&DEBUG.:::'
,p_page_id=>6180
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697529040999690294)
,p_parent_id=>wwv_flow_imp.id(697496044851220158)
,p_short_name=>'MMG Disbursement'
,p_link=>'f?p=&APP_ID.:1003:&SESSION.::&DEBUG.:::'
,p_page_id=>1003
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697530044890724115)
,p_parent_id=>wwv_flow_imp.id(697496044851220158)
,p_short_name=>'Mass Employee Inter-Organisation Transfer'
,p_link=>'f?p=&APP_ID.:491:&SESSION.::&DEBUG.:::'
,p_page_id=>491
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697532772813744035)
,p_parent_id=>wwv_flow_imp.id(697496044851220158)
,p_short_name=>'Summary Timesheet Load'
,p_link=>'f?p=&APP_ID.:161:&SESSION.::&DEBUG.:::'
,p_page_id=>161
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697533850456753922)
,p_parent_id=>wwv_flow_imp.id(697496044851220158)
,p_short_name=>'Error Log'
,p_link=>'f?p=&APP_ID.:1360:&SESSION.::&DEBUG.:::'
,p_page_id=>1360
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697539727709778455)
,p_parent_id=>wwv_flow_imp.id(697496044851220158)
,p_short_name=>'System Process Logs'
,p_link=>'f?p=&APP_ID.:1361:&SESSION.::&DEBUG.:::'
,p_page_id=>1361
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697544034048792732)
,p_parent_id=>wwv_flow_imp.id(697496044851220158)
,p_short_name=>'User Login Log'
,p_link=>'f?p=&APP_ID.:1362:&SESSION.::&DEBUG.:::'
,p_page_id=>1362
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697553553361812468)
,p_parent_id=>wwv_flow_imp.id(697496044851220158)
,p_short_name=>'View Tips'
,p_link=>'f?p=&APP_ID.:1426:&SESSION.::&DEBUG.:::'
,p_page_id=>1426
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697713252614029540)
,p_parent_id=>wwv_flow_imp.id(676293528992587804)
,p_short_name=>'Individual Qualifications'
,p_link=>'f?p=&APP_ID.:1272:&SESSION.::&DEBUG.:::'
,p_page_id=>1272
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697743954714217701)
,p_parent_id=>wwv_flow_imp.id(676293528992587804)
,p_short_name=>'Individual Hobbies'
,p_link=>'f?p=&APP_ID.:1274:&SESSION.::&DEBUG.:::'
,p_page_id=>1274
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697757857869326686)
,p_parent_id=>wwv_flow_imp.id(676293528992587804)
,p_short_name=>'References'
,p_link=>'f?p=&APP_ID.:1275:&SESSION.::&DEBUG.:::'
,p_page_id=>1275
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697760971627334799)
,p_parent_id=>wwv_flow_imp.id(697496044851220158)
,p_short_name=>'Transaction Approvals'
,p_link=>'f?p=&APP_ID.:1482:&SESSION.::&DEBUG.:::'
,p_page_id=>1482
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697765208415352683)
,p_parent_id=>wwv_flow_imp.id(697496044851220158)
,p_short_name=>'User Productivity'
,p_link=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:::'
,p_page_id=>26
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697766094138367799)
,p_parent_id=>wwv_flow_imp.id(697496044851220158)
,p_short_name=>'Notification History'
,p_link=>'f?p=&APP_ID.:71:&SESSION.::&DEBUG.:::'
,p_page_id=>71
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697780408195619635)
,p_parent_id=>wwv_flow_imp.id(676293528992587804)
,p_short_name=>'Relatives/Friends'
,p_link=>'f?p=&APP_ID.:1276:&SESSION.::&DEBUG.:::'
,p_page_id=>1276
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697879980573073780)
,p_parent_id=>wwv_flow_imp.id(697496044851220158)
,p_short_name=>'Workflow Configuration'
,p_link=>'f?p=&APP_ID.:1385:&SESSION.::&DEBUG.:::'
,p_page_id=>1385
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697882748483083156)
,p_parent_id=>wwv_flow_imp.id(697496044851220158)
,p_short_name=>'Workflow Transactions'
,p_link=>'f?p=&APP_ID.:1388:&SESSION.::&DEBUG.:::'
,p_page_id=>1388
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697884038824093452)
,p_parent_id=>wwv_flow_imp.id(697496044851220158)
,p_short_name=>'Outstanding Workflows'
,p_link=>'f?p=&APP_ID.:1481:&SESSION.::&DEBUG.:::'
,p_page_id=>1481
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697894089509210524)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Manual Timesheet Mangement'
,p_link=>'f?p=&APP_ID.:84:&SESSION.::&DEBUG.:::'
,p_page_id=>84
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697900812881269269)
,p_parent_id=>wwv_flow_imp.id(697894089509210524)
,p_short_name=>'Configure Manual Timesheet'
,p_link=>'f?p=&APP_ID.:78:&SESSION.::&DEBUG.:::'
,p_page_id=>78
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697910843885336819)
,p_parent_id=>wwv_flow_imp.id(670224842975551581)
,p_short_name=>'Configure Employment History'
,p_link=>'f?p=&APP_ID.:544:&SESSION.::&DEBUG.:::'
,p_page_id=>544
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697911021108348542)
,p_parent_id=>wwv_flow_imp.id(670224842975551581)
,p_short_name=>'Applicant Address'
,p_link=>'f?p=&APP_ID.:541:&SESSION.::&DEBUG.:::'
,p_page_id=>541
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697914475771377141)
,p_parent_id=>wwv_flow_imp.id(670224842975551581)
,p_short_name=>'Applicant Qualifications'
,p_link=>'f?p=&APP_ID.:542:&SESSION.::&DEBUG.:::'
,p_page_id=>542
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697916652108393223)
,p_parent_id=>wwv_flow_imp.id(670224842975551581)
,p_short_name=>'Applicant References'
,p_link=>'f?p=&APP_ID.:506:&SESSION.::&DEBUG.:::'
,p_page_id=>506
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697922896360430268)
,p_parent_id=>wwv_flow_imp.id(670224842975551581)
,p_short_name=>'Applicant Hobbies'
,p_link=>'f?p=&APP_ID.:545:&SESSION.::&DEBUG.:::'
,p_page_id=>545
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697925287803451118)
,p_parent_id=>wwv_flow_imp.id(670224842975551581)
,p_short_name=>'Applicant''s Job Application'
,p_link=>'f?p=&APP_ID.:549:&SESSION.::&DEBUG.:::'
,p_page_id=>549
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3189420194070087645)
,p_parent_id=>wwv_flow_imp.id(3726731210065758061)
,p_short_name=>'Deduction Code'
,p_link=>'f?p=&APP_ID.:1221:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1221
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3381367848393069016)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of Employees'' Salaries'
,p_link=>'f?p=&APP_ID.:246:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>246
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3381393692986089437)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of Employees'' Remunerations'
,p_link=>'f?p=&APP_ID.:247:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>247
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3381416809764105446)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of Employees'' Leave Entitlements'
,p_link=>'f?p=&APP_ID.:248:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>248
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3381503187285154207)
,p_parent_id=>wwv_flow_imp.id(3381367848393069016)
,p_short_name=>'Create/Edit Employee Salary'
,p_link=>'f?p=&APP_ID.:13000:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13000
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3381701331423244720)
,p_parent_id=>wwv_flow_imp.id(3381416809764105446)
,p_short_name=>'Create/Edit Employee Leave Entitlement'
,p_link=>'f?p=&APP_ID.:13002:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13002
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3381947095239171377)
,p_short_name=>'Create/Edit Competency Levels'
,p_link=>'f?p=&APP_ID.:13022:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13022
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3388499015489456671)
,p_parent_id=>wwv_flow_imp.id(3404310673252276436)
,p_short_name=>'Create/Edit Competency/Skill'
,p_link=>'f?p=&APP_ID.:13021:&SESSION.::&DEBUG.:::'
,p_page_id=>13021
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3397397531641337588)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of Job Description'
,p_link=>'f?p=&APP_ID.:13010:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13010
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3404238173057225141)
,p_parent_id=>wwv_flow_imp.id(3397397531641337588)
,p_short_name=>'Create/Edit Job Description Details'
,p_link=>'f?p=&APP_ID.:13011:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13011
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3404310673252276436)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of Competencies & Skills'
,p_link=>'f?p=&APP_ID.:13020:&SESSION.::&DEBUG.:::'
,p_page_id=>13020
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3405007690386384806)
,p_parent_id=>wwv_flow_imp.id(3726349095285465689)
,p_short_name=>'Create/Edit Jobs'
,p_link=>'f?p=&APP_ID.:1307:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1307
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3405155794125456616)
,p_parent_id=>wwv_flow_imp.id(3810680697254213177)
,p_short_name=>'Create/Edit Position'
,p_link=>'f?p=&APP_ID.:1301:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1301
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3405253242441650714)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of Position Descriptions'
,p_link=>'f?p=&APP_ID.:13015:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13015
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3405337797937666308)
,p_parent_id=>wwv_flow_imp.id(3405253242441650714)
,p_short_name=>'Create/Edit Position Description Details'
,p_link=>'f?p=&APP_ID.:13016:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13016
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3474023013082795716)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of NetPay Disbursements'
,p_link=>'f?p=&APP_ID.:9981:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>9981
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3474024160447795712)
,p_parent_id=>wwv_flow_imp.id(3474023013082795716)
,p_short_name=>'Create/Edit NetPay Disbursement'
,p_link=>'f?p=&APP_ID.:9982:&SESSION.::&DEBUG.:::'
,p_page_id=>9982
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3478420054851961126)
,p_parent_id=>wwv_flow_imp.id(3577867542013848080)
,p_short_name=>'Create/Edit Shift Rotation'
,p_link=>'f?p=&FLOW_ID.:12816:&SESSION.'
,p_page_id=>12816
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3488415853191375268)
,p_parent_id=>wwv_flow_imp.id(3338455946310105462)
,p_short_name=>'  Create/Edit Employees'
,p_link=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:::'
,p_page_id=>1281
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3491115425299145712)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of Activity'
,p_link=>'f?p=&FLOW_ID.:1435:&SESSION.'
,p_page_id=>1435
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3491118035739155529)
,p_parent_id=>wwv_flow_imp.id(3491115425299145712)
,p_short_name=>'Create/Edit Activty'
,p_link=>'f?p=&FLOW_ID.:1436:&SESSION.'
,p_page_id=>1436
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3491350021991713880)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of Employee Document(s)/Licenses(s)'
,p_link=>'f?p=&APP_ID.:12819:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>12819
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3577867542013848080)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of Shift Rotation'
,p_link=>'f?p=&APP_ID.:12815:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>12815
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3578018106494948754)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of Swapped Shifts'
,p_link=>'f?p=&APP_ID.:182:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>182
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3578057952905967322)
,p_parent_id=>wwv_flow_imp.id(3578018106494948754)
,p_short_name=>'Create/Edit Swap Shifts'
,p_link=>'f?p=&APP_ID.:186:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>186
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3601635951323782686)
,p_short_name=>'ACH Master'
,p_link=>'f?p=&APP_ID.:201:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>201
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3601962778076896024)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing ACH Configuration'
,p_link=>'f?p=&FLOW_ID.:213:&SESSION.'
,p_page_id=>213
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3607049962845438168)
,p_parent_id=>wwv_flow_imp.id(3601962778076896024)
,p_short_name=>'Create/Edit ACH Configuration'
,p_link=>'f?p=&FLOW_ID.:218:&SESSION.'
,p_page_id=>218
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3610438059094281600)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of Shifts'
,p_link=>'f?p=&APP_ID.:1335:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1335
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3621876490929147691)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Assign Employee Rotation'
,p_link=>'f?p=&FLOW_ID.:119:&SESSION.'
,p_page_id=>119
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3687226434407105271)
,p_parent_id=>wwv_flow_imp.id(3687226979725114838)
,p_short_name=>'Create/Edit Employee Accident Reports'
,p_link=>'f?p=&APP_ID.:4005:&SESSION.::&DEBUG.:::'
,p_page_id=>4005
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3687226979725114838)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Employee Accident Reports'
,p_link=>'f?p=&APP_ID.:4006:&SESSION.::&DEBUG.:::'
,p_page_id=>4006
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3687239171750200995)
,p_parent_id=>wwv_flow_imp.id(3687241032216215366)
,p_short_name=>'Create/Edit Risk Assessment'
,p_link=>'f?p=&FLOW_ID.:4013:&SESSION.'
,p_page_id=>4013
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3687241032216215366)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'General Risk Assessment'
,p_link=>'f?p=&APP_ID.:4012:&SESSION.::&DEBUG.:::'
,p_page_id=>4012
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3687250890383308790)
,p_parent_id=>wwv_flow_imp.id(3687252216072317853)
,p_short_name=>'Create/Edit COSHH Risk Assessment'
,p_link=>'f?p=&FLOW_ID.:4008:&SESSION.'
,p_page_id=>4008
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3687252216072317853)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'COSHH Risk Assessment Records'
,p_link=>'f?p=&FLOW_ID.:4011:&SESSION.'
,p_page_id=>4011
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3687276131748586464)
,p_parent_id=>wwv_flow_imp.id(3687277151623594779)
,p_short_name=>'Create/Edit Job Hazards Analysis'
,p_link=>'f?p=&FLOW_ID.:4009:&SESSION.'
,p_page_id=>4009
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3687277151623594779)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Job Hazards Analysis'
,p_link=>'f?p=&FLOW_ID.:4010:&SESSION.'
,p_page_id=>4010
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3687686137500019622)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Risk Registers'
,p_link=>'f?p=&APP_ID.:4078:&SESSION.::&DEBUG.:::'
,p_page_id=>4078
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3687708042306312791)
,p_parent_id=>wwv_flow_imp.id(3687846424546877493)
,p_short_name=>'Create/Edit PPE REGISTER'
,p_link=>'f?p=&FLOW_ID.:4081:&SESSION.'
,p_page_id=>4081
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3687846424546877493)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Employee with PPE'
,p_link=>'f?p=&FLOW_ID.:4080:&SESSION.'
,p_page_id=>4080
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3688020249187653083)
,p_parent_id=>wwv_flow_imp.id(3688021544377666594)
,p_short_name=>'Create/Edit Incident'
,p_link=>'f?p=&APP_ID.:4051:&SESSION.::&DEBUG.:::'
,p_page_id=>4051
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3688021544377666594)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Incidents'
,p_link=>'f?p=&APP_ID.:4050:&SESSION.::&DEBUG.:::'
,p_page_id=>4050
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3688443158368130649)
,p_short_name=>'Listing of Depreciation Rules'
,p_link=>'f?p=&APP_ID.:691:&SESSION.'
,p_page_id=>691
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3689533499624069949)
,p_short_name=>'Listing of Category Groups'
,p_link=>'f?p=&APP_ID.:370:&SESSION.'
,p_page_id=>370
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3689556012476106349)
,p_short_name=>'Listing of Inventory Organisations'
,p_link=>'f?p=&APP_ID.:211:&SESSION.'
,p_page_id=>211
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3689579836960792132)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Vehicle Accident Report'
,p_link=>'f?p=&APP_ID.:4020:&SESSION.::&DEBUG.:::'
,p_page_id=>4020
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3689920955303820381)
,p_parent_id=>wwv_flow_imp.id(3689579836960792132)
,p_short_name=>'Create/Edit Vehicle Accident Report'
,p_link=>'f?p=&APP_ID.:4014:&SESSION.::&DEBUG.:::'
,p_page_id=>4014
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3689941003828979052)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Accident Register'
,p_link=>'f?p=&APP_ID.:4052:&SESSION.::&DEBUG.:::'
,p_page_id=>4052
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3689946787859037274)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Minor Vehicle Accidents'
,p_link=>'f?p=&FLOW_ID.:4060:&SESSION.'
,p_page_id=>4060
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3689950788748062035)
,p_parent_id=>wwv_flow_imp.id(3689946787859037274)
,p_short_name=>'Create/ Edit Minor Vehicle Accident'
,p_link=>'f?p=&FLOW_ID.:4066:&SESSION.'
,p_page_id=>4066
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3689963772469138387)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Driver Assessment'
,p_link=>'f?p=&FLOW_ID.:4062:&SESSION.'
,p_page_id=>4062
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3689966052402151644)
,p_parent_id=>wwv_flow_imp.id(3689963772469138387)
,p_short_name=>'Create/Edit Driver Assessment'
,p_link=>'f?p=&FLOW_ID.:4063:&SESSION.'
,p_page_id=>4063
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3689980930543289610)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Contract Safety Gears'
,p_link=>'f?p=&FLOW_ID.:4076:&SESSION.'
,p_page_id=>4076
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3690045055499504437)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Oil and Chemical Register'
,p_link=>'f?p=&FLOW_ID.:4017:&SESSION.'
,p_page_id=>4017
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3690046365401598320)
,p_parent_id=>wwv_flow_imp.id(3690045055499504437)
,p_short_name=>'Create/Edit Oil And Chemical'
,p_link=>'f?p=&FLOW_ID.:4018:&SESSION.'
,p_page_id=>4018
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3691875064569613815)
,p_parent_id=>wwv_flow_imp.id(3689920955303820381)
,p_short_name=>'Create/Edit Accident Detail'
,p_link=>'f?p=&FLOW_ID.:4015:&SESSION.'
,p_page_id=>4015
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3691879545118683383)
,p_parent_id=>wwv_flow_imp.id(3689920955303820381)
,p_short_name=>'Create/Edit OS&H Unit'
,p_link=>'f?p=&FLOW_ID.:4016:&SESSION.'
,p_page_id=>4016
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3691886743428032700)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of Manual TimeSheet Entries'
,p_link=>'f?p=&APP_ID.:125:&SESSION.'
,p_page_id=>125
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3693079742420614581)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Frequently Asked Question & Issues'
,p_link=>'f?p=&APP_ID.:1444:&SESSION.'
,p_page_id=>1444
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3693391883067338960)
,p_short_name=>'Listing of Asset Item Trans History'
,p_link=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:::'
,p_page_id=>35
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3693419066915531220)
,p_short_name=>'Listing of Non Purchased Items by Period'
,p_link=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.:::'
,p_page_id=>40
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3693778108823703497)
,p_short_name=>'Browse Position Details'
,p_link=>'f?p=&APP_ID.:106:&SESSION.'
,p_page_id=>106
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3695122133489523628)
,p_short_name=>'Listing of Non-Transacted'
,p_link=>'f?p=&FLOW_ID.:642:&SESSION.'
,p_page_id=>642
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3695735464958491626)
,p_parent_id=>wwv_flow_imp.id(697496044851220158)
,p_short_name=>'Listing of User Manual Entries'
,p_link=>'f?p=&APP_ID.:132:&SESSION.::&DEBUG.:::'
,p_page_id=>132
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3695736659055491627)
,p_parent_id=>wwv_flow_imp.id(3695735464958491626)
,p_short_name=>'Create/Edit User Manual Entries'
,p_link=>'f?p=&APP_ID.:134:&SESSION.::&DEBUG.:::'
,p_page_id=>134
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3704435140017729381)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Employee Items'
,p_link=>'f?p=&APP_ID.:111:&SESSION.::&DEBUG.:::'
,p_page_id=>111
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3706595121948535318)
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:101100:&SESSION.'
,p_page_id=>101100
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3709874187711714954)
,p_parent_id=>wwv_flow_imp.id(3709891353697723008)
,p_short_name=>'Create/Edit Employee Tasks (Per Employees)'
,p_link=>'f?p=&APP_ID.:159:&SESSION.'
,p_page_id=>159
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3709891353697723008)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of Employee Tasks (Per Employees)'
,p_link=>'f?p=&APP_ID.:158:&SESSION.'
,p_page_id=>158
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3709909935358733902)
,p_parent_id=>wwv_flow_imp.id(3709931773626743704)
,p_short_name=>'Create/Edit Employee Tasks (All Employees)'
,p_link=>'f?p=&APP_ID.:157:&SESSION.'
,p_page_id=>157
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3709931773626743704)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of Employee Tasks (All Employees)'
,p_link=>'f?p=&APP_ID.:156:&SESSION.'
,p_page_id=>156
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3714031617203429370)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of Change Employments'
,p_link=>'f?p=&APP_ID.:136:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>136
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3714298912504576464)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of Confirmation Movements'
,p_link=>'f?p=&APP_ID.:697:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>697
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3714394546060607730)
,p_parent_id=>wwv_flow_imp.id(3714298912504576464)
,p_short_name=>'Create /Edit Confirmation Movement'
,p_link=>'f?p=&APP_ID.:698:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>698
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3714515512943674820)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of Supplemental Movements'
,p_link=>'f?p=&APP_ID.:699:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>699
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3719143603312043395)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of Employee Absences'
,p_link=>'f?p=&APP_ID.:191:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>191
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3719674262296685029)
,p_parent_id=>wwv_flow_imp.id(5467148555697268028)
,p_short_name=>'Listing of Broadcasts'
,p_link=>'f?p=&FLOW_ID.:90:&SESSION.'
,p_page_id=>90
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3719707993760200416)
,p_parent_id=>wwv_flow_imp.id(3719674262296685029)
,p_short_name=>'Create/Edit Broadcast'
,p_link=>'f?p=&FLOW_ID.:91:&SESSION.'
,p_page_id=>91
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3725645542627705666)
,p_parent_id=>wwv_flow_imp.id(3714515512943674820)
,p_short_name=>'Create/Edit Supplemental Movement'
,p_link=>'f?p=&APP_ID.:700:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>700
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3725768933744750723)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of Movement Extensions'
,p_link=>'f?p=&APP_ID.:701:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>701
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3725933925761824354)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of Employee Separations'
,p_link=>'f?p=&APP_ID.:1414:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1414
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3725977018508844138)
,p_parent_id=>wwv_flow_imp.id(3725933925761824354)
,p_short_name=>'Create/Edit Employee Separation'
,p_link=>'f?p=&APP_ID.:1415:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1415
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726036906110890865)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of New Employments'
,p_link=>'f?p=&APP_ID.:108:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>108
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726186293838184190)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of Grade Scales'
,p_link=>'f?p=&FLOW_ID.:1308:&SESSION.'
,p_page_id=>1308
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726349095285465689)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of Jobs'
,p_link=>'f?p=&APP_ID.:1306:&SESSION.'
,p_page_id=>1306
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726395937725003257)
,p_parent_id=>wwv_flow_imp.id(3738407500560698209)
,p_short_name=>'Create/Edit Change Position'
,p_link=>'f?p=&APP_ID.:51:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>51
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726574080822554619)
,p_short_name=>'Competencies '
,p_link=>'f?p=&APP_ID.:1492:&SESSION.'
,p_page_id=>1492
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726698435279519229)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Leave Roster'
,p_link=>'f?p=&APP_ID.:60:&SESSION.'
,p_page_id=>60
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726729197019742030)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of Payroll Income Codes'
,p_link=>'f?p=&APP_ID.:1210:&SESSION.::&DEBUG.:::'
,p_page_id=>1210
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726730033514750159)
,p_parent_id=>wwv_flow_imp.id(3726729197019742030)
,p_short_name=>'Create/Edit Payroll Income Codes'
,p_link=>'f?p=&APP_ID.:1211:&SESSION.::&DEBUG.:::'
,p_page_id=>1211
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726731210065758061)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of Employee Payroll Deduction Codes'
,p_link=>'f?p=&FLOW_ID.:1220:&SESSION.'
,p_page_id=>1220
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726732835906774319)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>' Listing of Employee-Non Statutory Deductions'
,p_link=>'f?p=&FLOW_ID.:1296:&SESSION.'
,p_page_id=>1296
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726734053986782367)
,p_parent_id=>wwv_flow_imp.id(3726732835906774319)
,p_short_name=>'Create/Edit Non-Statutory Deduction'
,p_link=>'f?p=&APP_ID.:1297:&SESSION.::&DEBUG.:::'
,p_page_id=>1297
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726735654214793570)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of Job Related Tasks'
,p_link=>'f?p=&FLOW_ID.:1341:&SESSION.'
,p_page_id=>1341
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726736753363799335)
,p_parent_id=>wwv_flow_imp.id(3726735654214793570)
,p_short_name=>'Create/Edit Job Related Tasks'
,p_link=>'f?p=&FLOW_ID.:1342:&SESSION.'
,p_page_id=>1342
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726764222801983032)
,p_parent_id=>wwv_flow_imp.id(3726698435279519229)
,p_short_name=>'Create/Edit Leave Roster'
,p_link=>'f?p=&FLOW_ID.:33:&SESSION.'
,p_page_id=>33
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726788334912142523)
,p_short_name=>'Listing of Location Shift Rule'
,p_link=>'f?p=&APP_ID.:62:&SESSION.'
,p_page_id=>62
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3727109345892870528)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Timesheet Manager'
,p_link=>'f?p=&APP_ID.:126:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>126
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3729538962670117474)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of Medical History'
,p_link=>'f?p=&FLOW_ID.:1408:&SESSION.'
,p_page_id=>1408
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3738407500560698209)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of Change Positions'
,p_link=>'f?p=&APP_ID.:1412:&SESSION.::&DEBUG.:::'
,p_page_id=>1412
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3755748137737038594)
,p_parent_id=>wwv_flow_imp.id(3755776663575049628)
,p_short_name=>'Create/Edit Health Surcharge'
,p_link=>'f?p=&APP_ID.:173:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>173
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3755776663575049628)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of Health Surcharge '
,p_link=>'f?p=&APP_ID.:172:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>172
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3758397657513707406)
,p_parent_id=>wwv_flow_imp.id(5467148555697268028)
,p_short_name=>'Productivity Detail Report'
,p_link=>'f?p=&APP_ID.:192:&SESSION.::&DEBUG.:::'
,p_page_id=>192
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3759100315875723685)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'End Of Year Reports'
,p_link=>'f?p=&APP_ID.:194:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>194
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3759128946873778186)
,p_parent_id=>wwv_flow_imp.id(3714031617203429370)
,p_short_name=>'Create/Edit Change Employment'
,p_link=>'f?p=&APP_ID.:137:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>137
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3763302544915728150)
,p_short_name=>'Listing of Media'
,p_link=>'f?p=&FLOW_ID.:181:&SESSION.'
,p_page_id=>181
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3763308633153765715)
,p_short_name=>'Create/Edit Media'
,p_link=>'f?p=&FLOW_ID.:188:&SESSION.'
,p_page_id=>188
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3770644739407675101)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Payroll Compare'
,p_link=>'f?p=&APP_ID.:1249:&SESSION.::&DEBUG.:::'
,p_page_id=>1249
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3772476076264208522)
,p_parent_id=>wwv_flow_imp.id(3776675896878808849)
,p_short_name=>'Create/Edit Grievance Action'
,p_link=>'f?p=&APP_ID.:184:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>184
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3776675896878808849)
,p_parent_id=>wwv_flow_imp.id(3776703774927823727)
,p_short_name=>'Create/Edit Employee Grievance'
,p_link=>'f?p=&APP_ID.:175:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>175
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3776703774927823727)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of Employee Grievances'
,p_link=>'f?p=&APP_ID.:174:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>174
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3778616644068477170)
,p_parent_id=>wwv_flow_imp.id(3778618348699509689)
,p_short_name=>'Create/Edit Health Surcharges'
,p_link=>'f?p=&FLOW_ID.:167:&SESSION.'
,p_page_id=>167
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3778618348699509689)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of Health Surcharges'
,p_link=>'f?p=&FLOW_ID.:166:&SESSION.'
,p_page_id=>166
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3779239217225490817)
,p_parent_id=>wwv_flow_imp.id(3725768933744750723)
,p_short_name=>'Create/Edit Movement Extension'
,p_link=>'f?p=&APP_ID.:702:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>702
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3807216651642587356)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of Life Certificates'
,p_link=>'f?p=&FLOW_ID.:57:&SESSION.'
,p_page_id=>57
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3810680697254213177)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of Positions'
,p_link=>'f?p=&FLOW_ID.:1300:&SESSION.'
,p_page_id=>1300
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3845682156089283325)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Employees Payments'
,p_link=>'f?p=&APP_ID.:8003:&SESSION.::&DEBUG.:::'
,p_page_id=>8003
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3845768436005842353)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Employees Pension Deductions'
,p_link=>'f?p=&APP_ID.:8005:&SESSION.::&DEBUG.:::'
,p_page_id=>8005
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3845780697269915039)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Employees Medical Deductions'
,p_link=>'f?p=&APP_ID.:8006:&SESSION.::&DEBUG.:::'
,p_page_id=>8006
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3845963021872303306)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Listing of Employees Deductions'
,p_link=>'f?p=&APP_ID.:8008:&SESSION.::&DEBUG.:::'
,p_page_id=>8008
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3845976682716465985)
,p_short_name=>'PAYE for Employees By Period'
,p_link=>'f?p=&FLOW_ID.:8011:&SESSION.'
,p_page_id=>8011
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3846115779903298594)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'NIB/SS Contribution Report'
,p_link=>'f?p=&APP_ID.:8012:&SESSION.::&DEBUG.:::'
,p_page_id=>8012
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3846351041558021353)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Overtime Summary'
,p_link=>'f?p=&APP_ID.:8009:&SESSION.::&DEBUG.:::'
,p_page_id=>8009
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3846388105854652424)
,p_parent_id=>wwv_flow_imp.id(3846115779903298594)
,p_short_name=>'Employees Above 60 NIB/SS Contribution'
,p_link=>'f?p=&APP_ID.:8013:&SESSION.::&DEBUG.:::'
,p_page_id=>8013
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3854029004690181987)
,p_parent_id=>wwv_flow_imp.id(697496044851220158)
,p_short_name=>'Republic Bank Accounts'
,p_link=>'f?p=&APP_ID.:8031:&SESSION.::&DEBUG.:::'
,p_page_id=>8031
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(5467148555697268028)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Administration'
,p_link=>'f?p=&FLOW_ID.:23:&SESSION.'
,p_page_id=>23
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(6035096752101682223)
,p_parent_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Help'
,p_link=>'f?p=&FLOW_ID.:25:&SESSION.'
,p_page_id=>25
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10988317309089556439)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp.component_end;
end;
/
