prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
--   Manifest
--     MENU: Breadcrumb
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>221824690189185566
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(10988598328610063082)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(414914064767874660)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Departmental Incomes'
,p_link=>'f?p=&APP_ID.:1400:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1400
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(422573595515580170)
,p_parent_id=>wwv_flow_imp.id(676574960361094450)
,p_short_name=>'Manage Address'
,p_link=>'f?p=&APP_ID.:1270:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1270
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(422609167635629355)
,p_parent_id=>wwv_flow_imp.id(676574960361094450)
,p_short_name=>'National Identifiers'
,p_link=>'f?p=&APP_ID.:1271:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1271
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(422643974786665945)
,p_parent_id=>wwv_flow_imp.id(676574960361094450)
,p_short_name=>'Employment History'
,p_link=>'f?p=&APP_ID.:1273:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1273
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(528161303288036183)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Upload Data'
,p_link=>'f?p=&APP_ID.:244:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>244
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(529833782058140725)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>' Employees with Negative Netpay'
,p_link=>'f?p=&APP_ID.:1506:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1506
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(530452802417574145)
,p_short_name=>'frmfileoutput'
,p_link=>'f?p=&APP_ID.:219:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>219
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(556697590063042469)
,p_parent_id=>wwv_flow_imp.id(697777476219726804)
,p_short_name=>'Attribute Setup'
,p_link=>'f?p=&APP_ID.:3150:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>3150
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(559444451510875160)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of Debug Payrolls'
,p_link=>'f?p=&APP_ID.:1255:&SESSION.::&DEBUG.:::'
,p_page_id=>1255
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(559645461715910473)
,p_parent_id=>wwv_flow_imp.id(559444451510875160)
,p_short_name=>'Manage Debug Payroll'
,p_link=>'f?p=&APP_ID.:1256:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1256
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(566261340373899872)
,p_parent_id=>wwv_flow_imp.id(609342156085898885)
,p_short_name=>'Manage Employee Holiday'
,p_link=>'f?p=&APP_ID.:1322:&SESSION.::&DEBUG.:::'
,p_page_id=>1322
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(574903145808057463)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'HR Exports To Payroll'
,p_link=>'f?p=&APP_ID.:1350:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1350
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(579214943164030836)
,p_short_name=>'Create/Edit Tax Rate'
,p_link=>'f?p=&APP_ID.:1314:&SESSION.::&DEBUG.:::'
,p_page_id=>1314
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(587398479644989162)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Payroll Legacy'
,p_link=>'f?p=&APP_ID.:179:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>179
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(587438465078727058)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'List of Accessible Reports'
,p_link=>'f?p=&APP_ID.:400:&SESSION.::&DEBUG.:::'
,p_page_id=>400
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(587438657464722500)
,p_parent_id=>wwv_flow_imp.id(587438465078727058)
,p_short_name=>'Setup Reports'
,p_link=>'f?p=&APP_ID.:401:&SESSION.::&DEBUG.:::'
,p_page_id=>401
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(591128700395636383)
,p_parent_id=>wwv_flow_imp.id(3726318337479397511)
,p_short_name=>'Create&#x2F;Edit New Employment'
,p_link=>'f?p=&APP_ID.:109:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>109
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(609342156085898885)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Manage Holidays'
,p_link=>'f?p=&APP_ID.:1319:&SESSION.::&DEBUG.:::'
,p_page_id=>1319
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(613957840830759590)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Allowance Uploader'
,p_page_id=>1465
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(614454383573870783)
,p_parent_id=>wwv_flow_imp.id(3381675124354596083)
,p_short_name=>'Create&#x2F;Edit Remuneration'
,p_link=>'f?p=&APP_ID.:13001:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13001
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(614552134315936082)
,p_parent_id=>wwv_flow_imp.id(3488697284559881914)
,p_short_name=>'Other Remuneration'
,p_link=>'f?p=&APP_ID.:1285:&SESSION.::&DEBUG.:::'
,p_page_id=>1285
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(644113800248605827)
,p_parent_id=>wwv_flow_imp.id(3726467725206690836)
,p_short_name=>'Manage Grade/Salary Scales'
,p_link=>'f?p=&APP_ID.:1309:&SESSION.::&DEBUG.:::'
,p_page_id=>1309
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(645242059894843268)
,p_short_name=>'Search Directory'
,p_link=>'f?p=&APP_ID.:103:&SESSION.::&DEBUG.:::'
,p_page_id=>103
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(645243941148781331)
,p_parent_id=>wwv_flow_imp.id(645242059894843268)
,p_short_name=>'Manage Directories'
,p_link=>'f?p=&APP_ID.:104:&SESSION.::&DEBUG.:::'
,p_page_id=>104
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(648123380539241697)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Search Individual Files'
,p_link=>'f?p=&APP_ID.:9000:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>9000
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(648164755261120966)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>' Search Employee Files'
,p_link=>'f?p=&APP_ID.:150:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>150
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(651363275740569442)
,p_parent_id=>wwv_flow_imp.id(3690262361911796256)
,p_short_name=>'Create&#x2F;Edit Contract Safety Gears'
,p_link=>'f?p=&APP_ID.:4077:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4077
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(654417502349638191)
,p_parent_id=>wwv_flow_imp.id(657392782370185788)
,p_short_name=>'Create &#x2F;Edit Leave Policy'
,p_link=>'f?p=&APP_ID.:11998:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>11998
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(657392782370185788)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of Leave Policies'
,p_link=>'f?p=&APP_ID.:11999:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>11999
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(661651338662162833)
,p_parent_id=>wwv_flow_imp.id(697777476219726804)
,p_short_name=>'Listing of Employee Leave Track'
,p_link=>'f?p=&APP_ID.:1433:&SESSION.::&DEBUG.:::'
,p_page_id=>1433
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(662263183289505987)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Procore Timesheets'
,p_link=>'f?p=&APP_ID.:245:&SESSION.::&DEBUG.:::'
,p_page_id=>245
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(662295257959743814)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of Employee Leave Records'
,p_link=>'f?p=&APP_ID.:1416:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1416
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(663727362303133658)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Global PeoplePay Search'
,p_link=>'f?p=&APP_ID.:249:&SESSION.::&DEBUG.:::'
,p_page_id=>249
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(663779033304265311)
,p_parent_id=>wwv_flow_imp.id(662295257959743814)
,p_short_name=>'Manage Leave Request'
,p_link=>'f?p=&APP_ID.:1417:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1417
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(664727468226735929)
,p_short_name=>'Antigua & Barbuda Educaton Levy'
,p_link=>'f?p=&APP_ID.:1486:&SESSION.::&DEBUG.:::'
,p_page_id=>1486
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(667642081772192067)
,p_short_name=>'Edit Course Configuration'
,p_link=>'f?p=&APP_ID.:312:&SESSION.::&DEBUG.:::'
,p_page_id=>312
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670338710126474911)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Employee Holidays'
,p_link=>'f?p=&APP_ID.:1339:&SESSION.::&DEBUG.:::'
,p_page_id=>1339
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670345254616511820)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Leave Types'
,p_link=>'f?p=&APP_ID.:216:&SESSION.::&DEBUG.:::'
,p_page_id=>216
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670345530036518363)
,p_parent_id=>wwv_flow_imp.id(670345254616511820)
,p_short_name=>'Configure Leave Types'
,p_link=>'f?p=&APP_ID.:221:&SESSION.::&DEBUG.:::'
,p_page_id=>221
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670431543891424694)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Find, Filter and Organize Projects'
,p_link=>'f?p=&APP_ID.:1700:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1700
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670447644346440982)
,p_parent_id=>wwv_flow_imp.id(670431543891424694)
,p_short_name=>'Manage Projects'
,p_link=>'f?p=&APP_ID.:1710:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1710
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670470851328053372)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Earning Periods'
,p_link=>'f?p=&APP_ID.:1240:&SESSION.::&DEBUG.:::'
,p_page_id=>1240
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670471061907056939)
,p_parent_id=>wwv_flow_imp.id(670470851328053372)
,p_short_name=>'Configure Earning Period'
,p_link=>'f?p=&APP_ID.:1241:&SESSION.::&DEBUG.:::'
,p_page_id=>1241
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670473167164087038)
,p_short_name=>'Org Structures'
,p_link=>'f?p=&APP_ID.:1293:&SESSION.::&DEBUG.:::'
,p_page_id=>1293
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670478207562211239)
,p_short_name=>'Job Interviews'
,p_link=>'f?p=&APP_ID.:2012:&SESSION.::&DEBUG.:::'
,p_page_id=>2012
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670478398318215204)
,p_parent_id=>wwv_flow_imp.id(670478207562211239)
,p_short_name=>'Manage Job Interview'
,p_link=>'f?p=&APP_ID.:2001:&SESSION.::&DEBUG.:::'
,p_page_id=>2001
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670494506605656059)
,p_short_name=>'References'
,p_link=>'f?p=&APP_ID.:9974:&SESSION.::&DEBUG.:::'
,p_page_id=>9974
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670494757913662710)
,p_parent_id=>wwv_flow_imp.id(670494506605656059)
,p_short_name=>'Configure References'
,p_link=>'f?p=&APP_ID.:9968:&SESSION.::&DEBUG.:::'
,p_page_id=>9968
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670499826334727511)
,p_short_name=>'Position Openings'
,p_link=>'f?p=&APP_ID.:2008:&SESSION.::&DEBUG.:::'
,p_page_id=>2008
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670500754376734333)
,p_parent_id=>wwv_flow_imp.id(670499826334727511)
,p_short_name=>'Configure Position Opening'
,p_link=>'f?p=&APP_ID.:1395:&SESSION.::&DEBUG.:::'
,p_page_id=>1395
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670505991286043495)
,p_short_name=>'Applicants'
,p_link=>'f?p=&APP_ID.:539:&SESSION.::&DEBUG.:::'
,p_page_id=>539
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670506274344058227)
,p_parent_id=>wwv_flow_imp.id(670505991286043495)
,p_short_name=>'Applicant Register'
,p_link=>'f?p=&APP_ID.:540:&SESSION.::&DEBUG.:::'
,p_page_id=>540
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(671267377609826674)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of User Guides'
,p_link=>'f?p=&APP_ID.:13040:&SESSION.::&DEBUG.:::'
,p_page_id=>13040
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(672146599345045724)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Employee Appraisal Evaluation'
,p_link=>'f?p=&APP_ID.:1499:&SESSION.::&DEBUG.:::'
,p_page_id=>1499
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(672265492062142814)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of Appraisal Configurations'
,p_link=>'f?p=&APP_ID.:1490:&SESSION.::&DEBUG.:::'
,p_page_id=>1490
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(672324898783270053)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Create/Edit Appraisal Configuration for &P1491_MERIT_DESCRIPTION.'
,p_link=>'f?p=&APP_ID.:1491:&SESSION.::&DEBUG.:::'
,p_page_id=>1491
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(672670453796028968)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of Employee Appraisals'
,p_link=>'f?p=&APP_ID.:1495:&SESSION.::&DEBUG.:::'
,p_page_id=>1495
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(672827915955136482)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Manage Employee Appraisal'
,p_link=>'f?p=&APP_ID.:1496:&SESSION.::&DEBUG.:::'
,p_page_id=>1496
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(673985547484419615)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Shift Roster'
,p_link=>'f?p=&APP_ID.:116:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>116
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(674342416372490783)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'List of System References'
,p_link=>'f?p=&APP_ID.:1200:&SESSION.::&DEBUG.:::'
,p_page_id=>1200
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675360657049982615)
,p_parent_id=>wwv_flow_imp.id(670473167164087038)
,p_short_name=>'Manage Org Structures'
,p_link=>'f?p=&APP_ID.:1294:&SESSION.::&DEBUG.:::'
,p_page_id=>1294
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675504567462327402)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Staff Requisitions'
,p_link=>'f?p=&APP_ID.:2003:&SESSION.::&DEBUG.:::'
,p_page_id=>2003
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675534985604457800)
,p_parent_id=>wwv_flow_imp.id(675504567462327402)
,p_short_name=>'Create/ Edit Staff Requisitions'
,p_link=>'f?p=&APP_ID.:2004:&SESSION.::&DEBUG.:::'
,p_page_id=>2004
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675596292881670251)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Applicants with Given References'
,p_link=>'f?p=&APP_ID.:9969:&SESSION.::&DEBUG.:::'
,p_page_id=>9969
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675603378064696055)
,p_parent_id=>wwv_flow_imp.id(675596292881670251)
,p_short_name=>'Manage Applicant References'
,p_link=>'f?p=&APP_ID.:9970:&SESSION.::&DEBUG.:::'
,p_page_id=>9970
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675604411778738987)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Recruitment Matrix'
,p_link=>'f?p=&APP_ID.:447:&SESSION.::&DEBUG.:::'
,p_page_id=>447
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675605529802759398)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Interview Schedule'
,p_link=>'f?p=&APP_ID.:2009:&SESSION.::&DEBUG.:::'
,p_page_id=>2009
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675605778647765746)
,p_parent_id=>wwv_flow_imp.id(675605529802759398)
,p_short_name=>'Interview Setup'
,p_link=>'f?p=&APP_ID.:2011:&SESSION.::&DEBUG.:::'
,p_page_id=>2011
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675800473053991892)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of Interviews'
,p_link=>'f?p=&APP_ID.:2005:&SESSION.::&DEBUG.:::'
,p_page_id=>2005
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675840298466046596)
,p_parent_id=>wwv_flow_imp.id(675800473053991892)
,p_short_name=>'Manage Interviews'
,p_link=>'f?p=&APP_ID.:2006:&SESSION.::&DEBUG.:::'
,p_page_id=>2006
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675847833993084875)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Online Interview Evaluation'
,p_link=>'f?p=&APP_ID.:2013:&SESSION.::&DEBUG.:::'
,p_page_id=>2013
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675875126167261553)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Manual Interview'
,p_link=>'f?p=&APP_ID.:337:&SESSION.::&DEBUG.:::'
,p_page_id=>337
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(676542018844064072)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Individuals'
,p_link=>'f?p=&APP_ID.:1260:&SESSION.::&DEBUG.:::'
,p_page_id=>1260
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(676574960361094450)
,p_parent_id=>wwv_flow_imp.id(676542018844064072)
,p_short_name=>'Create/Edit Individuals'
,p_link=>'f?p=&APP_ID.:1261:&SESSION.::&DEBUG.::P1261_ID:&GLOBAL_IND.'
,p_page_id=>1261
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(676822389454501016)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Manage Work Activity Tasks'
,p_link=>'f?p=&APP_ID.:10999:&SESSION.::&DEBUG.:::'
,p_page_id=>10999
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(676830428091148807)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Employee Prior Deductions'
,p_link=>'f?p=&APP_ID.:147:&SESSION.::&DEBUG.:::'
,p_page_id=>147
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(676830569629151739)
,p_parent_id=>wwv_flow_imp.id(676830428091148807)
,p_short_name=>'Manage Employee Prior Deductions'
,p_link=>'f?p=&APP_ID.:65:&SESSION.::&DEBUG.:::'
,p_page_id=>65
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(676985913472257793)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Manage Work Activity and Related Tasks'
,p_link=>'f?p=&APP_ID.:10900:&SESSION.::&DEBUG.:::'
,p_page_id=>10900
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(677720786600578340)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'All Movements'
,p_link=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:::'
,p_page_id=>28
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(677769961716096895)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Leave Transactions'
,p_link=>'f?p=&APP_ID.:12000:&SESSION.::&DEBUG.:::'
,p_page_id=>12000
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(677856447477811211)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Timesheet Master'
,p_link=>'f?p=&APP_ID.:138:&SESSION.::&DEBUG.:::'
,p_page_id=>138
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(677859430438033967)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Timesheet Incomes/Absences'
,p_link=>'f?p=&APP_ID.:12817:&SESSION.::&DEBUG.:::'
,p_page_id=>12817
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(677862032265047430)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Master Verification'
,p_link=>'f?p=&APP_ID.:224:&SESSION.::&DEBUG.:::'
,p_page_id=>224
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(677863403739058385)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Work Activity Income'
,p_link=>'f?p=&APP_ID.:12821:&SESSION.::&DEBUG.:::'
,p_page_id=>12821
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678087559242569417)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Timeclock Upload and Process'
,p_link=>'f?p=&APP_ID.:12822:&SESSION.::&DEBUG.:::'
,p_page_id=>12822
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678090238537621510)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Code of Conduct'
,p_link=>'f?p=&APP_ID.:1420:&SESSION.::&DEBUG.:::'
,p_page_id=>1420
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678091826286671330)
,p_parent_id=>wwv_flow_imp.id(678090238537621510)
,p_short_name=>'Employee Offence'
,p_link=>'f?p=&APP_ID.:1421:&SESSION.::&DEBUG.:::'
,p_page_id=>1421
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678229753589437578)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Document Centre'
,p_link=>'f?p=&APP_ID.:128:&SESSION.::&DEBUG.:::'
,p_page_id=>128
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678244410787481166)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Document Center'
,p_link=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:::'
,p_page_id=>129
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678246110863504598)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Mass Email Request'
,p_link=>'f?p=&APP_ID.:233:&SESSION.::&DEBUG.:::'
,p_page_id=>233
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678247063940524772)
,p_parent_id=>wwv_flow_imp.id(678246110863504598)
,p_short_name=>'Configure Mass Email'
,p_link=>'f?p=&APP_ID.:234:&SESSION.::&DEBUG.:::'
,p_page_id=>234
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678322695491392832)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of General Memos'
,p_link=>'f?p=&APP_ID.:1430:&SESSION.::&DEBUG.:::'
,p_page_id=>1430
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678332829828420415)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Create/Edit General Memo'
,p_link=>'f?p=&APP_ID.:1431:&SESSION.::&DEBUG.:::'
,p_page_id=>1431
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678337636438723788)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of Training Programs'
,p_link=>'f?p=&APP_ID.:311:&SESSION.::&DEBUG.:::'
,p_page_id=>311
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678339671897739336)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of Training Courses'
,p_link=>'f?p=&APP_ID.:313:&SESSION.::&DEBUG.:::'
,p_page_id=>313
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678613089161209168)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Course Scheduling'
,p_link=>'f?p=&APP_ID.:319:&SESSION.::&DEBUG.:::'
,p_page_id=>319
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678615008392682782)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Class Setup'
,p_link=>'f?p=&APP_ID.:316:&SESSION.::&DEBUG.:::'
,p_page_id=>316
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678616191753758759)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Course Enrollment'
,p_link=>'f?p=&APP_ID.:317:&SESSION.::&DEBUG.:::'
,p_page_id=>317
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678619158533862788)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Class Attendance'
,p_link=>'f?p=&APP_ID.:321:&SESSION.::&DEBUG.:::'
,p_page_id=>321
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678624086760903570)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Insurance Categories'
,p_link=>'f?p=&APP_ID.:1406:&SESSION.::&DEBUG.:::'
,p_page_id=>1406
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678642368953958393)
,p_parent_id=>wwv_flow_imp.id(678624086760903570)
,p_short_name=>'Configure Insurance Categories'
,p_link=>'f?p=&APP_ID.:1407:&SESSION.::&DEBUG.:::'
,p_page_id=>1407
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678747009480300068)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of Holiday Policy'
,p_link=>'f?p=&APP_ID.:10100:&SESSION.::&DEBUG.:::'
,p_page_id=>10100
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(678748224751300073)
,p_parent_id=>wwv_flow_imp.id(678747009480300068)
,p_short_name=>'Create /Edit Holiday Policy'
,p_link=>'f?p=&APP_ID.:10101:&SESSION.::&DEBUG.:::'
,p_page_id=>10101
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(685133832368699575)
,p_parent_id=>wwv_flow_imp.id(674342416372490783)
,p_short_name=>'Manage Reference Entries'
,p_link=>'f?p=&APP_ID.:1201:&SESSION.::&DEBUG.:::'
,p_page_id=>1201
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(686755632266539256)
,p_parent_id=>wwv_flow_imp.id(697777476219726804)
,p_short_name=>'WorkFlow Forward List'
,p_link=>'f?p=&APP_ID.:1390:&SESSION.::&DEBUG.:::'
,p_page_id=>1390
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(686942279799153865)
,p_parent_id=>wwv_flow_imp.id(686755632266539256)
,p_short_name=>'Manage Workflow Forward Transactions'
,p_link=>'f?p=&APP_ID.:1390:&SESSION.::&DEBUG.:::'
,p_page_id=>1391
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(687036745207257557)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Interview Calendar'
,p_link=>'f?p=&APP_ID.:12820:&SESSION.::&DEBUG.:::'
,p_page_id=>12820
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697300696300832915)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Employee Appraisal Review'
,p_link=>'f?p=&APP_ID.:1493:&SESSION.::&DEBUG.:::'
,p_page_id=>1493
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697301353420844283)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Post Appraisal Processes'
,p_link=>'f?p=&APP_ID.:1494:&SESSION.::&DEBUG.:::'
,p_page_id=>1494
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697356189655498713)
,p_parent_id=>wwv_flow_imp.id(697777476219726804)
,p_short_name=>'Payroll Entries'
,p_link=>'f?p=&APP_ID.:492:&SESSION.::&DEBUG.:::'
,p_page_id=>492
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697366555274549610)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'YTD Earnings'
,p_link=>'f?p=&APP_ID.:1332:&SESSION.::&DEBUG.:::'
,p_page_id=>1332
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697374446688572431)
,p_parent_id=>wwv_flow_imp.id(697366555274549610)
,p_short_name=>'Create/Edit YTD Earning'
,p_link=>'f?p=&APP_ID.:1333:&SESSION.::&DEBUG.:::'
,p_page_id=>1333
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697386627976675535)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Payroll Execution'
,p_link=>'f?p=&APP_ID.:1250:&SESSION.::&DEBUG.:::'
,p_page_id=>1250
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697406363391909011)
,p_parent_id=>wwv_flow_imp.id(697777476219726804)
,p_short_name=>'Global Payslip Search'
,p_link=>'f?p=&APP_ID.:70:&SESSION.::&DEBUG.:::'
,p_page_id=>70
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697409339814924747)
,p_parent_id=>wwv_flow_imp.id(697777476219726804)
,p_short_name=>'Listing of Employee Payslips'
,p_link=>'f?p=&APP_ID.:1355:&SESSION.::&DEBUG.:::'
,p_page_id=>1355
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697411340534937023)
,p_parent_id=>wwv_flow_imp.id(697409339814924747)
,p_short_name=>'Employee Payslip'
,p_link=>'f?p=&APP_ID.:1356:&SESSION.::&DEBUG.:::'
,p_page_id=>1356
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697413353240969500)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Employees with Negative Netpay'
,p_link=>'f?p=&APP_ID.:1506:&SESSION.::&DEBUG.:::'
,p_page_id=>1506
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697416144437009345)
,p_parent_id=>wwv_flow_imp.id(529833782058140725)
,p_short_name=>'Employee Negative Netpay Summary'
,p_link=>'f?p=&APP_ID.:1507:&SESSION.::&DEBUG.:::'
,p_page_id=>1507
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697418253944028397)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of Netpay Disbursements'
,p_link=>'f?p=&APP_ID.:52:&SESSION.::&DEBUG.:::'
,p_page_id=>52
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697420164418163063)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Mass Payroll Email'
,p_link=>'f?p=&APP_ID.:1231:&SESSION.::&DEBUG.:::'
,p_page_id=>1231
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697423077780217790)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Cancelled Payments'
,p_link=>'f?p=&APP_ID.:1330:&SESSION.::&DEBUG.:::'
,p_page_id=>1330
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697432310036247586)
,p_parent_id=>wwv_flow_imp.id(697777476219726804)
,p_short_name=>'eNIB'
,p_link=>'f?p=&APP_ID.:1403:&SESSION.::&DEBUG.:::'
,p_page_id=>1403
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697437876574281592)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Detailed Financial Journal'
,p_link=>'f?p=&APP_ID.:6001:&SESSION.::&DEBUG.:::'
,p_page_id=>6002
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697440397981295246)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Summary Journal'
,p_link=>'f?p=&APP_ID.:6003:&SESSION.::&DEBUG.:::'
,p_page_id=>6003
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697748437545742551)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Investigation Manager'
,p_link=>'f?p=&APP_ID.:4090:&SESSION.::&DEBUG.:::'
,p_page_id=>4090
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697764261612626282)
,p_parent_id=>wwv_flow_imp.id(697777476219726804)
,p_short_name=>'Payroll Diagnosis'
,p_link=>'f?p=&APP_ID.:1500:&SESSION.::&DEBUG.:::'
,p_page_id=>1500
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697777476219726804)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Utilities'
,p_link=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
,p_page_id=>23
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697778531741730189)
,p_parent_id=>wwv_flow_imp.id(697777476219726804)
,p_short_name=>'Generator'
,p_link=>'f?p=&APP_ID.:1401:&SESSION.::&DEBUG.:::'
,p_page_id=>1401
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697785538645744052)
,p_parent_id=>wwv_flow_imp.id(3726630526653972335)
,p_short_name=>'Configure Jobs'
,p_link=>'f?p=&APP_ID.:61:&SESSION.::&DEBUG.:::'
,p_page_id=>61
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697785746324747394)
,p_parent_id=>wwv_flow_imp.id(697777476219726804)
,p_short_name=>'Generate Leave Entitlements'
,p_link=>'f?p=&APP_ID.:1402:&SESSION.::&DEBUG.:::'
,p_page_id=>1402
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697787614681764803)
,p_parent_id=>wwv_flow_imp.id(697777476219726804)
,p_short_name=>'Timesheet Loading'
,p_link=>'f?p=&APP_ID.:1371:&SESSION.::&DEBUG.:::'
,p_page_id=>1371
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697788839410772763)
,p_parent_id=>wwv_flow_imp.id(697777476219726804)
,p_short_name=>'Remuneration Changes'
,p_link=>'f?p=&APP_ID.:1470:&SESSION.::&DEBUG.:::'
,p_page_id=>1470
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697796481412891199)
,p_parent_id=>wwv_flow_imp.id(697777476219726804)
,p_short_name=>'System No. Configuration'
,p_link=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::'
,p_page_id=>16
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697803994034930428)
,p_parent_id=>wwv_flow_imp.id(697777476219726804)
,p_short_name=>'Notification Scheduler'
,p_link=>'f?p=&APP_ID.:308:&SESSION.::&DEBUG.:::'
,p_page_id=>308
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697804764210961380)
,p_parent_id=>wwv_flow_imp.id(697777476219726804)
,p_short_name=>'Move Reporting To'
,p_link=>'f?p=&APP_ID.:1025:&SESSION.::&DEBUG.:::'
,p_page_id=>1025
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697805401581024141)
,p_parent_id=>wwv_flow_imp.id(697777476219726804)
,p_short_name=>'Move Position Location'
,p_link=>'f?p=&APP_ID.:1026:&SESSION.::&DEBUG.:::'
,p_page_id=>1026
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697807535245142817)
,p_parent_id=>wwv_flow_imp.id(697777476219726804)
,p_short_name=>'Move Payment Frequency'
,p_link=>'f?p=&APP_ID.:1001:&SESSION.::&DEBUG.:::'
,p_page_id=>1001
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697808200553151144)
,p_parent_id=>wwv_flow_imp.id(697777476219726804)
,p_short_name=>'Load Previous YTD'
,p_link=>'f?p=&APP_ID.:6100:&SESSION.::&DEBUG.:::'
,p_page_id=>6100
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697808960080157540)
,p_parent_id=>wwv_flow_imp.id(697777476219726804)
,p_short_name=>'Load Individual & Employee'
,p_link=>'f?p=&APP_ID.:6120:&SESSION.::&DEBUG.:::'
,p_page_id=>6120
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697809681267189759)
,p_parent_id=>wwv_flow_imp.id(697777476219726804)
,p_short_name=>'Load YTD Leave'
,p_link=>'f?p=&APP_ID.:6180:&SESSION.::&DEBUG.:::'
,p_page_id=>6180
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697810472368196940)
,p_parent_id=>wwv_flow_imp.id(697777476219726804)
,p_short_name=>'MMG Disbursement'
,p_link=>'f?p=&APP_ID.:1003:&SESSION.::&DEBUG.:::'
,p_page_id=>1003
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697811476259230761)
,p_parent_id=>wwv_flow_imp.id(697777476219726804)
,p_short_name=>'Mass Employee Inter-Organisation Transfer'
,p_link=>'f?p=&APP_ID.:491:&SESSION.::&DEBUG.:::'
,p_page_id=>491
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697814204182250681)
,p_parent_id=>wwv_flow_imp.id(697777476219726804)
,p_short_name=>'Summary Timesheet Load'
,p_link=>'f?p=&APP_ID.:161:&SESSION.::&DEBUG.:::'
,p_page_id=>161
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697815281825260568)
,p_parent_id=>wwv_flow_imp.id(697777476219726804)
,p_short_name=>'Error Log'
,p_link=>'f?p=&APP_ID.:1360:&SESSION.::&DEBUG.:::'
,p_page_id=>1360
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697821159078285101)
,p_parent_id=>wwv_flow_imp.id(697777476219726804)
,p_short_name=>'System Process Logs'
,p_link=>'f?p=&APP_ID.:1361:&SESSION.::&DEBUG.:::'
,p_page_id=>1361
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697825465417299378)
,p_parent_id=>wwv_flow_imp.id(697777476219726804)
,p_short_name=>'User Login Log'
,p_link=>'f?p=&APP_ID.:1362:&SESSION.::&DEBUG.:::'
,p_page_id=>1362
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697834984730319114)
,p_parent_id=>wwv_flow_imp.id(697777476219726804)
,p_short_name=>'View Tips'
,p_link=>'f?p=&APP_ID.:1426:&SESSION.::&DEBUG.:::'
,p_page_id=>1426
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(697994683982536186)
,p_parent_id=>wwv_flow_imp.id(676574960361094450)
,p_short_name=>'Individual Qualifications'
,p_link=>'f?p=&APP_ID.:1272:&SESSION.::&DEBUG.:::'
,p_page_id=>1272
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(698025386082724347)
,p_parent_id=>wwv_flow_imp.id(676574960361094450)
,p_short_name=>'Individual Hobbies'
,p_link=>'f?p=&APP_ID.:1274:&SESSION.::&DEBUG.:::'
,p_page_id=>1274
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(698039289237833332)
,p_parent_id=>wwv_flow_imp.id(676574960361094450)
,p_short_name=>'References'
,p_link=>'f?p=&APP_ID.:1275:&SESSION.::&DEBUG.:::'
,p_page_id=>1275
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(698042402995841445)
,p_parent_id=>wwv_flow_imp.id(697777476219726804)
,p_short_name=>'Transaction Approvals'
,p_link=>'f?p=&APP_ID.:1482:&SESSION.::&DEBUG.:::'
,p_page_id=>1482
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(698046639783859329)
,p_parent_id=>wwv_flow_imp.id(697777476219726804)
,p_short_name=>'User Productivity'
,p_link=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:::'
,p_page_id=>26
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(698047525506874445)
,p_parent_id=>wwv_flow_imp.id(697777476219726804)
,p_short_name=>'Notification History'
,p_link=>'f?p=&APP_ID.:71:&SESSION.::&DEBUG.:::'
,p_page_id=>71
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(698061839564126281)
,p_parent_id=>wwv_flow_imp.id(676574960361094450)
,p_short_name=>'Relatives/Friends'
,p_link=>'f?p=&APP_ID.:1276:&SESSION.::&DEBUG.:::'
,p_page_id=>1276
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(698161411941580426)
,p_parent_id=>wwv_flow_imp.id(697777476219726804)
,p_short_name=>'Workflow Configuration'
,p_link=>'f?p=&APP_ID.:1385:&SESSION.::&DEBUG.:::'
,p_page_id=>1385
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(698164179851589802)
,p_parent_id=>wwv_flow_imp.id(697777476219726804)
,p_short_name=>'Workflow Transactions'
,p_link=>'f?p=&APP_ID.:1388:&SESSION.::&DEBUG.:::'
,p_page_id=>1388
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(698165470192600098)
,p_parent_id=>wwv_flow_imp.id(697777476219726804)
,p_short_name=>'Outstanding Workflows'
,p_link=>'f?p=&APP_ID.:1481:&SESSION.::&DEBUG.:::'
,p_page_id=>1481
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(698175520877717170)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Manual Timesheet Mangement'
,p_link=>'f?p=&APP_ID.:84:&SESSION.::&DEBUG.:::'
,p_page_id=>84
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(698182244249775915)
,p_parent_id=>wwv_flow_imp.id(698175520877717170)
,p_short_name=>'Configure Manual Timesheet'
,p_link=>'f?p=&APP_ID.:78:&SESSION.::&DEBUG.:::'
,p_page_id=>78
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(698192275253843465)
,p_parent_id=>wwv_flow_imp.id(670506274344058227)
,p_short_name=>'Configure Employment History'
,p_link=>'f?p=&APP_ID.:544:&SESSION.::&DEBUG.:::'
,p_page_id=>544
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(698192452476855188)
,p_parent_id=>wwv_flow_imp.id(670506274344058227)
,p_short_name=>'Applicant Address'
,p_link=>'f?p=&APP_ID.:541:&SESSION.::&DEBUG.:::'
,p_page_id=>541
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(698195907139883787)
,p_parent_id=>wwv_flow_imp.id(670506274344058227)
,p_short_name=>'Applicant Qualifications'
,p_link=>'f?p=&APP_ID.:542:&SESSION.::&DEBUG.:::'
,p_page_id=>542
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(698198083476899869)
,p_parent_id=>wwv_flow_imp.id(670506274344058227)
,p_short_name=>'Applicant References'
,p_link=>'f?p=&APP_ID.:506:&SESSION.::&DEBUG.:::'
,p_page_id=>506
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(698204327728936914)
,p_parent_id=>wwv_flow_imp.id(670506274344058227)
,p_short_name=>'Applicant Hobbies'
,p_link=>'f?p=&APP_ID.:545:&SESSION.::&DEBUG.:::'
,p_page_id=>545
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(698206719171957764)
,p_parent_id=>wwv_flow_imp.id(670506274344058227)
,p_short_name=>'Applicant''s Job Application'
,p_link=>'f?p=&APP_ID.:549:&SESSION.::&DEBUG.:::'
,p_page_id=>549
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3189701625438594291)
,p_parent_id=>wwv_flow_imp.id(3727012641434264707)
,p_short_name=>'Deduction Code'
,p_link=>'f?p=&APP_ID.:1221:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1221
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3381649279761575662)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of Employees'' Salaries'
,p_link=>'f?p=&APP_ID.:246:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>246
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3381675124354596083)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of Employees'' Remunerations'
,p_link=>'f?p=&APP_ID.:247:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>247
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3381698241132612092)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of Employees'' Leave Entitlements'
,p_link=>'f?p=&APP_ID.:248:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>248
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3381784618653660853)
,p_parent_id=>wwv_flow_imp.id(3381649279761575662)
,p_short_name=>'Create/Edit Employee Salary'
,p_link=>'f?p=&APP_ID.:13000:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13000
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3381982762791751366)
,p_parent_id=>wwv_flow_imp.id(3381698241132612092)
,p_short_name=>'Create/Edit Employee Leave Entitlement'
,p_link=>'f?p=&APP_ID.:13002:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13002
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3382228526607678023)
,p_short_name=>'Create/Edit Competency Levels'
,p_link=>'f?p=&APP_ID.:13022:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13022
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3388780446857963317)
,p_parent_id=>wwv_flow_imp.id(3404592104620783082)
,p_short_name=>'Create/Edit Competency/Skill'
,p_link=>'f?p=&APP_ID.:13021:&SESSION.::&DEBUG.:::'
,p_page_id=>13021
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3397678963009844234)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of Job Description'
,p_link=>'f?p=&APP_ID.:13010:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13010
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3404519604425731787)
,p_parent_id=>wwv_flow_imp.id(3397678963009844234)
,p_short_name=>'Create/Edit Job Description Details'
,p_link=>'f?p=&APP_ID.:13011:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13011
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3404592104620783082)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of Competencies & Skills'
,p_link=>'f?p=&APP_ID.:13020:&SESSION.::&DEBUG.:::'
,p_page_id=>13020
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3405289121754891452)
,p_parent_id=>wwv_flow_imp.id(3726630526653972335)
,p_short_name=>'Create/Edit Jobs'
,p_link=>'f?p=&APP_ID.:1307:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1307
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3405437225493963262)
,p_parent_id=>wwv_flow_imp.id(3810962128622719823)
,p_short_name=>'Create/Edit Position'
,p_link=>'f?p=&APP_ID.:1301:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1301
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3405534673810157360)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of Position Descriptions'
,p_link=>'f?p=&APP_ID.:13015:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13015
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3405619229306172954)
,p_parent_id=>wwv_flow_imp.id(3405534673810157360)
,p_short_name=>'Create/Edit Position Description Details'
,p_link=>'f?p=&APP_ID.:13016:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13016
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3474304444451302362)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of NetPay Disbursements'
,p_link=>'f?p=&APP_ID.:9981:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>9981
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3474305591816302358)
,p_parent_id=>wwv_flow_imp.id(3474304444451302362)
,p_short_name=>'Create/Edit NetPay Disbursement'
,p_link=>'f?p=&APP_ID.:9982:&SESSION.::&DEBUG.:::'
,p_page_id=>9982
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3478701486220467772)
,p_parent_id=>wwv_flow_imp.id(3578148973382354726)
,p_short_name=>'Create/Edit Shift Rotation'
,p_link=>'f?p=&FLOW_ID.:12816:&SESSION.'
,p_page_id=>12816
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3488697284559881914)
,p_parent_id=>wwv_flow_imp.id(3338737377678612108)
,p_short_name=>'  Create/Edit Employees'
,p_link=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:::'
,p_page_id=>1281
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3491396856667652358)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of Activity'
,p_link=>'f?p=&FLOW_ID.:1435:&SESSION.'
,p_page_id=>1435
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3491399467107662175)
,p_parent_id=>wwv_flow_imp.id(3491396856667652358)
,p_short_name=>'Create/Edit Activty'
,p_link=>'f?p=&FLOW_ID.:1436:&SESSION.'
,p_page_id=>1436
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3491631453360220526)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of Employee Document(s)/Licenses(s)'
,p_link=>'f?p=&APP_ID.:12819:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>12819
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3578148973382354726)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of Shift Rotation'
,p_link=>'f?p=&APP_ID.:12815:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>12815
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3578299537863455400)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of Swapped Shifts'
,p_link=>'f?p=&APP_ID.:182:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>182
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3578339384274473968)
,p_parent_id=>wwv_flow_imp.id(3578299537863455400)
,p_short_name=>'Create/Edit Swap Shifts'
,p_link=>'f?p=&APP_ID.:186:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>186
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3601917382692289332)
,p_short_name=>'ACH Master'
,p_link=>'f?p=&APP_ID.:201:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>201
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3602244209445402670)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing ACH Configuration'
,p_link=>'f?p=&FLOW_ID.:213:&SESSION.'
,p_page_id=>213
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3607331394213944814)
,p_parent_id=>wwv_flow_imp.id(3602244209445402670)
,p_short_name=>'Create/Edit ACH Configuration'
,p_link=>'f?p=&FLOW_ID.:218:&SESSION.'
,p_page_id=>218
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3610719490462788246)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of Shifts'
,p_link=>'f?p=&APP_ID.:1335:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1335
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3622157922297654337)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Assign Employee Rotation'
,p_link=>'f?p=&FLOW_ID.:119:&SESSION.'
,p_page_id=>119
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3687507865775611917)
,p_parent_id=>wwv_flow_imp.id(3687508411093621484)
,p_short_name=>'Create/Edit Employee Accident Reports'
,p_link=>'f?p=&APP_ID.:4005:&SESSION.::&DEBUG.:::'
,p_page_id=>4005
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3687508411093621484)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Employee Accident Reports'
,p_link=>'f?p=&APP_ID.:4006:&SESSION.::&DEBUG.:::'
,p_page_id=>4006
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3687520603118707641)
,p_parent_id=>wwv_flow_imp.id(3687522463584722012)
,p_short_name=>'Create/Edit Risk Assessment'
,p_link=>'f?p=&FLOW_ID.:4013:&SESSION.'
,p_page_id=>4013
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3687522463584722012)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'General Risk Assessment'
,p_link=>'f?p=&APP_ID.:4012:&SESSION.::&DEBUG.:::'
,p_page_id=>4012
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3687532321751815436)
,p_parent_id=>wwv_flow_imp.id(3687533647440824499)
,p_short_name=>'Create/Edit COSHH Risk Assessment'
,p_link=>'f?p=&FLOW_ID.:4008:&SESSION.'
,p_page_id=>4008
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3687533647440824499)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'COSHH Risk Assessment Records'
,p_link=>'f?p=&FLOW_ID.:4011:&SESSION.'
,p_page_id=>4011
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3687557563117093110)
,p_parent_id=>wwv_flow_imp.id(3687558582992101425)
,p_short_name=>'Create/Edit Job Hazards Analysis'
,p_link=>'f?p=&FLOW_ID.:4009:&SESSION.'
,p_page_id=>4009
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3687558582992101425)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Job Hazards Analysis'
,p_link=>'f?p=&FLOW_ID.:4010:&SESSION.'
,p_page_id=>4010
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3687967568868526268)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Risk Registers'
,p_link=>'f?p=&APP_ID.:4078:&SESSION.::&DEBUG.:::'
,p_page_id=>4078
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3687989473674819437)
,p_parent_id=>wwv_flow_imp.id(3688127855915384139)
,p_short_name=>'Create/Edit PPE REGISTER'
,p_link=>'f?p=&FLOW_ID.:4081:&SESSION.'
,p_page_id=>4081
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3688127855915384139)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Employee with PPE'
,p_link=>'f?p=&FLOW_ID.:4080:&SESSION.'
,p_page_id=>4080
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3688301680556159729)
,p_parent_id=>wwv_flow_imp.id(3688302975746173240)
,p_short_name=>'Create/Edit Incident'
,p_link=>'f?p=&APP_ID.:4051:&SESSION.::&DEBUG.:::'
,p_page_id=>4051
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3688302975746173240)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Incidents'
,p_link=>'f?p=&APP_ID.:4050:&SESSION.::&DEBUG.:::'
,p_page_id=>4050
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3688724589736637295)
,p_short_name=>'Listing of Depreciation Rules'
,p_link=>'f?p=&APP_ID.:691:&SESSION.'
,p_page_id=>691
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3689814930992576595)
,p_short_name=>'Listing of Category Groups'
,p_link=>'f?p=&APP_ID.:370:&SESSION.'
,p_page_id=>370
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3689837443844612995)
,p_short_name=>'Listing of Inventory Organisations'
,p_link=>'f?p=&APP_ID.:211:&SESSION.'
,p_page_id=>211
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3689861268329298778)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Vehicle Accident Report'
,p_link=>'f?p=&APP_ID.:4020:&SESSION.::&DEBUG.:::'
,p_page_id=>4020
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3690202386672327027)
,p_parent_id=>wwv_flow_imp.id(3689861268329298778)
,p_short_name=>'Create/Edit Vehicle Accident Report'
,p_link=>'f?p=&APP_ID.:4014:&SESSION.::&DEBUG.:::'
,p_page_id=>4014
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3690222435197485698)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Accident Register'
,p_link=>'f?p=&APP_ID.:4052:&SESSION.::&DEBUG.:::'
,p_page_id=>4052
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3690228219227543920)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Minor Vehicle Accidents'
,p_link=>'f?p=&FLOW_ID.:4060:&SESSION.'
,p_page_id=>4060
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3690232220116568681)
,p_parent_id=>wwv_flow_imp.id(3690228219227543920)
,p_short_name=>'Create/ Edit Minor Vehicle Accident'
,p_link=>'f?p=&FLOW_ID.:4066:&SESSION.'
,p_page_id=>4066
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3690245203837645033)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Driver Assessment'
,p_link=>'f?p=&FLOW_ID.:4062:&SESSION.'
,p_page_id=>4062
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3690247483770658290)
,p_parent_id=>wwv_flow_imp.id(3690245203837645033)
,p_short_name=>'Create/Edit Driver Assessment'
,p_link=>'f?p=&FLOW_ID.:4063:&SESSION.'
,p_page_id=>4063
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3690262361911796256)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Contract Safety Gears'
,p_link=>'f?p=&FLOW_ID.:4076:&SESSION.'
,p_page_id=>4076
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3690326486868011083)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Oil and Chemical Register'
,p_link=>'f?p=&FLOW_ID.:4017:&SESSION.'
,p_page_id=>4017
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3690327796770104966)
,p_parent_id=>wwv_flow_imp.id(3690326486868011083)
,p_short_name=>'Create/Edit Oil And Chemical'
,p_link=>'f?p=&FLOW_ID.:4018:&SESSION.'
,p_page_id=>4018
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3692156495938120461)
,p_parent_id=>wwv_flow_imp.id(3690202386672327027)
,p_short_name=>'Create/Edit Accident Detail'
,p_link=>'f?p=&FLOW_ID.:4015:&SESSION.'
,p_page_id=>4015
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3692160976487190029)
,p_parent_id=>wwv_flow_imp.id(3690202386672327027)
,p_short_name=>'Create/Edit OS&H Unit'
,p_link=>'f?p=&FLOW_ID.:4016:&SESSION.'
,p_page_id=>4016
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3692168174796539346)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of Manual TimeSheet Entries'
,p_link=>'f?p=&APP_ID.:125:&SESSION.'
,p_page_id=>125
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3693361173789121227)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Frequently Asked Question & Issues'
,p_link=>'f?p=&APP_ID.:1444:&SESSION.'
,p_page_id=>1444
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3693673314435845606)
,p_short_name=>'Listing of Asset Item Trans History'
,p_link=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:::'
,p_page_id=>35
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3693700498284037866)
,p_short_name=>'Listing of Non Purchased Items by Period'
,p_link=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.:::'
,p_page_id=>40
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3694059540192210143)
,p_short_name=>'Browse Position Details'
,p_link=>'f?p=&APP_ID.:106:&SESSION.'
,p_page_id=>106
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3695403564858030274)
,p_short_name=>'Listing of Non-Transacted'
,p_link=>'f?p=&FLOW_ID.:642:&SESSION.'
,p_page_id=>642
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3696016896326998272)
,p_parent_id=>wwv_flow_imp.id(697777476219726804)
,p_short_name=>'Listing of User Manual Entries'
,p_link=>'f?p=&APP_ID.:132:&SESSION.::&DEBUG.:::'
,p_page_id=>132
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3696018090423998273)
,p_parent_id=>wwv_flow_imp.id(3696016896326998272)
,p_short_name=>'Create/Edit User Manual Entries'
,p_link=>'f?p=&APP_ID.:134:&SESSION.::&DEBUG.:::'
,p_page_id=>134
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3704716571386236027)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Employee Items'
,p_link=>'f?p=&APP_ID.:111:&SESSION.::&DEBUG.:::'
,p_page_id=>111
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3706876553317041964)
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:101100:&SESSION.'
,p_page_id=>101100
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3710155619080221600)
,p_parent_id=>wwv_flow_imp.id(3710172785066229654)
,p_short_name=>'Create/Edit Employee Tasks (Per Employees)'
,p_link=>'f?p=&APP_ID.:159:&SESSION.'
,p_page_id=>159
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3710172785066229654)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of Employee Tasks (Per Employees)'
,p_link=>'f?p=&APP_ID.:158:&SESSION.'
,p_page_id=>158
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3710191366727240548)
,p_parent_id=>wwv_flow_imp.id(3710213204995250350)
,p_short_name=>'Create/Edit Employee Tasks (All Employees)'
,p_link=>'f?p=&APP_ID.:157:&SESSION.'
,p_page_id=>157
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3710213204995250350)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of Employee Tasks (All Employees)'
,p_link=>'f?p=&APP_ID.:156:&SESSION.'
,p_page_id=>156
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3714313048571936016)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of Change Employments'
,p_link=>'f?p=&APP_ID.:136:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>136
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3714580343873083110)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of Confirmation Movements'
,p_link=>'f?p=&APP_ID.:697:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>697
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3714675977429114376)
,p_parent_id=>wwv_flow_imp.id(3714580343873083110)
,p_short_name=>'Create /Edit Confirmation Movement'
,p_link=>'f?p=&APP_ID.:698:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>698
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3714796944312181466)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of Supplemental Movements'
,p_link=>'f?p=&APP_ID.:699:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>699
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3719425034680550041)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of Employee Absences'
,p_link=>'f?p=&APP_ID.:191:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>191
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3719955693665191675)
,p_parent_id=>wwv_flow_imp.id(5467429987065774674)
,p_short_name=>'Listing of Broadcasts'
,p_link=>'f?p=&FLOW_ID.:90:&SESSION.'
,p_page_id=>90
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3719989425128707062)
,p_parent_id=>wwv_flow_imp.id(3719955693665191675)
,p_short_name=>'Create/Edit Broadcast'
,p_link=>'f?p=&FLOW_ID.:91:&SESSION.'
,p_page_id=>91
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3725926973996212312)
,p_parent_id=>wwv_flow_imp.id(3714796944312181466)
,p_short_name=>'Create/Edit Supplemental Movement'
,p_link=>'f?p=&APP_ID.:700:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>700
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726050365113257369)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of Movement Extensions'
,p_link=>'f?p=&APP_ID.:701:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>701
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726215357130331000)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of Employee Separations'
,p_link=>'f?p=&APP_ID.:1414:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1414
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726258449877350784)
,p_parent_id=>wwv_flow_imp.id(3726215357130331000)
,p_short_name=>'Create/Edit Employee Separation'
,p_link=>'f?p=&APP_ID.:1415:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1415
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726318337479397511)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of New Employments'
,p_link=>'f?p=&APP_ID.:108:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>108
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726467725206690836)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of Grade Scales'
,p_link=>'f?p=&FLOW_ID.:1308:&SESSION.'
,p_page_id=>1308
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726630526653972335)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of Jobs'
,p_link=>'f?p=&APP_ID.:1306:&SESSION.'
,p_page_id=>1306
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726677369093509903)
,p_parent_id=>wwv_flow_imp.id(3738688931929204855)
,p_short_name=>'Create/Edit Change Position'
,p_link=>'f?p=&APP_ID.:51:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>51
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726855512191061265)
,p_short_name=>'Competencies '
,p_link=>'f?p=&APP_ID.:1492:&SESSION.'
,p_page_id=>1492
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3726979866648025875)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Leave Roster'
,p_link=>'f?p=&APP_ID.:60:&SESSION.'
,p_page_id=>60
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3727010628388248676)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of Payroll Income Codes'
,p_link=>'f?p=&APP_ID.:1210:&SESSION.::&DEBUG.:::'
,p_page_id=>1210
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3727011464883256805)
,p_parent_id=>wwv_flow_imp.id(3727010628388248676)
,p_short_name=>'Create/Edit Payroll Income Codes'
,p_link=>'f?p=&APP_ID.:1211:&SESSION.::&DEBUG.:::'
,p_page_id=>1211
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3727012641434264707)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of Employee Payroll Deduction Codes'
,p_link=>'f?p=&FLOW_ID.:1220:&SESSION.'
,p_page_id=>1220
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3727014267275280965)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>' Listing of Employee-Non Statutory Deductions'
,p_link=>'f?p=&FLOW_ID.:1296:&SESSION.'
,p_page_id=>1296
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3727015485355289013)
,p_parent_id=>wwv_flow_imp.id(3727014267275280965)
,p_short_name=>'Create/Edit Non-Statutory Deduction'
,p_link=>'f?p=&APP_ID.:1297:&SESSION.::&DEBUG.:::'
,p_page_id=>1297
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3727017085583300216)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of Job Related Tasks'
,p_link=>'f?p=&FLOW_ID.:1341:&SESSION.'
,p_page_id=>1341
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3727018184732305981)
,p_parent_id=>wwv_flow_imp.id(3727017085583300216)
,p_short_name=>'Create/Edit Job Related Tasks'
,p_link=>'f?p=&FLOW_ID.:1342:&SESSION.'
,p_page_id=>1342
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3727045654170489678)
,p_parent_id=>wwv_flow_imp.id(3726979866648025875)
,p_short_name=>'Create/Edit Leave Roster'
,p_link=>'f?p=&FLOW_ID.:33:&SESSION.'
,p_page_id=>33
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3727069766280649169)
,p_short_name=>'Listing of Location Shift Rule'
,p_link=>'f?p=&APP_ID.:62:&SESSION.'
,p_page_id=>62
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3727390777261377174)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Timesheet Manager'
,p_link=>'f?p=&APP_ID.:126:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>126
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3729820394038624120)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of Medical History'
,p_link=>'f?p=&FLOW_ID.:1408:&SESSION.'
,p_page_id=>1408
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3738688931929204855)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of Change Positions'
,p_link=>'f?p=&APP_ID.:1412:&SESSION.::&DEBUG.:::'
,p_page_id=>1412
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3756029569105545240)
,p_parent_id=>wwv_flow_imp.id(3756058094943556274)
,p_short_name=>'Create/Edit Health Surcharge'
,p_link=>'f?p=&APP_ID.:173:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>173
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3756058094943556274)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of Health Surcharge '
,p_link=>'f?p=&APP_ID.:172:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>172
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3758679088882214052)
,p_parent_id=>wwv_flow_imp.id(5467429987065774674)
,p_short_name=>'Productivity Detail Report'
,p_link=>'f?p=&APP_ID.:192:&SESSION.::&DEBUG.:::'
,p_page_id=>192
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3759381747244230331)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'End Of Year Reports'
,p_link=>'f?p=&APP_ID.:194:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>194
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3759410378242284832)
,p_parent_id=>wwv_flow_imp.id(3714313048571936016)
,p_short_name=>'Create/Edit Change Employment'
,p_link=>'f?p=&APP_ID.:137:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>137
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3763583976284234796)
,p_short_name=>'Listing of Media'
,p_link=>'f?p=&FLOW_ID.:181:&SESSION.'
,p_page_id=>181
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3763590064522272361)
,p_short_name=>'Create/Edit Media'
,p_link=>'f?p=&FLOW_ID.:188:&SESSION.'
,p_page_id=>188
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3770926170776181747)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Payroll Compare'
,p_link=>'f?p=&APP_ID.:1249:&SESSION.::&DEBUG.:::'
,p_page_id=>1249
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3772757507632715168)
,p_parent_id=>wwv_flow_imp.id(3776957328247315495)
,p_short_name=>'Create/Edit Grievance Action'
,p_link=>'f?p=&APP_ID.:184:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>184
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3776957328247315495)
,p_parent_id=>wwv_flow_imp.id(3776985206296330373)
,p_short_name=>'Create/Edit Employee Grievance'
,p_link=>'f?p=&APP_ID.:175:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>175
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3776985206296330373)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of Employee Grievances'
,p_link=>'f?p=&APP_ID.:174:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>174
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3778898075436983816)
,p_parent_id=>wwv_flow_imp.id(3778899780068016335)
,p_short_name=>'Create/Edit Health Surcharges'
,p_link=>'f?p=&FLOW_ID.:167:&SESSION.'
,p_page_id=>167
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3778899780068016335)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of Health Surcharges'
,p_link=>'f?p=&FLOW_ID.:166:&SESSION.'
,p_page_id=>166
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3779520648593997463)
,p_parent_id=>wwv_flow_imp.id(3726050365113257369)
,p_short_name=>'Create/Edit Movement Extension'
,p_link=>'f?p=&APP_ID.:702:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>702
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3807498083011094002)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of Life Certificates'
,p_link=>'f?p=&FLOW_ID.:57:&SESSION.'
,p_page_id=>57
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3810962128622719823)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of Positions'
,p_link=>'f?p=&FLOW_ID.:1300:&SESSION.'
,p_page_id=>1300
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3845963587457789971)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Employees Payments'
,p_link=>'f?p=&APP_ID.:8003:&SESSION.::&DEBUG.:::'
,p_page_id=>8003
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3846049867374348999)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Employees Pension Deductions'
,p_link=>'f?p=&APP_ID.:8005:&SESSION.::&DEBUG.:::'
,p_page_id=>8005
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3846062128638421685)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Employees Medical Deductions'
,p_link=>'f?p=&APP_ID.:8006:&SESSION.::&DEBUG.:::'
,p_page_id=>8006
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3846244453240809952)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Listing of Employees Deductions'
,p_link=>'f?p=&APP_ID.:8008:&SESSION.::&DEBUG.:::'
,p_page_id=>8008
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3846258114084972631)
,p_short_name=>'PAYE for Employees By Period'
,p_link=>'f?p=&FLOW_ID.:8011:&SESSION.'
,p_page_id=>8011
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3846397211271805240)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'NIB/SS Contribution Report'
,p_link=>'f?p=&APP_ID.:8012:&SESSION.::&DEBUG.:::'
,p_page_id=>8012
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3846632472926527999)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Overtime Summary'
,p_link=>'f?p=&APP_ID.:8009:&SESSION.::&DEBUG.:::'
,p_page_id=>8009
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3846669537223159070)
,p_parent_id=>wwv_flow_imp.id(3846397211271805240)
,p_short_name=>'Employees Above 60 NIB/SS Contribution'
,p_link=>'f?p=&APP_ID.:8013:&SESSION.::&DEBUG.:::'
,p_page_id=>8013
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3854310436058688633)
,p_parent_id=>wwv_flow_imp.id(697777476219726804)
,p_short_name=>'Republic Bank Accounts'
,p_link=>'f?p=&APP_ID.:8031:&SESSION.::&DEBUG.:::'
,p_page_id=>8031
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(5467429987065774674)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Administration'
,p_link=>'f?p=&FLOW_ID.:23:&SESSION.'
,p_page_id=>23
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(6035378183470188869)
,p_parent_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Help'
,p_link=>'f?p=&FLOW_ID.:25:&SESSION.'
,p_page_id=>25
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10988598740458063085)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp.component_end;
end;
/
