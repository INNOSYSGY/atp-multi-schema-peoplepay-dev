prompt --application/pages/page_01453
begin
--   Manifest
--     PAGE: 01453
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
 p_id=>1453
,p_name=>'rptAuditTrail'
,p_step_title=>'Self Serve or Audit Trail History'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3806721070126816462)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3807158850583545770)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3779383114810451789)
,p_plug_name=>'Self Serve or Audit trail History'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TABLE_NAME,FIELD_NAME,',
'ACTION,',
'  DATE_OF_ACTION,',
'  case when FIELD_NAME in (''VILLAGE_WARD_ID'',''TOWN_ID'',''REGION_ID'',''COUNTY_ID'') then initcap(pkg_global_fnts.get_lookup_col(field_contents, ''VALUE_DESCRIPTION''))',
'     else field_contents end  FIELD_CONTENTS,',
'  ACTION_BY,',
'  SEQ_CODE,',
'  PRIMARY_KEY_ROW,',
'  case when FIELD_NAME in (''VILLAGE_WARD_ID'',''TOWN_ID'',''REGION_ID'',''COUNTY_ID'') then initcap(pkg_global_fnts.get_lookup_col(FIELD_VALUE_CURR, ''VALUE_DESCRIPTION''))',
'     else FIELD_VALUE_CURR end FIELD_VALUE_CURR,',
'  CLIENT_HOST,',
'  JIT_CHANGE_BY,',
'  JIT_CHANGE_DATE',
'FROM TBLTRANSACTIONCHANGESHEAD a join TBLTRANSACTIONCHANGESMID b on a.TABLE_CODE=b.TABLE_CODE',
'join TBLTRANSACTIONCHANGESDETAIL c on b.field_id=c.field_id',
'where PRIMARY_KEY_ROW=DECODE(:P1453_AS_AT_VALUE,0,PRIMARY_KEY_ROW,:P1453_AS_AT_VALUE)',
'and c.org_id = :APP_ORG_ID',
'and B.FIELD_ID=DECODE(:P1453_FIELD_NAME,0,B.FIELD_ID,:P1453_FIELD_NAME)',
'AND A.TABLE_CODE=DECODE(:P1453_TABLE_NAME,-1,A.TABLE_CODE,:P1453_TABLE_NAME)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1453_AS_AT_VALUE,P1453_FIELD_NAME,P1453_TABLE_NAME'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3779382917602451789)
,p_name=>'Audit Trail'
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
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PPLERP'
,p_internal_uid=>95280938733721346
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3853638976909368371)
,p_db_column_name=>'ACTION'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Action'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ACTION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3853638644427368367)
,p_db_column_name=>'DATE_OF_ACTION'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'New Changed Date'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_OF_ACTION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3853638247914368366)
,p_db_column_name=>'FIELD_CONTENTS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Old Value'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FIELD_CONTENTS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3853637795721368366)
,p_db_column_name=>'ACTION_BY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'New Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ACTION_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3853637444092368366)
,p_db_column_name=>'SEQ_CODE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Seq Code'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'SEQ_CODE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3853637004484368365)
,p_db_column_name=>'PRIMARY_KEY_ROW'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Primary Key Row'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PRIMARY_KEY_ROW'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3853636584251368365)
,p_db_column_name=>'FIELD_VALUE_CURR'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'New Value'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FIELD_VALUE_CURR'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3853636162767368364)
,p_db_column_name=>'CLIENT_HOST'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Client Host'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CLIENT_HOST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3853635827882368364)
,p_db_column_name=>'JIT_CHANGE_BY'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Old Change By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'JIT_CHANGE_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3853635391854368363)
,p_db_column_name=>'JIT_CHANGE_DATE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Old Change Date'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_static_id=>'JIT_CHANGE_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3853635043921368363)
,p_db_column_name=>'TABLE_NAME'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Table Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TABLE_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3853634568970368362)
,p_db_column_name=>'FIELD_NAME'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Field Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FIELD_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3779381630244451788)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'210296'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'FIELD_CONTENTS:TABLE_NAME:FIELD_NAME:JIT_CHANGE_BY:JIT_CHANGE_DATE:ACTION_BY:PRIMARY_KEY_ROW:FIELD_VALUE_CURR:CLIENT_HOST:DATE_OF_ACTION:'
,p_break_on=>'TABLE_NAME:FIELD_NAME:PRIMARY_KEY_ROW:0:0:0'
,p_break_enabled_on=>'TABLE_NAME:FIELD_NAME:PRIMARY_KEY_ROW:0:0:0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3853633792467368356)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3779383114810451789)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:199:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3853632583532368350)
,p_name=>'P1453_AS_AT_VALUE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3779383114810451789)
,p_prompt=>'As At Value'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select FIELD_VALUE_CURR||'' as at ''||to_char(DATE_OF_ACTION,''DD-Mon-YYYY'') A,  PRIMARY_KEY_ROW',
'from TBLTRANSACTIONCHANGESDETAIL',
'WHERE FIELD_ID=:P1453_FIELD_NAME',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--ALL--'
,p_lov_null_value=>'0'
,p_lov_cascade_parent_items=>'P1453_FIELD_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3853632983240368351)
,p_name=>'P1453_FIELD_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3779383114810451789)
,p_prompt=>'Field Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select FIELD_NAME,FIELD_ID',
'from TBLTRANSACTIONCHANGESMID',
'WHERE TABLE_CODE=:P1453_TABLE_NAME',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--ALL--'
,p_lov_null_value=>'0'
,p_lov_cascade_parent_items=>'P1453_TABLE_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3853633443300368354)
,p_name=>'P1453_TABLE_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3779383114810451789)
,p_prompt=>'Table Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select table_name,TABLE_CODE',
'from TBLTRANSACTIONCHANGESHEAD a',
'WHERE exists(select 1',
'             from TBLTRANSACTIONCHANGESMID b join TBLTRANSACTIONCHANGESDETAIL c on b.FIELD_ID=c.FIELD_ID',
'             where A.TABLE_CODE=B.TABLE_CODE',
'             AND c.org_id=:APP_ORG_ID',
'             )',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--ALL--'
,p_lov_null_value=>'-1'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3706547570009523181)
,p_name=>'search_table'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1453_TABLE_NAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3706547458718523180)
,p_event_id=>wwv_flow_imp.id(3706547570009523181)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3779383114810451789)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3706547286792523178)
,p_name=>'search_field'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1453_FIELD_NAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3706547106482523177)
,p_event_id=>wwv_flow_imp.id(3706547286792523178)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3779383114810451789)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3706547078122523176)
,p_name=>'search_value'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1453_AS_AT_VALUE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3706546925800523175)
,p_event_id=>wwv_flow_imp.id(3706547078122523176)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3779383114810451789)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
