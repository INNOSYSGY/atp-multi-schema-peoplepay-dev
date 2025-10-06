prompt --application/pages/page_00176
begin
--   Manifest
--     PAGE: 00176
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
 p_id=>176
,p_name=>'frmGlobalTimeClocklPar'
,p_alias=>'FRMGLOBALTIMECLOCKLPAR'
,p_step_title=>'frmGlobalTimeClocklPar'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3278888442163947016)
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3227084854331620027)
,p_plug_name=>'Global Payroll Parameters'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3227083821114620016)
,p_name=>'P176_TIME'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3227084854331620027)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3227083895778620017)
,p_name=>'P176_PARAMETERS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3227084854331620027)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3227083936553620018)
,p_name=>'P176_REPORT_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3227084854331620027)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3227084076267620019)
,p_name=>'P176_URL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3227084854331620027)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3227084174625620020)
,p_name=>'P176_END_DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3227084854331620027)
,p_prompt=>'End Date'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3227084234578620021)
,p_name=>'P176_START_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3227084854331620027)
,p_prompt=>'Start Date'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3227084340226620022)
,p_name=>'P176_PAYMENT_TYPE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3227084854331620027)
,p_prompt=>'Payment Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT initcap(payment_type) b, upper(payment_type) a',
'FROM PA_PCF_EARNINGPERIOD B  ',
'WHERE ORG_ID =:P176_ORGANISATION',
'AND EXISTS (SELECT 1',
'              FROM  PA_PMG_PAYROLLHD C ',
'              WHERE  B.ID=C.EARNINGS_PERIOD_ID',
'              )      ',
'order by b'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P176_ORGANISATION'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3227084512066620023)
,p_name=>'P176_EARNINGS_PERIOD'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3227084854331620027)
,p_prompt=>'Earnings Period'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'P_EARNINGS_PERIOD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Earning_Name,Earning_Id',
'from vw_earningperiod_lov',
'where rownum<=290',
'',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(3227084530875620024)
,p_name=>'P176_EMPLOYEE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3227084854331620027)
,p_prompt=>'Employee'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cast (''--ALL--'' as varchar2(200)) individual,9999 id',
'from dual',
'union',
'select cast(individual as varchar2(200)) individual,id from (select trim(replace(c.first_name || '' '' || c.surname,''.'','''')) individual,a.id',
'from vw_employee a',
'join vw_individual b on a.ind_id=b.id',
'join hr_rcm_individual c on c.id=b.id',
'order by a.org_id,trim(replace(c.first_name || '' '' || c.surname,''.'','''')))'))
,p_lov_display_null=>'YES'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(3227084713211620025)
,p_name=>'P176_DEPARTMENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3227084854331620027)
,p_prompt=>'Department'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select unit_name,id',
'from(',
'',
'Select to_nchar(''ALL'') unit_name,9999 id ',
'',
'From Dual',
'UNION ALL',
'SELECT to_nchar(unit_name), ID',
'FROM VW_ORGANISATION_STRUCTURE a',
'WHERE exists (select 1',
'            from VW_USERACCESS x',
'            where x.org_id=a.org_id)',
'and version_id = 2',
'               ',
'ORDER BY unit_name) B',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(3227084818049620026)
,p_name=>'P176_WORK_LOCATION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3227084854331620027)
,p_prompt=>'Work Location'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select LOCATION_DESCRIPTION,id',
'from(Select to_nchar(''ALL'') LOCATION_DESCRIPTION,9999 id ',
'From Dual',
'UNION ALL',
'select to_nchar(LOCATION_DESCRIPTION),id',
'from HR_HCF_WORKLOCATION a',
'where (trunc(end_date) is null or end_date >= trunc(current_date))',
'and exists (select 1',
'                 from vw_useraccess v',
'                 where v.org_id=a.org_id)',
'order by 1) B'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(3227084925002620028)
,p_name=>'P176_ORGANISATION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3227084854331620027)
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
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp.component_end;
end;
/
