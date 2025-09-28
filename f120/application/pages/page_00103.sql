prompt --application/pages/page_00103
begin
--   Manifest
--     PAGE: 00103
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>103
,p_name=>'rptDirectory'
,p_step_title=>'Listing of Clients Directory'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3603893400528388849)
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(348738430471553714)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(10766773638420877516)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3631146724449632336)
,p_plug_name=>'Listing of Clients Directory'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent14:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.ID , ',
' BUSINESS_NAME ,',
' SHORT_NAME ,',
' START_DATE ,',
' REFERRING_STAFF ,',
' REMARKS ,',
' LOT ,',
' STREET ,',
' a.COMPANY_EMAIL,',
' VILLAGE_WARD ,',
' TOWN ,',
' REGION ,',
' COUNTY ,',
' COUNTRY ,',
'a.LAST_CHANGED_BY ,',
'a.LAST_CHANGED_DATE ,',
'a.ENTERED_BY ,',
'a.ENTRY_DATE ,',
' TELEPHONE_NOS ,',
' ORG_ID ,',
' BUSINESS_ACTIVITY ,CONTACT_FIRST_NAME, CONTACT_LAST_NAME, b.POSITION, CELL_NUMBERS, LAND_LINES, b.EMPLOYEE_EMAIL',
'from DIR_CLIENTS a left outer join DIR_CLIENTSDTL b on a.id = b.DIRECTORY_ID',
'where org_id=:APP_ORG_ID  ',
''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3631147047340632338)
,p_name=>'Report 1'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:104:&SESSION.::&DEBUG.::P104_ID,P104_RETURN:#ID#,103'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'CLOUD_PROD_DEV'
,p_internal_uid=>8614806870721163
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3631147190865632344)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3631147513281632355)
,p_db_column_name=>'BUSINESS_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Business Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3631147886806632355)
,p_db_column_name=>'SHORT_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Short Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3631148297606632355)
,p_db_column_name=>'START_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3631148649682632355)
,p_db_column_name=>'REFERRING_STAFF'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Referring Staff'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632585704140532447)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3631149067475632356)
,p_db_column_name=>'REMARKS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3631149497179632356)
,p_db_column_name=>'LOT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Lot'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3631149938939632356)
,p_db_column_name=>'STREET'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Street'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3631150331230632356)
,p_db_column_name=>'VILLAGE_WARD'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Village Ward'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3631150731291632356)
,p_db_column_name=>'TOWN'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Town'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3631151048681632357)
,p_db_column_name=>'REGION'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Region'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3631151525684632357)
,p_db_column_name=>'COUNTY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'County'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3631151883972632357)
,p_db_column_name=>'COUNTRY'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Country'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3631152336756632357)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3631152658776632358)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3631153128679632358)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3631153476331632358)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3631154299095632359)
,p_db_column_name=>'TELEPHONE_NOS'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Telephone Nos'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3631154685149632359)
,p_db_column_name=>'ORG_ID'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Org Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3631155056489632359)
,p_db_column_name=>'BUSINESS_ACTIVITY'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Business Activity'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3631199271130144378)
,p_db_column_name=>'CONTACT_FIRST_NAME'
,p_display_order=>31
,p_column_identifier=>'V'
,p_column_label=>'Contact First Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3631199345562144379)
,p_db_column_name=>'CONTACT_LAST_NAME'
,p_display_order=>41
,p_column_identifier=>'W'
,p_column_label=>'Contact Last Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3631199489330144380)
,p_db_column_name=>'POSITION'
,p_display_order=>51
,p_column_identifier=>'X'
,p_column_label=>'Position'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3631199607792144381)
,p_db_column_name=>'CELL_NUMBERS'
,p_display_order=>61
,p_column_identifier=>'Y'
,p_column_label=>'Cell Numbers'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3631199709092144382)
,p_db_column_name=>'LAND_LINES'
,p_display_order=>71
,p_column_identifier=>'Z'
,p_column_label=>'Land Lines'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3631199820516144383)
,p_db_column_name=>'COMPANY_EMAIL'
,p_display_order=>81
,p_column_identifier=>'AA'
,p_column_label=>'Company Email'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3631199881513144384)
,p_db_column_name=>'EMPLOYEE_EMAIL'
,p_display_order=>91
,p_column_identifier=>'AB'
,p_column_label=>'Employee Email'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3631156154886665241)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'86240'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'BUSINESS_ACTIVITY:BUSINESS_NAME:CONTACT_FIRST_NAME:CONTACT_LAST_NAME:POSITION:SHORT_NAME:TELEPHONE_NOS:CELL_NUMBERS:LAND_LINES:COMPANY_EMAIL:EMPLOYEE_EMAIL:'
,p_sort_column_1=>'LAST_CHANGED_DATE'
,p_sort_direction_1=>'DESC'
,p_break_on=>'BUSINESS_ACTIVITY:BUSINESS_NAME:0:0:0:0'
,p_break_enabled_on=>'BUSINESS_ACTIVITY:BUSINESS_NAME:0:0:0:0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3631200099546144386)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(348738430471553714)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:107:&SESSION.::&DEBUG.:RP,::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3631155513954632359)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(348738430471553714)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:104:&SESSION.::&DEBUG.:104:P104_RETURN:103'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3631200189773144387)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(348738430471553714)
,p_button_name=>'GENERATE_ACTIVITY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Generate Business Activity'
,p_button_position=>'EDIT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from table(pkg_global_fnts.get_lookup_value(''TBLBUSINESSACTIVITY'')) a',
'where org_id=:APP_ORG_ID'))
,p_button_condition_type=>'NOT_EXISTS'
,p_security_scheme=>wwv_flow_imp.id(3585334780499360204)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3631200295885144388)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'POP_BUS_ACT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' BEGIN',
' insert into hr_hcf_lookup (lookup_id, table_name,table_description, table_value, value_description, classification, custom_field, ',
'                   custom_field1, start_period, end_period, transaction_type_id, status, org_id,verified_by, verified_date)		           		         ',
'',
'select lookup_id, table_name,table_description, table_value, value_description, classification, custom_field, ',
'                   custom_field1, start_period, end_period, transaction_type_id, status, :APP_ORG_ID,verified_by, verified_date',
'from hr_hcf_lookup',
'where table_name=''TBLBUSINESSACTIVITY'' ',
'and org_id=1749;',
'',
'commit;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3631200189773144387)
,p_internal_uid=>3209408302687147814
);
wwv_flow_imp.component_end;
end;
/
