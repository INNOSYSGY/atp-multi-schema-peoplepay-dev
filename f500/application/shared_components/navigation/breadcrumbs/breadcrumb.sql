prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
--   Manifest
--     MENU: Breadcrumb
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
 p_id=>wwv_flow_imp.id(10988176195002489210)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(414491931160300788)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Departmental Incomes'
,p_link=>'f?p=&APP_ID.:1400:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1400
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(422151461908006298)
,p_parent_id=>wwv_flow_imp.id(676152826753520578)
,p_short_name=>'Manage Address'
,p_link=>'f?p=&APP_ID.:1270:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1270
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(422187034028055483)
,p_parent_id=>wwv_flow_imp.id(676152826753520578)
,p_short_name=>'National Identifiers'
,p_link=>'f?p=&APP_ID.:1271:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1271
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(422221841179092073)
,p_parent_id=>wwv_flow_imp.id(676152826753520578)
,p_short_name=>'Employment History'
,p_link=>'f?p=&APP_ID.:1273:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1273
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(527739169680462311)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Upload Data'
,p_link=>'f?p=&APP_ID.:244:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>244
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(529411648450566853)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>' Employees with Negative Netpay'
,p_link=>'f?p=&APP_ID.:1506:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1506
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(530030668810000273)
,p_short_name=>'frmfileoutput'
,p_link=>'f?p=&APP_ID.:219:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>219
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(556275456455468597)
,p_parent_id=>wwv_flow_imp.id(697355342612152932)
,p_short_name=>'Attribute Setup'
,p_link=>'f?p=&APP_ID.:3150:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>3150
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(559022317903301288)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of Debug Payrolls'
,p_link=>'f?p=&APP_ID.:1255:&SESSION.::&DEBUG.:::'
,p_page_id=>1255
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(559223328108336601)
,p_parent_id=>wwv_flow_imp.id(559022317903301288)
,p_short_name=>'Manage Debug Payroll'
,p_link=>'f?p=&APP_ID.:1256:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1256
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(565839206766326000)
,p_parent_id=>wwv_flow_imp.id(608920022478325013)
,p_short_name=>'Manage Employee Holiday'
,p_link=>'f?p=&APP_ID.:1322:&SESSION.::&DEBUG.:::'
,p_page_id=>1322
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(574481012200483591)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'HR Exports To Payroll'
,p_link=>'f?p=&APP_ID.:1350:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1350
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(578792809556456964)
,p_short_name=>'Create/Edit Tax Rate'
,p_link=>'f?p=&APP_ID.:1314:&SESSION.::&DEBUG.:::'
,p_page_id=>1314
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(586976346037415290)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Payroll Legacy'
,p_link=>'f?p=&APP_ID.:179:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>179
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(587016331471153186)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'List of Accessible Reports'
,p_link=>'f?p=&APP_ID.:400:&SESSION.::&DEBUG.:::'
,p_page_id=>400
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(587016523857148628)
,p_parent_id=>wwv_flow_imp.id(587016331471153186)
,p_short_name=>'Setup Reports'
,p_link=>'f?p=&APP_ID.:401:&SESSION.::&DEBUG.:::'
,p_page_id=>401
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(590706566788062511)
,p_parent_id=>wwv_flow_imp.id(3725896203871823639)
,p_short_name=>'Create&#x2F;Edit New Employment'
,p_link=>'f?p=&APP_ID.:109:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>109
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(608920022478325013)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Manage Holidays'
,p_link=>'f?p=&APP_ID.:1319:&SESSION.::&DEBUG.:::'
,p_page_id=>1319
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(613535707223185718)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Allowance Uploader'
,p_page_id=>1465
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(614032249966296911)
,p_parent_id=>wwv_flow_imp.id(3381252990747022211)
,p_short_name=>'Create&#x2F;Edit Remuneration'
,p_link=>'f?p=&APP_ID.:13001:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13001
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(614130000708362210)
,p_parent_id=>wwv_flow_imp.id(3488275150952308042)
,p_short_name=>'Other Remuneration'
,p_link=>'f?p=&APP_ID.:1285:&SESSION.::&DEBUG.:::'
,p_page_id=>1285
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(643691666641031955)
,p_parent_id=>wwv_flow_imp.id(3726045591599116964)
,p_short_name=>'Manage Grade/Salary Scales'
,p_link=>'f?p=&APP_ID.:1309:&SESSION.::&DEBUG.:::'
,p_page_id=>1309
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(644819926287269396)
,p_short_name=>'Search Directory'
,p_link=>'f?p=&APP_ID.:103:&SESSION.::&DEBUG.:::'
,p_page_id=>103
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(644821807541207459)
,p_parent_id=>wwv_flow_imp.id(644819926287269396)
,p_short_name=>'Manage Directories'
,p_link=>'f?p=&APP_ID.:104:&SESSION.::&DEBUG.:::'
,p_page_id=>104
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(647701246931667825)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Search Individual Files'
,p_link=>'f?p=&APP_ID.:9000:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>9000
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(647742621653547094)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>' Search Employee Files'
,p_link=>'f?p=&APP_ID.:150:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>150
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(650941142132995570)
,p_parent_id=>wwv_flow_imp.id(3689840228304222384)
,p_short_name=>'Create&#x2F;Edit Contract Safety Gears'
,p_link=>'f?p=&APP_ID.:4077:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4077
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(653995368742064319)
,p_parent_id=>wwv_flow_imp.id(656970648762611916)
,p_short_name=>'Create &#x2F;Edit Leave Policy'
,p_link=>'f?p=&APP_ID.:11998:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>11998
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(656970648762611916)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of Leave Policies'
,p_link=>'f?p=&APP_ID.:11999:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>11999
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(661229205054588961)
,p_parent_id=>wwv_flow_imp.id(697355342612152932)
,p_short_name=>'Listing of Employee Leave Track'
,p_link=>'f?p=&APP_ID.:1433:&SESSION.::&DEBUG.:::'
,p_page_id=>1433
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(661841049681932115)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Procore Timesheets'
,p_link=>'f?p=&APP_ID.:245:&SESSION.::&DEBUG.:::'
,p_page_id=>245
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(661873124352169942)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of Employee Leave Records'
,p_link=>'f?p=&APP_ID.:1416:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1416
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(663305228695559786)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Global PeoplePay Search'
,p_link=>'f?p=&APP_ID.:249:&SESSION.::&DEBUG.:::'
,p_page_id=>249
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(663356899696691439)
,p_parent_id=>wwv_flow_imp.id(661873124352169942)
,p_short_name=>'Manage Leave Request'
,p_link=>'f?p=&APP_ID.:1417:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1417
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(664305334619162057)
,p_short_name=>'Antigua & Barbuda Educaton Levy'
,p_link=>'f?p=&APP_ID.:1486:&SESSION.::&DEBUG.:::'
,p_page_id=>1486
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(667219948164618195)
,p_short_name=>'Edit Course Configuration'
,p_link=>'f?p=&APP_ID.:312:&SESSION.::&DEBUG.:::'
,p_page_id=>312
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(669916576518901039)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Employee Holidays'
,p_link=>'f?p=&APP_ID.:1339:&SESSION.::&DEBUG.:::'
,p_page_id=>1339
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(669923121008937948)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Leave Types'
,p_link=>'f?p=&APP_ID.:216:&SESSION.::&DEBUG.:::'
,p_page_id=>216
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(669923396428944491)
,p_parent_id=>wwv_flow_imp.id(669923121008937948)
,p_short_name=>'Configure Leave Types'
,p_link=>'f?p=&APP_ID.:221:&SESSION.::&DEBUG.:::'
,p_page_id=>221
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670009410283850822)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Find, Filter and Organize Projects'
,p_link=>'f?p=&APP_ID.:1700:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1700
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670025510738867110)
,p_parent_id=>wwv_flow_imp.id(670009410283850822)
,p_short_name=>'Manage Projects'
,p_link=>'f?p=&APP_ID.:1710:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1710
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670048717720479500)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Earning Periods'
,p_link=>'f?p=&APP_ID.:1240:&SESSION.::&DEBUG.:::'
,p_page_id=>1240
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670048928299483067)
,p_parent_id=>wwv_flow_imp.id(670048717720479500)
,p_short_name=>'Configure Earning Period'
,p_link=>'f?p=&APP_ID.:1241:&SESSION.::&DEBUG.:::'
,p_page_id=>1241
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670051033556513166)
,p_short_name=>'Org Structures'
,p_link=>'f?p=&APP_ID.:1293:&SESSION.::&DEBUG.:::'
,p_page_id=>1293
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670056073954637367)
,p_short_name=>'Job Interviews'
,p_link=>'f?p=&APP_ID.:2012:&SESSION.::&DEBUG.:::'
,p_page_id=>2012
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670056264710641332)
,p_parent_id=>wwv_flow_imp.id(670056073954637367)
,p_short_name=>'Manage Job Interview'
,p_link=>'f?p=&APP_ID.:2001:&SESSION.::&DEBUG.:::'
,p_page_id=>2001
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670072372998082187)
,p_short_name=>'References'
,p_link=>'f?p=&APP_ID.:9974:&SESSION.::&DEBUG.:::'
,p_page_id=>9974
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670072624306088838)
,p_parent_id=>wwv_flow_imp.id(670072372998082187)
,p_short_name=>'Configure References'
,p_link=>'f?p=&APP_ID.:9968:&SESSION.::&DEBUG.:::'
,p_page_id=>9968
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670077692727153639)
,p_short_name=>'Position Openings'
,p_link=>'f?p=&APP_ID.:2008:&SESSION.::&DEBUG.:::'
,p_page_id=>2008
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670078620769160461)
,p_parent_id=>wwv_flow_imp.id(670077692727153639)
,p_short_name=>'Configure Position Opening'
,p_link=>'f?p=&APP_ID.:1395:&SESSION.::&DEBUG.:::'
,p_page_id=>1395
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670083857678469623)
,p_short_name=>'Applicants'
,p_link=>'f?p=&APP_ID.:539:&SESSION.::&DEBUG.:::'
,p_page_id=>539
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670084140736484355)
,p_parent_id=>wwv_flow_imp.id(670083857678469623)
,p_short_name=>'Applicant Register'
,p_link=>'f?p=&APP_ID.:540:&SESSION.::&DEBUG.:::'
,p_page_id=>540
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670845244002252802)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of User Guides'
,p_link=>'f?p=&APP_ID.:13040:&SESSION.::&DEBUG.:::'
,p_page_id=>13040
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(671724465737471852)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Employee Appraisal Evaluation'
,p_link=>'f?p=&APP_ID.:1499:&SESSION.::&DEBUG.:::'
,p_page_id=>1499
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(671843358454568942)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of Appraisal Configurations'
,p_link=>'f?p=&APP_ID.:1490:&SESSION.::&DEBUG.:::'
,p_page_id=>1490
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(671902765175696181)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Create/Edit Appraisal Configuration for &P1491_MERIT_DESCRIPTION.'
,p_link=>'f?p=&APP_ID.:1491:&SESSION.::&DEBUG.:::'
,p_page_id=>1491
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(672248320188455096)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of Employee Appraisals'
,p_link=>'f?p=&APP_ID.:1495:&SESSION.::&DEBUG.:::'
,p_page_id=>1495
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(672405782347562610)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Manage Employee Appraisal'
,p_link=>'f?p=&APP_ID.:1496:&SESSION.::&DEBUG.:::'
,p_page_id=>1496
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(673563413876845743)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Shift Roster'
,p_link=>'f?p=&APP_ID.:116:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>116
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(673920282764916911)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'List of System References'
,p_link=>'f?p=&APP_ID.:1200:&SESSION.::&DEBUG.:::'
,p_page_id=>1200
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(674938523442408743)
,p_parent_id=>wwv_flow_imp.id(670051033556513166)
,p_short_name=>'Manage Org Structures'
,p_link=>'f?p=&APP_ID.:1294:&SESSION.::&DEBUG.:::'
,p_page_id=>1294
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675082433854753530)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Staff Requisitions'
,p_link=>'f?p=&APP_ID.:2003:&SESSION.::&DEBUG.:::'
,p_page_id=>2003
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675112851996883928)
,p_parent_id=>wwv_flow_imp.id(675082433854753530)
,p_short_name=>'Create/ Edit Staff Requisitions'
,p_link=>'f?p=&APP_ID.:2004:&SESSION.::&DEBUG.:::'
,p_page_id=>2004
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675174159274096379)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Applicants with Given References'
,p_link=>'f?p=&APP_ID.:9969:&SESSION.::&DEBUG.:::'
,p_page_id=>9969
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675181244457122183)
,p_parent_id=>wwv_flow_imp.id(675174159274096379)
,p_short_name=>'Manage Applicant References'
,p_link=>'f?p=&APP_ID.:9970:&SESSION.::&DEBUG.:::'
,p_page_id=>9970
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675182278171165115)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Recruitment Matrix'
,p_link=>'f?p=&APP_ID.:447:&SESSION.::&DEBUG.:::'
,p_page_id=>447
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675183396195185526)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Interview Schedule'
,p_link=>'f?p=&APP_ID.:2009:&SESSION.::&DEBUG.:::'
,p_page_id=>2009
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675183645040191874)
,p_parent_id=>wwv_flow_imp.id(675183396195185526)
,p_short_name=>'Interview Setup'
,p_link=>'f?p=&APP_ID.:2011:&SESSION.::&DEBUG.:::'
,p_page_id=>2011
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675378339446418020)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of Interviews'
,p_link=>'f?p=&APP_ID.:2005:&SESSION.::&DEBUG.:::'
,p_page_id=>2005
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675418164858472724)
,p_parent_id=>wwv_flow_imp.id(675378339446418020)
,p_short_name=>'Manage Interviews'
,p_link=>'f?p=&APP_ID.:2006:&SESSION.::&DEBUG.:::'
,p_page_id=>2006
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675425700385511003)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Online Interview Evaluation'
,p_link=>'f?p=&APP_ID.:2013:&SESSION.::&DEBUG.:::'
,p_page_id=>2013
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675452992559687681)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Manual Interview'
,p_link=>'f?p=&APP_ID.:337:&SESSION.::&DEBUG.:::'
,p_page_id=>337
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(676119885236490200)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Individuals'
,p_link=>'f?p=&APP_ID.:1260:&SESSION.::&DEBUG.:::'
,p_page_id=>1260
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(676152826753520578)
,p_parent_id=>wwv_flow_imp.id(676119885236490200)
,p_short_name=>'Create/Edit Individuals'
,p_link=>'f?p=&APP_ID.:1261:&SESSION.::&DEBUG.::P1261_ID:&GLOBAL_IND.'
,p_page_id=>1261
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(676400255846927144)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Manage Work Activity Tasks'
,p_link=>'f?p=&APP_ID.:10999:&SESSION.::&DEBUG.:::'
,p_page_id=>10999
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(676408294483574935)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Employee Prior Deductions'
,p_link=>'f?p=&APP_ID.:147:&SESSION.::&DEBUG.:::'
,p_page_id=>147
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(676408436021577867)
,p_parent_id=>wwv_flow_imp.id(676408294483574935)
,p_short_name=>'Manage Employee Prior Deductions'
,p_link=>'f?p=&APP_ID.:65:&SESSION.::&DEBUG.:::'
,p_page_id=>65
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(676563779864683921)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Manage Work Activity and Related Tasks'
,p_link=>'f?p=&APP_ID.:10900:&SESSION.::&DEBUG.:::'
,p_page_id=>10900
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(677298652993004468)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'All Movements'
,p_link=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:::'
,p_page_id=>28
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(677347828108523023)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Leave Transactions'
,p_link=>'f?p=&APP_ID.:12000:&SESSION.::&DEBUG.:::'
,p_page_id=>12000
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(677434313870237339)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Timesheet Master'
,p_link=>'f?p=&APP_ID.:138:&SESSION.::&DEBUG.:::'
,p_page_id=>138
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(677437296830460095)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Timesheet Incomes/Absences'
,p_link=>'f?p=&APP_ID.:12817:&SESSION.::&DEBUG.:::'
,p_page_id=>12817
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(677439898657473558)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Master Verification'
,p_link=>'f?p=&APP_ID.:224:&SESSION.::&DEBUG.:::'
,p_page_id=>224
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(677441270131484513)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Work Activity Income'
,p_link=>'f?p=&APP_ID.:12821:&SESSION.::&DEBUG.:::'
,p_page_id=>12821
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(677665425634995545)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Timeclock Upload and Process'
,p_link=>'f?p=&APP_ID.:12822:&SESSION.::&DEBUG.:::'
,p_page_id=>12822
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(677668104930047638)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Code of Conduct'
,p_link=>'f?p=&APP_ID.:1420:&SESSION.::&DEBUG.:::'
,p_page_id=>1420
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(677669692679097458)
,p_parent_id=>wwv_flow_imp.id(677668104930047638)
,p_short_name=>'Employee Offence'
,p_link=>'f?p=&APP_ID.:1421:&SESSION.::&DEBUG.:::'
,p_page_id=>1421
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(677807619981863706)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Document Centre'
,p_link=>'f?p=&APP_ID.:128:&SESSION.::&DEBUG.:::'
,p_page_id=>128
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(677822277179907294)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Document Center'
,p_link=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:::'
,p_page_id=>129
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(677823977255930726)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Mass Email Request'
,p_link=>'f?p=&APP_ID.:233:&SESSION.::&DEBUG.:::'
,p_page_id=>233
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(677824930332950900)
,p_parent_id=>wwv_flow_imp.id(677823977255930726)
,p_short_name=>'Configure Mass Email'
,p_link=>'f?p=&APP_ID.:234:&SESSION.::&DEBUG.:::'
,p_page_id=>234
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(677900561883818960)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of General Memos'
,p_link=>'f?p=&APP_ID.:1430:&SESSION.::&DEBUG.:::'
,p_page_id=>1430
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(677910696220846543)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Create/Edit General Memo'
,p_link=>'f?p=&APP_ID.:1431:&SESSION.::&DEBUG.:::'
,p_page_id=>1431
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(677915502831149916)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of Training Programs'
,p_link=>'f?p=&APP_ID.:311:&SESSION.::&DEBUG.:::'
,p_page_id=>311
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(677917538290165464)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of Training Courses'
,p_link=>'f?p=&APP_ID.:313:&SESSION.::&DEBUG.:::'
,p_page_id=>313
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678190955553635296)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Course Scheduling'
,p_link=>'f?p=&APP_ID.:319:&SESSION.::&DEBUG.:::'
,p_page_id=>319
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678192874785108910)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Class Setup'
,p_link=>'f?p=&APP_ID.:316:&SESSION.::&DEBUG.:::'
,p_page_id=>316
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678194058146184887)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Course Enrollment'
,p_link=>'f?p=&APP_ID.:317:&SESSION.::&DEBUG.:::'
,p_page_id=>317
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678197024926288916)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Class Attendance'
,p_link=>'f?p=&APP_ID.:321:&SESSION.::&DEBUG.:::'
,p_page_id=>321
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678201953153329698)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Insurance Categories'
,p_link=>'f?p=&APP_ID.:1406:&SESSION.::&DEBUG.:::'
,p_page_id=>1406
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678220235346384521)
,p_parent_id=>wwv_flow_imp.id(678201953153329698)
,p_short_name=>'Configure Insurance Categories'
,p_link=>'f?p=&APP_ID.:1407:&SESSION.::&DEBUG.:::'
,p_page_id=>1407
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678324875872726196)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of Holiday Policy'
,p_link=>'f?p=&APP_ID.:10100:&SESSION.::&DEBUG.:::'
,p_page_id=>10100
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678326091143726201)
,p_parent_id=>wwv_flow_imp.id(678324875872726196)
,p_short_name=>'Create /Edit Holiday Policy'
,p_link=>'f?p=&APP_ID.:10101:&SESSION.::&DEBUG.:::'
,p_page_id=>10101
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(684711698761125703)
,p_parent_id=>wwv_flow_imp.id(673920282764916911)
,p_short_name=>'Manage Reference Entries'
,p_link=>'f?p=&APP_ID.:1201:&SESSION.::&DEBUG.:::'
,p_page_id=>1201
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(686333498658965384)
,p_parent_id=>wwv_flow_imp.id(697355342612152932)
,p_short_name=>'WorkFlow Forward List'
,p_link=>'f?p=&APP_ID.:1390:&SESSION.::&DEBUG.:::'
,p_page_id=>1390
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(686520146191579993)
,p_parent_id=>wwv_flow_imp.id(686333498658965384)
,p_short_name=>'Manage Workflow Forward Transactions'
,p_link=>'f?p=&APP_ID.:1390:&SESSION.::&DEBUG.:::'
,p_page_id=>1391
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(686614611599683685)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Interview Calendar'
,p_link=>'f?p=&APP_ID.:12820:&SESSION.::&DEBUG.:::'
,p_page_id=>12820
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(696878562693259043)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Employee Appraisal Review'
,p_link=>'f?p=&APP_ID.:1493:&SESSION.::&DEBUG.:::'
,p_page_id=>1493
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(696879219813270411)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Post Appraisal Processes'
,p_link=>'f?p=&APP_ID.:1494:&SESSION.::&DEBUG.:::'
,p_page_id=>1494
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(696934056047924841)
,p_parent_id=>wwv_flow_imp.id(697355342612152932)
,p_short_name=>'Payroll Entries'
,p_link=>'f?p=&APP_ID.:492:&SESSION.::&DEBUG.:::'
,p_page_id=>492
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(696944421666975738)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'YTD Earnings'
,p_link=>'f?p=&APP_ID.:1332:&SESSION.::&DEBUG.:::'
,p_page_id=>1332
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(696952313080998559)
,p_parent_id=>wwv_flow_imp.id(696944421666975738)
,p_short_name=>'Create/Edit YTD Earning'
,p_link=>'f?p=&APP_ID.:1333:&SESSION.::&DEBUG.:::'
,p_page_id=>1333
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(696964494369101663)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Payroll Execution'
,p_link=>'f?p=&APP_ID.:1250:&SESSION.::&DEBUG.:::'
,p_page_id=>1250
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(696984229784335139)
,p_parent_id=>wwv_flow_imp.id(697355342612152932)
,p_short_name=>'Global Payslip Search'
,p_link=>'f?p=&APP_ID.:70:&SESSION.::&DEBUG.:::'
,p_page_id=>70
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(696987206207350875)
,p_parent_id=>wwv_flow_imp.id(697355342612152932)
,p_short_name=>'Listing of Employee Payslips'
,p_link=>'f?p=&APP_ID.:1355:&SESSION.::&DEBUG.:::'
,p_page_id=>1355
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(696989206927363151)
,p_parent_id=>wwv_flow_imp.id(696987206207350875)
,p_short_name=>'Employee Payslip'
,p_link=>'f?p=&APP_ID.:1356:&SESSION.::&DEBUG.:::'
,p_page_id=>1356
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(696991219633395628)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Employees with Negative Netpay'
,p_link=>'f?p=&APP_ID.:1506:&SESSION.::&DEBUG.:::'
,p_page_id=>1506
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(696994010829435473)
,p_parent_id=>wwv_flow_imp.id(529411648450566853)
,p_short_name=>'Employee Negative Netpay Summary'
,p_link=>'f?p=&APP_ID.:1507:&SESSION.::&DEBUG.:::'
,p_page_id=>1507
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(696996120336454525)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of Netpay Disbursements'
,p_link=>'f?p=&APP_ID.:52:&SESSION.::&DEBUG.:::'
,p_page_id=>52
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(696998030810589191)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Mass Payroll Email'
,p_link=>'f?p=&APP_ID.:1231:&SESSION.::&DEBUG.:::'
,p_page_id=>1231
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697000944172643918)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Cancelled Payments'
,p_link=>'f?p=&APP_ID.:1330:&SESSION.::&DEBUG.:::'
,p_page_id=>1330
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697010176428673714)
,p_parent_id=>wwv_flow_imp.id(697355342612152932)
,p_short_name=>'eNIB'
,p_link=>'f?p=&APP_ID.:1403:&SESSION.::&DEBUG.:::'
,p_page_id=>1403
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697015742966707720)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Detailed Financial Journal'
,p_link=>'f?p=&APP_ID.:6001:&SESSION.::&DEBUG.:::'
,p_page_id=>6002
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697018264373721374)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Summary Journal'
,p_link=>'f?p=&APP_ID.:6003:&SESSION.::&DEBUG.:::'
,p_page_id=>6003
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697326303938168679)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Investigation Manager'
,p_link=>'f?p=&APP_ID.:4090:&SESSION.::&DEBUG.:::'
,p_page_id=>4090
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697342128005052410)
,p_parent_id=>wwv_flow_imp.id(697355342612152932)
,p_short_name=>'Payroll Diagnosis'
,p_link=>'f?p=&APP_ID.:1500:&SESSION.::&DEBUG.:::'
,p_page_id=>1500
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697355342612152932)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Utilities'
,p_link=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
,p_page_id=>23
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697356398134156317)
,p_parent_id=>wwv_flow_imp.id(697355342612152932)
,p_short_name=>'Generator'
,p_link=>'f?p=&APP_ID.:1401:&SESSION.::&DEBUG.:::'
,p_page_id=>1401
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697363405038170180)
,p_parent_id=>wwv_flow_imp.id(3726208393046398463)
,p_short_name=>'Configure Jobs'
,p_link=>'f?p=&APP_ID.:61:&SESSION.::&DEBUG.:::'
,p_page_id=>61
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697363612717173522)
,p_parent_id=>wwv_flow_imp.id(697355342612152932)
,p_short_name=>'Generate Leave Entitlements'
,p_link=>'f?p=&APP_ID.:1402:&SESSION.::&DEBUG.:::'
,p_page_id=>1402
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697365481074190931)
,p_parent_id=>wwv_flow_imp.id(697355342612152932)
,p_short_name=>'Timesheet Loading'
,p_link=>'f?p=&APP_ID.:1371:&SESSION.::&DEBUG.:::'
,p_page_id=>1371
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697366705803198891)
,p_parent_id=>wwv_flow_imp.id(697355342612152932)
,p_short_name=>'Remuneration Changes'
,p_link=>'f?p=&APP_ID.:1470:&SESSION.::&DEBUG.:::'
,p_page_id=>1470
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697374347805317327)
,p_parent_id=>wwv_flow_imp.id(697355342612152932)
,p_short_name=>'System No. Configuration'
,p_link=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::'
,p_page_id=>16
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697381860427356556)
,p_parent_id=>wwv_flow_imp.id(697355342612152932)
,p_short_name=>'Notification Scheduler'
,p_link=>'f?p=&APP_ID.:308:&SESSION.::&DEBUG.:::'
,p_page_id=>308
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697382630603387508)
,p_parent_id=>wwv_flow_imp.id(697355342612152932)
,p_short_name=>'Move Reporting To'
,p_link=>'f?p=&APP_ID.:1025:&SESSION.::&DEBUG.:::'
,p_page_id=>1025
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697383267973450269)
,p_parent_id=>wwv_flow_imp.id(697355342612152932)
,p_short_name=>'Move Position Location'
,p_link=>'f?p=&APP_ID.:1026:&SESSION.::&DEBUG.:::'
,p_page_id=>1026
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697385401637568945)
,p_parent_id=>wwv_flow_imp.id(697355342612152932)
,p_short_name=>'Move Payment Frequency'
,p_link=>'f?p=&APP_ID.:1001:&SESSION.::&DEBUG.:::'
,p_page_id=>1001
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697386066945577272)
,p_parent_id=>wwv_flow_imp.id(697355342612152932)
,p_short_name=>'Load Previous YTD'
,p_link=>'f?p=&APP_ID.:6100:&SESSION.::&DEBUG.:::'
,p_page_id=>6100
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697386826472583668)
,p_parent_id=>wwv_flow_imp.id(697355342612152932)
,p_short_name=>'Load Individual & Employee'
,p_link=>'f?p=&APP_ID.:6120:&SESSION.::&DEBUG.:::'
,p_page_id=>6120
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697387547659615887)
,p_parent_id=>wwv_flow_imp.id(697355342612152932)
,p_short_name=>'Load YTD Leave'
,p_link=>'f?p=&APP_ID.:6180:&SESSION.::&DEBUG.:::'
,p_page_id=>6180
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697388338760623068)
,p_parent_id=>wwv_flow_imp.id(697355342612152932)
,p_short_name=>'MMG Disbursement'
,p_link=>'f?p=&APP_ID.:1003:&SESSION.::&DEBUG.:::'
,p_page_id=>1003
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697389342651656889)
,p_parent_id=>wwv_flow_imp.id(697355342612152932)
,p_short_name=>'Mass Employee Inter-Organisation Transfer'
,p_link=>'f?p=&APP_ID.:491:&SESSION.::&DEBUG.:::'
,p_page_id=>491
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697392070574676809)
,p_parent_id=>wwv_flow_imp.id(697355342612152932)
,p_short_name=>'Summary Timesheet Load'
,p_link=>'f?p=&APP_ID.:161:&SESSION.::&DEBUG.:::'
,p_page_id=>161
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697393148217686696)
,p_parent_id=>wwv_flow_imp.id(697355342612152932)
,p_short_name=>'Error Log'
,p_link=>'f?p=&APP_ID.:1360:&SESSION.::&DEBUG.:::'
,p_page_id=>1360
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697399025470711229)
,p_parent_id=>wwv_flow_imp.id(697355342612152932)
,p_short_name=>'System Process Logs'
,p_link=>'f?p=&APP_ID.:1361:&SESSION.::&DEBUG.:::'
,p_page_id=>1361
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697403331809725506)
,p_parent_id=>wwv_flow_imp.id(697355342612152932)
,p_short_name=>'User Login Log'
,p_link=>'f?p=&APP_ID.:1362:&SESSION.::&DEBUG.:::'
,p_page_id=>1362
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697412851122745242)
,p_parent_id=>wwv_flow_imp.id(697355342612152932)
,p_short_name=>'View Tips'
,p_link=>'f?p=&APP_ID.:1426:&SESSION.::&DEBUG.:::'
,p_page_id=>1426
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697572550374962314)
,p_parent_id=>wwv_flow_imp.id(676152826753520578)
,p_short_name=>'Individual Qualifications'
,p_link=>'f?p=&APP_ID.:1272:&SESSION.::&DEBUG.:::'
,p_page_id=>1272
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697603252475150475)
,p_parent_id=>wwv_flow_imp.id(676152826753520578)
,p_short_name=>'Individual Hobbies'
,p_link=>'f?p=&APP_ID.:1274:&SESSION.::&DEBUG.:::'
,p_page_id=>1274
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697617155630259460)
,p_parent_id=>wwv_flow_imp.id(676152826753520578)
,p_short_name=>'References'
,p_link=>'f?p=&APP_ID.:1275:&SESSION.::&DEBUG.:::'
,p_page_id=>1275
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697620269388267573)
,p_parent_id=>wwv_flow_imp.id(697355342612152932)
,p_short_name=>'Transaction Approvals'
,p_link=>'f?p=&APP_ID.:1482:&SESSION.::&DEBUG.:::'
,p_page_id=>1482
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697624506176285457)
,p_parent_id=>wwv_flow_imp.id(697355342612152932)
,p_short_name=>'User Productivity'
,p_link=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:::'
,p_page_id=>26
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697625391899300573)
,p_parent_id=>wwv_flow_imp.id(697355342612152932)
,p_short_name=>'Notification History'
,p_link=>'f?p=&APP_ID.:71:&SESSION.::&DEBUG.:::'
,p_page_id=>71
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697639705956552409)
,p_parent_id=>wwv_flow_imp.id(676152826753520578)
,p_short_name=>'Relatives/Friends'
,p_link=>'f?p=&APP_ID.:1276:&SESSION.::&DEBUG.:::'
,p_page_id=>1276
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697739278334006554)
,p_parent_id=>wwv_flow_imp.id(697355342612152932)
,p_short_name=>'Workflow Configuration'
,p_link=>'f?p=&APP_ID.:1385:&SESSION.::&DEBUG.:::'
,p_page_id=>1385
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697742046244015930)
,p_parent_id=>wwv_flow_imp.id(697355342612152932)
,p_short_name=>'Workflow Transactions'
,p_link=>'f?p=&APP_ID.:1388:&SESSION.::&DEBUG.:::'
,p_page_id=>1388
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697743336585026226)
,p_parent_id=>wwv_flow_imp.id(697355342612152932)
,p_short_name=>'Outstanding Workflows'
,p_link=>'f?p=&APP_ID.:1481:&SESSION.::&DEBUG.:::'
,p_page_id=>1481
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697753387270143298)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Manual Timesheet Mangement'
,p_link=>'f?p=&APP_ID.:84:&SESSION.::&DEBUG.:::'
,p_page_id=>84
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697760110642202043)
,p_parent_id=>wwv_flow_imp.id(697753387270143298)
,p_short_name=>'Configure Manual Timesheet'
,p_link=>'f?p=&APP_ID.:78:&SESSION.::&DEBUG.:::'
,p_page_id=>78
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697770141646269593)
,p_parent_id=>wwv_flow_imp.id(670084140736484355)
,p_short_name=>'Configure Employment History'
,p_link=>'f?p=&APP_ID.:544:&SESSION.::&DEBUG.:::'
,p_page_id=>544
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697770318869281316)
,p_parent_id=>wwv_flow_imp.id(670084140736484355)
,p_short_name=>'Applicant Address'
,p_link=>'f?p=&APP_ID.:541:&SESSION.::&DEBUG.:::'
,p_page_id=>541
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697773773532309915)
,p_parent_id=>wwv_flow_imp.id(670084140736484355)
,p_short_name=>'Applicant Qualifications'
,p_link=>'f?p=&APP_ID.:542:&SESSION.::&DEBUG.:::'
,p_page_id=>542
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697775949869325997)
,p_parent_id=>wwv_flow_imp.id(670084140736484355)
,p_short_name=>'Applicant References'
,p_link=>'f?p=&APP_ID.:506:&SESSION.::&DEBUG.:::'
,p_page_id=>506
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697782194121363042)
,p_parent_id=>wwv_flow_imp.id(670084140736484355)
,p_short_name=>'Applicant Hobbies'
,p_link=>'f?p=&APP_ID.:545:&SESSION.::&DEBUG.:::'
,p_page_id=>545
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697784585564383892)
,p_parent_id=>wwv_flow_imp.id(670084140736484355)
,p_short_name=>'Applicant''s Job Application'
,p_link=>'f?p=&APP_ID.:549:&SESSION.::&DEBUG.:::'
,p_page_id=>549
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3189279491831020419)
,p_parent_id=>wwv_flow_imp.id(3726590507826690835)
,p_short_name=>'Deduction Code'
,p_link=>'f?p=&APP_ID.:1221:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1221
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3381227146154001790)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of Employees'' Salaries'
,p_link=>'f?p=&APP_ID.:246:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>246
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3381252990747022211)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of Employees'' Remunerations'
,p_link=>'f?p=&APP_ID.:247:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>247
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3381276107525038220)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of Employees'' Leave Entitlements'
,p_link=>'f?p=&APP_ID.:248:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>248
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3381362485046086981)
,p_parent_id=>wwv_flow_imp.id(3381227146154001790)
,p_short_name=>'Create/Edit Employee Salary'
,p_link=>'f?p=&APP_ID.:13000:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13000
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3381560629184177494)
,p_parent_id=>wwv_flow_imp.id(3381276107525038220)
,p_short_name=>'Create/Edit Employee Leave Entitlement'
,p_link=>'f?p=&APP_ID.:13002:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13002
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3381806393000104151)
,p_short_name=>'Create/Edit Competency Levels'
,p_link=>'f?p=&APP_ID.:13022:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13022
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3388358313250389445)
,p_parent_id=>wwv_flow_imp.id(3404169971013209210)
,p_short_name=>'Create/Edit Competency/Skill'
,p_link=>'f?p=&APP_ID.:13021:&SESSION.::&DEBUG.:::'
,p_page_id=>13021
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3397256829402270362)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of Job Description'
,p_link=>'f?p=&APP_ID.:13010:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13010
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3404097470818157915)
,p_parent_id=>wwv_flow_imp.id(3397256829402270362)
,p_short_name=>'Create/Edit Job Description Details'
,p_link=>'f?p=&APP_ID.:13011:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13011
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3404169971013209210)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of Competencies & Skills'
,p_link=>'f?p=&APP_ID.:13020:&SESSION.::&DEBUG.:::'
,p_page_id=>13020
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3404866988147317580)
,p_parent_id=>wwv_flow_imp.id(3726208393046398463)
,p_short_name=>'Create/Edit Jobs'
,p_link=>'f?p=&APP_ID.:1307:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1307
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3405015091886389390)
,p_parent_id=>wwv_flow_imp.id(3810539995015145951)
,p_short_name=>'Create/Edit Position'
,p_link=>'f?p=&APP_ID.:1301:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1301
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3405112540202583488)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of Position Descriptions'
,p_link=>'f?p=&APP_ID.:13015:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13015
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3405197095698599082)
,p_parent_id=>wwv_flow_imp.id(3405112540202583488)
,p_short_name=>'Create/Edit Position Description Details'
,p_link=>'f?p=&APP_ID.:13016:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13016
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3473882310843728490)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of NetPay Disbursements'
,p_link=>'f?p=&APP_ID.:9981:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>9981
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3473883458208728486)
,p_parent_id=>wwv_flow_imp.id(3473882310843728490)
,p_short_name=>'Create/Edit NetPay Disbursement'
,p_link=>'f?p=&APP_ID.:9982:&SESSION.::&DEBUG.:::'
,p_page_id=>9982
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3478279352612893900)
,p_parent_id=>wwv_flow_imp.id(3577726839774780854)
,p_short_name=>'Create/Edit Shift Rotation'
,p_link=>'f?p=&FLOW_ID.:12816:&SESSION.'
,p_page_id=>12816
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3488275150952308042)
,p_parent_id=>wwv_flow_imp.id(3338315244071038236)
,p_short_name=>'  Create/Edit Employees'
,p_link=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:::'
,p_page_id=>1281
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3490974723060078486)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of Activity'
,p_link=>'f?p=&FLOW_ID.:1435:&SESSION.'
,p_page_id=>1435
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3490977333500088303)
,p_parent_id=>wwv_flow_imp.id(3490974723060078486)
,p_short_name=>'Create/Edit Activty'
,p_link=>'f?p=&FLOW_ID.:1436:&SESSION.'
,p_page_id=>1436
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3491209319752646654)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of Employee Document(s)/Licenses(s)'
,p_link=>'f?p=&APP_ID.:12819:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>12819
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3577726839774780854)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of Shift Rotation'
,p_link=>'f?p=&APP_ID.:12815:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>12815
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3577877404255881528)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of Swapped Shifts'
,p_link=>'f?p=&APP_ID.:182:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>182
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3577917250666900096)
,p_parent_id=>wwv_flow_imp.id(3577877404255881528)
,p_short_name=>'Create/Edit Swap Shifts'
,p_link=>'f?p=&APP_ID.:186:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>186
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3601495249084715460)
,p_short_name=>'ACH Master'
,p_link=>'f?p=&APP_ID.:201:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>201
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3601822075837828798)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing ACH Configuration'
,p_link=>'f?p=&FLOW_ID.:213:&SESSION.'
,p_page_id=>213
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3606909260606370942)
,p_parent_id=>wwv_flow_imp.id(3601822075837828798)
,p_short_name=>'Create/Edit ACH Configuration'
,p_link=>'f?p=&FLOW_ID.:218:&SESSION.'
,p_page_id=>218
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3610297356855214374)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of Shifts'
,p_link=>'f?p=&APP_ID.:1335:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1335
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3621735788690080465)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Assign Employee Rotation'
,p_link=>'f?p=&FLOW_ID.:119:&SESSION.'
,p_page_id=>119
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3687085732168038045)
,p_parent_id=>wwv_flow_imp.id(3687086277486047612)
,p_short_name=>'Create/Edit Employee Accident Reports'
,p_link=>'f?p=&APP_ID.:4005:&SESSION.::&DEBUG.:::'
,p_page_id=>4005
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3687086277486047612)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Employee Accident Reports'
,p_link=>'f?p=&APP_ID.:4006:&SESSION.::&DEBUG.:::'
,p_page_id=>4006
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3687098469511133769)
,p_parent_id=>wwv_flow_imp.id(3687100329977148140)
,p_short_name=>'Create/Edit Risk Assessment'
,p_link=>'f?p=&FLOW_ID.:4013:&SESSION.'
,p_page_id=>4013
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3687100329977148140)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'General Risk Assessment'
,p_link=>'f?p=&APP_ID.:4012:&SESSION.::&DEBUG.:::'
,p_page_id=>4012
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3687110188144241564)
,p_parent_id=>wwv_flow_imp.id(3687111513833250627)
,p_short_name=>'Create/Edit COSHH Risk Assessment'
,p_link=>'f?p=&FLOW_ID.:4008:&SESSION.'
,p_page_id=>4008
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3687111513833250627)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'COSHH Risk Assessment Records'
,p_link=>'f?p=&FLOW_ID.:4011:&SESSION.'
,p_page_id=>4011
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3687135429509519238)
,p_parent_id=>wwv_flow_imp.id(3687136449384527553)
,p_short_name=>'Create/Edit Job Hazards Analysis'
,p_link=>'f?p=&FLOW_ID.:4009:&SESSION.'
,p_page_id=>4009
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3687136449384527553)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Job Hazards Analysis'
,p_link=>'f?p=&FLOW_ID.:4010:&SESSION.'
,p_page_id=>4010
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3687545435260952396)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Risk Registers'
,p_link=>'f?p=&APP_ID.:4078:&SESSION.::&DEBUG.:::'
,p_page_id=>4078
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3687567340067245565)
,p_parent_id=>wwv_flow_imp.id(3687705722307810267)
,p_short_name=>'Create/Edit PPE REGISTER'
,p_link=>'f?p=&FLOW_ID.:4081:&SESSION.'
,p_page_id=>4081
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3687705722307810267)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Employee with PPE'
,p_link=>'f?p=&FLOW_ID.:4080:&SESSION.'
,p_page_id=>4080
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3687879546948585857)
,p_parent_id=>wwv_flow_imp.id(3687880842138599368)
,p_short_name=>'Create/Edit Incident'
,p_link=>'f?p=&APP_ID.:4051:&SESSION.::&DEBUG.:::'
,p_page_id=>4051
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3687880842138599368)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Incidents'
,p_link=>'f?p=&APP_ID.:4050:&SESSION.::&DEBUG.:::'
,p_page_id=>4050
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3688302456129063423)
,p_short_name=>'Listing of Depreciation Rules'
,p_link=>'f?p=&APP_ID.:691:&SESSION.'
,p_page_id=>691
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3689392797385002723)
,p_short_name=>'Listing of Category Groups'
,p_link=>'f?p=&APP_ID.:370:&SESSION.'
,p_page_id=>370
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3689415310237039123)
,p_short_name=>'Listing of Inventory Organisations'
,p_link=>'f?p=&APP_ID.:211:&SESSION.'
,p_page_id=>211
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3689439134721724906)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Vehicle Accident Report'
,p_link=>'f?p=&APP_ID.:4020:&SESSION.::&DEBUG.:::'
,p_page_id=>4020
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3689780253064753155)
,p_parent_id=>wwv_flow_imp.id(3689439134721724906)
,p_short_name=>'Create/Edit Vehicle Accident Report'
,p_link=>'f?p=&APP_ID.:4014:&SESSION.::&DEBUG.:::'
,p_page_id=>4014
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3689800301589911826)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Accident Register'
,p_link=>'f?p=&APP_ID.:4052:&SESSION.::&DEBUG.:::'
,p_page_id=>4052
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3689806085619970048)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Minor Vehicle Accidents'
,p_link=>'f?p=&FLOW_ID.:4060:&SESSION.'
,p_page_id=>4060
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3689810086508994809)
,p_parent_id=>wwv_flow_imp.id(3689806085619970048)
,p_short_name=>'Create/ Edit Minor Vehicle Accident'
,p_link=>'f?p=&FLOW_ID.:4066:&SESSION.'
,p_page_id=>4066
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3689823070230071161)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Driver Assessment'
,p_link=>'f?p=&FLOW_ID.:4062:&SESSION.'
,p_page_id=>4062
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3689825350163084418)
,p_parent_id=>wwv_flow_imp.id(3689823070230071161)
,p_short_name=>'Create/Edit Driver Assessment'
,p_link=>'f?p=&FLOW_ID.:4063:&SESSION.'
,p_page_id=>4063
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3689840228304222384)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Contract Safety Gears'
,p_link=>'f?p=&FLOW_ID.:4076:&SESSION.'
,p_page_id=>4076
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3689904353260437211)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Oil and Chemical Register'
,p_link=>'f?p=&FLOW_ID.:4017:&SESSION.'
,p_page_id=>4017
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3689905663162531094)
,p_parent_id=>wwv_flow_imp.id(3689904353260437211)
,p_short_name=>'Create/Edit Oil And Chemical'
,p_link=>'f?p=&FLOW_ID.:4018:&SESSION.'
,p_page_id=>4018
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3691734362330546589)
,p_parent_id=>wwv_flow_imp.id(3689780253064753155)
,p_short_name=>'Create/Edit Accident Detail'
,p_link=>'f?p=&FLOW_ID.:4015:&SESSION.'
,p_page_id=>4015
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3691738842879616157)
,p_parent_id=>wwv_flow_imp.id(3689780253064753155)
,p_short_name=>'Create/Edit OS&H Unit'
,p_link=>'f?p=&FLOW_ID.:4016:&SESSION.'
,p_page_id=>4016
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3691746041188965474)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of Manual TimeSheet Entries'
,p_link=>'f?p=&APP_ID.:125:&SESSION.'
,p_page_id=>125
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3692939040181547355)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Frequently Asked Question & Issues'
,p_link=>'f?p=&APP_ID.:1444:&SESSION.'
,p_page_id=>1444
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3693251180828271734)
,p_short_name=>'Listing of Asset Item Trans History'
,p_link=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:::'
,p_page_id=>35
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3693278364676463994)
,p_short_name=>'Listing of Non Purchased Items by Period'
,p_link=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.:::'
,p_page_id=>40
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3693637406584636271)
,p_short_name=>'Browse Position Details'
,p_link=>'f?p=&APP_ID.:106:&SESSION.'
,p_page_id=>106
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3694981431250456402)
,p_short_name=>'Listing of Non-Transacted'
,p_link=>'f?p=&FLOW_ID.:642:&SESSION.'
,p_page_id=>642
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3695594762719424400)
,p_parent_id=>wwv_flow_imp.id(697355342612152932)
,p_short_name=>'Listing of User Manual Entries'
,p_link=>'f?p=&APP_ID.:132:&SESSION.::&DEBUG.:::'
,p_page_id=>132
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3695595956816424401)
,p_parent_id=>wwv_flow_imp.id(3695594762719424400)
,p_short_name=>'Create/Edit User Manual Entries'
,p_link=>'f?p=&APP_ID.:134:&SESSION.::&DEBUG.:::'
,p_page_id=>134
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3704294437778662155)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Employee Items'
,p_link=>'f?p=&APP_ID.:111:&SESSION.::&DEBUG.:::'
,p_page_id=>111
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3706454419709468092)
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:101100:&SESSION.'
,p_page_id=>101100
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3709733485472647728)
,p_parent_id=>wwv_flow_imp.id(3709750651458655782)
,p_short_name=>'Create/Edit Employee Tasks (Per Employees)'
,p_link=>'f?p=&APP_ID.:159:&SESSION.'
,p_page_id=>159
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3709750651458655782)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of Employee Tasks (Per Employees)'
,p_link=>'f?p=&APP_ID.:158:&SESSION.'
,p_page_id=>158
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3709769233119666676)
,p_parent_id=>wwv_flow_imp.id(3709791071387676478)
,p_short_name=>'Create/Edit Employee Tasks (All Employees)'
,p_link=>'f?p=&APP_ID.:157:&SESSION.'
,p_page_id=>157
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3709791071387676478)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of Employee Tasks (All Employees)'
,p_link=>'f?p=&APP_ID.:156:&SESSION.'
,p_page_id=>156
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3713890914964362144)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of Change Employments'
,p_link=>'f?p=&APP_ID.:136:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>136
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3714158210265509238)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of Confirmation Movements'
,p_link=>'f?p=&APP_ID.:697:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>697
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3714253843821540504)
,p_parent_id=>wwv_flow_imp.id(3714158210265509238)
,p_short_name=>'Create /Edit Confirmation Movement'
,p_link=>'f?p=&APP_ID.:698:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>698
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3714374810704607594)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of Supplemental Movements'
,p_link=>'f?p=&APP_ID.:699:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>699
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3719002901072976169)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of Employee Absences'
,p_link=>'f?p=&APP_ID.:191:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>191
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3719533560057617803)
,p_parent_id=>wwv_flow_imp.id(5467007853458200802)
,p_short_name=>'Listing of Broadcasts'
,p_link=>'f?p=&FLOW_ID.:90:&SESSION.'
,p_page_id=>90
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3719567291521133190)
,p_parent_id=>wwv_flow_imp.id(3719533560057617803)
,p_short_name=>'Create/Edit Broadcast'
,p_link=>'f?p=&FLOW_ID.:91:&SESSION.'
,p_page_id=>91
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3725504840388638440)
,p_parent_id=>wwv_flow_imp.id(3714374810704607594)
,p_short_name=>'Create/Edit Supplemental Movement'
,p_link=>'f?p=&APP_ID.:700:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>700
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3725628231505683497)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of Movement Extensions'
,p_link=>'f?p=&APP_ID.:701:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>701
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3725793223522757128)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of Employee Separations'
,p_link=>'f?p=&APP_ID.:1414:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1414
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3725836316269776912)
,p_parent_id=>wwv_flow_imp.id(3725793223522757128)
,p_short_name=>'Create/Edit Employee Separation'
,p_link=>'f?p=&APP_ID.:1415:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1415
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3725896203871823639)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of New Employments'
,p_link=>'f?p=&APP_ID.:108:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>108
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726045591599116964)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of Grade Scales'
,p_link=>'f?p=&FLOW_ID.:1308:&SESSION.'
,p_page_id=>1308
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726208393046398463)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of Jobs'
,p_link=>'f?p=&APP_ID.:1306:&SESSION.'
,p_page_id=>1306
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726255235485936031)
,p_parent_id=>wwv_flow_imp.id(3738266798321630983)
,p_short_name=>'Create/Edit Change Position'
,p_link=>'f?p=&APP_ID.:51:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>51
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726433378583487393)
,p_short_name=>'Competencies '
,p_link=>'f?p=&APP_ID.:1492:&SESSION.'
,p_page_id=>1492
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726557733040452003)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Leave Roster'
,p_link=>'f?p=&APP_ID.:60:&SESSION.'
,p_page_id=>60
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726588494780674804)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of Payroll Income Codes'
,p_link=>'f?p=&APP_ID.:1210:&SESSION.::&DEBUG.:::'
,p_page_id=>1210
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726589331275682933)
,p_parent_id=>wwv_flow_imp.id(3726588494780674804)
,p_short_name=>'Create/Edit Payroll Income Codes'
,p_link=>'f?p=&APP_ID.:1211:&SESSION.::&DEBUG.:::'
,p_page_id=>1211
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726590507826690835)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of Employee Payroll Deduction Codes'
,p_link=>'f?p=&FLOW_ID.:1220:&SESSION.'
,p_page_id=>1220
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726592133667707093)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>' Listing of Employee-Non Statutory Deductions'
,p_link=>'f?p=&FLOW_ID.:1296:&SESSION.'
,p_page_id=>1296
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726593351747715141)
,p_parent_id=>wwv_flow_imp.id(3726592133667707093)
,p_short_name=>'Create/Edit Non-Statutory Deduction'
,p_link=>'f?p=&APP_ID.:1297:&SESSION.::&DEBUG.:::'
,p_page_id=>1297
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726594951975726344)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of Job Related Tasks'
,p_link=>'f?p=&FLOW_ID.:1341:&SESSION.'
,p_page_id=>1341
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726596051124732109)
,p_parent_id=>wwv_flow_imp.id(3726594951975726344)
,p_short_name=>'Create/Edit Job Related Tasks'
,p_link=>'f?p=&FLOW_ID.:1342:&SESSION.'
,p_page_id=>1342
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726623520562915806)
,p_parent_id=>wwv_flow_imp.id(3726557733040452003)
,p_short_name=>'Create/Edit Leave Roster'
,p_link=>'f?p=&FLOW_ID.:33:&SESSION.'
,p_page_id=>33
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726647632673075297)
,p_short_name=>'Listing of Location Shift Rule'
,p_link=>'f?p=&APP_ID.:62:&SESSION.'
,p_page_id=>62
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726968643653803302)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Timesheet Manager'
,p_link=>'f?p=&APP_ID.:126:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>126
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3729398260431050248)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of Medical History'
,p_link=>'f?p=&FLOW_ID.:1408:&SESSION.'
,p_page_id=>1408
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3738266798321630983)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of Change Positions'
,p_link=>'f?p=&APP_ID.:1412:&SESSION.::&DEBUG.:::'
,p_page_id=>1412
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3755607435497971368)
,p_parent_id=>wwv_flow_imp.id(3755635961335982402)
,p_short_name=>'Create/Edit Health Surcharge'
,p_link=>'f?p=&APP_ID.:173:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>173
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3755635961335982402)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of Health Surcharge '
,p_link=>'f?p=&APP_ID.:172:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>172
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3758256955274640180)
,p_parent_id=>wwv_flow_imp.id(5467007853458200802)
,p_short_name=>'Productivity Detail Report'
,p_link=>'f?p=&APP_ID.:192:&SESSION.::&DEBUG.:::'
,p_page_id=>192
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3758959613636656459)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'End Of Year Reports'
,p_link=>'f?p=&APP_ID.:194:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>194
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3758988244634710960)
,p_parent_id=>wwv_flow_imp.id(3713890914964362144)
,p_short_name=>'Create/Edit Change Employment'
,p_link=>'f?p=&APP_ID.:137:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>137
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3763161842676660924)
,p_short_name=>'Listing of Media'
,p_link=>'f?p=&FLOW_ID.:181:&SESSION.'
,p_page_id=>181
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3763167930914698489)
,p_short_name=>'Create/Edit Media'
,p_link=>'f?p=&FLOW_ID.:188:&SESSION.'
,p_page_id=>188
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3770504037168607875)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Payroll Compare'
,p_link=>'f?p=&APP_ID.:1249:&SESSION.::&DEBUG.:::'
,p_page_id=>1249
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3772335374025141296)
,p_parent_id=>wwv_flow_imp.id(3776535194639741623)
,p_short_name=>'Create/Edit Grievance Action'
,p_link=>'f?p=&APP_ID.:184:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>184
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3776535194639741623)
,p_parent_id=>wwv_flow_imp.id(3776563072688756501)
,p_short_name=>'Create/Edit Employee Grievance'
,p_link=>'f?p=&APP_ID.:175:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>175
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3776563072688756501)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of Employee Grievances'
,p_link=>'f?p=&APP_ID.:174:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>174
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3778475941829409944)
,p_parent_id=>wwv_flow_imp.id(3778477646460442463)
,p_short_name=>'Create/Edit Health Surcharges'
,p_link=>'f?p=&FLOW_ID.:167:&SESSION.'
,p_page_id=>167
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3778477646460442463)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of Health Surcharges'
,p_link=>'f?p=&FLOW_ID.:166:&SESSION.'
,p_page_id=>166
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3779098514986423591)
,p_parent_id=>wwv_flow_imp.id(3725628231505683497)
,p_short_name=>'Create/Edit Movement Extension'
,p_link=>'f?p=&APP_ID.:702:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>702
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3807075949403520130)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of Life Certificates'
,p_link=>'f?p=&FLOW_ID.:57:&SESSION.'
,p_page_id=>57
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3810539995015145951)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of Positions'
,p_link=>'f?p=&FLOW_ID.:1300:&SESSION.'
,p_page_id=>1300
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3845541453850216099)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Employees Payments'
,p_link=>'f?p=&APP_ID.:8003:&SESSION.::&DEBUG.:::'
,p_page_id=>8003
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3845627733766775127)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Employees Pension Deductions'
,p_link=>'f?p=&APP_ID.:8005:&SESSION.::&DEBUG.:::'
,p_page_id=>8005
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3845639995030847813)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Employees Medical Deductions'
,p_link=>'f?p=&APP_ID.:8006:&SESSION.::&DEBUG.:::'
,p_page_id=>8006
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3845822319633236080)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Listing of Employees Deductions'
,p_link=>'f?p=&APP_ID.:8008:&SESSION.::&DEBUG.:::'
,p_page_id=>8008
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3845835980477398759)
,p_short_name=>'PAYE for Employees By Period'
,p_link=>'f?p=&FLOW_ID.:8011:&SESSION.'
,p_page_id=>8011
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3845975077664231368)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'NIB/SS Contribution Report'
,p_link=>'f?p=&APP_ID.:8012:&SESSION.::&DEBUG.:::'
,p_page_id=>8012
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3846210339318954127)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Overtime Summary'
,p_link=>'f?p=&APP_ID.:8009:&SESSION.::&DEBUG.:::'
,p_page_id=>8009
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3846247403615585198)
,p_parent_id=>wwv_flow_imp.id(3845975077664231368)
,p_short_name=>'Employees Above 60 NIB/SS Contribution'
,p_link=>'f?p=&APP_ID.:8013:&SESSION.::&DEBUG.:::'
,p_page_id=>8013
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3853888302451114761)
,p_parent_id=>wwv_flow_imp.id(697355342612152932)
,p_short_name=>'Republic Bank Accounts'
,p_link=>'f?p=&APP_ID.:8031:&SESSION.::&DEBUG.:::'
,p_page_id=>8031
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(5467007853458200802)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Administration'
,p_link=>'f?p=&FLOW_ID.:23:&SESSION.'
,p_page_id=>23
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(6034956049862614997)
,p_parent_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Help'
,p_link=>'f?p=&FLOW_ID.:25:&SESSION.'
,p_page_id=>25
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10988176606850489213)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp.component_end;
end;
/
