prompt --application/pages/page_01414
begin
--   Manifest
--     PAGE: 01414
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>221824690189185566
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>1414
,p_name=>'rptSeparation'
,p_alias=>'RPTSEPARATION'
,p_step_title=>'Listing of Employee Separation'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3825717831892571292)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3798571118325496754)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3711265703629511692)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988598328610063082)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3773898853438426416)
,p_plug_name=>'Listing of Employee Separations'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>21
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'   "HR_MOV_SEPARATIONBENEFIT"."EMP_ID" "EMP_ID", ',
'   "HR_MOV_SEPARATIONBENEFIT"."DATE_SEPARATED" "DATE_SEPARATED", ',
'   "HR_MOV_SEPARATIONBENEFIT"."SEPARATION_TYPE" "SEPARATION_TYPE", ',
'   "HR_MOV_SEPARATIONBENEFIT"."APPROVED_BY" "APPROVED_BY", ',
'   "HR_MOV_SEPARATIONBENEFIT"."APPROVED_DATE" "DATE_APPROVED", ',
'   "HR_MOV_SEPARATIONBENEFIT"."ID" "ID", ',
'   "HR_MOV_SEPARATIONBENEFIT"."REMARKS_PAYMENT" "REMARKS_PAYMENT", ',
'   "HR_MOV_SEPARATIONBENEFIT"."REMARKS_OWE" "REMARKS_OWE", ',
'   "HR_MOV_SEPARATIONBENEFIT"."REMARKS" "REMARKS", ',
'   "HR_MOV_SEPARATIONBENEFIT"."TRANSACTION_TYPE_ID" "TRANSACTION_TYPE_ID", ',
'   "HR_MOV_SEPARATIONBENEFIT"."STATUS" "STATUS", ',
'   "HR_MOV_SEPARATIONBENEFIT"."DISCHARGED_MARK" "DISCHARGED_MARK", ',
'   "HR_MOV_SEPARATIONBENEFIT"."ENTERED_BY" "ENTERED_BY", ',
'   "HR_MOV_SEPARATIONBENEFIT"."ENTRY_DATE" "ENTRY_DATE", ',
'   "HR_MOV_SEPARATIONBENEFIT"."LAST_CHANGED_BY" "LAST_CHANGED_BY", ',
'   "HR_MOV_SEPARATIONBENEFIT"."LAST_CHANGED_DATE" "LAST_CHANGED_DATE", ',
'   "HR_MOV_SEPARATIONBENEFIT"."VERIFIED_BY" "VERIFIED_BY", ',
'   "HR_MOV_SEPARATIONBENEFIT"."VERIFIED_DATE" "VERIFIED_DATE", ',
'   "HR_MOV_SEPARATIONBENEFIT"."MACHINE_INSERT" "MACHINE_INSERT", ',
'   "HR_MOV_SEPARATIONBENEFIT"."MACHINE_UPDATE" "MACHINE_UPDATE",HR_MOV_SEPARATIONBENEFIT.RETIREMENT_DATE,',
'DOD,',
'EMP_CONTRACT_ID,',
'EXECUTED',
'FROM ',
'   "HR_MOV_SEPARATIONBENEFIT"  JOIN HR_RCM_EMPLOYEE V ON V.ID=HR_MOV_SEPARATIONBENEFIT.EMP_ID',
'where HR_MOV_SEPARATIONBENEFIT.DATE_SEPARATED BETWEEN :P1414_START_DATE AND :P1414_END_DATE',
'and exists ( ',
'              select 1',
'              FROM VW_USERACCESS A ',
'              where v.org_id=a.org_id',
'              and v.employment_class_id=a.employment_class_id',
'              AND UPPER(v.PAYMENT_TYPE)=A.PAYMENT_TYPE           ',
'              )',
'and HR_MOV_SEPARATIONBENEFIT.ORG_ID = :APP_ORG_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1414_START_DATE,P1414_END_DATE'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3773898760172426416)
,p_name=>'Listing of Employee Separation'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1415:&SESSION.::&DEBUG.::P1415_ID:#ID#'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'PUR_INV'
,p_internal_uid=>416426315558751582
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3726205867288330991)
,p_db_column_name=>'EMP_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3831455935501007936)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3726206199348330991)
,p_db_column_name=>'DATE_SEPARATED'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Date Separated'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_SEPARATED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3726206596618330992)
,p_db_column_name=>'APPROVED_BY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Approved By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'APPROVED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3726207063074330992)
,p_db_column_name=>'DATE_APPROVED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Date Approved'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_APPROVED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3726207397374330992)
,p_db_column_name=>'ID'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Edit'
,p_column_link=>'f?p=#APP_ID#:1415:#APP_SESSION#:::RP:P1415_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3726207822560330993)
,p_db_column_name=>'REMARKS_PAYMENT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Remarks Payment'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REMARKS_PAYMENT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3726208173296330993)
,p_db_column_name=>'REMARKS_OWE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Remarks Owe'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REMARKS_OWE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3726208667990330993)
,p_db_column_name=>'REMARKS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REMARKS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3726208971764330993)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Transaction Type Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'TRANSACTION_TYPE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3726209382601330994)
,p_db_column_name=>'STATUS'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'STATUS'
,p_rpt_named_lov=>wwv_flow_imp.id(3854810471495819812)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3726209775456330994)
,p_db_column_name=>'DISCHARGED_MARK'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Discharged Mark'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'DISCHARGED_MARK'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3726210186855330994)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3726210627240330995)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3726211047279330995)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3726211697762330996)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3726212160282330996)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3726212478088330996)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3726212871764330997)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3726213285499330997)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3726205412817330991)
,p_db_column_name=>'SEPARATION_TYPE'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Separation Type'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_static_id=>'SEPARATION_TYPE'
,p_rpt_named_lov=>wwv_flow_imp.id(3854218801330438462)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3726203772983330989)
,p_db_column_name=>'RETIREMENT_DATE'
,p_display_order=>31
,p_column_identifier=>'V'
,p_column_label=>'Retirement Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3726204173969330990)
,p_db_column_name=>'DOD'
,p_display_order=>41
,p_column_identifier=>'W'
,p_column_label=>'Dod'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3726204651312330990)
,p_db_column_name=>'EMP_CONTRACT_ID'
,p_display_order=>51
,p_column_identifier=>'X'
,p_column_label=>'Emp Contract'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3726205053585330990)
,p_db_column_name=>'EXECUTED'
,p_display_order=>61
,p_column_identifier=>'Y'
,p_column_label=>'Executed'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854181035973426433)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3773896248590425042)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'390301'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EMP_ID:DATE_SEPARATED:APPROVED_BY:DATE_APPROVED:SEPARATION_TYPE:RETIREMENT_DATE:DOD:EMP_CONTRACT_ID:STATUS:EXECUTED:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3726202746418330987)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3711265703629511692)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3726203102013330988)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3711265703629511692)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1415:&SESSION.::&DEBUG.:1415::'
,p_security_scheme=>wwv_flow_imp.id(3807160206270545771)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3726214108444330998)
,p_name=>'P1414_START_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3773898853438426416)
,p_item_default=>'TRUNC(current_date,''YEAR'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Start Date'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(3726214565116330999)
,p_name=>'P1414_END_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3773898853438426416)
,p_item_default=>'ADD_MONTHS(trunc(current_date,''YEAR''),12)-1'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'End Date'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(3726215595793331001)
,p_computation_sequence=>1
,p_computation_item=>'P1415_ID'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_compute_when=>'CREATE'
,p_compute_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3726215920483331002)
,p_name=>'dyRefresh'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1414_START_DATE'
,p_condition_element=>'P1414_START_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3726216374125331002)
,p_event_id=>wwv_flow_imp.id(3726215920483331002)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3773898853438426416)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3726216849873331002)
,p_name=>'dyRefresh_1'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1414_END_DATE'
,p_condition_element=>'P1414_END_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3726217283862331002)
,p_event_id=>wwv_flow_imp.id(3726216849873331002)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3773898853438426416)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
