prompt --application/pages/page_01382
begin
--   Manifest
--     PAGE: 01382
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>1382
,p_name=>'rptAnalysis3'
,p_step_title=>'View Leave Analytics'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3603894171983398503)
,p_step_template=>2979075366320325194
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3556650246939450597)
,p_plug_name=>'Leave Parameters'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_08'
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3556651540375514421)
,p_plug_name=>'Leave Type Days'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_08'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(leave_type) label, sum(DAYS_TAKEN-HOLIDAYS) leave_days, null the_link',
'from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'join hr_lv_leavehistory c on b.id=c.emp_id',
'where c.org_id=:P1382_ORGANISATION',
'and extract(month from FROMDATE)=DECODE(:P1382_MONTHS,1, extract(month from FROMDATE),:P1382_MONTHS) ',
'and extract(year from FROMDATE)=:P1382_YEAR',
'group by leave_type '))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.CSS_BAR_CHART'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'VALUE_ABSOLUTE',
  'attribute_10', '5')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3631293124864131466)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3556650246939450597)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1370:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3631291883825131459)
,p_name=>'P1382_MONTHS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3556650246939450597)
,p_prompt=>'Months'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct TO_CHAR(FROMDATE,''MONTH'') a,  extract(MONTH from FROMDATE) b',
'from hr_lv_leavehistory',
'WHERE org_id=:P1382_ORGANISATION',
'AND extract(year from FROMDATE)=:P1382_YEAR',
'order by 1 desc'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All--'
,p_lov_null_value=>'1'
,p_lov_cascade_parent_items=>'P1382_ORGANISATION,P1382_YEAR'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3631292303319131460)
,p_name=>'P1382_YEAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3556650246939450597)
,p_prompt=>'Year'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct extract(year from FROMDATE) a,  extract(year from FROMDATE) b',
'from hr_lv_leavehistory',
'where org_id=:P1382_ORGANISATION',
'order by 1 desc'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1382_ORGANISATION'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3631292744520131463)
,p_name=>'P1382_ORGANISATION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3556650246939450597)
,p_prompt=>'Search by Organisation'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ORGANISATION_NAME A, ID b',
'FROM HR_HCF_ORGANISATION a',
'WHERE EXISTS (SELECT 1',
'              FROM HR_RCM_EMPLOYEE B ',
'              where a.id=ORG_ID)',
'and exists (select 1',
'            from VW_USERACCESS x',
'            where x.org_id=a.id)',
'and exists (select 1',
'            from hr_lv_leavehistory w',
'            where w.org_id=a.id)',
'ORDER BY 1       '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'---ALL--'
,p_lov_null_value=>'1'
,p_cHeight=>1
,p_grid_label_column_span=>2
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
