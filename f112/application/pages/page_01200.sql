prompt --application/pages/page_01200
begin
--   Manifest
--     PAGE: 01200
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
 p_id=>1200
,p_name=>'rptLookup'
,p_alias=>'RPTLOOKUP'
,p_step_title=>'Listing of System References'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3297885541186705980)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(142628470776158817)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10460765779079194647)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4078910754595960566)
,p_plug_name=>'Listing of System References'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ID",org_id,',
'(select value_description from HR_HCF_LOOKUP y where y.id= v.LOOKUP_ID and  y.org_id=:APP_ORG_SHR_DED)"LOOKUP_ID", ',
'"TABLE_NAME", lock_ref,',
'"TABLE_DESCRIPTION", --natural_account_code_sec,',
'"TABLE_VALUE",',
'"VALUE_DESCRIPTION",country,',
'"CLASSIFICATION", source_name, source_name_alt,LOOKUP_TABLE,',
'"CUSTOM_FIELD",',
'"CUSTOM_FIELD1",',
'"START_PERIOD",',
'"END_PERIOD",',
'"ENTRY_DATE",',
'"ENTERED_BY",',
'"VERIFIED_BY",',
'"VERIFIED_DATE",',
'"MACHINE_INSERT",',
'"MACHINE_UPDATE",',
'"LAST_CHANGED_BY",',
'"LAST_CHANGED_DATE", remarks',
' from   "HR_HCF_LOOKUP" v',
' WHERE org_id=:APP_ORG_SHR_DED',
' and  v.MODULE_MAIN_ID IN (:APP_MODULE_ID ,-999)',
' and  trim(UPPER(Table_Name))=trim(DECODE(UPPER(:P1200_REFERENCE_TABLES),''1'',UPPER(Table_Name),UPPER(:P1200_REFERENCE_TABLES)))',
' --and country in (''ALL_COUNTRIES'',:APP_COUNTRY)',
'',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1200_REFERENCE_TABLES'
,p_prn_output_show_link=>'Y'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#ffffff'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(4078910551021960555)
,p_name=>'HR_HCF_LOOKUP'
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
,p_detail_link=>'f?p=&APP_ID.:1201:&SESSION.::&DEBUG.:1201:P1201_ID,P1201_PAGE_ID,P1201_SWITCH,P1201_REFERENCE_TABLES:#ID#,1200,2,#TABLE_NAME#'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(3279327210431677335)
,p_owner=>'PUR_INV'
,p_internal_uid=>1828536506513983947
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2769205043465597406)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
,p_help_text=>'No help available for this page item.'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2769204548094597406)
,p_db_column_name=>'TABLE_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Table Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TABLE_NAME'
,p_use_as_row_header=>'N'
,p_help_text=>'No help available for this page item.'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2769204167285597405)
,p_db_column_name=>'TABLE_DESCRIPTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Table Description'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TABLE_DESCRIPTION'
,p_use_as_row_header=>'N'
,p_help_text=>'No help available for this page item.'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2769203776042597404)
,p_db_column_name=>'TABLE_VALUE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Table Value'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TABLE_VALUE'
,p_use_as_row_header=>'N'
,p_help_text=>'No help available for this page item.'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2769203386646597404)
,p_db_column_name=>'VALUE_DESCRIPTION'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Value Description'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VALUE_DESCRIPTION'
,p_use_as_row_header=>'N'
,p_help_text=>'No help available for this page item.'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2769202965535597404)
,p_db_column_name=>'CLASSIFICATION'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Classification'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CLASSIFICATION'
,p_use_as_row_header=>'N'
,p_help_text=>'No help available for this page item.'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2769202605480597403)
,p_db_column_name=>'CUSTOM_FIELD'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Custom Field'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CUSTOM_FIELD'
,p_use_as_row_header=>'N'
,p_help_text=>'No help available for this page item.'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2769202244225597403)
,p_db_column_name=>'CUSTOM_FIELD1'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Custom Field1'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CUSTOM_FIELD1'
,p_use_as_row_header=>'N'
,p_help_text=>'No help available for this page item.'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2769201780853597402)
,p_db_column_name=>'START_PERIOD'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Start Period'
,p_column_type=>'DATE'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'START_PERIOD'
,p_use_as_row_header=>'N'
,p_help_text=>'No help available for this page item.'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2769201438183597402)
,p_db_column_name=>'END_PERIOD'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'End Period'
,p_column_type=>'DATE'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'END_PERIOD'
,p_use_as_row_header=>'N'
,p_help_text=>'No help available for this page item.'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2769200991385597402)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'Y'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
,p_help_text=>'No help available for this page item.'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2769200583002597401)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
,p_help_text=>'No help available for this page item.'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2769200162984597401)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_BY'
,p_use_as_row_header=>'N'
,p_help_text=>'No help available for this page item.'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2769199821971597400)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_DATE'
,p_use_as_row_header=>'N'
,p_help_text=>'No help available for this page item.'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2769199437784597400)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
,p_help_text=>'No help available for this page item.'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2769199013025597399)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
,p_help_text=>'No help available for this page item.'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2769198597223597399)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
,p_help_text=>'No help available for this page item.'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2769198184062597398)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'Y'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
,p_help_text=>'No help available for this page item.'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2769197786448597398)
,p_db_column_name=>'LOOKUP_ID'
,p_display_order=>29
,p_column_identifier=>'T'
,p_column_label=>'Parent Value'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2769196619511597396)
,p_db_column_name=>'REMARKS'
,p_display_order=>59
,p_column_identifier=>'W'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2769196311627597395)
,p_db_column_name=>'COUNTRY'
,p_display_order=>69
,p_column_identifier=>'X'
,p_column_label=>'Country'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(117714418953064741)
,p_db_column_name=>'LOCK_REF'
,p_display_order=>79
,p_column_identifier=>'Y'
,p_column_label=>'Lock Ref'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3326348486442557998)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47715603910825615)
,p_db_column_name=>'SOURCE_NAME'
,p_display_order=>89
,p_column_identifier=>'Z'
,p_column_label=>'Source Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47715788749825616)
,p_db_column_name=>'SOURCE_NAME_ALT'
,p_display_order=>99
,p_column_identifier=>'AA'
,p_column_label=>'Source Name Alt'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(63840182620810450)
,p_db_column_name=>'ORG_ID'
,p_display_order=>109
,p_column_identifier=>'AB'
,p_column_label=>'Org Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81970419676214138)
,p_db_column_name=>'LOOKUP_TABLE'
,p_display_order=>119
,p_column_identifier=>'AC'
,p_column_label=>'Lookup Table'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4078908549560960471)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'5188313'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'TABLE_NAME:TABLE_DESCRIPTION:TABLE_VALUE:VALUE_DESCRIPTION:LOOKUP_ID:CLASSIFICATION:START_PERIOD:END_PERIOD:REMARKS:COUNTRY:LOCK_REF:'
,p_sort_column_1=>'VALUE_DESCRIPTION'
,p_sort_direction_1=>'ASC'
,p_break_on=>'TABLE_NAME:TABLE_DESCRIPTION:0:0:0:0'
,p_break_enabled_on=>'TABLE_NAME:TABLE_DESCRIPTION:0:0:0:0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2769206868714597423)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(142628470776158817)
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
 p_id=>wwv_flow_imp.id(2769207327014597424)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(142628470776158817)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add Reference'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1201:&SESSION.::&DEBUG.:1201:P1201_PAGE_ID,P1201_SWITCH:1200,2'
,p_security_scheme=>wwv_flow_imp.id(3279326301052677335)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2769207682138597425)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(142628470776158817)
,p_button_name=>'ADD_TYPE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add Reference Type'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1201:&SESSION.::&DEBUG.:1201:P1201_SWITCH:3'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2769205760252597417)
,p_name=>'P1200_ORGANISATION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4078910754595960566)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2769206221695597419)
,p_name=>'P1200_REFERENCE_TABLES'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4078910754595960566)
,p_prompt=>'Search by Reference Tables'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select  distinct initcap(trim(Table_Description)) A,Table_Name ',
'From HR_HCF_LOOKUP v',
'where (org_id=:APP_ORG_SHR_DED OR COUNTRY=''ALL_COUNTRIES'')',
'and  v.MODULE_MAIN_ID in (:APP_MODULE_ID, -999)       ',
'ORDER BY 1',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--ALL--'
,p_lov_null_value=>'1'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2769209271534597432)
,p_name=>'search'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1200_REFERENCE_TABLES'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2769209766877597434)
,p_event_id=>wwv_flow_imp.id(2769209271534597432)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4078910754595960566)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2769210197160597435)
,p_name=>'REFRESH_LIST'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(4078910754595960566)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2769210707840597435)
,p_event_id=>wwv_flow_imp.id(2769210197160597435)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4078910754595960566)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
