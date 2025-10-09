prompt --application/pages/page_10004
begin
--   Manifest
--     PAGE: 10004
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
 p_id=>10004
,p_name=>'frmMedical_Dash'
,p_step_title=>'Medical History Gantt'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3825436450299065598)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#ganttitems div.fieldContainer.horizontal>label {',
'    float: none;',
'    width: auto;',
'    margin-left: 8px;',
'}',
'#ganttitems div.fieldContainer.horizontal div.fieldControls {',
'    margin-left: 8px;',
'    display: inline-block;',
'}',
'#ganttitems div.fieldContainer {float: left;}',
'',
'table.apex-gantt-chart tbody td a.open_task {background-color: #DBFFCC; border-color: #96D77B;}',
'table.apex-gantt-chart tbody td a.closed_task {background-color: #FFE5E5; border-color: #EBA2A5;}',
'table.apex-gantt-chart tbody td a.pending_task {background-color: #FFE4A9; border-color: #E6C06D}'))
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3806877419215039124)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3884007684295142133)
,p_plug_name=>'<b>Medical History</b>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4763936406485648829)
,p_plug_name=>'Medical History'
,p_parent_plug_id=>wwv_flow_imp.id(3884007684295142133)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_region_attributes=>'style="clear:both;"'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'     ct.MEDICAL_TYPE  parent_task,',
'    INDIVIDUAL||'':-''||ct.findings task_name,',
'    ct.DATE_OF_OCCURANCE start_date,',
'    ct.DATE_SUBMITTED end_date,',
'    case to_char(ct.MEDICAL_TYPE)',
'        when ''EMPLOYMENT'' then ''open_task''',
'        when ''NIS'' then ''closed_task''',
'        when ''ANNUAL'' then ''pending_task''',
'        else ''UNKNOWN_TASK''',
'    end child_class,',
'    ct.id,',
'    bb.id parent_id',
'from HR_MED_MEDICALHISTORY aa join HR_MED_MEDICALHISTORYDTL ct on aa.id = ct.MED_HIS_ID',
'join hr_rcm_employee  bb on bb.id=aa.emp_id',
'join VW_INDIVIDUAL xx on xx.id=bb.ind_id',
'where aa.org_id=:APP_ORG_ID',
'order by  ct.MEDICAL_TYPE, INDIVIDUAL||'':-''||ct.findings',
'',
'',
'',
'',
'',
''))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.GANTT_CHART'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'PARENT_TASK',
  'attribute_02', 'TASK_NAME',
  'attribute_03', 'TASK_NAME',
  'attribute_04', 'CHILD_CLASS',
  'attribute_05', 'START_DATE',
  'attribute_06', 'END_DATE',
  'attribute_07', 'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:RP:P1281_ID:&PARENT_ID.',
  'attribute_08', 'f?p=&APP_ID.:1410:&SESSION.::&DEBUG.:RP:P1410_ID:&ID.',
  'attribute_09', 'P10004_PERIOD_TYPE',
  'attribute_10', 'P10004_START_DATE',
  'attribute_11', '50:15:15:8')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5089420586093901622)
,p_plug_name=>'Gantt Controls'
,p_parent_plug_id=>wwv_flow_imp.id(3884007684295142133)
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4763941611727678648)
,p_plug_name=>'<b>About this page</b>'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_source=>'<p>Employee Medical History covers types of medicals. Those related to employment, routine NIB/SS and Annual medicals.</p>'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3811896630433900673)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(5089420586093901622)
,p_button_name=>'P10004_GO'
,p_button_static_id=>'P3_GO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--small'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Go'
,p_button_alignment=>'RIGHT'
,p_button_cattributes=>'style="margin: 8px 0 0 8px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3725627264619966953)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3884007684295142133)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1408:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3811895909862900671)
,p_name=>'P10004_START_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5089420586093901622)
,p_prompt=>'Start Date'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select min(DATE_OF_OCCURANCE)',
'from HR_MED_MEDICALHISTORYDTL',
'WHERE ORG_ID=:APP_ORG_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_column=>5
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
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
 p_id=>wwv_flow_imp.id(3811896280405900671)
,p_name=>'P10004_PERIOD_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5089420586093901622)
,p_item_default=>'W'
,p_prompt=>'Period'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Daily;D,Weekly;W,Monthly;M,Quarterly;Q'
,p_cHeight=>1
,p_tag_css_classes=>'mnw180'
,p_colspan=>4
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3811815179021383184)
,p_name=>'Submit Page'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10004_START_DATE,P10004_PERIOD_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3811815067892383183)
,p_event_id=>wwv_flow_imp.id(3811815179021383184)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp.component_end;
end;
/
