prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
--   Manifest
--     MENU: Breadcrumb
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>1000
,p_default_id_offset=>221683928681757931
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(10988457567102635447)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(414773303260447025)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Departmental Incomes'
,p_link=>'f?p=&APP_ID.:1400:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1400
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(422432834008152535)
,p_parent_id=>wwv_flow_imp.id(676434198853666815)
,p_short_name=>'Manage Address'
,p_link=>'f?p=&APP_ID.:1270:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1270
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(422468406128201720)
,p_parent_id=>wwv_flow_imp.id(676434198853666815)
,p_short_name=>'National Identifiers'
,p_link=>'f?p=&APP_ID.:1271:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1271
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(422503213279238310)
,p_parent_id=>wwv_flow_imp.id(676434198853666815)
,p_short_name=>'Employment History'
,p_link=>'f?p=&APP_ID.:1273:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1273
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(528020541780608548)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Upload Data'
,p_link=>'f?p=&APP_ID.:244:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>244
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(529693020550713090)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>' Employees with Negative Netpay'
,p_link=>'f?p=&APP_ID.:1506:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1506
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(530312040910146510)
,p_short_name=>'frmfileoutput'
,p_link=>'f?p=&APP_ID.:219:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>219
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(556556828555614834)
,p_parent_id=>wwv_flow_imp.id(697636714712299169)
,p_short_name=>'Attribute Setup'
,p_link=>'f?p=&APP_ID.:3150:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>3150
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(559303690003447525)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of Debug Payrolls'
,p_link=>'f?p=&APP_ID.:1255:&SESSION.::&DEBUG.:::'
,p_page_id=>1255
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(559504700208482838)
,p_parent_id=>wwv_flow_imp.id(559303690003447525)
,p_short_name=>'Manage Debug Payroll'
,p_link=>'f?p=&APP_ID.:1256:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1256
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(566120578866472237)
,p_parent_id=>wwv_flow_imp.id(609201394578471250)
,p_short_name=>'Manage Employee Holiday'
,p_link=>'f?p=&APP_ID.:1322:&SESSION.::&DEBUG.:::'
,p_page_id=>1322
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(574762384300629828)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'HR Exports To Payroll'
,p_link=>'f?p=&APP_ID.:1350:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1350
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(579074181656603201)
,p_short_name=>'Create/Edit Tax Rate'
,p_link=>'f?p=&APP_ID.:1314:&SESSION.::&DEBUG.:::'
,p_page_id=>1314
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(587257718137561527)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Payroll Legacy'
,p_link=>'f?p=&APP_ID.:179:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>179
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(587297703571299423)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'List of Accessible Reports'
,p_link=>'f?p=&APP_ID.:400:&SESSION.::&DEBUG.:::'
,p_page_id=>400
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(587297895957294865)
,p_parent_id=>wwv_flow_imp.id(587297703571299423)
,p_short_name=>'Setup Reports'
,p_link=>'f?p=&APP_ID.:401:&SESSION.::&DEBUG.:::'
,p_page_id=>401
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(590987938888208748)
,p_parent_id=>wwv_flow_imp.id(3726177575971969876)
,p_short_name=>'Create&#x2F;Edit New Employment'
,p_link=>'f?p=&APP_ID.:109:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>109
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(609201394578471250)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Manage Holidays'
,p_link=>'f?p=&APP_ID.:1319:&SESSION.::&DEBUG.:::'
,p_page_id=>1319
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(613817079323331955)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Allowance Uploader'
,p_page_id=>1465
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(614313622066443148)
,p_parent_id=>wwv_flow_imp.id(3381534362847168448)
,p_short_name=>'Create&#x2F;Edit Remuneration'
,p_link=>'f?p=&APP_ID.:13001:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13001
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(614411372808508447)
,p_parent_id=>wwv_flow_imp.id(3488556523052454279)
,p_short_name=>'Other Remuneration'
,p_link=>'f?p=&APP_ID.:1285:&SESSION.::&DEBUG.:::'
,p_page_id=>1285
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(643973038741178192)
,p_parent_id=>wwv_flow_imp.id(3726326963699263201)
,p_short_name=>'Manage Grade/Salary Scales'
,p_link=>'f?p=&APP_ID.:1309:&SESSION.::&DEBUG.:::'
,p_page_id=>1309
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(645101298387415633)
,p_short_name=>'Search Directory'
,p_link=>'f?p=&APP_ID.:103:&SESSION.::&DEBUG.:::'
,p_page_id=>103
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(645103179641353696)
,p_parent_id=>wwv_flow_imp.id(645101298387415633)
,p_short_name=>'Manage Directories'
,p_link=>'f?p=&APP_ID.:104:&SESSION.::&DEBUG.:::'
,p_page_id=>104
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(647982619031814062)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Search Individual Files'
,p_link=>'f?p=&APP_ID.:9000:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>9000
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(648023993753693331)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>' Search Employee Files'
,p_link=>'f?p=&APP_ID.:150:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>150
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(651222514233141807)
,p_parent_id=>wwv_flow_imp.id(3690121600404368621)
,p_short_name=>'Create&#x2F;Edit Contract Safety Gears'
,p_link=>'f?p=&APP_ID.:4077:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4077
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(654276740842210556)
,p_parent_id=>wwv_flow_imp.id(657252020862758153)
,p_short_name=>'Create &#x2F;Edit Leave Policy'
,p_link=>'f?p=&APP_ID.:11998:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>11998
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(657252020862758153)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of Leave Policies'
,p_link=>'f?p=&APP_ID.:11999:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>11999
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(661510577154735198)
,p_parent_id=>wwv_flow_imp.id(697636714712299169)
,p_short_name=>'Listing of Employee Leave Track'
,p_link=>'f?p=&APP_ID.:1433:&SESSION.::&DEBUG.:::'
,p_page_id=>1433
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(662122421782078352)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Procore Timesheets'
,p_link=>'f?p=&APP_ID.:245:&SESSION.::&DEBUG.:::'
,p_page_id=>245
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(662154496452316179)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of Employee Leave Records'
,p_link=>'f?p=&APP_ID.:1416:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1416
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(663586600795706023)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Global PeoplePay Search'
,p_link=>'f?p=&APP_ID.:249:&SESSION.::&DEBUG.:::'
,p_page_id=>249
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(663638271796837676)
,p_parent_id=>wwv_flow_imp.id(662154496452316179)
,p_short_name=>'Manage Leave Request'
,p_link=>'f?p=&APP_ID.:1417:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1417
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(664586706719308294)
,p_short_name=>'Antigua & Barbuda Educaton Levy'
,p_link=>'f?p=&APP_ID.:1486:&SESSION.::&DEBUG.:::'
,p_page_id=>1486
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(667501320264764432)
,p_short_name=>'Edit Course Configuration'
,p_link=>'f?p=&APP_ID.:312:&SESSION.::&DEBUG.:::'
,p_page_id=>312
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670197948619047276)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Employee Holidays'
,p_link=>'f?p=&APP_ID.:1339:&SESSION.::&DEBUG.:::'
,p_page_id=>1339
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670204493109084185)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Leave Types'
,p_link=>'f?p=&APP_ID.:216:&SESSION.::&DEBUG.:::'
,p_page_id=>216
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670204768529090728)
,p_parent_id=>wwv_flow_imp.id(670204493109084185)
,p_short_name=>'Configure Leave Types'
,p_link=>'f?p=&APP_ID.:221:&SESSION.::&DEBUG.:::'
,p_page_id=>221
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670290782383997059)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Find, Filter and Organize Projects'
,p_link=>'f?p=&APP_ID.:1700:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1700
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670306882839013347)
,p_parent_id=>wwv_flow_imp.id(670290782383997059)
,p_short_name=>'Manage Projects'
,p_link=>'f?p=&APP_ID.:1710:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1710
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670330089820625737)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Earning Periods'
,p_link=>'f?p=&APP_ID.:1240:&SESSION.::&DEBUG.:::'
,p_page_id=>1240
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670330300399629304)
,p_parent_id=>wwv_flow_imp.id(670330089820625737)
,p_short_name=>'Configure Earning Period'
,p_link=>'f?p=&APP_ID.:1241:&SESSION.::&DEBUG.:::'
,p_page_id=>1241
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670332405656659403)
,p_short_name=>'Org Structures'
,p_link=>'f?p=&APP_ID.:1293:&SESSION.::&DEBUG.:::'
,p_page_id=>1293
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670337446054783604)
,p_short_name=>'Job Interviews'
,p_link=>'f?p=&APP_ID.:2012:&SESSION.::&DEBUG.:::'
,p_page_id=>2012
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670337636810787569)
,p_parent_id=>wwv_flow_imp.id(670337446054783604)
,p_short_name=>'Manage Job Interview'
,p_link=>'f?p=&APP_ID.:2001:&SESSION.::&DEBUG.:::'
,p_page_id=>2001
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670353745098228424)
,p_short_name=>'References'
,p_link=>'f?p=&APP_ID.:9974:&SESSION.::&DEBUG.:::'
,p_page_id=>9974
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670353996406235075)
,p_parent_id=>wwv_flow_imp.id(670353745098228424)
,p_short_name=>'Configure References'
,p_link=>'f?p=&APP_ID.:9968:&SESSION.::&DEBUG.:::'
,p_page_id=>9968
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670359064827299876)
,p_short_name=>'Position Openings'
,p_link=>'f?p=&APP_ID.:2008:&SESSION.::&DEBUG.:::'
,p_page_id=>2008
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670359992869306698)
,p_parent_id=>wwv_flow_imp.id(670359064827299876)
,p_short_name=>'Configure Position Opening'
,p_link=>'f?p=&APP_ID.:1395:&SESSION.::&DEBUG.:::'
,p_page_id=>1395
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670365229778615860)
,p_short_name=>'Applicants'
,p_link=>'f?p=&APP_ID.:539:&SESSION.::&DEBUG.:::'
,p_page_id=>539
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670365512836630592)
,p_parent_id=>wwv_flow_imp.id(670365229778615860)
,p_short_name=>'Applicant Register'
,p_link=>'f?p=&APP_ID.:540:&SESSION.::&DEBUG.:::'
,p_page_id=>540
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(671126616102399039)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of User Guides'
,p_link=>'f?p=&APP_ID.:13040:&SESSION.::&DEBUG.:::'
,p_page_id=>13040
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(672005837837618089)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Employee Appraisal Evaluation'
,p_link=>'f?p=&APP_ID.:1499:&SESSION.::&DEBUG.:::'
,p_page_id=>1499
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(672124730554715179)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of Appraisal Configurations'
,p_link=>'f?p=&APP_ID.:1490:&SESSION.::&DEBUG.:::'
,p_page_id=>1490
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(672184137275842418)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Create/Edit Appraisal Configuration for &P1491_MERIT_DESCRIPTION.'
,p_link=>'f?p=&APP_ID.:1491:&SESSION.::&DEBUG.:::'
,p_page_id=>1491
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(672529692288601333)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of Employee Appraisals'
,p_link=>'f?p=&APP_ID.:1495:&SESSION.::&DEBUG.:::'
,p_page_id=>1495
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(672687154447708847)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Manage Employee Appraisal'
,p_link=>'f?p=&APP_ID.:1496:&SESSION.::&DEBUG.:::'
,p_page_id=>1496
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(673844785976991980)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Shift Roster'
,p_link=>'f?p=&APP_ID.:116:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>116
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(674201654865063148)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'List of System References'
,p_link=>'f?p=&APP_ID.:1200:&SESSION.::&DEBUG.:::'
,p_page_id=>1200
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675219895542554980)
,p_parent_id=>wwv_flow_imp.id(670332405656659403)
,p_short_name=>'Manage Org Structures'
,p_link=>'f?p=&APP_ID.:1294:&SESSION.::&DEBUG.:::'
,p_page_id=>1294
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675363805954899767)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Staff Requisitions'
,p_link=>'f?p=&APP_ID.:2003:&SESSION.::&DEBUG.:::'
,p_page_id=>2003
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675394224097030165)
,p_parent_id=>wwv_flow_imp.id(675363805954899767)
,p_short_name=>'Create/ Edit Staff Requisitions'
,p_link=>'f?p=&APP_ID.:2004:&SESSION.::&DEBUG.:::'
,p_page_id=>2004
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675455531374242616)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Applicants with Given References'
,p_link=>'f?p=&APP_ID.:9969:&SESSION.::&DEBUG.:::'
,p_page_id=>9969
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675462616557268420)
,p_parent_id=>wwv_flow_imp.id(675455531374242616)
,p_short_name=>'Manage Applicant References'
,p_link=>'f?p=&APP_ID.:9970:&SESSION.::&DEBUG.:::'
,p_page_id=>9970
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675463650271311352)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Recruitment Matrix'
,p_link=>'f?p=&APP_ID.:447:&SESSION.::&DEBUG.:::'
,p_page_id=>447
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675464768295331763)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Interview Schedule'
,p_link=>'f?p=&APP_ID.:2009:&SESSION.::&DEBUG.:::'
,p_page_id=>2009
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675465017140338111)
,p_parent_id=>wwv_flow_imp.id(675464768295331763)
,p_short_name=>'Interview Setup'
,p_link=>'f?p=&APP_ID.:2011:&SESSION.::&DEBUG.:::'
,p_page_id=>2011
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675659711546564257)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of Interviews'
,p_link=>'f?p=&APP_ID.:2005:&SESSION.::&DEBUG.:::'
,p_page_id=>2005
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675699536958618961)
,p_parent_id=>wwv_flow_imp.id(675659711546564257)
,p_short_name=>'Manage Interviews'
,p_link=>'f?p=&APP_ID.:2006:&SESSION.::&DEBUG.:::'
,p_page_id=>2006
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675707072485657240)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Online Interview Evaluation'
,p_link=>'f?p=&APP_ID.:2013:&SESSION.::&DEBUG.:::'
,p_page_id=>2013
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675734364659833918)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Manual Interview'
,p_link=>'f?p=&APP_ID.:337:&SESSION.::&DEBUG.:::'
,p_page_id=>337
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(676401257336636437)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Individuals'
,p_link=>'f?p=&APP_ID.:1260:&SESSION.::&DEBUG.:::'
,p_page_id=>1260
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(676434198853666815)
,p_parent_id=>wwv_flow_imp.id(676401257336636437)
,p_short_name=>'Create/Edit Individuals'
,p_link=>'f?p=&APP_ID.:1261:&SESSION.::&DEBUG.::P1261_ID:&GLOBAL_IND.'
,p_page_id=>1261
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(676681627947073381)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Manage Work Activity Tasks'
,p_link=>'f?p=&APP_ID.:10999:&SESSION.::&DEBUG.:::'
,p_page_id=>10999
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(676689666583721172)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Employee Prior Deductions'
,p_link=>'f?p=&APP_ID.:147:&SESSION.::&DEBUG.:::'
,p_page_id=>147
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(676689808121724104)
,p_parent_id=>wwv_flow_imp.id(676689666583721172)
,p_short_name=>'Manage Employee Prior Deductions'
,p_link=>'f?p=&APP_ID.:65:&SESSION.::&DEBUG.:::'
,p_page_id=>65
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(676845151964830158)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Manage Work Activity and Related Tasks'
,p_link=>'f?p=&APP_ID.:10900:&SESSION.::&DEBUG.:::'
,p_page_id=>10900
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(677580025093150705)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'All Movements'
,p_link=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:::'
,p_page_id=>28
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(677629200208669260)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Leave Transactions'
,p_link=>'f?p=&APP_ID.:12000:&SESSION.::&DEBUG.:::'
,p_page_id=>12000
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(677715685970383576)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Timesheet Master'
,p_link=>'f?p=&APP_ID.:138:&SESSION.::&DEBUG.:::'
,p_page_id=>138
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(677718668930606332)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Timesheet Incomes/Absences'
,p_link=>'f?p=&APP_ID.:12817:&SESSION.::&DEBUG.:::'
,p_page_id=>12817
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(677721270757619795)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Master Verification'
,p_link=>'f?p=&APP_ID.:224:&SESSION.::&DEBUG.:::'
,p_page_id=>224
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(677722642231630750)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Work Activity Income'
,p_link=>'f?p=&APP_ID.:12821:&SESSION.::&DEBUG.:::'
,p_page_id=>12821
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(677946797735141782)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Timeclock Upload and Process'
,p_link=>'f?p=&APP_ID.:12822:&SESSION.::&DEBUG.:::'
,p_page_id=>12822
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(677949477030193875)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Code of Conduct'
,p_link=>'f?p=&APP_ID.:1420:&SESSION.::&DEBUG.:::'
,p_page_id=>1420
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(677951064779243695)
,p_parent_id=>wwv_flow_imp.id(677949477030193875)
,p_short_name=>'Employee Offence'
,p_link=>'f?p=&APP_ID.:1421:&SESSION.::&DEBUG.:::'
,p_page_id=>1421
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678088992082009943)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Document Centre'
,p_link=>'f?p=&APP_ID.:128:&SESSION.::&DEBUG.:::'
,p_page_id=>128
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678103649280053531)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Document Center'
,p_link=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:::'
,p_page_id=>129
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678105349356076963)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Mass Email Request'
,p_link=>'f?p=&APP_ID.:233:&SESSION.::&DEBUG.:::'
,p_page_id=>233
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678106302433097137)
,p_parent_id=>wwv_flow_imp.id(678105349356076963)
,p_short_name=>'Configure Mass Email'
,p_link=>'f?p=&APP_ID.:234:&SESSION.::&DEBUG.:::'
,p_page_id=>234
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678181933983965197)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of General Memos'
,p_link=>'f?p=&APP_ID.:1430:&SESSION.::&DEBUG.:::'
,p_page_id=>1430
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678192068320992780)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Create/Edit General Memo'
,p_link=>'f?p=&APP_ID.:1431:&SESSION.::&DEBUG.:::'
,p_page_id=>1431
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678196874931296153)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of Training Programs'
,p_link=>'f?p=&APP_ID.:311:&SESSION.::&DEBUG.:::'
,p_page_id=>311
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678198910390311701)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of Training Courses'
,p_link=>'f?p=&APP_ID.:313:&SESSION.::&DEBUG.:::'
,p_page_id=>313
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678472327653781533)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Course Scheduling'
,p_link=>'f?p=&APP_ID.:319:&SESSION.::&DEBUG.:::'
,p_page_id=>319
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678474246885255147)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Class Setup'
,p_link=>'f?p=&APP_ID.:316:&SESSION.::&DEBUG.:::'
,p_page_id=>316
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678475430246331124)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Course Enrollment'
,p_link=>'f?p=&APP_ID.:317:&SESSION.::&DEBUG.:::'
,p_page_id=>317
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678478397026435153)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Class Attendance'
,p_link=>'f?p=&APP_ID.:321:&SESSION.::&DEBUG.:::'
,p_page_id=>321
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678483325253475935)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Insurance Categories'
,p_link=>'f?p=&APP_ID.:1406:&SESSION.::&DEBUG.:::'
,p_page_id=>1406
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678501607446530758)
,p_parent_id=>wwv_flow_imp.id(678483325253475935)
,p_short_name=>'Configure Insurance Categories'
,p_link=>'f?p=&APP_ID.:1407:&SESSION.::&DEBUG.:::'
,p_page_id=>1407
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678606247972872433)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of Holiday Policy'
,p_link=>'f?p=&APP_ID.:10100:&SESSION.::&DEBUG.:::'
,p_page_id=>10100
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678607463243872438)
,p_parent_id=>wwv_flow_imp.id(678606247972872433)
,p_short_name=>'Create /Edit Holiday Policy'
,p_link=>'f?p=&APP_ID.:10101:&SESSION.::&DEBUG.:::'
,p_page_id=>10101
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(684993070861271940)
,p_parent_id=>wwv_flow_imp.id(674201654865063148)
,p_short_name=>'Manage Reference Entries'
,p_link=>'f?p=&APP_ID.:1201:&SESSION.::&DEBUG.:::'
,p_page_id=>1201
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(686614870759111621)
,p_parent_id=>wwv_flow_imp.id(697636714712299169)
,p_short_name=>'WorkFlow Forward List'
,p_link=>'f?p=&APP_ID.:1390:&SESSION.::&DEBUG.:::'
,p_page_id=>1390
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(686801518291726230)
,p_parent_id=>wwv_flow_imp.id(686614870759111621)
,p_short_name=>'Manage Workflow Forward Transactions'
,p_link=>'f?p=&APP_ID.:1390:&SESSION.::&DEBUG.:::'
,p_page_id=>1391
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(686895983699829922)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Interview Calendar'
,p_link=>'f?p=&APP_ID.:12820:&SESSION.::&DEBUG.:::'
,p_page_id=>12820
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697159934793405280)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Employee Appraisal Review'
,p_link=>'f?p=&APP_ID.:1493:&SESSION.::&DEBUG.:::'
,p_page_id=>1493
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697160591913416648)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Post Appraisal Processes'
,p_link=>'f?p=&APP_ID.:1494:&SESSION.::&DEBUG.:::'
,p_page_id=>1494
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697215428148071078)
,p_parent_id=>wwv_flow_imp.id(697636714712299169)
,p_short_name=>'Payroll Entries'
,p_link=>'f?p=&APP_ID.:492:&SESSION.::&DEBUG.:::'
,p_page_id=>492
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697225793767121975)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'YTD Earnings'
,p_link=>'f?p=&APP_ID.:1332:&SESSION.::&DEBUG.:::'
,p_page_id=>1332
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697233685181144796)
,p_parent_id=>wwv_flow_imp.id(697225793767121975)
,p_short_name=>'Create/Edit YTD Earning'
,p_link=>'f?p=&APP_ID.:1333:&SESSION.::&DEBUG.:::'
,p_page_id=>1333
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697245866469247900)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Payroll Execution'
,p_link=>'f?p=&APP_ID.:1250:&SESSION.::&DEBUG.:::'
,p_page_id=>1250
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697265601884481376)
,p_parent_id=>wwv_flow_imp.id(697636714712299169)
,p_short_name=>'Global Payslip Search'
,p_link=>'f?p=&APP_ID.:70:&SESSION.::&DEBUG.:::'
,p_page_id=>70
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697268578307497112)
,p_parent_id=>wwv_flow_imp.id(697636714712299169)
,p_short_name=>'Listing of Employee Payslips'
,p_link=>'f?p=&APP_ID.:1355:&SESSION.::&DEBUG.:::'
,p_page_id=>1355
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697270579027509388)
,p_parent_id=>wwv_flow_imp.id(697268578307497112)
,p_short_name=>'Employee Payslip'
,p_link=>'f?p=&APP_ID.:1356:&SESSION.::&DEBUG.:::'
,p_page_id=>1356
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697272591733541865)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Employees with Negative Netpay'
,p_link=>'f?p=&APP_ID.:1506:&SESSION.::&DEBUG.:::'
,p_page_id=>1506
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697275382929581710)
,p_parent_id=>wwv_flow_imp.id(529693020550713090)
,p_short_name=>'Employee Negative Netpay Summary'
,p_link=>'f?p=&APP_ID.:1507:&SESSION.::&DEBUG.:::'
,p_page_id=>1507
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697277492436600762)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of Netpay Disbursements'
,p_link=>'f?p=&APP_ID.:52:&SESSION.::&DEBUG.:::'
,p_page_id=>52
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697279402910735428)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Mass Payroll Email'
,p_link=>'f?p=&APP_ID.:1231:&SESSION.::&DEBUG.:::'
,p_page_id=>1231
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697282316272790155)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Cancelled Payments'
,p_link=>'f?p=&APP_ID.:1330:&SESSION.::&DEBUG.:::'
,p_page_id=>1330
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697291548528819951)
,p_parent_id=>wwv_flow_imp.id(697636714712299169)
,p_short_name=>'eNIB'
,p_link=>'f?p=&APP_ID.:1403:&SESSION.::&DEBUG.:::'
,p_page_id=>1403
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697297115066853957)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Detailed Financial Journal'
,p_link=>'f?p=&APP_ID.:6001:&SESSION.::&DEBUG.:::'
,p_page_id=>6002
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697299636473867611)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Summary Journal'
,p_link=>'f?p=&APP_ID.:6003:&SESSION.::&DEBUG.:::'
,p_page_id=>6003
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697607676038314916)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Investigation Manager'
,p_link=>'f?p=&APP_ID.:4090:&SESSION.::&DEBUG.:::'
,p_page_id=>4090
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697623500105198647)
,p_parent_id=>wwv_flow_imp.id(697636714712299169)
,p_short_name=>'Payroll Diagnosis'
,p_link=>'f?p=&APP_ID.:1500:&SESSION.::&DEBUG.:::'
,p_page_id=>1500
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697636714712299169)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Utilities'
,p_link=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
,p_page_id=>23
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697637770234302554)
,p_parent_id=>wwv_flow_imp.id(697636714712299169)
,p_short_name=>'Generator'
,p_link=>'f?p=&APP_ID.:1401:&SESSION.::&DEBUG.:::'
,p_page_id=>1401
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697644777138316417)
,p_parent_id=>wwv_flow_imp.id(3726489765146544700)
,p_short_name=>'Configure Jobs'
,p_link=>'f?p=&APP_ID.:61:&SESSION.::&DEBUG.:::'
,p_page_id=>61
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697644984817319759)
,p_parent_id=>wwv_flow_imp.id(697636714712299169)
,p_short_name=>'Generate Leave Entitlements'
,p_link=>'f?p=&APP_ID.:1402:&SESSION.::&DEBUG.:::'
,p_page_id=>1402
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697646853174337168)
,p_parent_id=>wwv_flow_imp.id(697636714712299169)
,p_short_name=>'Timesheet Loading'
,p_link=>'f?p=&APP_ID.:1371:&SESSION.::&DEBUG.:::'
,p_page_id=>1371
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697648077903345128)
,p_parent_id=>wwv_flow_imp.id(697636714712299169)
,p_short_name=>'Remuneration Changes'
,p_link=>'f?p=&APP_ID.:1470:&SESSION.::&DEBUG.:::'
,p_page_id=>1470
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697655719905463564)
,p_parent_id=>wwv_flow_imp.id(697636714712299169)
,p_short_name=>'System No. Configuration'
,p_link=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::'
,p_page_id=>16
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697663232527502793)
,p_parent_id=>wwv_flow_imp.id(697636714712299169)
,p_short_name=>'Notification Scheduler'
,p_link=>'f?p=&APP_ID.:308:&SESSION.::&DEBUG.:::'
,p_page_id=>308
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697664002703533745)
,p_parent_id=>wwv_flow_imp.id(697636714712299169)
,p_short_name=>'Move Reporting To'
,p_link=>'f?p=&APP_ID.:1025:&SESSION.::&DEBUG.:::'
,p_page_id=>1025
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697664640073596506)
,p_parent_id=>wwv_flow_imp.id(697636714712299169)
,p_short_name=>'Move Position Location'
,p_link=>'f?p=&APP_ID.:1026:&SESSION.::&DEBUG.:::'
,p_page_id=>1026
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697666773737715182)
,p_parent_id=>wwv_flow_imp.id(697636714712299169)
,p_short_name=>'Move Payment Frequency'
,p_link=>'f?p=&APP_ID.:1001:&SESSION.::&DEBUG.:::'
,p_page_id=>1001
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697667439045723509)
,p_parent_id=>wwv_flow_imp.id(697636714712299169)
,p_short_name=>'Load Previous YTD'
,p_link=>'f?p=&APP_ID.:6100:&SESSION.::&DEBUG.:::'
,p_page_id=>6100
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697668198572729905)
,p_parent_id=>wwv_flow_imp.id(697636714712299169)
,p_short_name=>'Load Individual & Employee'
,p_link=>'f?p=&APP_ID.:6120:&SESSION.::&DEBUG.:::'
,p_page_id=>6120
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697668919759762124)
,p_parent_id=>wwv_flow_imp.id(697636714712299169)
,p_short_name=>'Load YTD Leave'
,p_link=>'f?p=&APP_ID.:6180:&SESSION.::&DEBUG.:::'
,p_page_id=>6180
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697669710860769305)
,p_parent_id=>wwv_flow_imp.id(697636714712299169)
,p_short_name=>'MMG Disbursement'
,p_link=>'f?p=&APP_ID.:1003:&SESSION.::&DEBUG.:::'
,p_page_id=>1003
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697670714751803126)
,p_parent_id=>wwv_flow_imp.id(697636714712299169)
,p_short_name=>'Mass Employee Inter-Organisation Transfer'
,p_link=>'f?p=&APP_ID.:491:&SESSION.::&DEBUG.:::'
,p_page_id=>491
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697673442674823046)
,p_parent_id=>wwv_flow_imp.id(697636714712299169)
,p_short_name=>'Summary Timesheet Load'
,p_link=>'f?p=&APP_ID.:161:&SESSION.::&DEBUG.:::'
,p_page_id=>161
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697674520317832933)
,p_parent_id=>wwv_flow_imp.id(697636714712299169)
,p_short_name=>'Error Log'
,p_link=>'f?p=&APP_ID.:1360:&SESSION.::&DEBUG.:::'
,p_page_id=>1360
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697680397570857466)
,p_parent_id=>wwv_flow_imp.id(697636714712299169)
,p_short_name=>'System Process Logs'
,p_link=>'f?p=&APP_ID.:1361:&SESSION.::&DEBUG.:::'
,p_page_id=>1361
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697684703909871743)
,p_parent_id=>wwv_flow_imp.id(697636714712299169)
,p_short_name=>'User Login Log'
,p_link=>'f?p=&APP_ID.:1362:&SESSION.::&DEBUG.:::'
,p_page_id=>1362
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697694223222891479)
,p_parent_id=>wwv_flow_imp.id(697636714712299169)
,p_short_name=>'View Tips'
,p_link=>'f?p=&APP_ID.:1426:&SESSION.::&DEBUG.:::'
,p_page_id=>1426
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697853922475108551)
,p_parent_id=>wwv_flow_imp.id(676434198853666815)
,p_short_name=>'Individual Qualifications'
,p_link=>'f?p=&APP_ID.:1272:&SESSION.::&DEBUG.:::'
,p_page_id=>1272
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697884624575296712)
,p_parent_id=>wwv_flow_imp.id(676434198853666815)
,p_short_name=>'Individual Hobbies'
,p_link=>'f?p=&APP_ID.:1274:&SESSION.::&DEBUG.:::'
,p_page_id=>1274
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697898527730405697)
,p_parent_id=>wwv_flow_imp.id(676434198853666815)
,p_short_name=>'References'
,p_link=>'f?p=&APP_ID.:1275:&SESSION.::&DEBUG.:::'
,p_page_id=>1275
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697901641488413810)
,p_parent_id=>wwv_flow_imp.id(697636714712299169)
,p_short_name=>'Transaction Approvals'
,p_link=>'f?p=&APP_ID.:1482:&SESSION.::&DEBUG.:::'
,p_page_id=>1482
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697905878276431694)
,p_parent_id=>wwv_flow_imp.id(697636714712299169)
,p_short_name=>'User Productivity'
,p_link=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:::'
,p_page_id=>26
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697906763999446810)
,p_parent_id=>wwv_flow_imp.id(697636714712299169)
,p_short_name=>'Notification History'
,p_link=>'f?p=&APP_ID.:71:&SESSION.::&DEBUG.:::'
,p_page_id=>71
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697921078056698646)
,p_parent_id=>wwv_flow_imp.id(676434198853666815)
,p_short_name=>'Relatives/Friends'
,p_link=>'f?p=&APP_ID.:1276:&SESSION.::&DEBUG.:::'
,p_page_id=>1276
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(698020650434152791)
,p_parent_id=>wwv_flow_imp.id(697636714712299169)
,p_short_name=>'Workflow Configuration'
,p_link=>'f?p=&APP_ID.:1385:&SESSION.::&DEBUG.:::'
,p_page_id=>1385
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(698023418344162167)
,p_parent_id=>wwv_flow_imp.id(697636714712299169)
,p_short_name=>'Workflow Transactions'
,p_link=>'f?p=&APP_ID.:1388:&SESSION.::&DEBUG.:::'
,p_page_id=>1388
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(698024708685172463)
,p_parent_id=>wwv_flow_imp.id(697636714712299169)
,p_short_name=>'Outstanding Workflows'
,p_link=>'f?p=&APP_ID.:1481:&SESSION.::&DEBUG.:::'
,p_page_id=>1481
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(698034759370289535)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Manual Timesheet Mangement'
,p_link=>'f?p=&APP_ID.:84:&SESSION.::&DEBUG.:::'
,p_page_id=>84
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(698041482742348280)
,p_parent_id=>wwv_flow_imp.id(698034759370289535)
,p_short_name=>'Configure Manual Timesheet'
,p_link=>'f?p=&APP_ID.:78:&SESSION.::&DEBUG.:::'
,p_page_id=>78
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(698051513746415830)
,p_parent_id=>wwv_flow_imp.id(670365512836630592)
,p_short_name=>'Configure Employment History'
,p_link=>'f?p=&APP_ID.:544:&SESSION.::&DEBUG.:::'
,p_page_id=>544
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(698051690969427553)
,p_parent_id=>wwv_flow_imp.id(670365512836630592)
,p_short_name=>'Applicant Address'
,p_link=>'f?p=&APP_ID.:541:&SESSION.::&DEBUG.:::'
,p_page_id=>541
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(698055145632456152)
,p_parent_id=>wwv_flow_imp.id(670365512836630592)
,p_short_name=>'Applicant Qualifications'
,p_link=>'f?p=&APP_ID.:542:&SESSION.::&DEBUG.:::'
,p_page_id=>542
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(698057321969472234)
,p_parent_id=>wwv_flow_imp.id(670365512836630592)
,p_short_name=>'Applicant References'
,p_link=>'f?p=&APP_ID.:506:&SESSION.::&DEBUG.:::'
,p_page_id=>506
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(698063566221509279)
,p_parent_id=>wwv_flow_imp.id(670365512836630592)
,p_short_name=>'Applicant Hobbies'
,p_link=>'f?p=&APP_ID.:545:&SESSION.::&DEBUG.:::'
,p_page_id=>545
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(698065957664530129)
,p_parent_id=>wwv_flow_imp.id(670365512836630592)
,p_short_name=>'Applicant''s Job Application'
,p_link=>'f?p=&APP_ID.:549:&SESSION.::&DEBUG.:::'
,p_page_id=>549
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3189560863931166656)
,p_parent_id=>wwv_flow_imp.id(3726871879926837072)
,p_short_name=>'Deduction Code'
,p_link=>'f?p=&APP_ID.:1221:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1221
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3381508518254148027)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of Employees'' Salaries'
,p_link=>'f?p=&APP_ID.:246:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>246
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3381534362847168448)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of Employees'' Remunerations'
,p_link=>'f?p=&APP_ID.:247:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>247
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3381557479625184457)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of Employees'' Leave Entitlements'
,p_link=>'f?p=&APP_ID.:248:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>248
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3381643857146233218)
,p_parent_id=>wwv_flow_imp.id(3381508518254148027)
,p_short_name=>'Create/Edit Employee Salary'
,p_link=>'f?p=&APP_ID.:13000:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13000
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3381842001284323731)
,p_parent_id=>wwv_flow_imp.id(3381557479625184457)
,p_short_name=>'Create/Edit Employee Leave Entitlement'
,p_link=>'f?p=&APP_ID.:13002:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13002
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3382087765100250388)
,p_short_name=>'Create/Edit Competency Levels'
,p_link=>'f?p=&APP_ID.:13022:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13022
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3388639685350535682)
,p_parent_id=>wwv_flow_imp.id(3404451343113355447)
,p_short_name=>'Create/Edit Competency/Skill'
,p_link=>'f?p=&APP_ID.:13021:&SESSION.::&DEBUG.:::'
,p_page_id=>13021
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3397538201502416599)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of Job Description'
,p_link=>'f?p=&APP_ID.:13010:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13010
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3404378842918304152)
,p_parent_id=>wwv_flow_imp.id(3397538201502416599)
,p_short_name=>'Create/Edit Job Description Details'
,p_link=>'f?p=&APP_ID.:13011:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13011
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3404451343113355447)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of Competencies & Skills'
,p_link=>'f?p=&APP_ID.:13020:&SESSION.::&DEBUG.:::'
,p_page_id=>13020
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3405148360247463817)
,p_parent_id=>wwv_flow_imp.id(3726489765146544700)
,p_short_name=>'Create/Edit Jobs'
,p_link=>'f?p=&APP_ID.:1307:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1307
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3405296463986535627)
,p_parent_id=>wwv_flow_imp.id(3810821367115292188)
,p_short_name=>'Create/Edit Position'
,p_link=>'f?p=&APP_ID.:1301:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1301
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3405393912302729725)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of Position Descriptions'
,p_link=>'f?p=&APP_ID.:13015:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13015
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3405478467798745319)
,p_parent_id=>wwv_flow_imp.id(3405393912302729725)
,p_short_name=>'Create/Edit Position Description Details'
,p_link=>'f?p=&APP_ID.:13016:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13016
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3474163682943874727)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of NetPay Disbursements'
,p_link=>'f?p=&APP_ID.:9981:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>9981
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3474164830308874723)
,p_parent_id=>wwv_flow_imp.id(3474163682943874727)
,p_short_name=>'Create/Edit NetPay Disbursement'
,p_link=>'f?p=&APP_ID.:9982:&SESSION.::&DEBUG.:::'
,p_page_id=>9982
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3478560724713040137)
,p_parent_id=>wwv_flow_imp.id(3578008211874927091)
,p_short_name=>'Create/Edit Shift Rotation'
,p_link=>'f?p=&FLOW_ID.:12816:&SESSION.'
,p_page_id=>12816
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3488556523052454279)
,p_parent_id=>wwv_flow_imp.id(3338596616171184473)
,p_short_name=>'  Create/Edit Employees'
,p_link=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:::'
,p_page_id=>1281
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3491256095160224723)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of Activity'
,p_link=>'f?p=&FLOW_ID.:1435:&SESSION.'
,p_page_id=>1435
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3491258705600234540)
,p_parent_id=>wwv_flow_imp.id(3491256095160224723)
,p_short_name=>'Create/Edit Activty'
,p_link=>'f?p=&FLOW_ID.:1436:&SESSION.'
,p_page_id=>1436
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3491490691852792891)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of Employee Document(s)/Licenses(s)'
,p_link=>'f?p=&APP_ID.:12819:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>12819
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3578008211874927091)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of Shift Rotation'
,p_link=>'f?p=&APP_ID.:12815:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>12815
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3578158776356027765)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of Swapped Shifts'
,p_link=>'f?p=&APP_ID.:182:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>182
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3578198622767046333)
,p_parent_id=>wwv_flow_imp.id(3578158776356027765)
,p_short_name=>'Create/Edit Swap Shifts'
,p_link=>'f?p=&APP_ID.:186:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>186
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3601776621184861697)
,p_short_name=>'ACH Master'
,p_link=>'f?p=&APP_ID.:201:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>201
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3602103447937975035)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing ACH Configuration'
,p_link=>'f?p=&FLOW_ID.:213:&SESSION.'
,p_page_id=>213
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3607190632706517179)
,p_parent_id=>wwv_flow_imp.id(3602103447937975035)
,p_short_name=>'Create/Edit ACH Configuration'
,p_link=>'f?p=&FLOW_ID.:218:&SESSION.'
,p_page_id=>218
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3610578728955360611)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of Shifts'
,p_link=>'f?p=&APP_ID.:1335:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1335
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3622017160790226702)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Assign Employee Rotation'
,p_link=>'f?p=&FLOW_ID.:119:&SESSION.'
,p_page_id=>119
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3687367104268184282)
,p_parent_id=>wwv_flow_imp.id(3687367649586193849)
,p_short_name=>'Create/Edit Employee Accident Reports'
,p_link=>'f?p=&APP_ID.:4005:&SESSION.::&DEBUG.:::'
,p_page_id=>4005
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3687367649586193849)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Employee Accident Reports'
,p_link=>'f?p=&APP_ID.:4006:&SESSION.::&DEBUG.:::'
,p_page_id=>4006
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3687379841611280006)
,p_parent_id=>wwv_flow_imp.id(3687381702077294377)
,p_short_name=>'Create/Edit Risk Assessment'
,p_link=>'f?p=&FLOW_ID.:4013:&SESSION.'
,p_page_id=>4013
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3687381702077294377)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'General Risk Assessment'
,p_link=>'f?p=&APP_ID.:4012:&SESSION.::&DEBUG.:::'
,p_page_id=>4012
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3687391560244387801)
,p_parent_id=>wwv_flow_imp.id(3687392885933396864)
,p_short_name=>'Create/Edit COSHH Risk Assessment'
,p_link=>'f?p=&FLOW_ID.:4008:&SESSION.'
,p_page_id=>4008
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3687392885933396864)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'COSHH Risk Assessment Records'
,p_link=>'f?p=&FLOW_ID.:4011:&SESSION.'
,p_page_id=>4011
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3687416801609665475)
,p_parent_id=>wwv_flow_imp.id(3687417821484673790)
,p_short_name=>'Create/Edit Job Hazards Analysis'
,p_link=>'f?p=&FLOW_ID.:4009:&SESSION.'
,p_page_id=>4009
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3687417821484673790)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Job Hazards Analysis'
,p_link=>'f?p=&FLOW_ID.:4010:&SESSION.'
,p_page_id=>4010
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3687826807361098633)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Risk Registers'
,p_link=>'f?p=&APP_ID.:4078:&SESSION.::&DEBUG.:::'
,p_page_id=>4078
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3687848712167391802)
,p_parent_id=>wwv_flow_imp.id(3687987094407956504)
,p_short_name=>'Create/Edit PPE REGISTER'
,p_link=>'f?p=&FLOW_ID.:4081:&SESSION.'
,p_page_id=>4081
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3687987094407956504)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Employee with PPE'
,p_link=>'f?p=&FLOW_ID.:4080:&SESSION.'
,p_page_id=>4080
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3688160919048732094)
,p_parent_id=>wwv_flow_imp.id(3688162214238745605)
,p_short_name=>'Create/Edit Incident'
,p_link=>'f?p=&APP_ID.:4051:&SESSION.::&DEBUG.:::'
,p_page_id=>4051
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3688162214238745605)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Incidents'
,p_link=>'f?p=&APP_ID.:4050:&SESSION.::&DEBUG.:::'
,p_page_id=>4050
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3688583828229209660)
,p_short_name=>'Listing of Depreciation Rules'
,p_link=>'f?p=&APP_ID.:691:&SESSION.'
,p_page_id=>691
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3689674169485148960)
,p_short_name=>'Listing of Category Groups'
,p_link=>'f?p=&APP_ID.:370:&SESSION.'
,p_page_id=>370
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3689696682337185360)
,p_short_name=>'Listing of Inventory Organisations'
,p_link=>'f?p=&APP_ID.:211:&SESSION.'
,p_page_id=>211
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3689720506821871143)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Vehicle Accident Report'
,p_link=>'f?p=&APP_ID.:4020:&SESSION.::&DEBUG.:::'
,p_page_id=>4020
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3690061625164899392)
,p_parent_id=>wwv_flow_imp.id(3689720506821871143)
,p_short_name=>'Create/Edit Vehicle Accident Report'
,p_link=>'f?p=&APP_ID.:4014:&SESSION.::&DEBUG.:::'
,p_page_id=>4014
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3690081673690058063)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Accident Register'
,p_link=>'f?p=&APP_ID.:4052:&SESSION.::&DEBUG.:::'
,p_page_id=>4052
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3690087457720116285)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Minor Vehicle Accidents'
,p_link=>'f?p=&FLOW_ID.:4060:&SESSION.'
,p_page_id=>4060
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3690091458609141046)
,p_parent_id=>wwv_flow_imp.id(3690087457720116285)
,p_short_name=>'Create/ Edit Minor Vehicle Accident'
,p_link=>'f?p=&FLOW_ID.:4066:&SESSION.'
,p_page_id=>4066
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3690104442330217398)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Driver Assessment'
,p_link=>'f?p=&FLOW_ID.:4062:&SESSION.'
,p_page_id=>4062
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3690106722263230655)
,p_parent_id=>wwv_flow_imp.id(3690104442330217398)
,p_short_name=>'Create/Edit Driver Assessment'
,p_link=>'f?p=&FLOW_ID.:4063:&SESSION.'
,p_page_id=>4063
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3690121600404368621)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Contract Safety Gears'
,p_link=>'f?p=&FLOW_ID.:4076:&SESSION.'
,p_page_id=>4076
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3690185725360583448)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Oil and Chemical Register'
,p_link=>'f?p=&FLOW_ID.:4017:&SESSION.'
,p_page_id=>4017
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3690187035262677331)
,p_parent_id=>wwv_flow_imp.id(3690185725360583448)
,p_short_name=>'Create/Edit Oil And Chemical'
,p_link=>'f?p=&FLOW_ID.:4018:&SESSION.'
,p_page_id=>4018
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3692015734430692826)
,p_parent_id=>wwv_flow_imp.id(3690061625164899392)
,p_short_name=>'Create/Edit Accident Detail'
,p_link=>'f?p=&FLOW_ID.:4015:&SESSION.'
,p_page_id=>4015
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3692020214979762394)
,p_parent_id=>wwv_flow_imp.id(3690061625164899392)
,p_short_name=>'Create/Edit OS&H Unit'
,p_link=>'f?p=&FLOW_ID.:4016:&SESSION.'
,p_page_id=>4016
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3692027413289111711)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of Manual TimeSheet Entries'
,p_link=>'f?p=&APP_ID.:125:&SESSION.'
,p_page_id=>125
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3693220412281693592)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Frequently Asked Question & Issues'
,p_link=>'f?p=&APP_ID.:1444:&SESSION.'
,p_page_id=>1444
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3693532552928417971)
,p_short_name=>'Listing of Asset Item Trans History'
,p_link=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:::'
,p_page_id=>35
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3693559736776610231)
,p_short_name=>'Listing of Non Purchased Items by Period'
,p_link=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.:::'
,p_page_id=>40
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3693918778684782508)
,p_short_name=>'Browse Position Details'
,p_link=>'f?p=&APP_ID.:106:&SESSION.'
,p_page_id=>106
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3695262803350602639)
,p_short_name=>'Listing of Non-Transacted'
,p_link=>'f?p=&FLOW_ID.:642:&SESSION.'
,p_page_id=>642
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3695876134819570637)
,p_parent_id=>wwv_flow_imp.id(697636714712299169)
,p_short_name=>'Listing of User Manual Entries'
,p_link=>'f?p=&APP_ID.:132:&SESSION.::&DEBUG.:::'
,p_page_id=>132
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3695877328916570638)
,p_parent_id=>wwv_flow_imp.id(3695876134819570637)
,p_short_name=>'Create/Edit User Manual Entries'
,p_link=>'f?p=&APP_ID.:134:&SESSION.::&DEBUG.:::'
,p_page_id=>134
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3704575809878808392)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Employee Items'
,p_link=>'f?p=&APP_ID.:111:&SESSION.::&DEBUG.:::'
,p_page_id=>111
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3706735791809614329)
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:101100:&SESSION.'
,p_page_id=>101100
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3710014857572793965)
,p_parent_id=>wwv_flow_imp.id(3710032023558802019)
,p_short_name=>'Create/Edit Employee Tasks (Per Employees)'
,p_link=>'f?p=&APP_ID.:159:&SESSION.'
,p_page_id=>159
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3710032023558802019)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of Employee Tasks (Per Employees)'
,p_link=>'f?p=&APP_ID.:158:&SESSION.'
,p_page_id=>158
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3710050605219812913)
,p_parent_id=>wwv_flow_imp.id(3710072443487822715)
,p_short_name=>'Create/Edit Employee Tasks (All Employees)'
,p_link=>'f?p=&APP_ID.:157:&SESSION.'
,p_page_id=>157
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3710072443487822715)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of Employee Tasks (All Employees)'
,p_link=>'f?p=&APP_ID.:156:&SESSION.'
,p_page_id=>156
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3714172287064508381)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of Change Employments'
,p_link=>'f?p=&APP_ID.:136:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>136
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3714439582365655475)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of Confirmation Movements'
,p_link=>'f?p=&APP_ID.:697:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>697
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3714535215921686741)
,p_parent_id=>wwv_flow_imp.id(3714439582365655475)
,p_short_name=>'Create /Edit Confirmation Movement'
,p_link=>'f?p=&APP_ID.:698:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>698
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3714656182804753831)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of Supplemental Movements'
,p_link=>'f?p=&APP_ID.:699:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>699
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3719284273173122406)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of Employee Absences'
,p_link=>'f?p=&APP_ID.:191:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>191
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3719814932157764040)
,p_parent_id=>wwv_flow_imp.id(5467289225558347039)
,p_short_name=>'Listing of Broadcasts'
,p_link=>'f?p=&FLOW_ID.:90:&SESSION.'
,p_page_id=>90
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3719848663621279427)
,p_parent_id=>wwv_flow_imp.id(3719814932157764040)
,p_short_name=>'Create/Edit Broadcast'
,p_link=>'f?p=&FLOW_ID.:91:&SESSION.'
,p_page_id=>91
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3725786212488784677)
,p_parent_id=>wwv_flow_imp.id(3714656182804753831)
,p_short_name=>'Create/Edit Supplemental Movement'
,p_link=>'f?p=&APP_ID.:700:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>700
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3725909603605829734)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of Movement Extensions'
,p_link=>'f?p=&APP_ID.:701:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>701
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726074595622903365)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of Employee Separations'
,p_link=>'f?p=&APP_ID.:1414:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1414
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726117688369923149)
,p_parent_id=>wwv_flow_imp.id(3726074595622903365)
,p_short_name=>'Create/Edit Employee Separation'
,p_link=>'f?p=&APP_ID.:1415:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1415
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726177575971969876)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of New Employments'
,p_link=>'f?p=&APP_ID.:108:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>108
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726326963699263201)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of Grade Scales'
,p_link=>'f?p=&FLOW_ID.:1308:&SESSION.'
,p_page_id=>1308
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726489765146544700)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of Jobs'
,p_link=>'f?p=&APP_ID.:1306:&SESSION.'
,p_page_id=>1306
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726536607586082268)
,p_parent_id=>wwv_flow_imp.id(3738548170421777220)
,p_short_name=>'Create/Edit Change Position'
,p_link=>'f?p=&APP_ID.:51:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>51
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726714750683633630)
,p_short_name=>'Competencies '
,p_link=>'f?p=&APP_ID.:1492:&SESSION.'
,p_page_id=>1492
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726839105140598240)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Leave Roster'
,p_link=>'f?p=&APP_ID.:60:&SESSION.'
,p_page_id=>60
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726869866880821041)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of Payroll Income Codes'
,p_link=>'f?p=&APP_ID.:1210:&SESSION.::&DEBUG.:::'
,p_page_id=>1210
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726870703375829170)
,p_parent_id=>wwv_flow_imp.id(3726869866880821041)
,p_short_name=>'Create/Edit Payroll Income Codes'
,p_link=>'f?p=&APP_ID.:1211:&SESSION.::&DEBUG.:::'
,p_page_id=>1211
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726871879926837072)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of Employee Payroll Deduction Codes'
,p_link=>'f?p=&FLOW_ID.:1220:&SESSION.'
,p_page_id=>1220
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726873505767853330)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>' Listing of Employee-Non Statutory Deductions'
,p_link=>'f?p=&FLOW_ID.:1296:&SESSION.'
,p_page_id=>1296
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726874723847861378)
,p_parent_id=>wwv_flow_imp.id(3726873505767853330)
,p_short_name=>'Create/Edit Non-Statutory Deduction'
,p_link=>'f?p=&APP_ID.:1297:&SESSION.::&DEBUG.:::'
,p_page_id=>1297
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726876324075872581)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of Job Related Tasks'
,p_link=>'f?p=&FLOW_ID.:1341:&SESSION.'
,p_page_id=>1341
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726877423224878346)
,p_parent_id=>wwv_flow_imp.id(3726876324075872581)
,p_short_name=>'Create/Edit Job Related Tasks'
,p_link=>'f?p=&FLOW_ID.:1342:&SESSION.'
,p_page_id=>1342
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726904892663062043)
,p_parent_id=>wwv_flow_imp.id(3726839105140598240)
,p_short_name=>'Create/Edit Leave Roster'
,p_link=>'f?p=&FLOW_ID.:33:&SESSION.'
,p_page_id=>33
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726929004773221534)
,p_short_name=>'Listing of Location Shift Rule'
,p_link=>'f?p=&APP_ID.:62:&SESSION.'
,p_page_id=>62
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3727250015753949539)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Timesheet Manager'
,p_link=>'f?p=&APP_ID.:126:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>126
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3729679632531196485)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of Medical History'
,p_link=>'f?p=&FLOW_ID.:1408:&SESSION.'
,p_page_id=>1408
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3738548170421777220)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of Change Positions'
,p_link=>'f?p=&APP_ID.:1412:&SESSION.::&DEBUG.:::'
,p_page_id=>1412
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3755888807598117605)
,p_parent_id=>wwv_flow_imp.id(3755917333436128639)
,p_short_name=>'Create/Edit Health Surcharge'
,p_link=>'f?p=&APP_ID.:173:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>173
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3755917333436128639)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of Health Surcharge '
,p_link=>'f?p=&APP_ID.:172:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>172
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3758538327374786417)
,p_parent_id=>wwv_flow_imp.id(5467289225558347039)
,p_short_name=>'Productivity Detail Report'
,p_link=>'f?p=&APP_ID.:192:&SESSION.::&DEBUG.:::'
,p_page_id=>192
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3759240985736802696)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'End Of Year Reports'
,p_link=>'f?p=&APP_ID.:194:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>194
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3759269616734857197)
,p_parent_id=>wwv_flow_imp.id(3714172287064508381)
,p_short_name=>'Create/Edit Change Employment'
,p_link=>'f?p=&APP_ID.:137:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>137
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3763443214776807161)
,p_short_name=>'Listing of Media'
,p_link=>'f?p=&FLOW_ID.:181:&SESSION.'
,p_page_id=>181
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3763449303014844726)
,p_short_name=>'Create/Edit Media'
,p_link=>'f?p=&FLOW_ID.:188:&SESSION.'
,p_page_id=>188
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3770785409268754112)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Payroll Compare'
,p_link=>'f?p=&APP_ID.:1249:&SESSION.::&DEBUG.:::'
,p_page_id=>1249
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3772616746125287533)
,p_parent_id=>wwv_flow_imp.id(3776816566739887860)
,p_short_name=>'Create/Edit Grievance Action'
,p_link=>'f?p=&APP_ID.:184:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>184
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3776816566739887860)
,p_parent_id=>wwv_flow_imp.id(3776844444788902738)
,p_short_name=>'Create/Edit Employee Grievance'
,p_link=>'f?p=&APP_ID.:175:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>175
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3776844444788902738)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of Employee Grievances'
,p_link=>'f?p=&APP_ID.:174:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>174
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3778757313929556181)
,p_parent_id=>wwv_flow_imp.id(3778759018560588700)
,p_short_name=>'Create/Edit Health Surcharges'
,p_link=>'f?p=&FLOW_ID.:167:&SESSION.'
,p_page_id=>167
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3778759018560588700)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of Health Surcharges'
,p_link=>'f?p=&FLOW_ID.:166:&SESSION.'
,p_page_id=>166
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3779379887086569828)
,p_parent_id=>wwv_flow_imp.id(3725909603605829734)
,p_short_name=>'Create/Edit Movement Extension'
,p_link=>'f?p=&APP_ID.:702:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>702
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3807357321503666367)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of Life Certificates'
,p_link=>'f?p=&FLOW_ID.:57:&SESSION.'
,p_page_id=>57
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3810821367115292188)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of Positions'
,p_link=>'f?p=&FLOW_ID.:1300:&SESSION.'
,p_page_id=>1300
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3845822825950362336)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Employees Payments'
,p_link=>'f?p=&APP_ID.:8003:&SESSION.::&DEBUG.:::'
,p_page_id=>8003
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3845909105866921364)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Employees Pension Deductions'
,p_link=>'f?p=&APP_ID.:8005:&SESSION.::&DEBUG.:::'
,p_page_id=>8005
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3845921367130994050)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Employees Medical Deductions'
,p_link=>'f?p=&APP_ID.:8006:&SESSION.::&DEBUG.:::'
,p_page_id=>8006
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3846103691733382317)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Listing of Employees Deductions'
,p_link=>'f?p=&APP_ID.:8008:&SESSION.::&DEBUG.:::'
,p_page_id=>8008
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3846117352577544996)
,p_short_name=>'PAYE for Employees By Period'
,p_link=>'f?p=&FLOW_ID.:8011:&SESSION.'
,p_page_id=>8011
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3846256449764377605)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'NIB/SS Contribution Report'
,p_link=>'f?p=&APP_ID.:8012:&SESSION.::&DEBUG.:::'
,p_page_id=>8012
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3846491711419100364)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Overtime Summary'
,p_link=>'f?p=&APP_ID.:8009:&SESSION.::&DEBUG.:::'
,p_page_id=>8009
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3846528775715731435)
,p_parent_id=>wwv_flow_imp.id(3846256449764377605)
,p_short_name=>'Employees Above 60 NIB/SS Contribution'
,p_link=>'f?p=&APP_ID.:8013:&SESSION.::&DEBUG.:::'
,p_page_id=>8013
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3854169674551260998)
,p_parent_id=>wwv_flow_imp.id(697636714712299169)
,p_short_name=>'Republic Bank Accounts'
,p_link=>'f?p=&APP_ID.:8031:&SESSION.::&DEBUG.:::'
,p_page_id=>8031
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(5467289225558347039)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Administration'
,p_link=>'f?p=&FLOW_ID.:23:&SESSION.'
,p_page_id=>23
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(6035237421962761234)
,p_parent_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Help'
,p_link=>'f?p=&FLOW_ID.:25:&SESSION.'
,p_page_id=>25
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10988457978950635450)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp.component_end;
end;
/
