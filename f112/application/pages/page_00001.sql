prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'frmHRPAYROLLmainpage'
,p_alias=>'HOME'
,p_step_title=>'PeoplePay HRMIS ERP'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3297885541186705980)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Hide table_name column from report */',
'#TABLE_NAME {display:none;}',
'td[headers=''TABLE_NAME''] {display:none;}',
'',
'',
'',
'.t-Alert--colorBG.t-Alert--info {',
'    background-color: white; }',
'.t-Alert--info .t-Alert-icon .t-Icon {',
'    color: blue;}',
'',
'.t-Alert--colorBG.t-Alert--danger {',
'    background-color: white;}',
'.t-Alert--danger .t-Alert-icon .t-Icon {',
'    color: red;}',
'',
'.t-Alert--colorBG.t-Alert--success {',
'    background-color: white;}',
'.t-Alert--success .t-Alert-icon .t-Icon {',
'    color: green;}',
'',
'.t-Alert--colorBG.t-Alert--warning {',
'    background-color: white;}',
'.t-Alert--warning .t-Alert-icon .t-Icon {',
'    color: orange;}',
'',
'.t-Alert--horizontal .t-Alert-title {',
'    font-weight: bold;',
'    text-decoration:underline;',
'}',
'',
'.t-Alert-body{',
'color: maroon;',
'    font-size: larger;',
'    font-weight: 600;',
'}',
'',
'',
'',
'#R33541375515918847{',
'  animation: shake 0.9s cubic-bezier(.36,.07,.19,.97) both;',
'    animation-delay: 2s;',
'     Animation-iteration-count: 3;',
'  transform: translate3d(0, 0, 0);',
'  backface-visibility: hidden;',
'  perspective: 1000px;',
'}',
'',
'@keyframes shake {',
'  10%, 90% {',
'    transform: translate3d(-1px, 0, 0);',
'  }',
'  ',
'  20%, 80% {',
'    transform: translate3d(2px, 0, 0);',
'  }',
'',
'  30%, 50%, 70% {',
'    transform: translate3d(-4px, 0, 0);',
'  }',
'',
'  40%, 60% {',
'    transform: translate3d(4px, 0, 0);',
'  }',
'}',
'',
'#R328932812159983978{',
'    padding: 10px;',
'    font-size: medium;',
'    font-weight: bold;',
'    color: brown;',
'}',
'',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279325359120677334)
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3185491254036928028)
,p_name=>'Holiday'
,p_template=>4501440665235496320
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT',
'    holiday_descrip AS alert_title,',
'    holiday_descrip|| '' is set for ''|| TO_CHAR(holiday_date,''FMDay'')||'' ''|| TO_CHAR(holiday_date, ''FMMonth DD, YYYY'' )|| '' its a''',
'            ||',
'        CASE',
'            WHEN tentative_status = 1 THEN',
'                '' tentative holiday. Please remember to confirm it by removing this status and set it for calculation!''',
'            ELSE',
'                '' confirmed holiday.''',
'        END AS alert_desc,',
'    NULL AS alert_action,',
'    ''info'' AS alert_type',
'from HR_HCF_HOLIDAY a',
'where holiday_date between trunc(current_date) and trunc(current_date)+7',
'and org_id =:APP_ORG_ID',
'and country =:APP_COUNTRY'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2882902941739462796
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3185491244352928027)
,p_query_column_id=>1
,p_column_alias=>'ALERT_TITLE'
,p_column_display_sequence=>1
,p_column_heading=>'Alert Title'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3180329766067887476)
,p_query_column_id=>2
,p_column_alias=>'ALERT_DESC'
,p_column_display_sequence=>2
,p_column_heading=>'Alert Desc'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3180329718735887475)
,p_query_column_id=>3
,p_column_alias=>'ALERT_ACTION'
,p_column_display_sequence=>3
,p_column_heading=>'Alert Action'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3180329609086887474)
,p_query_column_id=>4
,p_column_alias=>'ALERT_TYPE'
,p_column_display_sequence=>4
,p_column_heading=>'Alert Type'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3191917117917070170)
,p_name=>'Alert'
,p_template=>4501440665235496320
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'   -- ID,',
'  TITLE AS ALERT_TITLE',
',BROADCAST AS ALERT_DESC',
',NULL AS ALERT_ACTION',
',CASE',
'  WHEN CATEGORY = ''Information'' THEN ''info''',
'  WHEN CATEGORY = ''Warning'' THEN ''warning'' ',
'  WHEN CATEGORY = ''Success'' THEN ''success''',
'  WHEN CATEGORY = ''Danger'' THEN ''danger''',
'  ELSE ''info'' END AS ALERT_TYPE',
'FROM HR_APU_broadcast a',
'where to_date(to_char(start_date, ''DD/MM/YYYY HH-MI-SS AM''),''DD/MM/YYYY HH-MI-SS AM'') <= to_date(to_char(current_date, ''DD/MM/YYYY HH-MI-SS AM''),''DD/MM/YYYY HH-MI-SS AM'')',
'and to_date(to_char(end_date, ''DD/MM/YYYY HH-MI-SS AM''),''DD/MM/YYYY HH-MI-SS AM'') >= to_date(to_char(current_date, ''DD/MM/YYYY HH-MI-SS AM''),''DD/MM/YYYY HH-MI-SS AM'')',
'and exists (select 1',
'                 from HR_APU_broadcast_org b',
'                 where a.id = broadcast_id',
'                 and org_ID = :APP_ORG_ID',
'                     AND APPLICATION_SCHEMA_NAME = :G_PARSING_SCHEMA',
'                 )'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2882902941739462796
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'ROWS_X_TO_Y'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3191917187632070171)
,p_query_column_id=>1
,p_column_alias=>'ALERT_TITLE'
,p_column_display_sequence=>1
,p_column_heading=>'Alert Title'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_table_name=>'HR_APU_BROADCAST'
,p_ref_column_name=>'SEVERITY'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3191917341233070172)
,p_query_column_id=>2
,p_column_alias=>'ALERT_DESC'
,p_column_display_sequence=>2
,p_column_heading=>'Alert Desc'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_table_name=>'HR_APU_BROADCAST'
,p_ref_column_name=>'BROADCAST'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3191379216469356954)
,p_query_column_id=>3
,p_column_alias=>'ALERT_ACTION'
,p_column_display_sequence=>4
,p_column_heading=>'Alert Action'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3192200548557789627)
,p_query_column_id=>4
,p_column_alias=>'ALERT_TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Alert Type'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_table_name=>'HR_APU_BROADCAST'
,p_ref_column_name=>'CATEGORY'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3235072497962818035)
,p_name=>'Tips'
,p_template=>4501440665235496320
,p_display_sequence=>9
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select messages alert_desc,',
'    NULL AS alert_action,',
'    ''info'' AS alert_type,',
'     ''Tip'' AS alert_title',
'from HR_APU_TIPS',
'where id=floor(dbms_random.value(to_number(:P1_MIN_TIP),to_number(:P1_MAX_TIP)))',
'and rownum=1',
'and MAIN_MODULES=''Human Resources'''))
,p_display_when_condition=>'SELECT 1 FROM TBLUSER WHERE SHOW_TIP=1 AND USER_NAME = NVL(V(''APP_USER''),USER)'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1_MIN_TIP,P1_MAX_TIP'
,p_lazy_loading=>false
,p_query_row_template=>2882902941739462796
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(132796130690926940)
,p_query_column_id=>1
,p_column_alias=>'ALERT_DESC'
,p_column_display_sequence=>10
,p_column_heading=>'Alert Desc'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(132796229402926941)
,p_query_column_id=>2
,p_column_alias=>'ALERT_ACTION'
,p_column_display_sequence=>20
,p_column_heading=>'Alert Action'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(132796330510926942)
,p_query_column_id=>3
,p_column_alias=>'ALERT_TYPE'
,p_column_display_sequence=>30
,p_column_heading=>'Alert Type'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(132796371085926943)
,p_query_column_id=>4
,p_column_alias=>'ALERT_TITLE'
,p_column_display_sequence=>40
,p_column_heading=>'Alert Title'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3237156486246458460)
,p_plug_name=>'New Year Notifications'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--noIcon:t-Alert--danger:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<font color="red" size="2"><b>',
'Remember to put in all the company years, NIB/SS Rates and Tax Rates for all your organisations and payment types if new ones exist. ',
'In addition generate holidays, leave entitlements will be updated via a system scheduled job or manually for employees who have completed their period of service.</b></font>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM HR_HCF_COMPANYYEAR',
'where company_year =extract(year from current_date)'))
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3278572950348024339)
,p_plug_name=>'Quick Start'
,p_region_css_classes=>'animated slideInDown'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--basic:t-Cards--displayIcons:t-Cards--5cols:t-Cards--animColorFill'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_location=>null
,p_list_id=>wwv_flow_imp.id(3319069187479815524)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2886769488667748277
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3312015191549111633)
,p_plug_name=>'PeoplePay Human Resources & Payroll'
,p_icon_css_classes=>'org-img'
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>'Complete Paperless Office Management from Recruitment to Separation.'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3311974743623993754)
,p_plug_name=>'Search'
,p_parent_plug_id=>wwv_flow_imp.id(3312015191549111633)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(96541315960140506)
,p_button_sequence=>30
,p_button_name=>'SWITCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Switch'
,p_button_position=>'AFTER_NAVIGATION_BAR'
,p_button_execute_validations=>'N'
,p_button_condition=>':APP_USER LIKE ''%@INNOSYSGY.COM'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3291517769863634899)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3311974743623993754)
,p_button_name=>'START_HERE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--primary:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Start Here'
,p_button_redirect_url=>'f?p=&APP_ID.:2020:&SESSION.::&DEBUG.:RP:P2020_ID:&APP_ORG_ID.'
,p_icon_css_classes=>'fa-long-arrow-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3277025513425819875)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3311974743623993754)
,p_button_name=>'WHAT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--primary:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'What to do Guide'
,p_button_redirect_url=>'javascript:window.open("#APP_IMAGES#PeoplePay_SOP.pdf","myWindow");'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-book'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3327106547034382182)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3311974743623993754)
,p_button_name=>'how'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--primary:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'How to Guide'
,p_button_redirect_url=>'javascript:window.open("#APP_IMAGES#Cloud Primer User Manual.pdf","myWindow");'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-book'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96541212753140505)
,p_name=>'P1_ASSIGN_EMPLOYEE'
,p_item_sequence=>10
,p_item_display_point=>'AFTER_NAVIGATION_BAR'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select employee_no',
'from tbluser',
'where user_id=:APP_USER_ID'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Assign'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  to_char(INITCAP(SURNAME || '', '' || NVL(FIRST_NAME, '''')) ||'' ''||NVL(MIDDLE_NAME,'''') ||''(No.:''||EMP_COMPANY_NO||'')''',
'||'' At ''||LOCATION_DESCRIPTION) a,x.ID b',
'FROM VW_EMPLOYEE X JOIN HR_RCM_INDIVIDUAL Z ON Z.ID=X.IND_ID        ',
'JOIN HR_HCF_POSITION B ON B.ID=x.POSITION_ID',
'JOIN HR_HCF_WORKLOCATION C ON C.ID=x.WKLOCATION_ID     ',
'where exists (select 1',
'             from hr_hcf_orgstructuredtl y join hr_hcf_orgstructurehd w on w.id = y.org_structure_id',
'             where y.id = x.orgdtl_id',
'             and UPPER(w.org_structure_name) like ''%INNOSYS%''',
'             )'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--No Employee--'
,p_cSize=>30
,p_display_when=>':APP_USER LIKE ''%@INNOSYSGY.COM'''
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3304296996183255751)
,p_name=>'P1_IMG_SRC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3312015191549111633)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3326988731757951417)
,p_name=>'P1_MAX_TIP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3278572950348024339)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select max(id)',
'from HR_APU_TIPS'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3326989151689951418)
,p_name=>'P1_MIN_TIP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3278572950348024339)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select min(id)',
'from HR_APU_TIPS'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3193821201336465821)
,p_validation_name=>'chk_LogInrecords'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_start_click_chk number(10);',
'',
'begin    ',
'    select cnt into v_start_click_chk  ',
'    from (  ',
'        select count(1) cnt ',
'        from HR_ATT_TIMECLOCK_DTL',
'        where  to_char(work_date, ''DD-MON-YYYY HH24:MI'')  = to_char(current_date, ''DD-MON-YYYY HH24:MI'')',
'        and emp_id =  (select nvl(max(employee_no),0) from tbluser where user_name = :APP_USER)',
'        and time_in is not null',
'        and time_out is  null);',
'        ',
'    if v_start_click_chk > 0 then',
'        return v_start_click_chk||'' Record/s exist without logoff time. Click logout instead.'';',
'    else',
'        return '''';',
'    end if;',
'    ',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3193821126431465820)
,p_validation_name=>'chk_LogOutrecords'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_end_click_chk number(10):=0;',
'',
'begin',
'    select cnt into v_end_click_chk  ',
'    from (  ',
'        select count(1) cnt ',
'        from HR_ATT_TIMECLOCK_DTL',
'        where  to_char(work_date, ''DD-MON-YYYY HH24:MI'')  = to_char(current_date, ''DD-MON-YYYY HH24:MI'')',
'        and emp_id =  (select nvl(max(employee_no),0) from tbluser where user_name = :APP_USER)',
'        and time_in is null',
'        and time_out is not  null);',
'    ',
'    if v_end_click_chk > 0 then',
'        return v_end_click_chk||'' Record/s exist without login time. Click login instead.'';',
'    else',
'        return '''';',
'    end if;',
'',
'exception',
'    when others then null;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(144308089778025129)
,p_name=>'refresh_chat_icon'
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144308139892025130)
,p_event_id=>wwv_flow_imp.id(144308089778025129)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    select case when count(1) > 0 then ''fa-comments fam-plus fam-is-success'' else ''fa-comments'' end show_icon into :CHAT_ICON_STATUS',
'    from APP_GLO_CHATRECIPIENTS',
'    where USER_NAME = :APP_USER',
'    and comment_read= 0;',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(96541462239140507)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Switch_innosys_user'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'IF :P1_ASSIGN_EMPLOYEE IS NOT NULL THEN',
'    UPDATE TBLUSER',
'    SET EMPLOYEE_NO= nvl(:P1_ASSIGN_EMPLOYEE,null)',
'        ,CAN_APPROVE= case when :P1_ASSIGN_EMPLOYEE is null then ''N'' else ''Y'' end',
'    WHERE USER_ID = :APP_USER_ID;',
'END IF;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(96541315960140506)
,p_internal_uid=>96541462239140507
);
wwv_flow_imp.component_end;
end;
/
