prompt --application/pages/page_01279
begin
--   Manifest
--     PAGE: 01279
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
 p_id=>1279
,p_name=>'rptEmployeeCards'
,p_step_title=>'Employee Cards'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3297884603042696602)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#employee-photos .t-Card-colorFill, #employee-photos .t-Card-icon {',
'    background: none;',
'}',
'',
'#employee-photos .t-Card-desc, #employee-photos .t-Card-info{',
'    text-align:center;',
'}',
'',
'#employee-photos .t-Card-info {',
'    margin-top: 0px;',
'}',
'',
'#employee-photos .t-Card-body {',
'    padding-top: 8px !important;',
'}',
'',
'#employee-photos .t-Card-icon {',
'    margin:10px auto !important;',
'    width:fit-content !important;',
'    height:120px !important;',
'}',
'',
'#employee-photos .t-Icon {',
'    height:100% !important;',
'    width:100% !important;',
'}',
'',
'#employee-photos .t-Icon > img{',
'    height:100% !important;',
'}',
'',
'#employee-photos h3.t-Card-title {',
'    font-size:1.5rem !important;',
'    font-weight:bold;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3292321694754684599)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>'<span style="display:none">The records are grouped in terms of four, use the <i>Range</i> to indicate which set of four records to bring back.</span>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3292343498367191249)
,p_plug_name=>'Employees with Photos'
,p_region_name=>'employee-photos'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Cards--featured:t-Cards--displayInitials:t-Cards--4cols:t-Cards--animRaiseCard'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_list_id=>wwv_flow_imp.id(3292305884463403516)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(3303190689585763361)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3292321338589684596)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3292321694754684599)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Return Employee Count &P1279_COUNT.'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1280:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-angle-left'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3282705770528490497)
,p_name=>'P1279_SEARCH'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3292321694754684599)
,p_prompt=>'Search'
,p_placeholder=>'by name, position or telephone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'Y',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3292272924125955598)
,p_name=>'P1279_RANGE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3292321694754684599)
,p_item_default=>'1'
,p_prompt=>'Range'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when_type=>'NEVER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'Y',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3296826287308179750)
,p_name=>'P1279_EMPLOYMENT_STATUS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3292321694754684599)
,p_prompt=>'Employment Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VALUE_DESCRIPTION, ID',
'from table(pkg_global_fnts.get_lookup_value(''TBLEMPLOYMENTSTATUS'')) a',
'where org_id= :APP_ORG_ID',
'AND exists(select 1',
'            from hr_rcm_employee b',
'            where b.employment_status_id=a.id',
'            and org_id=:APP_ORG_ID',
'            AND EMPLOYMENT_CLASS_ID= :P1279_EMPLOYMENT_CLASS                 ',
'            )',
'ORDER BY 2'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All--'
,p_lov_cascade_parent_items=>'P1279_EMPLOYMENT_CLASS'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3296826309782179751)
,p_name=>'P1279_EMPLOYMENT_CLASS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3292321694754684599)
,p_prompt=>'Employment Class'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EMPLOYMENT_CLASS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.value_description a, a.id b',
'from  hr_hcf_lookup a ',
'where table_name=''TBLEMPLOYMENTCLASS''',
'and a.org_id = :APP_ORG_SHR_DED',
'and trunc(start_period) <= trunc(current_date)   ',
'and (trunc(end_period) is null or trunc(end_period) >= trunc(current_date))',
'and exists (select 1',
'           from tbluserdetail X',
'           where a.id = X.EMPLOYMENT_CLASS_ID          ',
'           AND org_id =:APP_ORG_ID',
'           and APPLICATION_SCHEMA_NAME = :G_PARSING_SCHEMA',
'           )',
'union',
'select VALUE_DESCRIPTION, ID',
'from hr_hcf_lookup x',
'where upper(table_name) = ''TBLEMPLOYMENTCLASS''',
'and  upper(table_value)= ''MULTIOPTPAYROLL''',
'and trunc(start_period) <= trunc(current_date)   ',
'and (trunc(end_period) is null or trunc(end_period) >= trunc(current_date))',
'and org_id = :APP_ORG_SHR_DED',
'and pkg_global_fnts.get_payroll_option(:APP_ORG_SHR_DED)=''DETAIL''',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3298434545847061883)
,p_name=>'P1279_COUNT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3292321694754684599)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(1)',
'  from',
'(select a.*,rownum rnum',
' from (select distinct',
'null,',
'initcap(a.Surname || '', '' || nvl(a.First_Name, '''')) ||''<br><span class="dob">DOB: ''||to_char(dob,''DD-MON-YYYY'')||''</span>'' label',
'from hr_rcm_individual a JOIN hr_rcm_employee b ON a.id = b.ind_id',
'where b.org_id=:APP_ORG_ID',
'and a.PHOTO is not null',
'AND EMPLOYMENT_CLASS_ID= :P1279_EMPLOYMENT_CLASS  ',
'AND EMPLOYMENT_STATUS_ID= nvl(:P1279_EMPLOYMENT_STATUS, EMPLOYMENT_STATUS_ID)',
'and lower(b.full_name||A.cell_phone||position_name||regexp_replace(''A.cell_phone'',''[^0-9.]'','''')) like ''%'' || :p1279_search || ''%'' ',
'and  exists ( ',
'              select 1',
'              FROM VW_USERACCESS x ',
'              where b.org_id = x.org_id',
'              and b.employment_class_id = x.employment_class_id',
'              and upper(b.payment_type) = x.payment_type    ',
'              )   ',
') a',
')'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3298434478833061882)
,p_name=>'set_count_chg'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1279_EMPLOYMENT_CLASS'
,p_condition_element=>'P1279_EMPLOYMENT_CLASS'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3298434383290061881)
,p_event_id=>wwv_flow_imp.id(3298434478833061882)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1279_COUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(1)',
'  from',
'(select a.*,rownum rnum',
' from (select distinct',
'null,',
'initcap(a.Surname || '', '' || nvl(a.First_Name, '''')) ||''<br><span class="dob">DOB: ''||to_char(dob,''DD-MON-YYYY'')||''</span>'' label',
'from hr_rcm_individual a JOIN hr_rcm_employee b ON a.id = b.ind_id',
'where b.org_id=:APP_ORG_ID',
'and a.PHOTO is not null',
'AND EMPLOYMENT_CLASS_ID= :P1279_EMPLOYMENT_CLASS  ',
'AND EMPLOYMENT_STATUS_ID= nvl(:P1279_EMPLOYMENT_STATUS, EMPLOYMENT_STATUS_ID)',
'and lower(b.full_name||A.cell_phone||position_name||regexp_replace(''A.cell_phone'',''[^0-9.]'','''')) like ''%'' || :p1279_search || ''%'' ',
'and  exists ( ',
'              select 1',
'              FROM VW_USERACCESS x ',
'              where b.org_id = x.org_id',
'              and b.employment_class_id = x.employment_class_id',
'              and upper(b.payment_type) = x.payment_type           ',
'              )   ',
') a',
')'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
