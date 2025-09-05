prompt --application/pages/page_01025
begin
--   Manifest
--     PAGE: 01025
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>1025
,p_name=>'frmMassMigration'
,p_step_title=>'Employee Movement to New Manager'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3278888442163947016)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(169964179174023908)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10460765779079194647)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3257702227382453283)
,p_plug_name=>'Employee'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3257702675589457240)
,p_plug_name=>'Mass Employee Reporting Movement (Source -->Destination)'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3305538292534713049)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3257702227382453283)
,p_button_name=>'MOVE_EMPLOYEES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Move Employees'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_security_scheme=>wwv_flow_imp.id(3279326921157677335)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3305539710548713054)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3257702675589457240)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3181335295931623624)
,p_name=>'P1025_REPORT_TO_DEST'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3257702227382453283)
,p_prompt=>'Report to Destination'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Administrative;ADMIN,Functional;FUNCTIONAL'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3305537436299713047)
,p_name=>'P1025_DESTINATION_MANAGER'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3257702227382453283)
,p_prompt=>'Destination Manager'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct initcap(Surname || '', '' || nvl(First_Name, '''')) ||'' ''||nvl(Middle_Name,'''') ||''(No.:''||EMP_COMPANY_NO||'')(''||PKG_GLOBAL_FNTS.Get_Lookup_Col(employment_class_id, ''TABLE_VALUE'' )||case when x.verified_by is null then '' Unverified)'' else ',
'case when DATE_SEPARATED is null then '' Active'' else '' Separated'' end|| '')'' end',
'|| a.POSITION_NAME||''; ''||a.DEPARTMENT_name||'')'' a, x.ID b',
'from VW_POSITION_LOCATION_V3 a join hr_rcm_employee x on (a.position_id  = x.position_id and a.wklocation_id = x.wklocation_id)',
'join hr_rcm_individual z on z.id=x.ind_id',
'WHERE x.verified_by is not null',
'and z.DOD is null',
'and pkg_global_fnts.get_lookup_col(Employment_Class_ID,''TABLE_VALUE'')  !=''PEN''',
'and  pkg_global_fnts.get_lookup_col(EMPLOYMENT_STATUS_ID,''TABLE_VALUE'')  not in (''APPL'',''INVW'')',
'and (x.separated_Status is  null or x.Date_Separated>current_date)',
'and  exists (select 1',
'             FROM VW_USERACCESS w',
'             where x.org_id=w.org_id',
'             and x.employment_class_id=w.employment_class_id',
'             AND upper(x.PAYMENT_TYPE)=upper(w.PAYMENT_TYPE))',
'order by 1',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(3305537899295713049)
,p_name=>'P1025_EMPLOYEE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3257702227382453283)
,p_prompt=>'Employee'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1025_REPORT_TO = ''ADMIN'' and :P1025_CURRENT_MANAGER !=1 then',
'',
'return',
'''select employee||''''(Emp No.: ''''||Emp_company_no||'''')'''' Employee,id',
'from VW_AVAILEMPLOYEE a',
'where  report_to_Admin= :P1025_CURRENT_MANAGER'';',
'',
'elsif  :P1025_REPORT_TO = ''FUNCTIONAL'' and :P1025_CURRENT_MANAGER  !=1  then',
'',
'return',
'''select employee||''''(Emp No.: ''''||Emp_company_no||'''')'''' Employee,id',
'from VW_AVAILEMPLOYEE a',
'where REPORT_TO_FUNCTIONAL = :P1025_CURRENT_MANAGER'';',
'',
'elsif :P1025_CURRENT_MANAGER =1 then',
'',
'return',
'''select employee||''''(Emp No.: ''''||Emp_company_no||'''')'''' Employee,id',
'from VW_AVAILEMPLOYEE a'';',
'',
'else',
'return  ''select null a, null b',
'         from dual'';',
'',
'end if;',
'',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1025_REPORT_TO,P1025_CURRENT_MANAGER'
,p_ajax_optimize_refresh=>'Y'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_06', 'Y',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3305538922154713050)
,p_name=>'P1025_CURRENT_MANAGER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3257702675589457240)
,p_prompt=>'Current Manager'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    initcap(surname',
'            || '', ''',
'            || nvl(first_name, ''''))',
'    || '' ''',
'    || nvl(middle_name, '''')',
'    || ''(No.:''',
'    || emp_company_no',
'    || '')(''',
'    || pkg_global_fnts.get_lookup_col(employment_class_id, ''TABLE_VALUE'')',
'    ||',
'        CASE',
'            WHEN x.verified_by IS NULL THEN',
'                '' Unverified)''',
'            ELSE',
'                    CASE',
'                        WHEN date_separated IS NULL THEN',
'                            '' Active''',
'                        ELSE',
'                            '' Separated''',
'                    END',
'                    || '')''',
'        END',
'    || a.position_name',
'    || ''; ''',
'    || b.unit_name',
'    || ''(''',
'    || initcap(b.PARENT_CLASSIFICATION_DESC)',
'    || '')'' a,',
'    x.id b',
'from',
'    vw_org_worklocation_position   a',
'    JOIN vw_organisation_structure      b ON a.orgdtl_id = b.id',
'    JOIN hr_rcm_employee                x ON x.wklocation_id = a.id',
'    JOIN hr_rcm_individual              z ON z.id = x.ind_id',
'WHERE',
'    x.verified_by IS NOT NULL',
'    AND z.dod IS NULL',
'    AND pkg_global_fnts.get_lookup_col(employment_class_id, ''TABLE_VALUE'') != ''PEN''',
'    AND pkg_global_fnts.get_lookup_col(employment_status_id, ''TABLE_VALUE'') NOT IN (',
'        ''APPL'',',
'        ''INVW''',
'    )',
'    AND ( x.separated_status IS NULL',
'          OR x.date_separated > current_date )',
'    AND EXISTS (',
'        SELECT',
'            1',
'        FROM',
'            vw_useraccess w',
'        WHERE',
'            x.org_id = w.org_id',
'            AND x.employment_class_id = w.employment_class_id',
'            AND upper(x.payment_type) = upper(w.payment_type)',
'    )',
'ORDER BY',
'    surname,',
'    first_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--No Manager Currently Set--'
,p_lov_null_value=>'1'
,p_cSize=>30
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(3305539400590713052)
,p_name=>'P1025_REPORT_TO'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3257702675589457240)
,p_prompt=>'Report to Source'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Administrative;ADMIN,Functional;FUNCTIONAL'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3305536667092713045)
,p_name=>'set_visible'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1025_EMPLOYEE'
,p_condition_element=>'P1025_EMPLOYEE'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3305536112339713041)
,p_event_id=>wwv_flow_imp.id(3305536667092713045)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3305538292534713049)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3305535689996713040)
,p_event_id=>wwv_flow_imp.id(3305536667092713045)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3305538292534713049)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3305537026241713046)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'mass_employee_movement'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'',
'BEGIN',
'',
'  l_selected := APEX_UTIL.STRING_TO_TABLE(:P1025_EMPLOYEE);',
'  ',
'    FOR i IN 1..l_selected.COUNT',
'    LOOP',
'    ---consider adding code to movement table to track this as a transaction',
'    If :P1025_REPORT_TO_DEST =''ADMIN'' and :P1025_CURRENT_MANAGER !=1 then',
' ',
'        update HR_RCM_EMPLOYEE',
'        set report_to = :P1025_DESTINATION_MANAGER            ',
'            ,remarks = remarks||'' Mass migration to new Report to executed:''||current_date',
'        where id = l_selected(i)',
'        and case wHen :P1025_REPORT_TO = ''ADMIN'' then report_to else  REPORT_TO_FUNCTIONAL end = :P1025_CURRENT_MANAGER;',
'    ',
'    elsif :P1025_REPORT_TO_DEST = ''FUNCTIONAL'' and :P1025_CURRENT_MANAGER  !=1  then',
'    ',
'        update HR_RCM_EMPLOYEE',
'        set  REPORT_TO_FUNCTIONAL = :P1025_DESTINATION_MANAGER',
'            ,remarks = remarks||'' Mass migration to new Report to executed:''||current_date',
'        where id = l_selected(i)',
'        and REPORT_TO_FUNCTIONAL = :P1025_CURRENT_MANAGER; ',
'    ',
'    elsIf :P1025_REPORT_TO_DEST =''ADMIN'' and :P1025_CURRENT_MANAGER =1 then',
' ',
'        update HR_RCM_EMPLOYEE',
'        set  REPORT_TO = :P1025_DESTINATION_MANAGER',
'            ,remarks = remarks||'' Mass migration to new Report to executed:''||current_date',
'        where id = l_selected(i);',
'        ',
'    else',
'     update HR_RCM_EMPLOYEE',
'        set  REPORT_TO_FUNCTIONAL = :P1025_DESTINATION_MANAGER',
'            ,remarks = remarks||'' Mass migration to new Report to executed:''||current_date',
'        where id = l_selected(i);',
'        ',
'    end if;',
'    ',
'    END LOOP;  ',
'    ',
'    :P1025_EMPLOYEE:=null;',
'    :P1025_DESTINATION_MANAGER :=null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3305538292534713049)
,p_process_when=>'P1025_EMPLOYEE'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'Successful execution of mass movement of employees to new manager.'
,p_internal_uid=>3189752892385399341
);
wwv_flow_imp.component_end;
end;
/
