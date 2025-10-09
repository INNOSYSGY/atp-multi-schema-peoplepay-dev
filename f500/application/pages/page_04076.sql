prompt --application/pages/page_04076
begin
--   Manifest
--     PAGE: 04076
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>500
,p_default_id_offset=>221402556581611694
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>4076
,p_name=>'rptContractSafetyGears'
,p_step_title=>'Contract Safety Gearss'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3697435050082629625)
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3689839892470222383)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988176195002489210)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3804161868385548016)
,p_plug_name=>'Listing of <b> Contract Safety Gears </b>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       EMP_FNAME,',
'       EMP_LNAME,',
'       EMP_POSITION,',
'       CONTRACT_START_DATE,',
'       CONTRACT_END_DATE,',
'       EMP_DEPARTMENT,',
'       EMP_GENDER,',
'       EMP_CLASS,',
'       SUPERVISIOR_ID,',
'       OSH_MAN_ID,',
'       TRANSACTION_TYPE_ID,',
'       STATUS,',
'       ENTERED_BY,',
'       ENTRY_DATE,',
'       LAST_CHANGED_BY,',
'       LAST_CHANGED_DATE,',
'       VERIFIED_BY,',
'       VERIFIED_DATE',
'  from HR_HS_SAFETY_GEARS_CONTRACT'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3804162009048548016)
,p_name=>'rptContractSafetyGears'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MERSKINE'
,p_internal_uid=>196644502915401632
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3690873057792637668)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:4077:&SESSION.::&DEBUG.:RP,:P4077_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3690872568355637666)
,p_db_column_name=>'EMP_FNAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3690872200807637666)
,p_db_column_name=>'EMP_LNAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3690871842196637666)
,p_db_column_name=>'EMP_POSITION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Position'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3853859787029947387)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3690871378663637665)
,p_db_column_name=>'CONTRACT_START_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Contract Start Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3690871019649637665)
,p_db_column_name=>'CONTRACT_END_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Contract End Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3690870614883637665)
,p_db_column_name=>'EMP_DEPARTMENT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3853893589149985114)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3690870250857637664)
,p_db_column_name=>'EMP_GENDER'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Gender'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3690869839657637664)
,p_db_column_name=>'EMP_CLASS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3853987396783144140)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3690869422497637664)
,p_db_column_name=>'SUPERVISIOR_ID'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Supervisior '
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3853988535409144141)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3690868998342637664)
,p_db_column_name=>'OSH_MAN_ID'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'OSHO/Manager'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3853988535409144141)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3690868623520637663)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Transaction Type Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3690868234789637663)
,p_db_column_name=>'STATUS'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3690867841265637663)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3690867368355637663)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3690867037768637662)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3690866563313637662)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3690866213611637662)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3690865800710637662)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3804170548884552355)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'751399'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:EMP_FNAME:EMP_LNAME:EMP_POSITION:CONTRACT_START_DATE:CONTRACT_END_DATE:EMP_DEPARTMENT:EMP_GENDER:EMP_CLASS:SUPERVISIOR_ID:OSH_MAN_ID:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3690865057905637661)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3689839892470222383)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-hand-o-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(662502278786397069)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3689839892470222383)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:4077:&SESSION.::&DEBUG.:4077::'
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp.component_end;
end;
/
