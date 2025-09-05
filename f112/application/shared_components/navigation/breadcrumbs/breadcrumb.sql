prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
--   Manifest
--     MENU: Breadcrumb
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(10460765779079194647)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(328753757167748)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Upload Data'
,p_link=>'f?p=&APP_ID.:244:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>244
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2001232527272290)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>' Employees with Negative Netpay'
,p_link=>'f?p=&APP_ID.:1506:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1506
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2069588881909962)
,p_parent_id=>wwv_flow_imp.id(148742410830226015)
,p_short_name=>'Manage Address'
,p_link=>'f?p=&APP_ID.:1270:&SESSION.::&DEBUG.:::'
,p_page_id=>1270
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2620252886705710)
,p_short_name=>'frmfileoutput'
,p_link=>'f?p=&APP_ID.:219:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>219
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(28865040532174034)
,p_parent_id=>wwv_flow_imp.id(169944926688858369)
,p_short_name=>'Attribute Setup'
,p_link=>'f?p=&APP_ID.:3150:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>3150
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(31611901980006725)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of Debug Payrolls'
,p_link=>'f?p=&APP_ID.:1255:&SESSION.::&DEBUG.:::'
,p_page_id=>1255
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(31812912185042038)
,p_parent_id=>wwv_flow_imp.id(31611901980006725)
,p_short_name=>'Manage Debug Payroll'
,p_link=>'f?p=&APP_ID.:1256:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1256
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(38428790843031437)
,p_parent_id=>wwv_flow_imp.id(81509606555030450)
,p_short_name=>'Manage Employee Holiday'
,p_link=>'f?p=&APP_ID.:1322:&SESSION.::&DEBUG.:::'
,p_page_id=>1322
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(47070596277189028)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'HR Exports To Payroll'
,p_link=>'f?p=&APP_ID.:1350:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1350
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(51382393633162401)
,p_short_name=>'Create/Edit Tax Rate'
,p_link=>'f?p=&APP_ID.:1314:&SESSION.::&DEBUG.:::'
,p_page_id=>1314
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(59565930114120727)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Payroll Legacy'
,p_link=>'f?p=&APP_ID.:179:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>179
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(59605915547858623)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'List of Accessible Reports'
,p_link=>'f?p=&APP_ID.:400:&SESSION.::&DEBUG.:::'
,p_page_id=>400
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(59606107933854065)
,p_parent_id=>wwv_flow_imp.id(59605915547858623)
,p_short_name=>'Setup Reports'
,p_link=>'f?p=&APP_ID.:401:&SESSION.::&DEBUG.:::'
,p_page_id=>401
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(63296150864767948)
,p_parent_id=>wwv_flow_imp.id(3198485787948529076)
,p_short_name=>'Create&#x2F;Edit New Employment'
,p_link=>'f?p=&APP_ID.:109:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>109
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(63941281856340242)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Excel Posting Uploads'
,p_link=>'f?p=&APP_ID.:1465:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1465
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(81509606555030450)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Manage Holidays'
,p_link=>'f?p=&APP_ID.:1319:&SESSION.::&DEBUG.:::'
,p_page_id=>1319
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(116281250717737392)
,p_parent_id=>wwv_flow_imp.id(3198635175675822401)
,p_short_name=>'Manage Grade/Salary Scales'
,p_link=>'f?p=&APP_ID.:1309:&SESSION.::&DEBUG.:::'
,p_page_id=>1309
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(117409510363974833)
,p_short_name=>'Search Directory'
,p_link=>'f?p=&APP_ID.:103:&SESSION.::&DEBUG.:::'
,p_page_id=>103
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(117411391617912896)
,p_parent_id=>wwv_flow_imp.id(117409510363974833)
,p_short_name=>'Manage Directories'
,p_link=>'f?p=&APP_ID.:104:&SESSION.::&DEBUG.:::'
,p_page_id=>104
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(120290831008373262)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Search Individual Files'
,p_link=>'f?p=&APP_ID.:9000:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>9000
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(120332205730252531)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>' Search Employee Files'
,p_link=>'f?p=&APP_ID.:150:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>150
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(123530726209701007)
,p_parent_id=>wwv_flow_imp.id(3162429812380927821)
,p_short_name=>'Create&#x2F;Edit Contract Safety Gears'
,p_link=>'f?p=&APP_ID.:4077:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4077
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(126584952818769756)
,p_parent_id=>wwv_flow_imp.id(129560232839317353)
,p_short_name=>'Create &#x2F;Edit Leave Policy'
,p_link=>'f?p=&APP_ID.:11998:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>11998
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(129560232839317353)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of Leave Policies'
,p_link=>'f?p=&APP_ID.:11999:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>11999
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(133818789131294398)
,p_parent_id=>wwv_flow_imp.id(169944926688858369)
,p_short_name=>'Listing of Employee Leave Track'
,p_link=>'f?p=&APP_ID.:1433:&SESSION.::&DEBUG.:::'
,p_page_id=>1433
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(134430633758637552)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Procore Timesheets'
,p_link=>'f?p=&APP_ID.:245:&SESSION.::&DEBUG.:::'
,p_page_id=>245
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(134462708428875379)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of Employee Leave Records'
,p_link=>'f?p=&APP_ID.:1416:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1416
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(135894812772265223)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Global PeoplePay Search'
,p_link=>'f?p=&APP_ID.:249:&SESSION.::&DEBUG.:::'
,p_page_id=>249
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(135946483773396876)
,p_parent_id=>wwv_flow_imp.id(134462708428875379)
,p_short_name=>'Manage Leave Request'
,p_link=>'f?p=&APP_ID.:1417:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1417
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(136894918695867494)
,p_short_name=>'Antigua & Barbuda Educaton Levy'
,p_link=>'f?p=&APP_ID.:1486:&SESSION.::&DEBUG.:::'
,p_page_id=>1486
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(139809532241323632)
,p_short_name=>'Edit Course Configuration'
,p_link=>'f?p=&APP_ID.:312:&SESSION.::&DEBUG.:::'
,p_page_id=>312
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(142506160595606476)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Employee Holidays'
,p_link=>'f?p=&APP_ID.:1339:&SESSION.::&DEBUG.:::'
,p_page_id=>1339
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(142512705085643385)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Leave Types'
,p_link=>'f?p=&APP_ID.:216:&SESSION.::&DEBUG.:::'
,p_page_id=>216
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(142512980505649928)
,p_parent_id=>wwv_flow_imp.id(142512705085643385)
,p_short_name=>'Configure Leave Types'
,p_link=>'f?p=&APP_ID.:221:&SESSION.::&DEBUG.:::'
,p_page_id=>221
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(142598994360556259)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Find, Filter and Organize Projects'
,p_link=>'f?p=&APP_ID.:1700:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1700
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(142615094815572547)
,p_parent_id=>wwv_flow_imp.id(142598994360556259)
,p_short_name=>'Manage Projects'
,p_link=>'f?p=&APP_ID.:1710:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1710
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(142638301797184937)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Earning Periods'
,p_link=>'f?p=&APP_ID.:1240:&SESSION.::&DEBUG.:::'
,p_page_id=>1240
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(142638512376188504)
,p_parent_id=>wwv_flow_imp.id(142638301797184937)
,p_short_name=>'Configure Earning Period'
,p_link=>'f?p=&APP_ID.:1241:&SESSION.::&DEBUG.:::'
,p_page_id=>1241
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(142640617633218603)
,p_short_name=>'Org Structures'
,p_link=>'f?p=&APP_ID.:1293:&SESSION.::&DEBUG.:::'
,p_page_id=>1293
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(142645658031342804)
,p_short_name=>'Job Interviews'
,p_link=>'f?p=&APP_ID.:2012:&SESSION.::&DEBUG.:::'
,p_page_id=>2012
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(142645848787346769)
,p_parent_id=>wwv_flow_imp.id(142645658031342804)
,p_short_name=>'Manage Job Interview'
,p_link=>'f?p=&APP_ID.:2001:&SESSION.::&DEBUG.:::'
,p_page_id=>2001
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(142661957074787624)
,p_short_name=>'References'
,p_link=>'f?p=&APP_ID.:9974:&SESSION.::&DEBUG.:::'
,p_page_id=>9974
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(142662208382794275)
,p_parent_id=>wwv_flow_imp.id(142661957074787624)
,p_short_name=>'Configure References'
,p_link=>'f?p=&APP_ID.:9968:&SESSION.::&DEBUG.:::'
,p_page_id=>9968
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(142667276803859076)
,p_short_name=>'Position Openings'
,p_link=>'f?p=&APP_ID.:2008:&SESSION.::&DEBUG.:::'
,p_page_id=>2008
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(142668204845865898)
,p_parent_id=>wwv_flow_imp.id(142667276803859076)
,p_short_name=>'Configure Position Opening'
,p_link=>'f?p=&APP_ID.:1395:&SESSION.::&DEBUG.:::'
,p_page_id=>1395
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(142673441755175060)
,p_short_name=>'Applicants'
,p_link=>'f?p=&APP_ID.:539:&SESSION.::&DEBUG.:::'
,p_page_id=>539
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(142673724813189792)
,p_parent_id=>wwv_flow_imp.id(142673441755175060)
,p_short_name=>'Applicant Register'
,p_link=>'f?p=&APP_ID.:540:&SESSION.::&DEBUG.:::'
,p_page_id=>540
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(143434828078958239)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of User Guides'
,p_link=>'f?p=&APP_ID.:13040:&SESSION.::&DEBUG.:::'
,p_page_id=>13040
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(144314049814177289)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Employee Appraisal Evaluation'
,p_link=>'f?p=&APP_ID.:1499:&SESSION.::&DEBUG.:::'
,p_page_id=>1499
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(144432942531274379)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of Appraisal Configurations'
,p_link=>'f?p=&APP_ID.:1490:&SESSION.::&DEBUG.:::'
,p_page_id=>1490
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(144492349252401618)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Create/Edit Appraisal Configuration for &P1491_MERIT_DESCRIPTION.'
,p_link=>'f?p=&APP_ID.:1491:&SESSION.::&DEBUG.:::'
,p_page_id=>1491
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(144837904265160533)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of Employee Appraisals'
,p_link=>'f?p=&APP_ID.:1495:&SESSION.::&DEBUG.:::'
,p_page_id=>1495
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(144995366424268047)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Manage Employee Appraisal'
,p_link=>'f?p=&APP_ID.:1496:&SESSION.::&DEBUG.:::'
,p_page_id=>1496
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(146152997953551180)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Shift Roster'
,p_link=>'f?p=&APP_ID.:116:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>116
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(146509866841622348)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'List of System References'
,p_link=>'f?p=&APP_ID.:1200:&SESSION.::&DEBUG.:::'
,p_page_id=>1200
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(147528107519114180)
,p_parent_id=>wwv_flow_imp.id(142640617633218603)
,p_short_name=>'Manage Org Structures'
,p_link=>'f?p=&APP_ID.:1294:&SESSION.::&DEBUG.:::'
,p_page_id=>1294
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(147672017931458967)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Staff Requisitions'
,p_link=>'f?p=&APP_ID.:2003:&SESSION.::&DEBUG.:::'
,p_page_id=>2003
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(147702436073589365)
,p_parent_id=>wwv_flow_imp.id(147672017931458967)
,p_short_name=>'Create/ Edit Staff Requisitions'
,p_link=>'f?p=&APP_ID.:2004:&SESSION.::&DEBUG.:::'
,p_page_id=>2004
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(147763743350801816)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Applicants with Given References'
,p_link=>'f?p=&APP_ID.:9969:&SESSION.::&DEBUG.:::'
,p_page_id=>9969
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(147770828533827620)
,p_parent_id=>wwv_flow_imp.id(147763743350801816)
,p_short_name=>'Manage Applicant References'
,p_link=>'f?p=&APP_ID.:9970:&SESSION.::&DEBUG.:::'
,p_page_id=>9970
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(147771862247870552)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Recruitment Matrix'
,p_link=>'f?p=&APP_ID.:447:&SESSION.::&DEBUG.:::'
,p_page_id=>447
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(147772980271890963)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Interview Schedule'
,p_link=>'f?p=&APP_ID.:2009:&SESSION.::&DEBUG.:::'
,p_page_id=>2009
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(147773229116897311)
,p_parent_id=>wwv_flow_imp.id(147772980271890963)
,p_short_name=>'Interview Setup'
,p_link=>'f?p=&APP_ID.:2011:&SESSION.::&DEBUG.:::'
,p_page_id=>2011
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(147967923523123457)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of Interviews'
,p_link=>'f?p=&APP_ID.:2005:&SESSION.::&DEBUG.:::'
,p_page_id=>2005
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(148007748935178161)
,p_parent_id=>wwv_flow_imp.id(147967923523123457)
,p_short_name=>'Manage Interviews'
,p_link=>'f?p=&APP_ID.:2006:&SESSION.::&DEBUG.:::'
,p_page_id=>2006
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(148015284462216440)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Online Interview Evaluation'
,p_link=>'f?p=&APP_ID.:2013:&SESSION.::&DEBUG.:::'
,p_page_id=>2013
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(148042576636393118)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Manual Interview'
,p_link=>'f?p=&APP_ID.:337:&SESSION.::&DEBUG.:::'
,p_page_id=>337
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(148709469313195637)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Individuals'
,p_link=>'f?p=&APP_ID.:1260:&SESSION.::&DEBUG.:::'
,p_page_id=>1260
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(148742410830226015)
,p_parent_id=>wwv_flow_imp.id(148709469313195637)
,p_short_name=>'Create/Edit Individuals'
,p_link=>'f?p=&APP_ID.:1261:&SESSION.::&DEBUG.::P1261_ID:&GLOBAL_IND.'
,p_page_id=>1261
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(148989839923632581)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Manage Work Activity Tasks'
,p_link=>'f?p=&APP_ID.:10999:&SESSION.::&DEBUG.:::'
,p_page_id=>10999
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(149153363941389358)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Manage Work Activity and Related Tasks'
,p_link=>'f?p=&APP_ID.:10900:&SESSION.::&DEBUG.:::'
,p_page_id=>10900
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(149888237069709905)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'All Movements'
,p_link=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:::'
,p_page_id=>28
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(149937412185228460)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Leave Transactions'
,p_link=>'f?p=&APP_ID.:12000:&SESSION.::&DEBUG.:::'
,p_page_id=>12000
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(150023897946942776)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Timesheet Master'
,p_link=>'f?p=&APP_ID.:138:&SESSION.::&DEBUG.:::'
,p_page_id=>138
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(150026880907165532)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Timesheet Incomes/Absences'
,p_link=>'f?p=&APP_ID.:12817:&SESSION.::&DEBUG.:::'
,p_page_id=>12817
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(150029482734178995)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Master Verification'
,p_link=>'f?p=&APP_ID.:224:&SESSION.::&DEBUG.:::'
,p_page_id=>224
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(150030854208189950)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Work Activity Income'
,p_link=>'f?p=&APP_ID.:12821:&SESSION.::&DEBUG.:::'
,p_page_id=>12821
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(150255009711700982)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Timeclock Upload and Process'
,p_link=>'f?p=&APP_ID.:12822:&SESSION.::&DEBUG.:::'
,p_page_id=>12822
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(150257689006753075)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Code of Conduct'
,p_link=>'f?p=&APP_ID.:1420:&SESSION.::&DEBUG.:::'
,p_page_id=>1420
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(150259276755802895)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Employee Offence'
,p_link=>'f?p=&APP_ID.:1421:&SESSION.::&DEBUG.:::'
,p_page_id=>1421
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(150397204058569143)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Document Centre'
,p_link=>'f?p=&APP_ID.:128:&SESSION.::&DEBUG.:::'
,p_page_id=>128
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(150411861256612731)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Document Center'
,p_link=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:::'
,p_page_id=>129
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(150413561332636163)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Mass Email Request'
,p_link=>'f?p=&APP_ID.:233:&SESSION.::&DEBUG.:::'
,p_page_id=>233
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(150414514409656337)
,p_parent_id=>wwv_flow_imp.id(150413561332636163)
,p_short_name=>'Configure Mass Email'
,p_link=>'f?p=&APP_ID.:234:&SESSION.::&DEBUG.:::'
,p_page_id=>234
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(150490145960524397)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of General Memos'
,p_link=>'f?p=&APP_ID.:1430:&SESSION.::&DEBUG.:::'
,p_page_id=>1430
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(150500280297551980)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Create/Edit General Memo'
,p_link=>'f?p=&APP_ID.:1431:&SESSION.::&DEBUG.:::'
,p_page_id=>1431
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(150505086907855353)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of Training Programs'
,p_link=>'f?p=&APP_ID.:311:&SESSION.::&DEBUG.:::'
,p_page_id=>311
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(150507122366870901)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of Training Courses'
,p_link=>'f?p=&APP_ID.:313:&SESSION.::&DEBUG.:::'
,p_page_id=>313
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(150780539630340733)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Course Scheduling'
,p_link=>'f?p=&APP_ID.:319:&SESSION.::&DEBUG.:::'
,p_page_id=>319
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(150782458861814347)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Class Setup'
,p_link=>'f?p=&APP_ID.:316:&SESSION.::&DEBUG.:::'
,p_page_id=>316
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(150783642222890324)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Course Enrollment'
,p_link=>'f?p=&APP_ID.:317:&SESSION.::&DEBUG.:::'
,p_page_id=>317
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(150786609002994353)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Class Attendance'
,p_link=>'f?p=&APP_ID.:321:&SESSION.::&DEBUG.:::'
,p_page_id=>321
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(150791537230035135)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Insurance Categories'
,p_link=>'f?p=&APP_ID.:1406:&SESSION.::&DEBUG.:::'
,p_page_id=>1406
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(150809819423089958)
,p_parent_id=>wwv_flow_imp.id(150791537230035135)
,p_short_name=>'Configure Insurance Categories'
,p_link=>'f?p=&APP_ID.:1407:&SESSION.::&DEBUG.:::'
,p_page_id=>1407
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(150914459949431633)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of Holiday Policy'
,p_link=>'f?p=&APP_ID.:10100:&SESSION.::&DEBUG.:::'
,p_page_id=>10100
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(150915675220431638)
,p_parent_id=>wwv_flow_imp.id(150914459949431633)
,p_short_name=>'Create /Edit Holiday Policy'
,p_link=>'f?p=&APP_ID.:10101:&SESSION.::&DEBUG.:::'
,p_page_id=>10101
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(157301282837831140)
,p_parent_id=>wwv_flow_imp.id(146509866841622348)
,p_short_name=>'Manage Reference Entries'
,p_link=>'f?p=&APP_ID.:1201:&SESSION.::&DEBUG.:::'
,p_page_id=>1201
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(158923082735670821)
,p_parent_id=>wwv_flow_imp.id(169944926688858369)
,p_short_name=>'WorkFlow Forward List'
,p_link=>'f?p=&APP_ID.:1390:&SESSION.::&DEBUG.:::'
,p_page_id=>1390
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(159109730268285430)
,p_parent_id=>wwv_flow_imp.id(158923082735670821)
,p_short_name=>'Manage Workflow Forward Transactions'
,p_link=>'f?p=&APP_ID.:1390:&SESSION.::&DEBUG.:::'
,p_page_id=>1391
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(159204195676389122)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Interview Calendar'
,p_link=>'f?p=&APP_ID.:12820:&SESSION.::&DEBUG.:::'
,p_page_id=>12820
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(169468146769964480)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Employee Appraisal Review'
,p_link=>'f?p=&APP_ID.:1493:&SESSION.::&DEBUG.:::'
,p_page_id=>1493
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(169468803889975848)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Post Appraisal Processes'
,p_link=>'f?p=&APP_ID.:1494:&SESSION.::&DEBUG.:::'
,p_page_id=>1494
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(169523640124630278)
,p_parent_id=>wwv_flow_imp.id(169944926688858369)
,p_short_name=>'Payroll Entries'
,p_link=>'f?p=&APP_ID.:492:&SESSION.::&DEBUG.:::'
,p_page_id=>492
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(169534005743681175)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'YTD Earnings'
,p_link=>'f?p=&APP_ID.:1332:&SESSION.::&DEBUG.:::'
,p_page_id=>1332
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(169541897157703996)
,p_parent_id=>wwv_flow_imp.id(169534005743681175)
,p_short_name=>'Create/Edit YTD Earning'
,p_link=>'f?p=&APP_ID.:1333:&SESSION.::&DEBUG.:::'
,p_page_id=>1333
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(169554078445807100)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Payroll Execution'
,p_link=>'f?p=&APP_ID.:1250:&SESSION.::&DEBUG.:::'
,p_page_id=>1250
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(169573813861040576)
,p_parent_id=>wwv_flow_imp.id(169944926688858369)
,p_short_name=>'Global Payslip Search'
,p_link=>'f?p=&APP_ID.:70:&SESSION.::&DEBUG.:::'
,p_page_id=>70
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(169576790284056312)
,p_parent_id=>wwv_flow_imp.id(169944926688858369)
,p_short_name=>'Listing of Employee Payslips'
,p_link=>'f?p=&APP_ID.:1355:&SESSION.::&DEBUG.:::'
,p_page_id=>1355
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(169578791004068588)
,p_parent_id=>wwv_flow_imp.id(169576790284056312)
,p_short_name=>'Employee Payslip'
,p_link=>'f?p=&APP_ID.:1356:&SESSION.::&DEBUG.:::'
,p_page_id=>1356
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(169580803710101065)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Employees with Negative Netpay'
,p_link=>'f?p=&APP_ID.:1506:&SESSION.::&DEBUG.:::'
,p_page_id=>1506
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(169583594906140910)
,p_parent_id=>wwv_flow_imp.id(2001232527272290)
,p_short_name=>'Employee Negative Netpay Summary'
,p_link=>'f?p=&APP_ID.:1507:&SESSION.::&DEBUG.:::'
,p_page_id=>1507
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(169585704413159962)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of Netpay Disbursements'
,p_link=>'f?p=&APP_ID.:52:&SESSION.::&DEBUG.:::'
,p_page_id=>52
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(169587614887294628)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Mass Payroll Email'
,p_link=>'f?p=&APP_ID.:1231:&SESSION.::&DEBUG.:::'
,p_page_id=>1231
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(169590528249349355)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Cancelled Payments'
,p_link=>'f?p=&APP_ID.:1330:&SESSION.::&DEBUG.:::'
,p_page_id=>1330
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(169599760505379151)
,p_parent_id=>wwv_flow_imp.id(169944926688858369)
,p_short_name=>'eNIB'
,p_link=>'f?p=&APP_ID.:1403:&SESSION.::&DEBUG.:::'
,p_page_id=>1403
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(169601560797393639)
,p_parent_id=>wwv_flow_imp.id(169944926688858369)
,p_short_name=>'eBANKING'
,p_link=>'f?p=&APP_ID.:1404:&SESSION.::&DEBUG.:::'
,p_page_id=>1404
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(169605327043413157)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Detailed Financial Journal'
,p_link=>'f?p=&APP_ID.:6001:&SESSION.::&DEBUG.:::'
,p_page_id=>6002
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(169607848450426811)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Summary Journal'
,p_link=>'f?p=&APP_ID.:6003:&SESSION.::&DEBUG.:::'
,p_page_id=>6003
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(169915888014874116)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Investigation Manager'
,p_link=>'f?p=&APP_ID.:4090:&SESSION.::&DEBUG.:::'
,p_page_id=>4090
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(169924384569006183)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Department Postings'
,p_link=>'f?p=&APP_ID.:1400:&SESSION.::&DEBUG.:::'
,p_page_id=>1400
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(169931712081757847)
,p_parent_id=>wwv_flow_imp.id(169944926688858369)
,p_short_name=>'Payroll Diagnosis'
,p_link=>'f?p=&APP_ID.:1500:&SESSION.::&DEBUG.:::'
,p_page_id=>1500
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(169944926688858369)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Utilities'
,p_link=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
,p_page_id=>23
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(169945982210861754)
,p_parent_id=>wwv_flow_imp.id(169944926688858369)
,p_short_name=>'Generator'
,p_link=>'f?p=&APP_ID.:1401:&SESSION.::&DEBUG.:::'
,p_page_id=>1401
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(169952989114875617)
,p_parent_id=>wwv_flow_imp.id(3198797977123103900)
,p_short_name=>'Configure Jobs'
,p_link=>'f?p=&APP_ID.:61:&SESSION.::&DEBUG.:::'
,p_page_id=>61
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(169953196793878959)
,p_parent_id=>wwv_flow_imp.id(169944926688858369)
,p_short_name=>'Generate Leave Entitlements'
,p_link=>'f?p=&APP_ID.:1402:&SESSION.::&DEBUG.:::'
,p_page_id=>1402
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(169955065150896368)
,p_parent_id=>wwv_flow_imp.id(169944926688858369)
,p_short_name=>'Timesheet Loading'
,p_link=>'f?p=&APP_ID.:1371:&SESSION.::&DEBUG.:::'
,p_page_id=>1371
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(169956289879904328)
,p_parent_id=>wwv_flow_imp.id(169944926688858369)
,p_short_name=>'Remuneration Changes'
,p_link=>'f?p=&APP_ID.:1470:&SESSION.::&DEBUG.:::'
,p_page_id=>1470
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(169960518829000197)
,p_parent_id=>wwv_flow_imp.id(2960864735029013479)
,p_short_name=>'Other Remuneration'
,p_link=>'f?p=&APP_ID.:1285:&SESSION.::&DEBUG.:::'
,p_page_id=>1285
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(169963931882022764)
,p_parent_id=>wwv_flow_imp.id(169944926688858369)
,p_short_name=>'System No. Configuration'
,p_link=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::'
,p_page_id=>16
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(169971444504061993)
,p_parent_id=>wwv_flow_imp.id(169944926688858369)
,p_short_name=>'Notification Scheduler'
,p_link=>'f?p=&APP_ID.:308:&SESSION.::&DEBUG.:::'
,p_page_id=>308
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(169972214680092945)
,p_parent_id=>wwv_flow_imp.id(169944926688858369)
,p_short_name=>'Move Reporting To'
,p_link=>'f?p=&APP_ID.:1025:&SESSION.::&DEBUG.:::'
,p_page_id=>1025
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(169972852050155706)
,p_parent_id=>wwv_flow_imp.id(169944926688858369)
,p_short_name=>'Move Position Location'
,p_link=>'f?p=&APP_ID.:1026:&SESSION.::&DEBUG.:::'
,p_page_id=>1026
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(169974985714274382)
,p_parent_id=>wwv_flow_imp.id(169944926688858369)
,p_short_name=>'Move Payment Frequency'
,p_link=>'f?p=&APP_ID.:1001:&SESSION.::&DEBUG.:::'
,p_page_id=>1001
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(169975651022282709)
,p_parent_id=>wwv_flow_imp.id(169944926688858369)
,p_short_name=>'Load Previous YTD'
,p_link=>'f?p=&APP_ID.:6100:&SESSION.::&DEBUG.:::'
,p_page_id=>6100
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(169976410549289105)
,p_parent_id=>wwv_flow_imp.id(169944926688858369)
,p_short_name=>'Load Individual & Employee'
,p_link=>'f?p=&APP_ID.:6120:&SESSION.::&DEBUG.:::'
,p_page_id=>6120
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(169977131736321324)
,p_parent_id=>wwv_flow_imp.id(169944926688858369)
,p_short_name=>'Load YTD Leave'
,p_link=>'f?p=&APP_ID.:6180:&SESSION.::&DEBUG.:::'
,p_page_id=>6180
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(169977922837328505)
,p_parent_id=>wwv_flow_imp.id(169944926688858369)
,p_short_name=>'MMG Disbursement'
,p_link=>'f?p=&APP_ID.:1003:&SESSION.::&DEBUG.:::'
,p_page_id=>1003
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(169978926728362326)
,p_parent_id=>wwv_flow_imp.id(169944926688858369)
,p_short_name=>'Mass Employee Inter-Organisation Transfer'
,p_link=>'f?p=&APP_ID.:491:&SESSION.::&DEBUG.:::'
,p_page_id=>491
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(169981654651382246)
,p_parent_id=>wwv_flow_imp.id(169944926688858369)
,p_short_name=>'Summary Timesheet Load'
,p_link=>'f?p=&APP_ID.:161:&SESSION.::&DEBUG.:::'
,p_page_id=>161
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(169982732294392133)
,p_parent_id=>wwv_flow_imp.id(169944926688858369)
,p_short_name=>'Error Log'
,p_link=>'f?p=&APP_ID.:1360:&SESSION.::&DEBUG.:::'
,p_page_id=>1360
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(169988609547416666)
,p_parent_id=>wwv_flow_imp.id(169944926688858369)
,p_short_name=>'System Process Logs'
,p_link=>'f?p=&APP_ID.:1361:&SESSION.::&DEBUG.:::'
,p_page_id=>1361
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(169992915886430943)
,p_parent_id=>wwv_flow_imp.id(169944926688858369)
,p_short_name=>'User Login Log'
,p_link=>'f?p=&APP_ID.:1362:&SESSION.::&DEBUG.:::'
,p_page_id=>1362
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(170002435199450679)
,p_parent_id=>wwv_flow_imp.id(169944926688858369)
,p_short_name=>'View Tips'
,p_link=>'f?p=&APP_ID.:1426:&SESSION.::&DEBUG.:::'
,p_page_id=>1426
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(170161432368650777)
,p_parent_id=>wwv_flow_imp.id(148742410830226015)
,p_short_name=>'National Identifiers'
,p_link=>'f?p=&APP_ID.:1271:&SESSION.::&DEBUG.:::'
,p_page_id=>1271
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(170162134451667751)
,p_parent_id=>wwv_flow_imp.id(148742410830226015)
,p_short_name=>'Individual Qualifications'
,p_link=>'f?p=&APP_ID.:1272:&SESSION.::&DEBUG.:::'
,p_page_id=>1272
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(170178167590755047)
,p_parent_id=>wwv_flow_imp.id(148742410830226015)
,p_short_name=>'Employment History'
,p_link=>'f?p=&APP_ID.:1273:&SESSION.::&DEBUG.:::'
,p_page_id=>1273
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(170192836551855912)
,p_parent_id=>wwv_flow_imp.id(148742410830226015)
,p_short_name=>'Individual Hobbies'
,p_link=>'f?p=&APP_ID.:1274:&SESSION.::&DEBUG.:::'
,p_page_id=>1274
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(170206739706964897)
,p_parent_id=>wwv_flow_imp.id(148742410830226015)
,p_short_name=>'References'
,p_link=>'f?p=&APP_ID.:1275:&SESSION.::&DEBUG.:::'
,p_page_id=>1275
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(170209853464973010)
,p_parent_id=>wwv_flow_imp.id(169944926688858369)
,p_short_name=>'Transaction Approvals'
,p_link=>'f?p=&APP_ID.:1482:&SESSION.::&DEBUG.:::'
,p_page_id=>1482
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(170214090252990894)
,p_parent_id=>wwv_flow_imp.id(169944926688858369)
,p_short_name=>'User Productivity'
,p_link=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:::'
,p_page_id=>26
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(170214975976006010)
,p_parent_id=>wwv_flow_imp.id(169944926688858369)
,p_short_name=>'Notification History'
,p_link=>'f?p=&APP_ID.:71:&SESSION.::&DEBUG.:::'
,p_page_id=>71
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(170229290033257846)
,p_parent_id=>wwv_flow_imp.id(148742410830226015)
,p_short_name=>'Relatives/Friends'
,p_link=>'f?p=&APP_ID.:1276:&SESSION.::&DEBUG.:::'
,p_page_id=>1276
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(170328862410711991)
,p_parent_id=>wwv_flow_imp.id(169944926688858369)
,p_short_name=>'Workflow Configuration'
,p_link=>'f?p=&APP_ID.:1385:&SESSION.::&DEBUG.:::'
,p_page_id=>1385
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(170331630320721367)
,p_parent_id=>wwv_flow_imp.id(169944926688858369)
,p_short_name=>'Workflow Transactions'
,p_link=>'f?p=&APP_ID.:1388:&SESSION.::&DEBUG.:::'
,p_page_id=>1388
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(170332920661731663)
,p_parent_id=>wwv_flow_imp.id(169944926688858369)
,p_short_name=>'Outstanding Workflows'
,p_link=>'f?p=&APP_ID.:1481:&SESSION.::&DEBUG.:::'
,p_page_id=>1481
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(170342971346848735)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Manual Timesheet Mangement'
,p_link=>'f?p=&APP_ID.:84:&SESSION.::&DEBUG.:::'
,p_page_id=>84
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(170349694718907480)
,p_parent_id=>wwv_flow_imp.id(170342971346848735)
,p_short_name=>'Configure Manual Timesheet'
,p_link=>'f?p=&APP_ID.:78:&SESSION.::&DEBUG.:::'
,p_page_id=>78
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(170359725722975030)
,p_parent_id=>wwv_flow_imp.id(142673724813189792)
,p_short_name=>'Configure Employment History'
,p_link=>'f?p=&APP_ID.:544:&SESSION.::&DEBUG.:::'
,p_page_id=>544
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(170359902945986753)
,p_parent_id=>wwv_flow_imp.id(142673724813189792)
,p_short_name=>'Applicant Address'
,p_link=>'f?p=&APP_ID.:541:&SESSION.::&DEBUG.:::'
,p_page_id=>541
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(170363357609015352)
,p_parent_id=>wwv_flow_imp.id(142673724813189792)
,p_short_name=>'Applicant Qualifications'
,p_link=>'f?p=&APP_ID.:542:&SESSION.::&DEBUG.:::'
,p_page_id=>542
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(170365533946031434)
,p_parent_id=>wwv_flow_imp.id(142673724813189792)
,p_short_name=>'Applicant References'
,p_link=>'f?p=&APP_ID.:506:&SESSION.::&DEBUG.:::'
,p_page_id=>506
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(170371778198068479)
,p_parent_id=>wwv_flow_imp.id(142673724813189792)
,p_short_name=>'Applicant Hobbies'
,p_link=>'f?p=&APP_ID.:545:&SESSION.::&DEBUG.:::'
,p_page_id=>545
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(170374169641089329)
,p_parent_id=>wwv_flow_imp.id(142673724813189792)
,p_short_name=>'Applicant''s Job Application'
,p_link=>'f?p=&APP_ID.:549:&SESSION.::&DEBUG.:::'
,p_page_id=>549
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2661869075907725856)
,p_parent_id=>wwv_flow_imp.id(3199180091903396272)
,p_short_name=>'Deduction Code'
,p_link=>'f?p=&APP_ID.:1221:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1221
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2853816730230707227)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of Employees'' Salaries'
,p_link=>'f?p=&APP_ID.:246:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>246
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2853842574823727648)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of Employees'' Remunerations'
,p_link=>'f?p=&APP_ID.:247:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>247
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2853865691601743657)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of Employees'' Leave Entitlements'
,p_link=>'f?p=&APP_ID.:248:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>248
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2853952069122792418)
,p_parent_id=>wwv_flow_imp.id(2853816730230707227)
,p_short_name=>'Create/Edit Employee Salary'
,p_link=>'f?p=&APP_ID.:13000:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13000
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2854073256506863219)
,p_parent_id=>wwv_flow_imp.id(2853842574823727648)
,p_short_name=>'Create/Edit Employee Remuneration'
,p_link=>'f?p=&APP_ID.:13001:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13001
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2854150213260882931)
,p_parent_id=>wwv_flow_imp.id(2853865691601743657)
,p_short_name=>'Create/Edit Employee Leave Entitlement'
,p_link=>'f?p=&APP_ID.:13002:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13002
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2854395977076809588)
,p_short_name=>'Create/Edit Competency Levels'
,p_link=>'f?p=&APP_ID.:13022:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13022
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2860947897327094882)
,p_parent_id=>wwv_flow_imp.id(2876759555089914647)
,p_short_name=>'Create/Edit Competency/Skill'
,p_link=>'f?p=&APP_ID.:13021:&SESSION.::&DEBUG.:::'
,p_page_id=>13021
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2869846413478975799)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of Job Description'
,p_link=>'f?p=&APP_ID.:13010:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13010
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2876687054894863352)
,p_parent_id=>wwv_flow_imp.id(2869846413478975799)
,p_short_name=>'Create/Edit Job Description Details'
,p_link=>'f?p=&APP_ID.:13011:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13011
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2876759555089914647)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of Competencies & Skills'
,p_link=>'f?p=&APP_ID.:13020:&SESSION.::&DEBUG.:::'
,p_page_id=>13020
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2877456572224023017)
,p_parent_id=>wwv_flow_imp.id(3198797977123103900)
,p_short_name=>'Create/Edit Jobs'
,p_link=>'f?p=&APP_ID.:1307:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1307
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2877604675963094827)
,p_parent_id=>wwv_flow_imp.id(3283129579091851388)
,p_short_name=>'Create/Edit Position'
,p_link=>'f?p=&APP_ID.:1301:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1301
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2877702124279288925)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of Position Descriptions'
,p_link=>'f?p=&APP_ID.:13015:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13015
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2877786679775304519)
,p_parent_id=>wwv_flow_imp.id(2877702124279288925)
,p_short_name=>'Create/Edit Position Description Details'
,p_link=>'f?p=&APP_ID.:13016:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13016
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2946471894920433927)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of NetPay Disbursements'
,p_link=>'f?p=&APP_ID.:9981:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>9981
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2946473042285433923)
,p_parent_id=>wwv_flow_imp.id(2946471894920433927)
,p_short_name=>'Create/Edit NetPay Disbursement'
,p_link=>'f?p=&APP_ID.:9982:&SESSION.::&DEBUG.:::'
,p_page_id=>9982
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2950868936689599337)
,p_parent_id=>wwv_flow_imp.id(3050316423851486291)
,p_short_name=>'Create/Edit Shift Rotation'
,p_link=>'f?p=&FLOW_ID.:12816:&SESSION.'
,p_page_id=>12816
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2960864735029013479)
,p_parent_id=>wwv_flow_imp.id(2810904828147743673)
,p_short_name=>'  Create/Edit Employees'
,p_link=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:::'
,p_page_id=>1281
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2963564307136783923)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of Activity'
,p_link=>'f?p=&FLOW_ID.:1435:&SESSION.'
,p_page_id=>1435
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2963566917576793740)
,p_parent_id=>wwv_flow_imp.id(2963564307136783923)
,p_short_name=>'Create/Edit Activty'
,p_link=>'f?p=&FLOW_ID.:1436:&SESSION.'
,p_page_id=>1436
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2963798903829352091)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of Employee Document(s)/Licenses(s)'
,p_link=>'f?p=&APP_ID.:12819:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>12819
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3050316423851486291)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of Shift Rotation'
,p_link=>'f?p=&APP_ID.:12815:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>12815
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3050466988332586965)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of Swapped Shifts'
,p_link=>'f?p=&APP_ID.:182:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>182
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3050506834743605533)
,p_parent_id=>wwv_flow_imp.id(3050466988332586965)
,p_short_name=>'Create/Edit Swap Shifts'
,p_link=>'f?p=&APP_ID.:186:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>186
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3074084833161420897)
,p_short_name=>'ACH Master'
,p_link=>'f?p=&APP_ID.:201:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>201
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3074411659914534235)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing ACH Configuration'
,p_link=>'f?p=&FLOW_ID.:213:&SESSION.'
,p_page_id=>213
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3079498844683076379)
,p_parent_id=>wwv_flow_imp.id(3074411659914534235)
,p_short_name=>'Create/Edit ACH Configuration'
,p_link=>'f?p=&FLOW_ID.:218:&SESSION.'
,p_page_id=>218
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3082886940931919811)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of Shifts'
,p_link=>'f?p=&APP_ID.:1335:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1335
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3094325372766785902)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Assign Employee Rotation'
,p_link=>'f?p=&FLOW_ID.:119:&SESSION.'
,p_page_id=>119
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3159675316244743482)
,p_parent_id=>wwv_flow_imp.id(3159675861562753049)
,p_short_name=>'Create/Edit Employee Accident Reports'
,p_link=>'f?p=&APP_ID.:4005:&SESSION.::&DEBUG.:::'
,p_page_id=>4005
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3159675861562753049)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Employee Accident Reports'
,p_link=>'f?p=&APP_ID.:4006:&SESSION.::&DEBUG.:::'
,p_page_id=>4006
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3159688053587839206)
,p_parent_id=>wwv_flow_imp.id(3159689914053853577)
,p_short_name=>'Create/Edit Risk Assessment'
,p_link=>'f?p=&FLOW_ID.:4013:&SESSION.'
,p_page_id=>4013
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3159689914053853577)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'General Risk Assessment'
,p_link=>'f?p=&APP_ID.:4012:&SESSION.::&DEBUG.:::'
,p_page_id=>4012
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3159699772220947001)
,p_parent_id=>wwv_flow_imp.id(3159701097909956064)
,p_short_name=>'Create/Edit COSHH Risk Assessment'
,p_link=>'f?p=&FLOW_ID.:4008:&SESSION.'
,p_page_id=>4008
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3159701097909956064)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'COSHH Risk Assessment Records'
,p_link=>'f?p=&FLOW_ID.:4011:&SESSION.'
,p_page_id=>4011
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3159725013586224675)
,p_parent_id=>wwv_flow_imp.id(3159726033461232990)
,p_short_name=>'Create/Edit Job Hazards Analysis'
,p_link=>'f?p=&FLOW_ID.:4009:&SESSION.'
,p_page_id=>4009
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3159726033461232990)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Job Hazards Analysis'
,p_link=>'f?p=&FLOW_ID.:4010:&SESSION.'
,p_page_id=>4010
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3160135019337657833)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Risk Registers'
,p_link=>'f?p=&APP_ID.:4078:&SESSION.::&DEBUG.:::'
,p_page_id=>4078
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3160156924143951002)
,p_parent_id=>wwv_flow_imp.id(3160295306384515704)
,p_short_name=>'Create/Edit PPE REGISTER'
,p_link=>'f?p=&FLOW_ID.:4081:&SESSION.'
,p_page_id=>4081
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3160295306384515704)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Employee with PPE'
,p_link=>'f?p=&FLOW_ID.:4080:&SESSION.'
,p_page_id=>4080
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3160469131025291294)
,p_parent_id=>wwv_flow_imp.id(3160470426215304805)
,p_short_name=>'Create/Edit Incident'
,p_link=>'f?p=&APP_ID.:4051:&SESSION.::&DEBUG.:::'
,p_page_id=>4051
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3160470426215304805)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Incidents'
,p_link=>'f?p=&APP_ID.:4050:&SESSION.::&DEBUG.:::'
,p_page_id=>4050
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3160892040205768860)
,p_short_name=>'Listing of Depreciation Rules'
,p_link=>'f?p=&APP_ID.:691:&SESSION.'
,p_page_id=>691
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3161982381461708160)
,p_short_name=>'Listing of Category Groups'
,p_link=>'f?p=&APP_ID.:370:&SESSION.'
,p_page_id=>370
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3162004894313744560)
,p_short_name=>'Listing of Inventory Organisations'
,p_link=>'f?p=&APP_ID.:211:&SESSION.'
,p_page_id=>211
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3162028718798430343)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Vehicle Accident Report'
,p_link=>'f?p=&APP_ID.:4020:&SESSION.::&DEBUG.:::'
,p_page_id=>4020
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3162369837141458592)
,p_parent_id=>wwv_flow_imp.id(3162028718798430343)
,p_short_name=>'Create/Edit Vehicle Accident Report'
,p_link=>'f?p=&APP_ID.:4014:&SESSION.::&DEBUG.:::'
,p_page_id=>4014
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3162389885666617263)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Accident Register'
,p_link=>'f?p=&APP_ID.:4052:&SESSION.::&DEBUG.:::'
,p_page_id=>4052
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3162395669696675485)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Minor Vehicle Accidents'
,p_link=>'f?p=&FLOW_ID.:4060:&SESSION.'
,p_page_id=>4060
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3162399670585700246)
,p_parent_id=>wwv_flow_imp.id(3162395669696675485)
,p_short_name=>'Create/ Edit Minor Vehicle Accident'
,p_link=>'f?p=&FLOW_ID.:4066:&SESSION.'
,p_page_id=>4066
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3162412654306776598)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Driver Assessment'
,p_link=>'f?p=&FLOW_ID.:4062:&SESSION.'
,p_page_id=>4062
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3162414934239789855)
,p_parent_id=>wwv_flow_imp.id(3162412654306776598)
,p_short_name=>'Create/Edit Driver Assessment'
,p_link=>'f?p=&FLOW_ID.:4063:&SESSION.'
,p_page_id=>4063
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3162429812380927821)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Contract Safety Gears'
,p_link=>'f?p=&FLOW_ID.:4076:&SESSION.'
,p_page_id=>4076
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3162493937337142648)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Oil and Chemical Register'
,p_link=>'f?p=&FLOW_ID.:4017:&SESSION.'
,p_page_id=>4017
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3162495247239236531)
,p_parent_id=>wwv_flow_imp.id(3162493937337142648)
,p_short_name=>'Create/Edit Oil And Chemical'
,p_link=>'f?p=&FLOW_ID.:4018:&SESSION.'
,p_page_id=>4018
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3164323946407252026)
,p_parent_id=>wwv_flow_imp.id(3162369837141458592)
,p_short_name=>'Create/Edit Accident Detail'
,p_link=>'f?p=&FLOW_ID.:4015:&SESSION.'
,p_page_id=>4015
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3164328426956321594)
,p_parent_id=>wwv_flow_imp.id(3162369837141458592)
,p_short_name=>'Create/Edit OS&H Unit'
,p_link=>'f?p=&FLOW_ID.:4016:&SESSION.'
,p_page_id=>4016
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3164335625265670911)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of Manual TimeSheet Entries'
,p_link=>'f?p=&APP_ID.:125:&SESSION.'
,p_page_id=>125
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3165528624258252792)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Frequently Asked Question & Issues'
,p_link=>'f?p=&APP_ID.:1444:&SESSION.'
,p_page_id=>1444
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3165840764904977171)
,p_short_name=>'Listing of Asset Item Trans History'
,p_link=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:::'
,p_page_id=>35
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3165867948753169431)
,p_short_name=>'Listing of Non Purchased Items by Period'
,p_link=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.:::'
,p_page_id=>40
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3166226990661341708)
,p_short_name=>'Browse Position Details'
,p_link=>'f?p=&APP_ID.:106:&SESSION.'
,p_page_id=>106
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3167571015327161839)
,p_short_name=>'Listing of Non-Transacted'
,p_link=>'f?p=&FLOW_ID.:642:&SESSION.'
,p_page_id=>642
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3168184346796129837)
,p_parent_id=>wwv_flow_imp.id(169944926688858369)
,p_short_name=>'Listing of User Manual Entries'
,p_link=>'f?p=&APP_ID.:132:&SESSION.::&DEBUG.:::'
,p_page_id=>132
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3168185540893129838)
,p_parent_id=>wwv_flow_imp.id(3168184346796129837)
,p_short_name=>'Create/Edit User Manual Entries'
,p_link=>'f?p=&APP_ID.:134:&SESSION.::&DEBUG.:::'
,p_page_id=>134
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3176884021855367592)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Employee Items'
,p_link=>'f?p=&APP_ID.:111:&SESSION.::&DEBUG.:::'
,p_page_id=>111
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3179044003786173529)
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:101100:&SESSION.'
,p_page_id=>101100
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3182323069549353165)
,p_parent_id=>wwv_flow_imp.id(3182340235535361219)
,p_short_name=>'Create/Edit Employee Tasks (Per Employees)'
,p_link=>'f?p=&APP_ID.:159:&SESSION.'
,p_page_id=>159
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3182340235535361219)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of Employee Tasks (Per Employees)'
,p_link=>'f?p=&APP_ID.:158:&SESSION.'
,p_page_id=>158
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3182358817196372113)
,p_parent_id=>wwv_flow_imp.id(3182380655464381915)
,p_short_name=>'Create/Edit Employee Tasks (All Employees)'
,p_link=>'f?p=&APP_ID.:157:&SESSION.'
,p_page_id=>157
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3182380655464381915)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of Employee Tasks (All Employees)'
,p_link=>'f?p=&APP_ID.:156:&SESSION.'
,p_page_id=>156
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3186480499041067581)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of Change Employments'
,p_link=>'f?p=&APP_ID.:136:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>136
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3186747794342214675)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of Confirmation Movements'
,p_link=>'f?p=&APP_ID.:697:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>697
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3186843427898245941)
,p_parent_id=>wwv_flow_imp.id(3186747794342214675)
,p_short_name=>'Create /Edit Confirmation Movement'
,p_link=>'f?p=&APP_ID.:698:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>698
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3186964394781313031)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of Supplemental Movements'
,p_link=>'f?p=&APP_ID.:699:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>699
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3191592485149681606)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of Employee Absences'
,p_link=>'f?p=&APP_ID.:191:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>191
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3192123144134323240)
,p_parent_id=>wwv_flow_imp.id(4939597437534906239)
,p_short_name=>'Listing of Broadcasts'
,p_link=>'f?p=&FLOW_ID.:90:&SESSION.'
,p_page_id=>90
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3192156875597838627)
,p_parent_id=>wwv_flow_imp.id(3192123144134323240)
,p_short_name=>'Create/Edit Broadcast'
,p_link=>'f?p=&FLOW_ID.:91:&SESSION.'
,p_page_id=>91
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3198094424465343877)
,p_parent_id=>wwv_flow_imp.id(3186964394781313031)
,p_short_name=>'Create/Edit Supplemental Movement'
,p_link=>'f?p=&APP_ID.:700:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>700
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3198217815582388934)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of Movement Extensions'
,p_link=>'f?p=&APP_ID.:701:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>701
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3198382807599462565)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of Employee Separations'
,p_link=>'f?p=&APP_ID.:1414:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1414
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3198425900346482349)
,p_parent_id=>wwv_flow_imp.id(3198382807599462565)
,p_short_name=>'Create/Edit Employee Separation'
,p_link=>'f?p=&APP_ID.:1415:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1415
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3198485787948529076)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of New Employments'
,p_link=>'f?p=&APP_ID.:108:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>108
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3198635175675822401)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of Grade Scales'
,p_link=>'f?p=&FLOW_ID.:1308:&SESSION.'
,p_page_id=>1308
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3198797977123103900)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of Jobs'
,p_link=>'f?p=&APP_ID.:1306:&SESSION.'
,p_page_id=>1306
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3198844819562641468)
,p_parent_id=>wwv_flow_imp.id(3210856382398336420)
,p_short_name=>'Create/Edit Change Position'
,p_link=>'f?p=&APP_ID.:51:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>51
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3199022962660192830)
,p_short_name=>'Competencies '
,p_link=>'f?p=&APP_ID.:1492:&SESSION.'
,p_page_id=>1492
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3199147317117157440)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Leave Roster'
,p_link=>'f?p=&APP_ID.:60:&SESSION.'
,p_page_id=>60
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3199178078857380241)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of Payroll Income Codes'
,p_link=>'f?p=&APP_ID.:1210:&SESSION.::&DEBUG.:::'
,p_page_id=>1210
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3199178915352388370)
,p_parent_id=>wwv_flow_imp.id(3199178078857380241)
,p_short_name=>'Create/Edit Payroll Income Codes'
,p_link=>'f?p=&APP_ID.:1211:&SESSION.::&DEBUG.:::'
,p_page_id=>1211
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3199180091903396272)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of Employee Payroll Deduction Codes'
,p_link=>'f?p=&FLOW_ID.:1220:&SESSION.'
,p_page_id=>1220
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3199181717744412530)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>' Listing of Employee-Non Statutory Deductions'
,p_link=>'f?p=&FLOW_ID.:1296:&SESSION.'
,p_page_id=>1296
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3199182935824420578)
,p_parent_id=>wwv_flow_imp.id(3199181717744412530)
,p_short_name=>'Create/Edit Non-Statutory Deduction'
,p_link=>'f?p=&APP_ID.:1297:&SESSION.::&DEBUG.:::'
,p_page_id=>1297
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3199184536052431781)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of Job Related Tasks'
,p_link=>'f?p=&FLOW_ID.:1341:&SESSION.'
,p_page_id=>1341
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3199185635201437546)
,p_parent_id=>wwv_flow_imp.id(3199184536052431781)
,p_short_name=>'Create/Edit Job Related Tasks'
,p_link=>'f?p=&FLOW_ID.:1342:&SESSION.'
,p_page_id=>1342
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3199213104639621243)
,p_parent_id=>wwv_flow_imp.id(3199147317117157440)
,p_short_name=>'Create/Edit Leave Roster'
,p_link=>'f?p=&FLOW_ID.:33:&SESSION.'
,p_page_id=>33
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3199237216749780734)
,p_short_name=>'Listing of Location Shift Rule'
,p_link=>'f?p=&APP_ID.:62:&SESSION.'
,p_page_id=>62
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3199558227730508739)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Timesheet Manager'
,p_link=>'f?p=&APP_ID.:126:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>126
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3201987844507755685)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of Medical History'
,p_link=>'f?p=&FLOW_ID.:1408:&SESSION.'
,p_page_id=>1408
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3210856382398336420)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of Change Positions'
,p_link=>'f?p=&APP_ID.:1412:&SESSION.::&DEBUG.:::'
,p_page_id=>1412
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3228197019574676805)
,p_parent_id=>wwv_flow_imp.id(3228225545412687839)
,p_short_name=>'Create/Edit Health Surcharge'
,p_link=>'f?p=&APP_ID.:173:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>173
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3228225545412687839)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of Health Surcharge '
,p_link=>'f?p=&APP_ID.:172:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>172
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3230846539351345617)
,p_parent_id=>wwv_flow_imp.id(4939597437534906239)
,p_short_name=>'Productivity Detail Report'
,p_link=>'f?p=&APP_ID.:192:&SESSION.::&DEBUG.:::'
,p_page_id=>192
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3231549197713361896)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'End Of Year Reports'
,p_link=>'f?p=&APP_ID.:194:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>194
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3231577828711416397)
,p_parent_id=>wwv_flow_imp.id(3186480499041067581)
,p_short_name=>'Create/Edit Change Employment'
,p_link=>'f?p=&APP_ID.:137:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>137
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3235751426753366361)
,p_short_name=>'Listing of Media'
,p_link=>'f?p=&FLOW_ID.:181:&SESSION.'
,p_page_id=>181
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3235757514991403926)
,p_short_name=>'Create/Edit Media'
,p_link=>'f?p=&FLOW_ID.:188:&SESSION.'
,p_page_id=>188
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3243093621245313312)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Payroll Compare'
,p_link=>'f?p=&APP_ID.:1249:&SESSION.::&DEBUG.:::'
,p_page_id=>1249
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3244924958101846733)
,p_parent_id=>wwv_flow_imp.id(3249124778716447060)
,p_short_name=>'Create/Edit Grievance Action'
,p_link=>'f?p=&APP_ID.:184:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>184
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3249124778716447060)
,p_parent_id=>wwv_flow_imp.id(3249152656765461938)
,p_short_name=>'Create/Edit Employee Grievance'
,p_link=>'f?p=&APP_ID.:175:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>175
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3249152656765461938)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of Employee Grievances'
,p_link=>'f?p=&APP_ID.:174:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>174
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3251065525906115381)
,p_parent_id=>wwv_flow_imp.id(3251067230537147900)
,p_short_name=>'Create/Edit Health Surcharges'
,p_link=>'f?p=&FLOW_ID.:167:&SESSION.'
,p_page_id=>167
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3251067230537147900)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of Health Surcharges'
,p_link=>'f?p=&FLOW_ID.:166:&SESSION.'
,p_page_id=>166
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3251688099063129028)
,p_parent_id=>wwv_flow_imp.id(3198217815582388934)
,p_short_name=>'Create/Edit Movement Extension'
,p_link=>'f?p=&APP_ID.:702:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>702
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3279665533480225567)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of Life Certificates'
,p_link=>'f?p=&FLOW_ID.:57:&SESSION.'
,p_page_id=>57
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3283129579091851388)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of Positions'
,p_link=>'f?p=&FLOW_ID.:1300:&SESSION.'
,p_page_id=>1300
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3318131037926921536)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Employees Payments'
,p_link=>'f?p=&APP_ID.:8003:&SESSION.::&DEBUG.:::'
,p_page_id=>8003
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3318217317843480564)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Employees Pension Deductions'
,p_link=>'f?p=&APP_ID.:8005:&SESSION.::&DEBUG.:::'
,p_page_id=>8005
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3318229579107553250)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Employees Medical Deductions'
,p_link=>'f?p=&APP_ID.:8006:&SESSION.::&DEBUG.:::'
,p_page_id=>8006
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3318411903709941517)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Listing of Employees Deductions'
,p_link=>'f?p=&APP_ID.:8008:&SESSION.::&DEBUG.:::'
,p_page_id=>8008
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3318425564554104196)
,p_short_name=>'PAYE for Employees By Period'
,p_link=>'f?p=&FLOW_ID.:8011:&SESSION.'
,p_page_id=>8011
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3318564661740936805)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'NIB/SS Contribution Report'
,p_link=>'f?p=&APP_ID.:8012:&SESSION.::&DEBUG.:::'
,p_page_id=>8012
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3318799923395659564)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Overtime Summary'
,p_link=>'f?p=&APP_ID.:8009:&SESSION.::&DEBUG.:::'
,p_page_id=>8009
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3318836987692290635)
,p_parent_id=>wwv_flow_imp.id(3318564661740936805)
,p_short_name=>'Employees Above 60 NIB/SS Contribution'
,p_link=>'f?p=&APP_ID.:8013:&SESSION.::&DEBUG.:::'
,p_page_id=>8013
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3326477886527820198)
,p_parent_id=>wwv_flow_imp.id(169944926688858369)
,p_short_name=>'Republic Bank Accounts'
,p_link=>'f?p=&APP_ID.:8031:&SESSION.::&DEBUG.:::'
,p_page_id=>8031
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4939597437534906239)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Administration'
,p_link=>'f?p=&FLOW_ID.:23:&SESSION.'
,p_page_id=>23
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(5507545633939320434)
,p_parent_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Help'
,p_link=>'f?p=&FLOW_ID.:25:&SESSION.'
,p_page_id=>25
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10460766190927194650)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp.component_end;
end;
/
