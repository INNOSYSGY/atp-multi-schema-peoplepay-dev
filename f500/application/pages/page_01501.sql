prompt --application/pages/page_01501
begin
--   Manifest
--     PAGE: 01501
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>500
,p_default_id_offset=>221402556581611694
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>1501
,p_name=>'frmGlobalPayrollPar'
,p_step_title=>'Global Report Payroll'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3805351210961362887)
,p_plug_name=>'&P1501_REPORT_NAME.'
,p_region_template_options=>'#DEFAULT#:::is-expanded::t-Region--accent3::t-Region--scrollBody:::::::::'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3805353605230362892)
,p_plug_name=>'Report'
,p_region_name=>'PREVIEW'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="height:555px"'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3693779926963166255)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3805351210961362887)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:404:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3693780361930166256)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3805351210961362887)
,p_button_name=>'Export'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--padRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Export'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-download'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3693780776656166256)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3805351210961362887)
,p_button_name=>'EXECUTE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Execute'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-play-circle-o'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(665327532616317230)
,p_name=>'P1501_WKLOCATION_ID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3805351210961362887)
,p_prompt=>'Work Location'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'WORK_LOCATION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''-- All --'' a, 99999 id',
'from dual',
'union',
'select distinct initcap(LOCATION_DESCRIPTION) a,id',
'from HR_HCF_WORKLOCATION a',
'where  org_id= :APP_ORG_ID',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when=>'(pkg_global_fnts.fn_sharereforg(:P1501_ORGANISATION) in (1749,15375,15395,15415,15355,38888,39007,39027) or :G_PARSING_SCHEMA = ''WANDT'') and :P1501_REPORT_ID not in (6253,5022,5028)'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3637794831360721761)
,p_name=>'P1501_EMPLOYEE_2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3805351210961362887)
,p_prompt=>'Employee'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select fullname a, id b from ',
'(select salary.fullname,salary.id, new_gross_pay-old_gross diff',
'from ',
'(select a.*,fn_getdepartment_name(org_id,id)',
', (select nvl(sum(amount),0) from hr_rcm_empentitle',
'where emp_id =a.id',
'and start_date between old_start_date and nvl(old_end_date,current_date+1)',
'and admin_status =''SYS''',
') old_sys_allw,',
'old_per_rate+(select nvl(sum(amount),0) from hr_rcm_empentitle',
'where emp_id =a.id',
'and start_date between old_start_date and nvl(old_end_date,current_date+1)',
'and admin_status =''SYS''',
') old_gross,',
'(select organisation_name from hr_hcf_organisation',
'where id = org_id) org_name',
'',
'',
'from (select hrem.id,',
'UPPER(hrind.surname||'', ''||hrind.first_name) fullname,hrs.start_date,',
'nvl(hrs.personal_rate,0) new_per_rate,',
'nvl((select nvl(personal_rate,0) from (',
'select rownum rem, start_date, end_date,personal_rate, emp_id ',
'from hr_rcm_salary',
'where emp_id = hrem.id',
'order by start_date, rownum desc) a ',
'where rem = (select max(rownum) -1',
'              from hr_rcm_salary',
'               where emp_id = hrem.id',
'               )),0) old_per_rate,',
'',
'hrem.orgdtl_id,',
'sum(hremp.amount) sys_allowances,',
'',
'nvl((select start_date from (',
'select rownum rem, start_date, end_date, emp_id ',
'from hr_rcm_salary',
'where emp_id = hrem.id',
'order by start_date, rownum desc) a ',
'where rem = (select max(rownum) -1',
'              from hr_rcm_salary',
'               where emp_id = hrem.id',
'               )),hrs.start_date) old_start_date',
'               ,',
'',
'(select end_date from (',
'select rownum rem, start_date, end_date, emp_id ',
'from hr_rcm_salary',
'where emp_id = hrem.id',
'order by start_date, rownum desc) a ',
'where rem = (select max(rownum) -1',
'              from hr_rcm_salary',
'               where emp_id = hrem.id',
'               )) old_end_date',
',               ',
'',
'pkg_global_fnts.fn_num_towords (nvl(hrs.personal_rate,0)+sum(hremp.amount)) gross_pay_wrt,',
'nvl(hrs.personal_rate,0)+sum(hremp.amount) new_gross_pay',
',hrem.org_id',
'from hr_rcm_employee hrem',
'join hr_rcm_salary hrs',
'on hrem.id=hrs.emp_id',
'join hr_rcm_empentitle hremp',
'on hrem.id= hremp.emp_id',
'join hr_rcm_individual hrind',
'on hrem.ind_id= hrind.id',
'where hrs.end_date is null or hrs.end_date>= current_date',
'and hremp.admin_status= ''SYS''',
'and hremp.start_date>=hrs.start_date',
'and :P1501_DATE_EFFECTIVE between hrem.date_employed and nvl(hrem.date_separated,current_date)',
'group by hrem.full_name,hrs.start_date,hrs.personal_rate,hrem.org_id,UPPER(hrind.surname||'', ''||hrind.first_name),',
'hrem.orgdtl_id,hrem.id,hrem.date_employed, hrem.date_separated',
'',
')a) salary',
'where org_id = :P1501_ORGANISATION',
') where diff>0',
'order by fullname'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1501_ORGANISATION'
,p_ajax_items_to_submit=>'P1501_ORGANISATION'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_display_when=>'P1501_REPORT_ID'
,p_display_when2=>'6253'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
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
 p_id=>wwv_flow_imp.id(3637794980250721762)
,p_name=>'P1501_DIRECTOR_NAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3805351210961362887)
,p_prompt=>'Director Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  nvl(first_name,'''')||'' ''||surname||'' - ''||p.position_name  a, i.id  b ',
'from hr_rcm_individual i ',
'join hr_rcm_employee e on e.ind_id = i.id join hr_hcf_position p on p.id = e.position_id',
' where (upper(p.position_name) like ''%DIRECTOR%'' or upper(p.position_name) like ''%CHIEF%'')',
' and org_id = :P1501_ORGANISATION'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1501_ORGANISATION'
,p_ajax_items_to_submit=>'P1501_ORGANISATION'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_display_when=>'P1501_REPORT_ID'
,p_display_when2=>'6253'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3637795203058721764)
,p_name=>'P1501_DIR_POS_ID'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(3805351210961362887)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3637795450951721767)
,p_name=>'P1501_DATE_EFFECTIVE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3805351210961362887)
,p_prompt=>'Date Effective'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_display_when=>'P1501_REPORT_ID'
,p_display_when2=>'6253'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3693781151464166256)
,p_name=>'P1501_ORGANISATION'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3805351210961362887)
,p_item_default=>':APP_ORG_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Organisation'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  initcap(c.organisation_name),c.id',
'from   hr_hcf_organisation c',
' where exists (select 1',
'              from pa_pcf_earningperiod a join VW_USERACCESS g ',
'              on (a.org_id=g.org_id ',
'              and a.employment_class_id=g.employment_class_id and a.payment_type=g.payment_type) ',
'              where c.id = g.org_id )',
'order by c.organisation_name',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3693781511553166257)
,p_name=>'P1501_SUPPRESS_DETAILS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3805351210961362887)
,p_prompt=>'Suppress Details'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:;1'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_display_when=>'select 1 from dual where :P1501_REPORT_ID in (5053,5432,6253)'
,p_display_when_type=>'NOT_EXISTS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3693781941015166257)
,p_name=>'P1501_EARNINGS_TYPE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3805351210961362887)
,p_use_cache_before_default=>'NO'
,p_item_default=>'RG'
,p_prompt=>'Earnings Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EARNINGS_TYPE'
,p_lov=>'.'||wwv_flow_imp.id(3853991985807144147)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_display_when=>'select 1 from dual where :P1501_REPORT_ID in (5053,5432,6253)'
,p_display_when_type=>'NOT_EXISTS'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3693782321821166257)
,p_name=>'P1501_MONTH_YEAR'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3805351210961362887)
,p_prompt=>'Month Year'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a,B',
'FROM',
'    (  SELECT DISTINCT TO_CHAR(START_DATE,''MONTH'')||'' ''||EXTRACT(YEAR FROM START_DATE) A',
'      , EXTRACT(year FROM START_DATE)||EXTRACT(month FROM START_DATE) b',
'      ,  EXTRACT(year FROM START_DATE) C, EXTRACT(month FROM START_DATE) D',
'      FROM PA_PCF_EARNINGPERIOD B  ',
'      WHERE ORG_ID =:P1501_ORGANISATION',
'      and pay_status =''Y''',
'      AND EXISTS (SELECT 1',
'                  FROM  PA_PMG_PAYROLLHD C ',
'                  WHERE  B.ID=C.EARNINGS_PERIOD_ID)',
'      )',
'ORDER BY C DESC, D DESC  '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_lov_cascade_parent_items=>'P1501_ORGANISATION'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_display_when=>'P1501_REPORT_ID'
,p_display_when2=>'6253'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
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
 p_id=>wwv_flow_imp.id(3693782708184166257)
,p_name=>'P1501_EARNINGS_PERIOD'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3805351210961362887)
,p_prompt=>'Earnings Period'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  initcap(PKG_GLOBAL_FNTS.Get_Lookup_Col(employment_class_id, ''TABLE_VALUE'' ) ',
'||'' ''||a.payment_type||'' ''||a.start_date ||'' -- ''||a.end_date)||'' ''||initcap(compute_gross)||''-''||initcap(a.earnings_type) label,a.id',
'from pa_pcf_earningperiod a join pa_pmg_payrollhd w on a.id = w.earnings_period_id ',
'where exists (select 1   ',
'              from VW_USERACCESS v   ',
'              where  (v.org_id=a.org_id   ',
'              and v.employment_class_id=a.employment_class_id ',
'              and v.payment_type=a.payment_type)',
'             )   ',
'and EXTRACT(year FROM START_DATE)||EXTRACT(month FROM START_DATE)=:P1501_MONTH_YEAR',
'and a.org_id=:P1501_ORGANISATION',
'and a.pay_status = ''Y'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_lov_cascade_parent_items=>'P1501_MONTH_YEAR,P1501_ORGANISATION'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_display_when=>'P1501_REPORT_ID'
,p_display_when2=>'6253'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
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
 p_id=>wwv_flow_imp.id(3693783192280166258)
,p_name=>'P1501_ALL_EMPLOYEES'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3805351210961362887)
,p_item_default=>'0'
,p_prompt=>'All Employees'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_display_when=>'select 1 from dual where :P1501_REPORT_ID in (5053,5432,6253)'
,p_display_when_type=>'NOT_EXISTS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3693783588811166258)
,p_name=>'P1501_BANK'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3805351210961362887)
,p_item_default=>'1'
,p_prompt=>'Bank'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct ORGANISATION_NAME display,id RETURN from',
'( select cast(''ALL BANK'' as nvarchar2(100)) ORGANISATION_NAME,1 id from dual',
'union all',
'select cast(''CHEQUE'' as nvarchar2(100)) ORGANISATION_NAME,2 id from dual',
'union all',
'select  cast(ORGANISATION_NAME as nvarchar2(100)),ID from hr_hcf_organisation where organisation_type=''BANK'' and user_org_id=:APP_ORG_SHR_DED and PARENT_ORG_ID is null',
'union all',
'select cast(''CASH'' as nvarchar2(100)) ORGANISATION_NAME,3 id from dual) b order by id',
'',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_display_when=>':P1501_REPORT_ID in (5772,6444)'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3693783912843166258)
,p_name=>'P1501_SEARCH_OPTION'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3805351210961362887)
,p_prompt=>'Search Option'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Employee;EMPLOYEE,Grade Scale;GRADE_SCALE,Organisation Structure Level;ORG_STRUCT_LEVEL,Position;POSITION,Work Location;WORK_LOCATION,Union;UNION,Employment Type;EMPLOYMENT_TYPE'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_display_when=>'select 1 from dual where :P1501_REPORT_ID in (5053,5432,6253)'
,p_display_when_type=>'NOT_EXISTS'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3693784334416166258)
,p_name=>'P1501_SEARCH_RESULTS'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3805351210961362887)
,p_prompt=>'Search Results'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'RPT_PARAMETER_RESULTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1501_SEARCH_OPTION=''EMPLOYEE'' then',
'',
'return',
' ''select initcap(upper(surname||'''', ''''||nvl(first_name,'''''''')||'''':- ''''||emp_company_no)) display, b.id return',
'from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'where exists (select 1',
'              from pa_pcf_earningperiod c ',
'              where b.payment_type=c.payment_type',
'              and b.employment_class_id=c.employment_class_id',
'              and b.org_id=c.org_id',
'              and b.compute_gross =c.compute_gross',
'              and id = :P1501_EARNINGS_PERIOD)',
'and b.date_separated is null or b.date_separated > trunc(current_date)     ',
'and include_payroll=''''Y''''',
'order by 1'';',
'',
'ELSif :P1501_SEARCH_OPTION=''GRADE_SCALE'' then',
'return',
'        ''select grade_description||''''(''''||grade_code||'''') as at ''''||EFFECTIVE_FROMDATE display, id return',
'        from hr_hcf_positiongrade V',
'        where  org_id =:APP_ORG_SHR_DED',
'        and exists(select 1',
'                   from vw_EmpEarn g',
'                   where g.EMP_GRADE_ID = v.id',
'                   and g.Earning_period_id = :P1501_EARNINGS_PERIOD',
'                   )',
'        order by grade_code'';',
'',
'elsif  :P1501_SEARCH_OPTION=''ORG_STRUCT_LEVEL'' then',
'',
'return',
'''Select ''''Level: ''''||Unit_Level||'''' ''''||short_name||'''':-''''|| Unit_Name||'''' ''''||value_description display, m.Id return',
'From Hr_Hcf_Orgstructuredtl M Join Hr_Hcf_Lookup N On M.Classification=N.Id',
'join HR_HCF_ORGSTRUCTUREHD v on v.id=m.ORG_STRUCTURE_ID',
'join hr_hcf_organisation w on w.id=v.org_id',
'where exists (select 1',
'              from vw_EmpEarn g',
'              where g.Earning_period_id = :P1501_EARNINGS_PERIOD',
'              and m.id= g.orgdtl_id',
'              )',
'order by 1'';',
'',
'elsif  :P1501_SEARCH_OPTION=''POSITION'' then',
'',
'return',
'''select POSITION_NAME||'''':-''''||Unit_Name||'''''''' display, b.id return',
'from HR_HCF_POSITION b',
'join HR_HCF_ORGSTRUCTUREDTL d on d.id=B.ORGDTL_ID',
'WHERE  exists (select 1',
'              from vw_EmpEarn g',
'              where g.Earning_period_id = :P1501_EARNINGS_PERIOD',
'              and b.id=g.Position_ID',
'              )',
'order by 1'';',
'',
'elsif  :P1501_SEARCH_OPTION=''WORK_LOCATION'' then',
'',
'return',
'''select distinct LOCATION_DESCRIPTION ||''''(''''||LOCATION_code||'''')'''' display, id return',
'from HR_HCF_WORKLOCATION C ',
'WHERE  exists (select 1',
'              from vw_EmpEarn e',
'              where c.id=e.wklocation_id',
'              and e.Earning_period_id = :P1501_EARNINGS_PERIOD                           ',
'              )'';',
'',
'elsif  :P1501_SEARCH_OPTION=''INCOME'' then',
'',
'return',
'''select distinct display, d.INCOME_CODE return',
'from PA_PCF_INCOMECODE d ',
'WHERE  exists (select 1',
'              from hr_rcm_empentitle e join pa_pcf_adhocpayment f on e.id=f.empent_id',
'              where  EARNINGS_PERIOD_id = :P1501_EARNINGS_PERIOD  ',
'              and e.income_code_id=d.id',
'              )',
'order by  DESCRIPTION'';            ',
'',
'elsif  :P1501_SEARCH_OPTION=''UNION'' then',
'return',
'    ''select organisation_name display ,x.id return',
'    from PA_PCF_DEDUCTIONCODE w join vw_organisationCUR x on w.ENTITY_ABBREVIATION=x.id',
'    where organisation_type=''''REMITTANCE''''',
'    and UNION_DEDUCTION=1',
'    and exists (select 1',
'              from vw_EmpEarn g',
'              where x.id = g.union_code_id',
'              and g.Earning_period_id = :P1501_EARNINGS_PERIOD                           ',
'              )',
'    order by  1'';    ',
'',
'elsif  :P1501_SEARCH_OPTION=''EMPLOYMENT_TYPE'' then',
'return',
'        ''select distinct case when employment_type_id=1 then ''''Temporary''''',
'                     when employment_type_id=2 then ''''Permanent''''',
'                     else ''''Other'''' end display',
'        ,employment_type_id return',
'        from vw_EmpEarn g',
'        where g.Earning_period_id = :P1501_EARNINGS_PERIOD'';',
'         ',
'else',
'',
'return',
'    ''select ''''Null'''' display, Null return',
'    from dual'';',
'',
'end if;',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1501_SEARCH_OPTION,P1501_EARNINGS_PERIOD'
,p_ajax_optimize_refresh=>'Y'
,p_display_when=>'select 1 from dual where :P1501_REPORT_ID in (5053,5432,6253)'
,p_display_when_type=>'NOT_EXISTS'
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3693784707666166259)
,p_name=>'P1501_REPORT_ID'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(3805351210961362887)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3693785154024166259)
,p_name=>'P1501_PARAMETERS'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(3805351210961362887)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3693785574774166259)
,p_name=>'P1501_URL'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(3805351210961362887)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3693785983583166259)
,p_name=>'P1501_REPORT_NAME'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(3805351210961362887)
,p_source=>'select REPORT_NAME from report where id=:P1501_REPORT_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3693788892448166262)
,p_name=>'Preview_Report_Cloud'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3693780776656166256)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3693789367224166262)
,p_event_id=>wwv_flow_imp.id(3693788892448166262)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' delete RPT_PARAMETER where session_id=:APP_SESSION;',
'  commit;',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3693789846932166263)
,p_event_id=>wwv_flow_imp.id(3693788892448166262)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1501_URL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_url varchar2(1500 char);',
'v_urlstring varchar2(1000);',
'v_parameter varchar2(1500 char);',
'v_variable varchar2(10);',
'v_url_2 varchar2(400);',
'l_selected apex_application_global.vc_arr2;',
'v_url_1 varchar2(400);',
'v_report_path varchar2(400);',
'v_report_root_path varchar2(400);',
'begin',
'',
'--Execute Temp Table Population---',
'',
'begin',
'',
' if :p1501_search_results is not null then',
'',
'  l_selected := apex_util.string_to_table(:p1501_search_results);',
'',
'  for i in 1..l_selected.count',
'  loop',
'	insert into rpt_parameter(option_name, option_value,report_id,session_id )',
'       values(:p1501_search_option, l_selected(i),:p1501_report_id,:app_session);',
'      ',
'',
'  end loop;  ',
'  ',
'     :p1501_search_results:=null;',
'',
'end if;',
'',
'/*EXCEPTION',
'  WHEN OTHERS THEN NULL;',
'     :P1501_SEARCH_RESULTS:=null;*/',
'end;',
'',
'',
'select replace(report_location,''/reports/'') into v_report_path from report where id= :p1501_report_id;',
'v_report_path:=''/reports/''||v_report_path;',
'',
'/*v_url_2 :=''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:''||''|EARNINGS_PERIOD_ID=''||:p1501_earnings_period||''|IN_ORG_ID=''||:p1501_organisation||''|SEARCH_OPTION=''||:p1501_search_option||''|SUPPRESS_DETAILS=''||:p1501_suppress'
||'_details||''|SESSION_ID=''||:app_session||'',''||v_report_path;',
'',
':p1501_parameters:=''&EARNINGS_PERIOD_ID=''||:p1501_earnings_period||''&IN_ORG_ID=''||:p1501_organisation||''&SEARCH_OPTION=''||:p1501_search_option||''&SUPPRESS_DETAILS=''||:p1501_suppress_details||''&SESSION_ID=''||:app_session;',
'',
'',
'v_url_1 :=pkg_reports.fn_build_report_url(:P402_REPORT_ID)||:P402_PARAMATERS;',
'v_url_2 :=replace(:P402_PARAMATERS,''&'',''-'');*/',
'',
'select TABLE_VALUE into v_report_root_path from HR_HCF_LOOKUP where upper(VALUE_DESCRIPTION)=''JASPERSERVER URL'' and org_id=pkg_global_fnts.fn_shareRefOrg(:APP_ORG_ID) and (end_period is null or end_period > trunc(current_date));',
'',
'',
'',
'if :P1501_REPORT_ID = 6253',
'then',
'    -- v_url_1:=''http://apps3.innosysgy.com:8080/Report/showPDF?p2=''||v_report_path||''-IN_ORG_ID=''||:p1501_organisation||''-IN_EMP_ID=''||:P1501_EMPLOYEE_2||''-IN_IND_ID=''||:P1501_DIRECTOR_NAME||''-IN_P_ID=''||:P1501_DIR_POS_ID||''-Sal_start_date=''||replac'
||'e(:P1501_DATE_EFFECTIVE,''-'',''*''); ',
'    v_url_1:=v_report_root_path||''&p2=''||v_report_path||''-IN_ORG_ID=''||:p1501_organisation||''-IN_EMP_ID=''||:P1501_EMPLOYEE_2||''-IN_IND_ID=''||:P1501_DIRECTOR_NAME||''-IN_P_ID=''||:P1501_DIR_POS_ID||''-Sal_start_date=''||replace(:P1501_DATE_EFFECTIVE,''-'','''
||'*''); ',
'elsif :P1501_REPORT_ID = 5035',
'then',
'    v_url_1:=v_report_root_path||''&p2=''||v_report_path||''-EARNINGS_PERIOD_ID=''||:p1501_earnings_period||''-IN_ORG_ID=''||:p1501_organisation||''-SEARCH_OPTION=''||:p1501_search_option||''-SUPPRESS_DETAILS=''||:p1501_suppress_details||''-SESSION_ID=''||:app_s'
||'ession||''-allEmployees=''||:P1501_ALL_EMPLOYEES||''-PERIOD_MONTH_YEAR=''||:P1501_MONTH_YEAR || ''-P_WORK_LOCATION='' || :P1501_WKLOCATION_ID  ||  ''-Details=''||:P1501_SUPPRESS_DETAILS ;',
'else',
'-- v_url_1:=''http://apps3.innosysgy.com:8080/Report/showPDF?p2=''||v_report_path||''-EARNINGS_PERIOD_ID=''||:p1501_earnings_period||''-IN_ORG_ID=''||:p1501_organisation||''-SEARCH_OPTION=''||:p1501_search_option||''-SUPPRESS_DETAILS=''||:p1501_suppress_detail'
||'s||''-SESSION_ID=''||:app_session||''-allEmployees=''||:P1501_ALL_EMPLOYEES||''-BANK=''||:P1501_BANK;',
'    v_url_1:=v_report_root_path||''&p2=''||v_report_path||''-EARNINGS_PERIOD_ID=''||:p1501_earnings_period||''-IN_ORG_ID=''||:p1501_organisation||''-SEARCH_OPTION=''||:p1501_search_option||''-SUPPRESS_DETAILS=''||:p1501_suppress_details||''-SESSION_ID=''||:app_s'
||'ession||''-allEmployees=''||:P1501_ALL_EMPLOYEES||''-BANK=''||:P1501_BANK||''-PERIOD_MONTH_YEAR=''||:P1501_MONTH_YEAR||''-Details=''||:P1501_SUPPRESS_DETAILS;',
'end if;',
'',
'',
':P402_PARAMATERS:=null;',
'',
'return v_url_1;',
'end;'))
,p_attribute_07=>'P1501_ALL_EMPLOYEES, P1501_EARNINGS_PERIOD,P1501_EARNINGS_TYPE,P1501_MONTH_YEAR,P1501_ORGANISATION,P1501_PARAMETERS,P1501_REPORT_ID,P1501_SEARCH_OPTION,P1501_SEARCH_RESULTS,P1501_SUPPRESS_DETAILS,P1501_EMPLOYEE_2,P1501_DIRECTOR_NAME,P1501_DIR_POS_ID,'
||'P1501_DATE_EFFECTIVE,P1501_WKLOCATION_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3693790341914166263)
,p_event_id=>wwv_flow_imp.id(3693788892448166262)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(document.getElementById(''P1501_URL'').value,''popUpWindow'',''height=400,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=yes,directories=no, status=yes'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3693790738529166263)
,p_name=>'show_hide_components'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1501_ALL_EMPLOYEES'
,p_condition_element=>'P1501_ALL_EMPLOYEES'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3693791230501166263)
,p_event_id=>wwv_flow_imp.id(3693790738529166263)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1501_SEARCH_OPTION,P1501_SEARCH_RESULTS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3693791718916166264)
,p_event_id=>wwv_flow_imp.id(3693790738529166263)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1501_SEARCH_OPTION,P1501_SEARCH_RESULTS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3693792160528166264)
,p_name=>'New'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3693780361930166256)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3693792692829166264)
,p_event_id=>wwv_flow_imp.id(3693792160528166264)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' delete RPT_PARAMETER where session_id=:APP_SESSION;',
'  commit;',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3693793152303166265)
,p_event_id=>wwv_flow_imp.id(3693792160528166264)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1501_URL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_url varchar2(1500 char);',
'v_urlstring varchar2(1000);',
'v_parameter varchar2(1500 char);',
'v_variable varchar2(10);',
'v_url_2 varchar2(400);',
'l_selected apex_application_global.vc_arr2;',
'v_url_1 varchar2(400);',
'v_report_path varchar2(400);',
'v_report_root_path varchar2(400);',
'',
'begin',
'',
'--Execute Temp Table Population---',
'',
'begin',
'',
' if :p1501_search_results is not null then',
'',
'  l_selected := apex_util.string_to_table(:p1501_search_results);',
'',
'  for i in 1..l_selected.count',
'  loop',
'	insert into rpt_parameter(option_name, option_value,report_id,session_id )',
'       values(:p1501_search_option, l_selected(i),:p1501_report_id,:app_session);',
'      ',
'',
'  end loop;  ',
'  ',
'     :p1501_search_results:=null;',
'',
'end if;',
'',
'/*EXCEPTION',
'  WHEN OTHERS THEN NULL;',
'     :P1501_SEARCH_RESULTS:=null;*/',
'end;',
'',
'',
'select replace(report_location,''/reports/'') into v_report_path from report where id= :p1501_report_id;',
'v_report_path:=''/reports/''||v_report_path;',
'',
'/*v_url_2 :=''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:''||''|EARNINGS_PERIOD_ID=''||:p1501_earnings_period||''|IN_ORG_ID=''||:p1501_organisation||''|SEARCH_OPTION=''||:p1501_search_option||''|SUPPRESS_DETAILS=''||:p1501_suppress'
||'_details||''|SESSION_ID=''||:app_session||'',''||v_report_path;',
'',
':p1501_parameters:=''&EARNINGS_PERIOD_ID=''||:p1501_earnings_period||''&IN_ORG_ID=''||:p1501_organisation||''&SEARCH_OPTION=''||:p1501_search_option||''&SUPPRESS_DETAILS=''||:p1501_suppress_details||''&SESSION_ID=''||:app_session;',
'',
'',
'v_url_1 :=pkg_reports.fn_build_report_url(:P402_REPORT_ID)||:P402_PARAMATERS;',
'v_url_2 :=replace(:P402_PARAMATERS,''&'',''-'');*/',
'',
'',
'select TABLE_VALUE into v_report_root_path from HR_HCF_LOOKUP where upper(VALUE_DESCRIPTION)=''JASPERSERVER URL'' and org_id=pkg_global_fnts.fn_shareRefOrg(:APP_ORG_ID) and (end_period is null or end_period > trunc(current_date));',
'',
'',
'if :P1501_REPORT_ID = 6253 then',
'v_url_1:=v_report_root_path||''&p2=''||v_report_path||''-IN_ORG_ID=''||:p1501_organisation||''-IN_EMP_ID=''||:P1501_EMPLOYEE_2||''-IN_IND_ID=''||:P1501_DIRECTOR_NAME||''-IN_P_ID=''||:P1501_DIR_POS_ID||''-Sal_start_date=''||replace(:P1501_DATE_EFFECTIVE,''-'',''*'');'
||' ',
'else',
'if :P1501_REPORT_ID = 5053 and :P1501_REPORT_ID = 5432',
'then',
'v_url_1:=v_report_root_path||''&p2=''||v_report_path||''-EARNINGS_PERIOD_ID=''||:p1501_earnings_period||''-IN_ORG_ID=''||:p1501_organisation; ',
'',
'else',
'v_url_1:=v_report_root_path||''&p2=''||v_report_path||''-EARNINGS_PERIOD_ID=''||:p1501_earnings_period||''-IN_ORG_ID=''||:p1501_organisation||''-SEARCH_OPTION=''||:p1501_search_option||''-SUPPRESS_DETAILS=''||:p1501_suppress_details||''-SESSION_ID=''||:app_sessi'
||'on||''-allEmployees=''||:P1501_ALL_EMPLOYEES;',
'end if;',
'end if;',
'',
':P402_PARAMATERS:=null;',
'v_url_1:= replace(v_url_1, ''showPDF'',''Download'');',
'',
'return v_url_1;',
'end;'))
,p_attribute_07=>'P1501_ALL_EMPLOYEES, P1501_EARNINGS_PERIOD,P1501_EARNINGS_TYPE,P1501_MONTH_YEAR,P1501_ORGANISATION,P1501_PARAMETERS,P1501_REPORT_ID,P1501_SEARCH_OPTION,P1501_SEARCH_RESULTS,P1501_SUPPRESS_DETAILS,P1501_DIR_POS_ID,P1501_EMPLOYEE_2,P1501_DATE_EFFECTIVE'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3693793704735166265)
,p_event_id=>wwv_flow_imp.id(3693792160528166264)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(document.getElementById(''P1501_URL'').value,''popUpWindow'',''height=200,width=500,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=yes,directories=no, status=yes'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3637795320869721765)
,p_name=>'Set_pos_id'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1501_DIRECTOR_NAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3637795351560721766)
,p_event_id=>wwv_flow_imp.id(3637795320869721765)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1501_DIR_POS_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select p.id from hr_rcm_employee e join hr_hcf_position p on p.id = e.position_id',
' where p.position_name like ''Director%''',
' and e.ind_id= :P1501_DIRECTOR_NAME'))
,p_attribute_07=>'P1501_DIRECTOR_NAME'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3693787047797166261)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'',
'',
'BEGIN',
'',
' IF :P1501_SEARCH_RESULTS is null then',
'',
'  l_selected := APEX_UTIL.STRING_TO_TABLE(:P1501_SEARCH_RESULTS);',
'',
'  FOR i IN 1..l_selected.COUNT',
'  LOOP',
'	Insert Into Tmp_Rpt_Parameter (Option_Name, Option_Value )',
'        values(:P1501_SEARCH_OPTION, l_selected(i));',
'',
'  END LOOP;  ',
'  ',
'     :P1501_SEARCH_RESULTS:=null;',
'',
'end if;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN NULL;',
'     :P1501_SEARCH_RESULTS:=null;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3693780776656166256)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'System successfully generated required data.'
,p_internal_uid=>3050592498017557993
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3693786652091166260)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Options'
,p_process_sql_clob=>'pkg_reports.sp_clear_report_Parameter(:APP_SESSION);'
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>3050592102311557992
);
wwv_flow_imp.component_end;
end;
/
