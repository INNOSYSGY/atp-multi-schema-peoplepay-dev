prompt --application/pages/page_01339
begin
--   Manifest
--     PAGE: 01339
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
 p_id=>1339
,p_name=>'rptHoliday'
,p_step_title=>'Listing of Holidays'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3297885541186705980)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3298023431341769926)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(135092041305102508)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10460765779079194647)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3212563899859414337)
,p_plug_name=>'Listing of Employee Holidays'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ID", ',
'"HOLIDAY_CODE", COUNTRY,',
'"HOLIDAY_DATE",',
'"HOLIDAY_DESCRIP",',
'"RATE_OF_PAY",',
'case when "TENTATIVE_STATUS"=1 then ''Yes'' else ''No'' end  "TENTATIVE_STATUS",',
'"STATUS_CODE",',
'case when "ADHOC_HOLIDAY"=1 then ''Yes'' else ''No'' end "ADHOC_HOLIDAY",',
'"FOR_CALCULATION",',
'"LAST_CHANGED_BY",',
'"LAST_CHANGED_DATE",',
'"VERIFIED_DATE",',
'"VERIFIED_BY",',
'"MACHINE_INSERT",',
'"MACHINE_UPDATE",',
'"ENTERED_BY",',
'"ENTRY_DATE",',
'"TRANSACTION_TYPE_ID",',
'"STATUS"',
'from "HR_HCF_HOLIDAY" v',
'WHERE extract(year from HOLIDAY_DATE)=DECODE(:P1339_HOLIDAY_YEAR,1,extract(year from HOLIDAY_DATE),:P1339_HOLIDAY_YEAR)',
'and  org_id =:APP_ORG_ID',
'AND TRIM(UPPER(COUNTRY)) =  TRIM(UPPER(:APP_COUNTRY))'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1339_HOLIDAY_YEAR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3212563676282414337)
,p_name=>'Listing of System Holidays'
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
,p_detail_link=>'f?p=&APP_ID.:1340:&SESSION.::&DEBUG.::P1340_ID:#ID#'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(3258341133804318464)
,p_owner=>'PUR_INV'
,p_internal_uid=>134267630522890363
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301425583357084305)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301425108043084305)
,p_db_column_name=>'HOLIDAY_DATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Holiday Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'HOLIDAY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301424746566084304)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301424406501084304)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301423979156084303)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301423594879084303)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Transaction Type Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'TRANSACTION_TYPE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301423109910084302)
,p_db_column_name=>'STATUS'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301422775673084301)
,p_db_column_name=>'HOLIDAY_CODE'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Holiday Code'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'HOLIDAY_CODE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301422360192084299)
,p_db_column_name=>'HOLIDAY_DESCRIP'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Holiday Descrip'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'HOLIDAY_DESCRIP'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301421931628084299)
,p_db_column_name=>'RATE_OF_PAY'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Rate Of Pay'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'RATE_OF_PAY'
,p_rpt_named_lov=>wwv_flow_imp.id(3326549823615798358)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301421588120084299)
,p_db_column_name=>'STATUS_CODE'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Status Code'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'STATUS_CODE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301421121242084299)
,p_db_column_name=>'FOR_CALCULATION'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'For Calculation'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FOR_CALCULATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301420769310084297)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301420369119084297)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301419970869084293)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301419519405084292)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301419124304084292)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301418749466084291)
,p_db_column_name=>'TENTATIVE_STATUS'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Tentative Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TENTATIVE_STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301418345136084291)
,p_db_column_name=>'ADHOC_HOLIDAY'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Adhoc Holiday'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ADHOC_HOLIDAY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(139346135064162036)
,p_db_column_name=>'COUNTRY'
,p_display_order=>41
,p_column_identifier=>'AF'
,p_column_label=>'Country'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3212560197273411118)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'454133'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'HOLIDAY_DATE:TENTATIVE_STATUS:ADHOC_HOLIDAY:HOLIDAY_CODE:HOLIDAY_DESCRIP:RATE_OF_PAY:STATUS_CODE:FOR_CALCULATION:VERIFIED_DATE:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3301417157680084290)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(135092041305102508)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3301416808256084288)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(135092041305102508)
,p_button_name=>'GENERATE_HOLIDAYS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Generate Holidays'
,p_button_position=>'EDIT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM HR_HCF_HOLIDAY n',
'where extract(year from HOLIDAY_DATE)=extract(year from current_date)',
'and org_id= :APP_ORG_ID'))
,p_button_condition_type=>'NOT_EXISTS'
,p_security_scheme=>wwv_flow_imp.id(3279326921157677335)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3301417512889084290)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(135092041305102508)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1340:&SESSION.::&DEBUG.:1340::'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3301416087679084286)
,p_name=>'P1339_HOLIDAY_YEAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3212563899859414337)
,p_prompt=>'Holiday Year'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct extract(year from HOLIDAY_DATE) A, extract(year from HOLIDAY_DATE) B',
'from HR_HCF_HOLIDAY n',
'where org_id = :APP_ORG_SHR_DED',
'AND trim(upper(COUNTRY)) = trim(upper(:APP_COUNTRY))',
'order by 1 desc'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'---ALL--'
,p_lov_null_value=>'1'
,p_lov_cascade_parent_items=>'P1339_ORGANISATION'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3301416426648084288)
,p_name=>'P1339_ORGANISATION'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_imp.id(3212563899859414337)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3301415281396084285)
,p_name=>'Refresh - Create'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3301417512889084290)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3301414781402084284)
,p_event_id=>wwv_flow_imp.id(3301415281396084285)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3212563899859414337)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3301414404269084284)
,p_name=>'Refresh - Edit'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3212563899859414337)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3301413858730084283)
,p_event_id=>wwv_flow_imp.id(3301414404269084284)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3212563899859414337)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3182730177395899070)
,p_name=>'search'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1339_HOLIDAY_YEAR'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3182730122085899069)
,p_event_id=>wwv_flow_imp.id(3182730177395899070)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3212563899859414337)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3301415632717084285)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'gen_holiday'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   pkg_global_fnts.Gen_Holidays(:APP_ORG_ID);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Holiday generation failed.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3301416808256084288)
,p_process_success_message=>'Holidays Successfully generated.'
,p_internal_uid=>3185631498860770580
);
wwv_flow_imp.component_end;
end;
/
