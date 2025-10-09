prompt --application/pages/page_01026
begin
--   Manifest
--     PAGE: 01026
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>800
,p_default_id_offset=>221543258820678920
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>1026
,p_name=>'frmMassMigration2'
,p_step_title=>'Mass Employee Position Movement'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3806439560326308805)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3806877419215039124)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(697515368112385698)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988316897241556436)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3785221517408321102)
,p_plug_name=>'Employee'
,p_region_template_options=>'#DEFAULT#:t-Region--accent4:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3785222673435321186)
,p_plug_name=>'Mass Employee Position Movement'
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
 p_id=>wwv_flow_imp.id(3833077385609034608)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3785221517408321102)
,p_button_name=>'MOVE_EMPLOYEES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Move Employees'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_security_scheme=>wwv_flow_imp.id(3806878039320039124)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3833080892501034616)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3785222673435321186)
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
 p_id=>wwv_flow_imp.id(3833076546257034607)
,p_name=>'P1026_DESTINATION_POSITION'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3785221517408321102)
,p_prompt=>'Designation Position'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT B.POSITION_NAME||''; ''||B.DEPARTMENT_name||'' ''||LOCATION||''(''||GRADE_CODE||'' ''||grade_mini||''--''||GRADE_MAX||'')'' DESCRIPT, b.id b',
'FROM VW_POSITION_LOCATION_V3 B JOIN hr_hcf_positiongrade C ON C.ID = B.GRADE_ID',
'WHERE',
'    EXISTS (',
'        SELECT 1',
'        FROM hr_rcm_employee x',
'        WHERE b.POSITION_ID = x.POSITION_ID',
'        AND B.wklocation_id = x.wklocation_id',
'        AND X.EMP_GRADE_ID=b.grade_id',
'        AND org_id =:APP_ORG_ID',
'    )',
' AND  b.id != :P1026_CURRENT_POSITION',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_lov_cascade_parent_items=>'P1026_CURRENT_POSITION'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(3833076993824034607)
,p_name=>'P1026_EMPLOYEE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3785221517408321102)
,p_prompt=>'Employee'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select employee||''(Emp No.: ''||Emp_company_no||'')'' Employee, id',
'from VW_AVAILEMPLOYEE a',
'where position_id = :P1026_CURRENT_POSITION'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1026_CURRENT_POSITION'
,p_ajax_optimize_refresh=>'Y'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3833078109625034611)
,p_name=>'P1026_CURRENT_POSITION'
,p_is_required=>true
,p_item_sequence=>119
,p_item_plug_id=>wwv_flow_imp.id(3785222673435321186)
,p_prompt=>'Current Position'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT B.POSITION_NAME||''; ''||B.DEPARTMENT_name||'' ''||LOCATION||''(''||GRADE_CODE||'' ''||grade_mini||''--''||GRADE_MAX||'')'' DESCRIPT, b.POSITION_ID b',
'FROM VW_POSITION_LOCATION_V3 B JOIN hr_hcf_positiongrade C ON C.ID = B.GRADE_ID',
'WHERE',
'    EXISTS (',
'        SELECT 1',
'        FROM hr_rcm_employee x',
'        WHERE b.POSITION_ID = x.POSITION_ID',
'        AND B.wklocation_id = x.wklocation_id',
'        AND X.EMP_GRADE_ID=b.grade_id',
'        AND org_id =:APP_ORG_ID',
'    )',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_cSize=>30
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(3833078440499034611)
,p_name=>'P1026_APPROVED_DATE'
,p_item_sequence=>109
,p_item_plug_id=>wwv_flow_imp.id(3785222673435321186)
,p_prompt=>'Approved Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(3833078867680034611)
,p_name=>'P1026_APPROVED_BY'
,p_item_sequence=>89
,p_item_plug_id=>wwv_flow_imp.id(3785222673435321186)
,p_prompt=>'Approved by'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select employee, id',
'from vw_availemployee',
'order by 1'))
,p_cSize=>30
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(3833079308503034612)
,p_name=>'P1026_EFFECTIVE'
,p_is_required=>true
,p_item_sequence=>79
,p_item_plug_id=>wwv_flow_imp.id(3785222673435321186)
,p_prompt=>'Effective'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
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
 p_id=>wwv_flow_imp.id(3833079629288034612)
,p_name=>'P1026_TO_DATE'
,p_item_sequence=>69
,p_item_plug_id=>wwv_flow_imp.id(3785222673435321186)
,p_prompt=>'To Date'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>4000
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(3833080025516034615)
,p_name=>'P1026_FROM_DATE'
,p_is_required=>true
,p_item_sequence=>49
,p_item_plug_id=>wwv_flow_imp.id(3785222673435321186)
,p_prompt=>'From Date'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
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
 p_id=>wwv_flow_imp.id(3833080467844034615)
,p_name=>'P1026_MOVEMENT_TYPE'
,p_is_required=>true
,p_item_sequence=>39
,p_item_plug_id=>wwv_flow_imp.id(3785222673435321186)
,p_prompt=>'Movement Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Transfer,Promotion,Demotion,Out-Station,Seconded,Re-Assignment'
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
 p_id=>wwv_flow_imp.id(3833075764689034605)
,p_name=>'set_visible'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1026_EMPLOYEE'
,p_condition_element=>'P1026_EMPLOYEE'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3833075261835034605)
,p_event_id=>wwv_flow_imp.id(3833075764689034605)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3833077385609034608)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3833074751593034604)
,p_event_id=>wwv_flow_imp.id(3833075764689034605)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3833077385609034608)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3833076208030034606)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'mass_employee_movement'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_selected APEX_APPLICATION_GLOBAL.VC_ARR2; v_curval number;',
'',
'BEGIN',
'',
'  l_selected := APEX_UTIL.STRING_TO_TABLE(:P1026_EMPLOYEE);',
'  ',
'    FOR i IN 1..l_selected.COUNT',
'    LOOP',
'    ',
' ',
'           INSERT INTO HR_MOV_EMPMOVEMENT( EMP_ID, CHANGE_TYPE, FROM_DATE, TO_DATE, EFFECTIVE_DATE, REPORT_TO,  DATE_EMPLOYED, DATE_INTERVIEWED,',
'                INTERVIEWED_BY, APPROVED_BY, APPROVED_DATE, wklocation_id, position_id, REPORT_TO_FUNCTIONAL, APPOINTMENT_DATE, APPLICATION_DATE, ',
'                JOB_APPLIED_FOR, EMPLOYMENT_STATUS_ID, ORG_ID, TRANSACTION_TYPE_ID, STATUS, REMARKS, EMP_COMPANY_NO, CONTRACT_STAFF,',
'                 REHIRED, PRIMARY_TAX_JOB, UNION_CODE, SEPARATED_STATUS, PAYROLL_EFFECTIVE, UNION_CODE_ID',
'                , PERSONAL_RATE, SALARY_CURRENCY, PAYMENT_MODE ,VERIFIED_BY, VERIFIED_DATE)',
'',
'            SELECT ID, :P1026_MOVEMENT_TYPE, :P1026_FROM_DATE, :P1026_TO_DATE, :P1026_EFFECTIVE, REPORT_TO,  DATE_EMPLOYED, DATE_INTERVIEWED, INTERVIEWED_BY,',
'                :P1026_APPROVED_BY, :P1026_APPROVED_DATE, :P1026_DESTINATION_POSITION, :P1026_DESTINATION_POSITION, REPORT_TO_FUNCTIONAL, APPOINTMENT_DATE, APPLICATION_DATE, ',
'                JOB_APPLIED_FOR, EMPLOYMENT_STATUS_ID, ORG_ID, 110,	452,  REMARKS, EMP_COMPANY_NO, CONTRACT_STAFF,',
'                 REHIRED, PRIMARY_TAX_JOB, UNION_CODE, SEPARATED_STATUS, PAYROLL_EFFECTIVE, UNION_CODE_ID',
'                ,pkg_global_fnts.fn_personalrate(id, trunc(current_date)) personal_rate  ',
'                ,pkg_global_fnts.FN_GETPAYCURRENCY(id, trunc(current_date)) currency',
'                ,pkg_global_fnts.fn_getPaymode(id, trunc(current_date)) Paymode',
'                , Nvl(V(''APP_USER''),User), current_date',
'            FROM HR_RCM_EMPLOYEE',
'            WHERE ID = l_selected(i);',
'            ',
'            v_curval :=EMPMOVEMENT_SEQ.currval;',
'            ',
'            update HR_MOV_EMPMOVEMENT',
'            set status=453',
'            where id= v_curval;',
'',
'    ',
'    END LOOP;  ',
'    ',
'    :P1026_EMPLOYEE:=null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3833077385609034608)
,p_process_when=>'P1026_EMPLOYEE'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'Successful execution of mass movement of employees to new Position Location.'
,p_internal_uid=>3189740956011359112
);
wwv_flow_imp.component_end;
end;
/
