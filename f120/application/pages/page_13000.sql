prompt --application/pages/page_13000
begin
--   Manifest
--     PAGE: 13000
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
 p_id=>13000
,p_name=>'frmSalary_new'
,p_alias=>'FRMSALARY-NEW'
,p_step_title=>'Create/Edit Employee Salary'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(349753148093613622)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.DISPLAY_ONLY{  ',
'    pointer-events: none;',
'    background-color: white;',
'    font-size:12px;',
'    font-weight:bolder;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3585334160394360204)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(4516829023423384119)
,p_name=>'Audit Record'
,p_template=>2664334895415463485
,p_display_sequence=>270
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent2:t-Region--scrollBody:margin-bottom-none'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  to_char(entry_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||entered_by entered,',
'  to_char(last_changed_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||last_changed_by last_changed,',
'  to_char(verified_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||verified_by verified,',
'  machine_insert,',
'  machine_update,',
'  apex_util.get_since(last_changed_date) updated',
'from  VW_HR_RCM_SALARY',
'where  id = :P13000_ID'))
,p_display_when_condition=>':P13000_ID is not null'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P13000_ID'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(465053642980691292)
,p_query_column_id=>1
,p_column_alias=>'ENTERED'
,p_column_display_sequence=>10
,p_column_heading=>'Entered'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(465053700877691293)
,p_query_column_id=>2
,p_column_alias=>'LAST_CHANGED'
,p_column_display_sequence=>20
,p_column_heading=>'Last Changed'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(465053838868691294)
,p_query_column_id=>3
,p_column_alias=>'VERIFIED'
,p_column_display_sequence=>30
,p_column_heading=>'Verified'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(465053973961691295)
,p_query_column_id=>4
,p_column_alias=>'MACHINE_INSERT'
,p_column_display_sequence=>40
,p_column_heading=>'Machine Insert'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(465054063624691296)
,p_query_column_id=>5
,p_column_alias=>'MACHINE_UPDATE'
,p_column_display_sequence=>50
,p_column_heading=>'Machine Update'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(465054149680691297)
,p_query_column_id=>6
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>60
,p_column_heading=>'Updated'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4559853415639946283)
,p_plug_name=>'Detail Audit'
,p_parent_plug_id=>wwv_flow_imp.id(4516829023423384119)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--scrollBody:margin-bottom-none'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  HR_RCM_SALARY_AUD.ID as ID, HR_RCM_SALARY_AUD.ID PKEY, daily_rate,entered_by_aud, entry_date_aud,',
'     EMP_ID as EMP_ID,',
'     PERSONAL_RATE as PERSONAL_RATE,',
'     HOURLY_RATE as HOURLY_RATE,',
'     STD_DETAIL_KEY as STD_DETAIL_KEY,',
'     SALARY_CURRENCY as SALARY_CURRENCY,',
'     LEAVE_PASSAGE_AMOUNT as LEAVE_PASSAGE_AMOUNT,',
'     LEAVE_PASSAGE_DATE as LEAVE_PASSAGE_DATE,',
'     HR_RCM_SALARY_AUD.MACHINE_INSERT as MACHINE_INSERT,',
'     HR_RCM_SALARY_AUD.MACHINE_UPDATE as MACHINE_UPDATE,',
'     HR_RCM_SALARY_AUD.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'     HR_RCM_SALARY_AUD.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'     HR_RCM_SALARY_AUD.ENTERED_BY as ENTERED_BY,',
'     HR_RCM_SALARY_AUD.ENTRY_DATE as ENTRY_DATE,',
'     START_DATE as START_DATE,',
'     END_DATE as END_DATE,',
'     EMP_MOV_ID as EMP_MOV_ID,',
'     PAYMENT_MODE as PAYMENT_MODE, HR_RCM_SALARY_AUD.remarks,',
'     employee_status,',
'compute_gross,',
'org_structure,',
'position_name,',
'separated_status,',
'employment_status,',
'employment_class,',
'payment_type,',
'wklocation_id',
' from HR_RCM_SALARY_AUD join HR_RCM_EMPLOYEE V on  HR_RCM_SALARY_AUD.emp_id=v.id',
'where HR_RCM_SALARY_AUD.id = :P13000_ID',
'ORDER BY  START_DATE DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P13000_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
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
,p_prn_header_font_color=>'#000000'
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
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(4559853160679946280)
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
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GPL'
,p_internal_uid=>2003471256830286803
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159914407334475207)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159914010433475207)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159913677475475207)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159913282725475206)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3616456159212392800)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159912872457475205)
,p_db_column_name=>'DAILY_RATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Daily Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159912441148475205)
,p_db_column_name=>'EMP_ID'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3632585704140532447)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159912073444475204)
,p_db_column_name=>'START_DATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'START_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159911653825475204)
,p_db_column_name=>'END_DATE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'END_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159911214375475203)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159910878140475203)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159910502064475203)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159910010303475202)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159909689534475202)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159909266523475201)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159908850631475201)
,p_db_column_name=>'PERSONAL_RATE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Personal Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'PERSONAL_RATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159908472761475200)
,p_db_column_name=>'HOURLY_RATE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Hourly Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'HOURLY_RATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159908012719475200)
,p_db_column_name=>'STD_DETAIL_KEY'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Std Detail Key'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'STD_DETAIL_KEY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159907654279475199)
,p_db_column_name=>'SALARY_CURRENCY'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Salary Currency'
,p_column_type=>'STRING'
,p_static_id=>'SALARY_CURRENCY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159907235650475199)
,p_db_column_name=>'LEAVE_PASSAGE_AMOUNT'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Leave Passage Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_static_id=>'LEAVE_PASSAGE_AMOUNT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159906843499475198)
,p_db_column_name=>'LEAVE_PASSAGE_DATE'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Leave Passage Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LEAVE_PASSAGE_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159906475122475198)
,p_db_column_name=>'EMP_MOV_ID'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Emp Mov Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'EMP_MOV_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159906071748475197)
,p_db_column_name=>'PAYMENT_MODE'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Payment Mode'
,p_column_type=>'STRING'
,p_static_id=>'PAYMENT_MODE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159905643645475197)
,p_db_column_name=>'PKEY'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Pkey'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159905294837475196)
,p_db_column_name=>'REMARKS'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159904853321475196)
,p_db_column_name=>'EMPLOYEE_STATUS'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Employee Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159904422670475196)
,p_db_column_name=>'COMPUTE_GROSS'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Compute Gross'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159904090166475195)
,p_db_column_name=>'ORG_STRUCTURE'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Org Structure'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159903624486475195)
,p_db_column_name=>'POSITION_NAME'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Position Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159903258043475194)
,p_db_column_name=>'SEPARATED_STATUS'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Separated Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159902890970475194)
,p_db_column_name=>'EMPLOYMENT_STATUS'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Employment Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159902450692475194)
,p_db_column_name=>'ENTERED_BY_AUD'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Entered By Aud'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159902032050475193)
,p_db_column_name=>'ENTRY_DATE_AUD'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Entry Date Aud'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4559600496011481093)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6035329'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_ID:EMPLOYMENT_CLASS:PAYMENT_TYPE:ORG_STRUCTURE:POSITION_NAME:ENTERED_BY_AUD:ENTRY_DATE_AUD:WKLOCATION_ID:PERSONAL_RATE:DAILY_RATE:HOURLY_RATE:START_DATE:END_DATE:ENTERED_BY:ENTRY_DATE:LAST_CHANGED_BY:LAST_CHANGED_DATE:SALARY_CURRENCY:PKEY:REMARKS'
||':'
,p_break_on=>'EMP_ID:EMPLOYMENT_CLASS:PAYMENT_TYPE:ORG_STRUCTURE:POSITION_NAME:0'
,p_break_enabled_on=>'EMP_ID:EMPLOYMENT_CLASS:PAYMENT_TYPE:ORG_STRUCTURE:POSITION_NAME:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4516833434953384135)
,p_plug_name=>'Create/Edit Wages/Salaries'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4599210503214304595)
,p_plug_name=>'Disbursements'
,p_region_name=>'disburse'
,p_parent_plug_id=>wwv_flow_imp.id(4516833434953384135)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>350
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    id,',
'    salary_id,',
'    payment_mode_dist payment_mode,',
'    percent_split,',
'    start_date,',
'    end_date,',
'    bank_branch_id_dist,',
'    bank_account_no_dist,',
'    joint_acc,',
'    entered_by,',
'    entry_date,',
'    last_changed_by,',
'    last_changed_date,',
'EMP_ID_DISP',
'FROM',
'    hr_rcm_disbursement',
'where salary_id=:P13000_ID;'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P13000_ID'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P13000_PAYMENT_MODE'
,p_plug_display_when_cond2=>'MULTI'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4577888184804419255)
,p_name=>'EMP_ID_DISP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID_DISP'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Emp id disp'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>160
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P13000_EMP_ID'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4599209110664304581)
,p_name=>'PAYMENT_MODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAYMENT_MODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Payment mode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3605364777777984891)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4599209151807304582)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4599209293152304583)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4599209402278304584)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4599209429349304585)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4599209585339304586)
,p_name=>'JOINT_ACC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'JOINT_ACC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_YES_NO'
,p_heading=>'Joint?'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'0'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4599209701008304587)
,p_name=>'BANK_ACCOUNT_NO_DIST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BANK_ACCOUNT_NO_DIST'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Account no'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4599209772966304588)
,p_name=>'BANK_BRANCH_ID_DIST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BANK_BRANCH_ID_DIST'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Bank branch'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3632666553247627399)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4599209918137304589)
,p_name=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'End date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
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
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4599210019248304590)
,p_name=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Start date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
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
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>'trunc(current_date) - (to_number(to_char(current_date,''DD'')) - 1) '
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4599210104318304591)
,p_name=>'PERCENT_SPLIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERCENT_SPLIT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Percent split'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_help_text=>'Enter a decimal percent value e.g. 0.25 for 25%.'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4599210197735304592)
,p_name=>'SALARY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SALARY_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P13000_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4599210302513304593)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4606351055310170775)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4606351176983170776)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(4599210375835304594)
,p_internal_uid=>2042828471985645117
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    var toolbarData = $.apex.interactiveGrid.copyDefaultToolbar(), // Make a copy of the default toolbar',
'        editSaveGroup = toolbarData.toolbarFind( "actions2" );',
'',
'    // If the employees detail dialog is going to have a Dialog Save button then the',
'    // save action cannot be hidden (Toolbar Buttons Save unchecked). But rather',
'    // need to remove the button from the toolbar.',
'    // If not going to save then all this code can be removed and the ',
'    // attribute Toolbar Buttons Save unchecked.',
'    editSaveGroup.controls.pop(); // remove Save button.',
'    config.toolbarData = toolbarData;',
'    return config;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(4599175101350238005)
,p_interactive_grid_id=>wwv_flow_imp.id(4599210375835304594)
,p_static_id=>'17970'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(4599175023208238005)
,p_report_id=>wwv_flow_imp.id(4599175101350238005)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4569093531423213848)
,p_view_id=>wwv_flow_imp.id(4599175023208238005)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(4577888184804419255)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4599166974067224577)
,p_view_id=>wwv_flow_imp.id(4599175023208238005)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(4599209110664304581)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>107
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4599169070414237958)
,p_view_id=>wwv_flow_imp.id(4599175023208238005)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(4599209151807304582)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4599169564122237962)
,p_view_id=>wwv_flow_imp.id(4599175023208238005)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(4599209293152304583)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4599170098413237967)
,p_view_id=>wwv_flow_imp.id(4599175023208238005)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(4599209402278304584)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4599170563489237970)
,p_view_id=>wwv_flow_imp.id(4599175023208238005)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(4599209429349304585)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4599171100696237973)
,p_view_id=>wwv_flow_imp.id(4599175023208238005)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(4599209585339304586)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>60
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4599171598701237978)
,p_view_id=>wwv_flow_imp.id(4599175023208238005)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(4599209701008304587)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>87
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4599172053765237981)
,p_view_id=>wwv_flow_imp.id(4599175023208238005)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(4599209772966304588)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>286.3333435058594
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4599172601344237986)
,p_view_id=>wwv_flow_imp.id(4599175023208238005)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(4599209918137304589)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4599173103310237990)
,p_view_id=>wwv_flow_imp.id(4599175023208238005)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(4599210019248304590)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>120
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4599173537444237994)
,p_view_id=>wwv_flow_imp.id(4599175023208238005)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(4599210104318304591)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>87
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4599173937034237998)
,p_view_id=>wwv_flow_imp.id(4599175023208238005)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(4599210197735304592)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4599174492676238003)
,p_view_id=>wwv_flow_imp.id(4599175023208238005)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(4599210302513304593)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4606205540730354722)
,p_view_id=>wwv_flow_imp.id(4599175023208238005)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(4606351176983170776)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4527488748190645863)
,p_plug_name=>'Search Employee Salaries'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent2:t-Region--scrollBody:margin-bottom-none'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  HR_RCM_SALARY.ID as ID, HR_RCM_SALARY.ID PKEY, daily_rate,',
'     V.ID as EMP_ID,',
'     PERSONAL_RATE as PERSONAL_RATE,',
'     HOURLY_RATE as HOURLY_RATE,',
'     STD_DETAIL_KEY as STD_DETAIL_KEY,',
'     SALARY_CURRENCY as SALARY_CURRENCY,',
'     LEAVE_PASSAGE_AMOUNT as LEAVE_PASSAGE_AMOUNT,',
'     LEAVE_PASSAGE_DATE as LEAVE_PASSAGE_DATE,',
'     HR_RCM_SALARY.MACHINE_INSERT as MACHINE_INSERT,',
'     HR_RCM_SALARY.MACHINE_UPDATE as MACHINE_UPDATE,',
'     HR_RCM_SALARY.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'     HR_RCM_SALARY.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'     HR_RCM_SALARY.ENTERED_BY as ENTERED_BY,',
'     HR_RCM_SALARY.ENTRY_DATE as ENTRY_DATE,',
'     START_DATE as START_DATE,',
'     END_DATE as END_DATE,',
'     EMP_MOV_ID as EMP_MOV_ID,',
'     PAYMENT_MODE as PAYMENT_MODE, HR_RCM_SALARY.remarks,',
'     employee_status,',
'compute_gross,',
'org_structure,',
'position_name,',
'separated_status,',
'employment_status,',
'employment_class,',
'payment_type,',
'wklocation_id',
' from HR_RCM_SALARY ',
' right join HR_RCM_EMPLOYEE V on  HR_RCM_SALARY.emp_id=v.id',
'where v.date_separated is null',
'and exists ( ',
'              select 1',
'              FROM VW_USERACCESS A',
'              where v.org_id=a.org_id',
'              and v.employment_class_id=a.employment_class_id',
'              and upper(v.payment_type)=a.payment_type              ',
'              and v.org_id =a.org_id',
'              )',
'AND (:P13000_POP_SEARCH =1 OR HR_RCM_SALARY.EMP_ID =:P13000_EMP_ID)',
'ORDER BY  START_DATE DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P13000_EMP_ID'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
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
,p_prn_header_font_color=>'#000000'
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
 p_id=>wwv_flow_imp.id(4527488536053645863)
,p_name=>'Search Employee Rules'
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
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'PPLERP'
,p_internal_uid=>1971106632203986386
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159944052702475254)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:13000:&SESSION.::&DEBUG.:13000:P13000_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159943657263475253)
,p_db_column_name=>'EMP_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3632585704140532447)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159943268799475253)
,p_db_column_name=>'START_DATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'START_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159942861942475253)
,p_db_column_name=>'END_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'END_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159942438869475252)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159942031020475252)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159941646718475251)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159941268271475251)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159940812065475250)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159940414131475250)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159940044940475249)
,p_db_column_name=>'PERSONAL_RATE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Personal Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_static_id=>'PERSONAL_RATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159939679605475249)
,p_db_column_name=>'HOURLY_RATE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Hourly Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_static_id=>'HOURLY_RATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159939258966475248)
,p_db_column_name=>'STD_DETAIL_KEY'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Std Detail Key'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'STD_DETAIL_KEY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159938879097475248)
,p_db_column_name=>'SALARY_CURRENCY'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Salary Currency'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SALARY_CURRENCY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159938486092475247)
,p_db_column_name=>'LEAVE_PASSAGE_AMOUNT'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Leave Passage Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_static_id=>'LEAVE_PASSAGE_AMOUNT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159938056892475247)
,p_db_column_name=>'LEAVE_PASSAGE_DATE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Leave Passage Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LEAVE_PASSAGE_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159937648946475246)
,p_db_column_name=>'EMP_MOV_ID'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Emp Mov Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'EMP_MOV_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159937207614475246)
,p_db_column_name=>'PAYMENT_MODE'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Payment Mode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PAYMENT_MODE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159936428573475245)
,p_db_column_name=>'PKEY'
,p_display_order=>28
,p_column_identifier=>'S'
,p_column_label=>'Pkey'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159936871777475245)
,p_db_column_name=>'REMARKS'
,p_display_order=>38
,p_column_identifier=>'T'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159936004288475244)
,p_db_column_name=>'EMPLOYEE_STATUS'
,p_display_order=>48
,p_column_identifier=>'U'
,p_column_label=>'Employee Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159935630667475244)
,p_db_column_name=>'COMPUTE_GROSS'
,p_display_order=>58
,p_column_identifier=>'V'
,p_column_label=>'Compute Gross'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159935260492475243)
,p_db_column_name=>'ORG_STRUCTURE'
,p_display_order=>68
,p_column_identifier=>'W'
,p_column_label=>'Org Structure'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159934899503475243)
,p_db_column_name=>'POSITION_NAME'
,p_display_order=>78
,p_column_identifier=>'X'
,p_column_label=>'Position Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159934464656475242)
,p_db_column_name=>'SEPARATED_STATUS'
,p_display_order=>88
,p_column_identifier=>'Y'
,p_column_label=>'Separated Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159934053611475242)
,p_db_column_name=>'EMPLOYMENT_STATUS'
,p_display_order=>98
,p_column_identifier=>'Z'
,p_column_label=>'Employment Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159933699947475241)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>108
,p_column_identifier=>'AA'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159933287121475241)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>118
,p_column_identifier=>'AB'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159932807782475240)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>128
,p_column_identifier=>'AC'
,p_column_label=>'Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3616456159212392800)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159932416581475240)
,p_db_column_name=>'DAILY_RATE'
,p_display_order=>138
,p_column_identifier=>'AD'
,p_column_label=>'Daily Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4527487256222645861)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6035625'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'ID:EMPLOYMENT_CLASS:COMPUTE_GROSS:EMP_ID:PERSONAL_RATE:HOURLY_RATE:DAILY_RATE:SALARY_CURRENCY:START_DATE:END_DATE:'
,p_sort_column_1=>'START_DATE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'EMP_ID'
,p_sort_direction_2=>'ASC'
,p_break_on=>'EMP_ID:0:0:0:0:0'
,p_break_enabled_on=>'0:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3159945276402475256)
,p_report_id=>wwv_flow_imp.id(4527487256222645861)
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'PERSONAL_RATE'
,p_operator=>'is null'
,p_condition_sql=>' (case when ("PERSONAL_RATE" is null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#B80202'
,p_row_font_color=>'#FFFFFF'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3159944863703475255)
,p_report_id=>wwv_flow_imp.id(4527487256222645861)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'END_DATE'
,p_operator=>'is null'
,p_condition_sql=>'"END_DATE" is null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4601432502088327976)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10766773638420877516)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3159945680428475256)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4527488748190645863)
,p_button_name=>'INITIALISE_SEARCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Initialise Search'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3159953750042475278)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4599210503214304595)
,p_button_name=>'DISBURSE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Save'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3159955674986475282)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4601432502088327976)
,p_button_name=>'GET_PREVIOUS_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_PREVIOUS_ID'')'
,p_button_condition=>'P13000_ID_PREV'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-angle-left'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3159956025200475283)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4601432502088327976)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:246:&SESSION.::&DEBUG.:RP,::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3159956472343475283)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(4601432502088327976)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM HR_RCM_EMPLOYEE a',
'WHERE VERIFIED_BY IS NULL',
'AND EXISTS(SELECT 1',
'           FROM HR_RCM_SALARY B',
'           WHERE A.ID=B.EMP_ID',
'           and b.id=:P13000_ID)',
'and NVL(DATE_SEPARATED,current_date+1) > current_date'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(3585335384393360204)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3159956850695475284)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(4601432502088327976)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':P13000_ID is not null and NVL(:P1281_DATE_SEPARATED,current_date+1) > current_date'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(3585335069773360204)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3159957299807475284)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(4601432502088327976)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P13000_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3159957679604475284)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(4601432502088327976)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create Again'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P13000_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3159958073067475285)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(4601432502088327976)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:13000:&SESSION.::&DEBUG.:13000:P13000_EMP_ID,P13000_EMP_GRADE_ID:&P13000_EMP_ID.,&P13000_EMP_GRADE_ID.'
,p_button_condition=>':P13000_ID is not null and NVL(:P1281_DATE_SEPARATED,current_date+1) > current_date'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3159958459424475285)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(4601432502088327976)
,p_button_name=>'DISBURSEMENT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add Disbursement'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1278:&SESSION.::&DEBUG.:RP,1278:P1278_SALARY_ID:&P13000_ID.'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-money'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3159958865477475285)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(4601432502088327976)
,p_button_name=>'GET_NEXT_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Next'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_NEXT_ID'')'
,p_button_condition=>'P13000_ID_NEXT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-angle-right'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3159978338951475308)
,p_branch_name=>'CREATE AGAIN'
,p_branch_action=>'f?p=&APP_ID.:13000:&SESSION.::&DEBUG.:13000:P13000_EMP_ID:&P13000_EMP_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3159957679604475284)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3159978790447475309)
,p_branch_name=>'delete_branch'
,p_branch_action=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3159956472343475283)
,p_branch_sequence=>2
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3159979951962475310)
,p_branch_name=>'Go To Page 13000'
,p_branch_action=>'f?p=&APP_ID.:13000:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>3
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3159979118603475309)
,p_branch_name=>'Go To Page 13000'
,p_branch_action=>'f?p=&APP_ID.:13000:&SESSION.::&DEBUG.:13000:P13000_ID:&P13000_ID_PREV.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3159955674986475282)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3159979595025475309)
,p_branch_name=>'Go To Page 13000'
,p_branch_action=>'f?p=&APP_ID.:13000:&SESSION.::&DEBUG.:13000:P13000_ID:&P13000_ID_NEXT.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3159958865477475285)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(441225904479423522)
,p_name=>'P13000_WHICH_SALAY'
,p_item_sequence=>0
,p_item_plug_id=>wwv_flow_imp.id(4516833434953384135)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when :P13000_EMPLOYMENT_CLASS_ID= 8550410 THEN ''!! Please enter the Annual Salary Only for auto computation of Personal Rate, Hourly and Daily Rates. !!''',
'                else ''!! Please enter the Personal Rate for auto computation of Annual Salary, Hourly and Daily Rates. !!'' ',
'              end display_lbl',
'from dual'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when_type=>'NEVER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(441226273024428080)
,p_name=>'P13000_EMPLOYMENT_CLASS_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(4516833434953384135)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  employment_class_id',
'from hr_rcm_employee ',
'where id =:P13000_EMP_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(450313999502707979)
,p_name=>'P13000_ANNUAL_SALARY'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(4516833434953384135)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Annual Salary'
,p_format_mask=>'FML999G999G999G999G990D000'
,p_source=>'ANNUAL_SALARY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Value is computed based on the Basic Pay Rate for the specific payment mode or frequency.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(465054228948691298)
,p_name=>'P13000_MACHINE_INSERT'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(4516829023423384119)
,p_use_cache_before_default=>'NO'
,p_item_default=>'LOGIN_VAR'
,p_item_default_type=>'ITEM'
,p_source=>'MACHINE_INSERT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(465054296012691299)
,p_name=>'P13000_VERIFIED_BY'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(4516829023423384119)
,p_use_cache_before_default=>'NO'
,p_source=>'VERIFIED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3159901312757475190)
,p_name=>'P13000_MACHINE_UPDATE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(4516829023423384119)
,p_use_cache_before_default=>'NO'
,p_item_default=>'LOGIN_VAR'
,p_item_default_type=>'ITEM'
,p_source=>'MACHINE_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3159915252989475209)
,p_name=>'P13000_POP_SEARCH_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4559853415639946283)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3159915928652475210)
,p_name=>'P13000_EMP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4516833434953384135)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Employee'
,p_source=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'EMPLOYEE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT EMPLOYEE||''(No.:''||EMP_COMPANY_NO||'')'' a,ID b',
'FROM VW_AVAILEMPLOYEE x',
'where  exists(select 1        ',
'     from vw_useraccess_finegrain k',
'     where NVL(k.grade_id, nvl(x.emp_grade_id,1)) = nvl(x.emp_grade_id,1)',
'     and user_name=:APP_USER)  ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_read_only_when=>':P13000_ID is not null'
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
 p_id=>wwv_flow_imp.id(3159916374572475211)
,p_name=>'P13000_EMPLOYEE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(4516833434953384135)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  initcap(Surname || '', '' || nvl(First_Name, '''')) ||'' ''||nvl(Middle_Name,'''') ||'' (''||y.organisation_name||'':-''||initcap(employment_class||'' ''||payment_type)||'' No.:''||EMP_COMPANY_NO||'')'' a',
'from VW_EMPLOYEE X join HR_RCM_INDIVIDUAL Z on Z.id=X.IND_ID',
'join HR_HCF_ORGANISATION Y on Y.id=X.ORG_ID',
'WHERE X.ID=nvl(:P13000_EMP_ID,:P1281_ID)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3159916788458475212)
,p_name=>'P13000_ADD_RELATED_RECORDS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4516833434953384135)
,p_prompt=>'<font color="green" size="2"><b> Browse Related Records </b></font>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  DISTINCT B.PAGE_TITLE ,APEX_UTIL.PREPARE_URL(p_url =>''f?p=''||:APP_ID||'':''||WEBPAGE_ID||'':''||:APP_SESSION||''::NO::P''||WEBPAGE_ID||''_ID:''',
'||fn_getprimarykey(:P1281_ID, WEBPAGE_ID), p_checksum_type => ''SESSION'') WEBPAGE_ID',
'FROM TBLPAGELIST a JOIN APEX_APPLICATION_PAGES B ON A.WEBPAGE_ID=B.PAGE_ID',
'WHERE PARENT_PAGE= 1281---the specific parent screen',
'and webpage_id !=:app_page_id',
'and add_child_only=1',
'and application_id=:APP_ID'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Null--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_display_when=>'P13000_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'REDIRECT_URL')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3159917154507475214)
,p_name=>'P13000_START_DATE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(4516833434953384135)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Start Date'
,p_source=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>15
,p_cMaxlength=>255
,p_grid_label_column_span=>2
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select 1',
' from pa_pmg_payrolldtl',
' where 1=0--salary_id=:P13000_ID;'))
,p_read_only_when_type=>'EXISTS'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Ensure this date is the start of a earnings period, unless you are prorating the salary.'
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
 p_id=>wwv_flow_imp.id(3159918077795475219)
,p_name=>'P13000_END_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(4516833434953384135)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>15
,p_cMaxlength=>255
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
 p_id=>wwv_flow_imp.id(3159918439992475220)
,p_name=>'P13000_SALARY_CURRENCY'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(4516833434953384135)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select base_currency',
'from HR_HCF_ORGANISATION',
'where id=:APP_ORG_ID'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Salary Currency'
,p_source=>'SALARY_CURRENCY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_named_lov=>'CURRENCY_CONVERSION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct  TO_CHAR(value_description) b, TO_CHAR(EMP_CURRENCY) A',
'from  PA_PCF_EARNINGCURRENCY a join hr_hcf_lookup b on table_value=EMP_CURRENCY',
'where a.org_id =:APP_ORG_SHR_DED',
'UNION',
'SELECT distinct value_description A , TO_CHAR(BASE_CURRENCY) B',
'FROM HR_HCF_ORGANISATION a join hr_hcf_lookup b on upper(b.table_value)=upper(a.BASE_CURRENCY)',
'WHERE a.user_org_id=b.org_id',
'and table_name=''TBLCURRENCY''',
'and a.ID =:APP_ORG_ID'))
,p_cSize=>30
,p_read_only_when=>'P13000_VERIFIED_BY'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3159918826359475220)
,p_name=>'P13000_GRADE_POINT_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(4516833434953384135)
,p_use_cache_before_default=>'NO'
,p_item_default=>'select emp_grade_id from hr_rcm_employee where id = :P13000_EMP_ID'
,p_item_default_type=>'SQL_QUERY'
,p_source=>'GRADE_POINT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3159919296787475221)
,p_name=>'P13000_EMP_GRADE_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(4516833434953384135)
,p_item_default=>'select emp_grade_id from hr_rcm_employee where id = :P13000_EMP_ID'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3159919686738475221)
,p_name=>'P13000_SAL_GRADE_ID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(4516833434953384135)
,p_use_cache_before_default=>'NO'
,p_item_default=>'select emp_grade_id from hr_rcm_employee where id = :P13000_EMP_ID'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Salary Grade'
,p_source=>'SAL_GRADE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select grade_description||''(''||grade_code||'') as at ''||EFFECTIVE_FROMDATE a, id',
'from hr_hcf_positiongrade V',
'where  id = :P13000_EMP_GRADE_ID'))
,p_lov_cascade_parent_items=>'P13000_EMP_GRADE_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when=>':P13000_ID is not null'
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'This is the Salary Grade that is associated with the position to which the employee is substantively appointed. '
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3159920598650475222)
,p_name=>'P13000_PAYMENT_MODE'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(4516833434953384135)
,p_use_cache_before_default=>'NO'
,p_item_default=>'MULTI'
,p_prompt=>'Payment Mode'
,p_source=>'PAYMENT_MODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PAYMENT_MODE'
,p_lov=>'.'||wwv_flow_imp.id(3632462712366335719)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3159921001820475222)
,p_name=>'P13000_GRADE_POINT'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(4516833434953384135)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Salary Grade Point'
,p_source=>'GRADE_POINT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Point ''||point||'': ''||trim(to_char(point_amount,''$999,999,999,999'')) a, point',
'from HR_HCF_POSITIONGRADEPOINT',
'where position_grade_id= :P13000_EMP_GRADE_ID--:P13000_SAL_GRADE_ID',
'and start_date <= trunc(current_date)',
'and nvl(end_date,trunc(current_date)) >=  trunc(current_date)',
'order by point_amount',
'',
'',
'/*select ''Point ''||point||'': ''||trim(to_char(point_amount,''$999,999,999,999'')) a, id',
'from HR_HCF_POSITIONGRADEPOINT',
'where position_grade_id=:P13000_EMP_GRADE_ID*/',
'',
'',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Point--'
,p_lov_cascade_parent_items=>'P13000_SAL_GRADE_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P13000_VERIFIED_BY'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'This is the Annual Salary that is associated with a specific grade point on the Job/Position Salary Scale.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3159921820670475223)
,p_name=>'P13000_SALARY_TAXABLE'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(4516833434953384135)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_prompt=>'Salary Taxable'
,p_source=>'SALARY_TAXABLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_read_only_when=>'P13000_VERIFIED_BY'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3159922237307475223)
,p_name=>'P13000_SALARY_NIS_DEDUCTIBLE'
,p_is_required=>true
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(4516833434953384135)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_prompt=>'NIB Deductible'
,p_source=>'SALARY_NIS_DEDUCTIBLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_read_only_when=>'P13000_VERIFIED_BY'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3159922651865475224)
,p_name=>'P13000_PERSONAL_RATE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(4516833434953384135)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'&P13000_PAYMENT_TYPE. Basic Pay Rate'
,p_format_mask=>'FML999G999G999G999G990D000'
,p_source=>'PERSONAL_RATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_column=>7
,p_read_only_when=>'P13000_VERIFIED_BY'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'This is the Basic Pay Rate(also called Fixed Pay Rate) for the employee which is initially derived from the Salary Scale (Monthly) Grade Point Amount but which is recalculated if the  Employee''s Payment Frequency is not Monthly. e.g. Grade Point 1: $'
||'71,243 produces Basic Pay Rate of $71,243 for a MONTHLY employee, but produces $32,881 as Basic Pay Rate for a FORTNIGHT employee i.e. $32,881 = $71,243 * 12/26.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3159923533003475227)
,p_name=>'P13000_CASCADE_DEDUCTIONS'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(4516833434953384135)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_prompt=>'Cascade Deductions'
,p_source=>'CASCADE_DEDUCTIONS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_read_only_when=>'P13000_VERIFIED_BY'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3159923975575475227)
,p_name=>'P13000_CASCADE_OTHER_EARNINGS'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(4516833434953384135)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_prompt=>'Cascade Other Remuneration'
,p_source=>'CASCADE_OTHER_EARNINGS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_read_only_when=>'P13000_VERIFIED_BY'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3159924394446475227)
,p_name=>'P13000_HOURLY_RATE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(4516833434953384135)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Hourly Rate'
,p_format_mask=>'FML999G999G999G999G990D000'
,p_source=>'HOURLY_RATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_tag_css_classes=>'DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P13000_VERIFIED_BY'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'This represents the hourly rate for the employee which is derived from the Basic Pay/Average Number of hours they are expected to work during the Payment Frequency. The number of hours is defined within the Shift Rotation that is assigned to the empl'
||'oyee. '
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3159925288404475228)
,p_name=>'P13000_DAILY_RATE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(4516833434953384135)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Daily Rate'
,p_format_mask=>'FML999G999G999G999G990D000'
,p_source=>'DAILY_RATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_tag_css_classes=>'DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_read_only_when=>'P13000_VERIFIED_BY'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'This represents the daily rate for the employee which is derived from the Basic Pay/Average Number of days they are expected to work during the Payment Frequency. The number of days is defined within the Shift Rotation that is assigned to the employe'
||'e. '
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3159926173128475229)
,p_name=>'P13000_LEAVE_PASSAGE_DATE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(4516833434953384135)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Leave Passage Date'
,p_source=>'LEAVE_PASSAGE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>15
,p_cMaxlength=>255
,p_display_when_type=>'NEVER'
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
 p_id=>wwv_flow_imp.id(3159926505307475230)
,p_name=>'P13000_LEAVE_PASSAGE_AMOUNT'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(4516833434953384135)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Leave Passage Amount'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'LEAVE_PASSAGE_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3159926974380475231)
,p_name=>'P13000_REASON_SALARY_CHANGE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(4516833434953384135)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Reason Salary Change'
,p_source=>'REASON_SALARY_CHANGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select y.value_description||case when y.value_description is null then '''' else '':-'' end||x.value_description a,',
'y.value_description||case when y.value_description is null then '''' else '':-'' end||x.value_description b',
'from table(pkg_global_fnts.get_lookup_value(''TBLREASON'')) X left outer join table(pkg_global_fnts.get_lookup_value(''TBLREASONTYPE'')) y on x.id=y.lookup_id',
'where  x.lookup_id in (select id from hr_hcf_lookup where table_value in (''RTLC'',''RTSC'') and org_id=:APP_ORG_ID)',
'AND x.org_id= :APP_ORG_ID',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs::::::::'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3159927402736475231)
,p_name=>'P13000_TRANSACTION_TYPE_ID'
,p_is_required=>true
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(4516833434953384135)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Transaction Type'
,p_source=>'TRANSACTION_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PAGE_TRANSACTION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(TRANSACTION_DESCRIPTION) a ,TRANSACTION_TYPE_ID',
'from TBLTRANSACTIONTYPE a',
'where exists (select 1',
'              from TBLWORKFLOWSTATUS B join TBLWORKFLOWDTL c on c.id=b.WORKFLOW_DTL_ID',
'              where a.TRANSACTION_TYPE_ID=B.TRANSACTION_TYPE_ID',
'              and WEBPAGE_ID=:APP_PAGE_ID)',
'AND trunc(a.START_DATE) <= trunc(current_date)',
'AND (TRUNC(a.END_DATE) IS NULL OR TRUNC(a.END_DATE) >= TRUNC(current_date))',
'order by priority'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when_type=>'NEVER'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3159927711101475231)
,p_name=>'P13000_STATUS'
,p_is_required=>true
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(4516833434953384135)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Wfl_Status_Description,Wfl_Status_Id',
'from TBLWORKFLOWSTATUS a Join Tblworkflowdtl D On D.Id=A.Workflow_Dtl_Id',
'where exists (select 1',
'              from TBLWORKFLOWSTAGELIST B join TBLWORKFLOWDTL C on B.STAGE_ID=C.STAGE_ID',
'              Where A.Workflow_Dtl_Id=C.Id)  ',
'and upper(Wfl_Status_Description) not like DECODE(:P13000_ID, NULL,''%VERI%'',''%test%'') ',
'And Webpage_Id=:App_Page_Id      ',
'and TRANSACTION_TYPE_ID=:P13000_TRANSACTION_TYPE_ID',
'order by sequence'))
,p_lov_cascade_parent_items=>'P13000_TRANSACTION_TYPE_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3159928203193475232)
,p_name=>'P13000_ID'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(4516833434953384135)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3159928521164475232)
,p_name=>'P13000_EMP_MOV_ID'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(4516833434953384135)
,p_use_cache_before_default=>'NO'
,p_source=>'EMP_MOV_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3159928958437475233)
,p_name=>'P13000_REMARKS'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(4516833434953384135)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Remarks'
,p_source=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>2
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs::::::::'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3159929382021475234)
,p_name=>'P13000_STD_DETAIL_KEY'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(4516833434953384135)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Std Detail Key'
,p_source=>'STD_DETAIL_KEY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3159929771363475235)
,p_name=>'P13000_ID_COUNT'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(4516833434953384135)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'class="fielddata"'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3159930197527475236)
,p_name=>'P13000_INC_AMOUNT'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(4516833434953384135)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Salary Inc %'
,p_source=>'INC_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3159930527977475236)
,p_name=>'P13000_ID_NEXT'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(4516833434953384135)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3159930947461475237)
,p_name=>'P13000_ID_PREV'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(4516833434953384135)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3159931358484475237)
,p_name=>'P13000_PAYMENT_TYPE'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(4516833434953384135)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(payment_type) a',
'from hr_rcm_employee',
'where id = :P13000_EMP_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3159931783725475238)
,p_name=>'P13000_PERSON_RATE'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(4516833434953384135)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3159946024760475257)
,p_name=>'P13000_POP_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4527488748190645863)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3159954247223475279)
,p_tabular_form_region_id=>wwv_flow_imp.id(4599210503214304595)
,p_validation_name=>'enforce_total_precision'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_total_percent number(3,2):=0;',
'    v_test_dis number:=0;',
'    ',
'begin',
'',
'    select nvl(count(1),0) into v_test_dis',
'    from HR_RCM_DISBURSEMENT',
'    where SALARY_ID=:P13000_ID ;',
'',
'if :P13000_PAYMENT_MODE =''MULTI'' and v_test_dis > 0 then',
'',
'    select nvl(sum(PERCENT_SPLIT),0) into v_total_percent',
'    from HR_RCM_DISBURSEMENT',
'    where SALARY_ID=:P13000_ID',
'    and start_date <=trunc(current_date)',
'    and (end_date is null or end_date >=trunc(current_date));',
'    ',
'    if v_total_percent < 1 then',
'     return FALSE;',
'    elsif  v_total_percent > 1 then',
'     return FALSE;',
'    else',
'     return TRUE;',
'    end if;',
'',
'else',
'      return TRUE;',
'end if;',
'',
'exception',
'    when others then null;',
'       v_total_percent :=0;',
'        return TRUE;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The total disbursement percent is higher than 1, reduce the percentage split.'
,p_always_execute=>'Y'
,p_validation_condition_type=>'NEVER'
,p_exec_cond_for_each_row=>'Y'
,p_only_for_changed_rows=>'N'
,p_associated_column=>'PERCENT_SPLIT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3159965471724475293)
,p_validation_name=>'enforce_total_precision_1'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_total_percent number(3,2):=0;',
'    v_test_dis number:=0;',
'    ',
'begin',
'',
'    select nvl(count(1),0) into v_test_dis',
'    from HR_RCM_DISBURSEMENT',
'    where SALARY_ID=:P13000_ID ;',
'',
'if :P13000_PAYMENT_MODE =''MULTI'' and v_test_dis > 0 then',
'',
'    select nvl(sum(PERCENT_SPLIT),0) into v_total_percent',
'    from HR_RCM_DISBURSEMENT',
'    where SALARY_ID=:P13000_ID',
'    and start_date <=trunc(current_date)',
'    and (end_date is null or end_date >=trunc(current_date));',
'    ',
'    if v_total_percent < 1 then',
'     return FALSE;',
'    elsif  v_total_percent > 1 then',
'     return FALSE;',
'    else',
'     return TRUE;',
'    end if;',
'',
'else',
'      return TRUE;',
'end if;',
'',
'exception',
'    when others then null;',
'       v_total_percent :=0;',
'        return TRUE;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The total disbursement percent is higher than 1, reduce the percentage split.'
,p_always_execute=>'Y'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3159965046946475293)
,p_validation_name=>'chk_multi_active_rec'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_cnt pls_integer:=0;',
'begin',
'',
'select count(1) into v_cnt ',
'from hr_rcm_salary',
'where emp_id=:P13000_EMP_ID',
'and (end_date is null or end_date > current_date);',
'',
'IF  v_cnt >1 AND :P13000_END_DATE IS NULL THEN',
'RETURN FALSE;',
'ELSE',
'RETURN TRUE;',
'END IF;',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You have an active salarys record, please close it off before adding a new one.'
,p_validation_condition=>'SAVE, ADD_NEW, CREATE,CREATE_AGAIN'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3159963836184475292)
,p_validation_name=>'chk_multi_active_rec1'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_cnt pls_integer:=0;',
'begin',
'',
'select count(1) into v_cnt ',
'from hr_rcm_salary',
'where emp_id=:P13000_EMP_ID',
'and (end_date is null or end_date > current_date)',
'and id !=:P13000_ID;',
'',
'IF  v_cnt >1 AND :P13000_END_DATE IS NULL THEN',
'RETURN FALSE;',
'ELSE',
'RETURN TRUE;',
'END IF;',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'System already has an active salary record for this employee, only one is allowed!',
''))
,p_validation_condition=>'SAVE, ADD_NEW, CREATE,CREATE_AGAIN'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3159963436458475291)
,p_validation_name=>'chk_spaning_date'
,p_validation_sequence=>50
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_cnt pls_integer:=0;',
'begin',
'',
'select count(1) into v_cnt ',
'from hr_rcm_salary',
'where emp_id=:P13000_EMP_ID',
'and (to_date(:P13000_START_DATE) between start_date and end_date',
'     or to_date(:P13000_START_DATE) < start_date and :P13000_END_DATE is null',
'     or to_date(:P13000_START_DATE) > start_date and end_date is null )',
'and id != :P13000_ID;',
'',
'',
'if v_cnt > 0 then',
'  return FALSE;',
'else',
'  return TRUE;',
'end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Spanning date values not allowed please change the start date for the record entered.',
''))
,p_when_button_pressed=>wwv_flow_imp.id(3159956850695475284)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3159962273735475290)
,p_validation_name=>'chk_spaning_date_1'
,p_validation_sequence=>60
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_cnt pls_integer:=0;',
'begin',
'',
'select count(1) into v_cnt ',
'from hr_rcm_salary',
'where emp_id=:P13000_EMP_ID',
'and (to_date(:P13000_START_DATE) between start_date and end_date',
'     or to_date(:P13000_START_DATE) < start_date and :P13000_END_DATE is null',
'     or to_date(:P13000_START_DATE) > start_date and end_date is null );',
'',
'',
'if v_cnt > 0 then',
'  return FALSE;',
'else',
'  return TRUE;',
'end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Spanning date values not allowed please change the start date for the record entered.',
''))
,p_when_button_pressed=>wwv_flow_imp.id(3159957299807475284)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3159963017744475291)
,p_validation_name=>'enf_salary_scale'
,p_validation_sequence=>70
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_enf_scale hr_hcf_org_rule.enforce_salary_scale%type;',
'    v_lower_scale hr_hcf_position.lower_scale%type;',
'    v_upper_scale hr_hcf_position.upper_scale%type;',
'    ',
'begin',
'        select NVL(MAX(ENFORCE_SALARY_SCALE),0) into v_enf_scale',
'        from HR_HCF_ORG_RULE',
'        where ORG_ID = :APP_ORG_ID',
'        and start_date <= trunc(current_date)',
'        and (end_date is null or end_date >  trunc(current_date));',
'        ',
'        select NVL(MAX(Lower_Scale),0), NVL(MAX(Upper_Scale),0) into v_lower_scale, v_upper_scale',
'        from hr_hcf_position a join hr_rcm_employee c on c.position_id = a.id',
'        where c.id=:P13000_EMP_ID;',
'        ',
'                 ',
'    if v_enf_scale = 1 and to_number(replace(replace(:P13000_PERSONAL_RATE,''$'',''''),'','',''''))  not between v_lower_scale and v_upper_scale AND :P13000_END_DATE IS NULL THEN ',
'        return ''The system is set to enforce salary scale, however the value you have entered is not within the assigned employee scale.'';',
'    else',
'        return '''';',
'    end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'SAVE,CREATE,CREATE_AGAIN'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3159964270012475292)
,p_validation_name=>'chk_empdate_with_sal_date'
,p_validation_sequence=>80
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_dt_emp number(4);',
'',
'begin',
'select extract(year from DATE_EMPLOYED) into v_dt_emp',
'from hr_rcm_employee',
'where id=:P13000_EMP_ID;',
'',
'if v_dt_emp > extract(year from to_date(:P13000_START_DATE)) then',
'return false;',
'else',
'return true;',
'end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Salary start date not compatible with employment date.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3159964691692475292)
,p_validation_name=>'chk_dates'
,p_validation_sequence=>90
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'IF TO_DATE(:P13000_END_DATE) < TO_DATE(:P13000_START_DATE) THEN',
'RETURN FALSE;',
'ELSE',
'return TRUE;',
'end if;',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The end date cannot be less than the start date!'
,p_always_execute=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3159962647225475290)
,p_validation_name=>'enf_salary_tax'
,p_validation_sequence=>100
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_employment_type_id number(10);',
'    ',
'begin',
'    select employment_type_id into v_employment_type_id',
'    from hr_rcm_employee',
'    where id = :P13000_EMP_ID;',
'',
'    if :P13000_SALARY_TAXABLE = 0 and v_employment_type_id=2 then',
'        return FALSE;',
'     else',
'        return TRUE;',
'    end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You cannot make salary non taxable for permanent employees.'
,p_always_execute=>'Y'
,p_validation_condition_type=>'NEVER'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3159960282800475288)
,p_validation_name=>'reject_verification_unverification'
,p_validation_sequence=>110
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if pkg_global_fnts.chk_verifier(:APP_USER ,:APP_PAGE_ID )=0 and upper(pkg_global_fnts.status_descript(:P13000_STATUS)) like ''%VER%'' then',
'return FALSE;',
'ELSE',
' RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You are not a verifier, action disallowed.'
,p_validation_condition_type=>'NEVER'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3159960703543475288)
,p_validation_name=>'reject_approval_unapproval'
,p_validation_sequence=>120
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if pkg_global_fnts.chk_approver(:APP_USER)=0 and upper(pkg_global_fnts.status_descript(:P13000_STATUS)) like ''%APP%'' then',
'return FALSE;',
'ELSE',
' RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You are not an approver, action disallowed.'
,p_validation_condition_type=>'NEVER'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3159961057856475288)
,p_validation_name=>'chk_workflow_mode'
,p_validation_sequence=>130
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if pkg_global_fnts.CHK_WORKFLOW_MODE(:P13000_START_DATE, :P13000_TRANSACTION_TYPE_ID)=TRUE then',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Workflow mode is enabled, please select a transaction and subsequent status.',
''))
,p_validation_condition_type=>'NEVER'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3159961488488475289)
,p_validation_name=>'enf_workflow_seq'
,p_validation_sequence=>140
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF pkg_global_fnts.fn_enforce_wfl_seq(:P13000_TRANSACTION_TYPE_ID, :APP_PAGE_ID, :P13000_ID, :P13000_STATUS) =FALSE THEN',
'  RETURN FALSE;',
'ELSE',
'  RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The work flow sequence is set to enforce mode, select the next status value in sequence as it appear in the LOV.'
,p_validation_condition_type=>'NEVER'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3159961863896475289)
,p_validation_name=>'chk_approval'
,p_validation_sequence=>150
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_test_approval number:=0;',
'  ',
'  begin',
'',
'        select count(1) into v_test_approval',
'        from tblapprovalhistory',
'        where table_name=''HR_RCM_SALARY''',
'        and table_name_key=:P13000_ID;',
'        ',
'    if v_test_approval = 0 and UPPER(pkg_global_fnts.status_descript(:P13000_STATUS)) like upper(''VER%'') then',
'        return FALSE;',
'    else',
'        return TRUE;',
'    end if;',
'  end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'This current record must be approved, at least by one person before it can be verified.'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_imp.id(3159956850695475284)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3159971470530475300)
,p_name=>'set_leave_passage'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P13000_START_DATE'
,p_condition_element=>'P13000_START_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3159971997889475301)
,p_event_id=>wwv_flow_imp.id(3159971470530475300)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P13000_LEAVE_PASSAGE_AMOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    d.leave_passage_amount',
'FROM',
'    hr_rcm_employee               a',
'    JOIN hr_hcf_position               c ON c.id = a.position_id',
'    JOIN hr_hcf_positiongrade          d ON d.id = c.grade_id',
'WHERE',
'    a.id = :p13000_emp_id'))
,p_attribute_07=>'P13000_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3159972400250475301)
,p_name=>'dy_save_interactive_grid'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3159953750042475278)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3159972854225475302)
,p_event_id=>wwv_flow_imp.id(3159972400250475301)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var disburse$ = apex.region("disburse").widget();',
'var view = disburse$.interactiveGrid("getCurrentView");',
'var model = view.model;',
'if ( !model.isChanged() ) {',
'    apex.theme.closeRegion( "disburse");',
'} else {',
'   ',
'    disburse$.interactiveGrid("getActions").invoke("save");',
'    disburse$.on("interactivegridsave", function(event, ui) {',
'        disburse$.off("interactivegridsave");',
'        if ( ui.status === "success" ) {',
'            apex.theme.closeRegion( "disburse" );',
'        } ',
'    });',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3159973224097475303)
,p_name=>'set_salary_personal_rate'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P13000_GRADE_POINT'
,p_condition_element=>'P13000_GRADE_POINT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3159973766693475303)
,p_event_id=>wwv_flow_imp.id(3159973224097475303)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P13000_ANNUAL_SALARY'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select point_amount',
'from HR_HCF_POSITIONGRADEPOINT a ',
'where a.position_grade_id=:P13000_EMP_GRADE_ID',
'and a.point=:P13000_GRADE_POINT',
'and end_date is null',
''))
,p_attribute_07=>'P13000_EMP_GRADE_ID,P13000_GRADE_POINT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3159974251693475305)
,p_event_id=>wwv_flow_imp.id(3159973224097475303)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'        v_compute_gross varchar2(50);        ',
'        v_std_hours number(12,4);',
'        v_std_days number(12,4);',
'        v_payment_type varchar2(50);',
'        ',
'        ',
'begin',
'        for i in (select  compute_gross, hours_worked std_hours, num_working_days std_days, upper(a.payment_type) payment_type,:P13000_PERSON_RATE personal_rate',
'        from hr_rcm_employee a join Hr_Att_Shift_Rota b on b.id = a.shift_id',
'        where a.id =:P13000_EMP_ID) loop',
'        ',
'        begin',
'       ',
'        if i.payment_type =''MONTHLY'' then',
'            :P13000_PERSONAL_RATE := i.personal_rate;',
'            :P13000_HOURLY_RATE:=  round(nvl(i.personal_rate/i.std_hours,0),2);             ',
'            :P13000_DAILY_RATE := round(i.personal_rate/ i.std_days,2);',
'            ',
'        ELSIF i.payment_type =''FORTNIGHTLY'' then',
'            :P13000_PERSONAL_RATE := round((i.personal_rate*12)/26);',
'            :P13000_HOURLY_RATE:=  round(nvl(i.personal_rate/i.std_hours,0),2);             ',
'            :P13000_DAILY_RATE := round(i.personal_rate/ i.std_days,2);',
'            ',
'        elsif  i.payment_type =''WEEKLY'' then',
'            :P13000_PERSONAL_RATE := round((i.personal_rate*12)/52);',
'            :P13000_HOURLY_RATE:=  round(nvl(i.personal_rate/i.std_hours,0),2);             ',
'            :P13000_DAILY_RATE := round(i.personal_rate/ i.std_days,2);',
'        ELSE',
'            :P13000_PERSONAL_RATE := round((i.personal_rate*12)/24);',
'            :P13000_HOURLY_RATE:=  round(nvl(i.personal_rate/i.std_hours,0),2);             ',
'            :P13000_DAILY_RATE := round(i.personal_rate/ i.std_days,2);',
'          ',
'        end if; ',
'        exception WHEN ZERO_DIVIDE THEN',
'               RAISE_APPLICATION_ERROR(-20050,''No employee requirements exist for standard hours for this employee.'');',
'    end;',
'  end loop;',
'end;'))
,p_attribute_02=>'P13000_HOURLY_RATE,P13000_EMP_ID,P13000_PERSONAL_RATE,P13000_PERSON_RATE'
,p_attribute_03=>'P13000_HOURLY_RATE,P13000_DAILY_RATE,P13000_PERSONAL_RATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3159974626434475305)
,p_name=>'dy_set_grade_point'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P13000_GRADE_POINT_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3159975201054475305)
,p_event_id=>wwv_flow_imp.id(3159974626434475305)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P13000_GRADE_POINT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select point',
'from HR_HCF_POSITIONGRADEPOINT',
'where position_grade_id=:P13000_SAL_GRADE_ID',
'AND id = :P13000_GRADE_POINT_ID',
'and start_date <= trunc(current_date)',
'and nvl(end_date,trunc(current_date)) >=  trunc(current_date)',
'order by point_amount'))
,p_attribute_07=>'P13000_SAL_GRADE_ID,P13000_GRADE_POINT_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3159975510958475306)
,p_name=>'dy_set_grade_point_id'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P13000_GRADE_POINT'
,p_condition_element=>'P13000_GRADE_POINT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3159976010515475306)
,p_event_id=>wwv_flow_imp.id(3159975510958475306)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P13000_GRADE_POINT_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id',
'from HR_HCF_POSITIONGRADEPOINT',
'where position_grade_id=:P13000_SAL_GRADE_ID',
'and point = :P13000_GRADE_POINT',
'and (end_date is null or end_date > current_date)',
'order by point_amount',
''))
,p_attribute_07=>'P13000_SAL_GRADE_ID,P13000_GRADE_POINT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3159976433154475306)
,p_name=>'dy_calculate_personalrate'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P13000_PERSONAL_RATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3159976997521475307)
,p_event_id=>wwv_flow_imp.id(3159976433154475306)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'        v_compute_gross varchar2(50);        ',
'        v_std_hours number(12,4);',
'        v_std_days number(12,4);      ',
'        v_payment_type varchar2(50);  ',
'        v_employment_class_id number;',
'        ',
'begin',
'        select  compute_gross, hours_worked, num_working_days, upper(a.payment_type), employment_class_id',
'        into v_compute_gross, v_std_hours,  v_std_days, v_payment_type, v_employment_class_id',
'        from hr_rcm_employee a join Hr_Att_Shift_Rota b on b.id = a.shift_id',
'        where a.id =:P13000_EMP_ID; ',
'',
'    ',
'                if v_compute_gross =''BASIC_PAY'' then',
'               ',
'                    :P13000_HOURLY_RATE:= round(replace(replace(:P13000_PERSONAL_RATE,''$'',''''),'','','''')/v_std_hours,3);',
'                    :P13000_DAILY_RATE :=  round(replace(replace(:P13000_PERSONAL_RATE,''$'',''''),'','','''')/v_std_days,3);',
'                Else',
'',
'                    :P13000_HOURLY_RATE:= round(replace(replace(:P13000_PERSONAL_RATE,''$'',''''),'','',''''),3);',
'                    :P13000_PERSONAL_RATE:= round(replace(replace(:P13000_PERSONAL_RATE,''$'',''''),'','','''')*v_std_hours,3);',
'                    :P13000_DAILY_RATE :=  round(replace(replace(:P13000_HOURLY_RATE,''$'',''''),'','','''')*8,3);     ',
'',
'                    ',
'                     :P13000_ANNUAL_SALARY := case when v_payment_type IN (''FORTNIGHTLY'',''BI-WEEKLY'') then  round(replace(replace(:P13000_PERSONAL_RATE,''$'',''''),'','',''''),3) * 26',
'                                                 when v_payment_type =''WEEKLY'' then  round(replace(replace(:P13000_PERSONAL_RATE,''$'',''''),'','',''''),3) * 52',
'                                                 when v_payment_type =''MONTHLY'' then  round(replace(replace(:P13000_PERSONAL_RATE,''$'',''''),'','',''''),3) * 12',
'                                                 when v_payment_type =''BI-MONTHLY'' then  round(replace(replace(:P13000_PERSONAL_RATE,''$'',''''),'','',''''),3) * 24',
'                                            end;',
'    ',
'',
'                end if; ',
'',
'                ',
'',
'	exception           ',
'           WHEN ZERO_DIVIDE THEN',
'               RAISE_APPLICATION_ERROR(-20050,''No employee requirements exist for standard hours for this employee.'');      ',
'           when no_data_found then ',
'             RAISE_APPLICATION_ERROR(-20050,''This employee do not have any Shift Rotations assigned.'');          ',
'end;'))
,p_attribute_02=>'P13000_EMP_ID,P13000_PERSONAL_RATE'
,p_attribute_03=>'P13000_HOURLY_RATE,P13000_DAILY_RATE,P13000_PERSONAL_RATE,P13000_ANNUAL_SALARY'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3159970555329475300)
,p_name=>'set_emp_grade_id'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P13000_EMP_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3159971031034475300)
,p_event_id=>wwv_flow_imp.id(3159970555329475300)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P13000_EMP_GRADE_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select emp_grade_id from hr_rcm_employee where id = :P13000_EMP_ID'
,p_attribute_07=>'P13000_EMP_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3159977388403475307)
,p_name=>'set_start_date'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P13000_EMP_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3159977835187475308)
,p_event_id=>wwv_flow_imp.id(3159977388403475307)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P13000_START_DATE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_count number:=0;',
'    v_start_date date;',
'begin',
'select nvl(max(a.end_date)+1, max(b.date_employed)) into v_start_date',
'    from hr_rcm_salary a join hr_rcm_employee b on a.emp_id = b.id',
'    where exists(select 1',
'                 from HR_RCM_EMPLOYEE b',
'                 where a.EMP_ID = b.id',
'                 and b.ORG_ID = :APP_ORG_ID)',
'    and a.emp_id = :P13000_EMP_ID;',
'',
'    if v_start_date is not null then ',
'        return v_start_date;',
'    else',
'        return trunc((current_date),''month'');',
'    end if;',
'end;'))
,p_attribute_07=>'P13000_EMP_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(441227134092455096)
,p_name=>'Compute_salary_rates'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P13000_ANNUAL_SALARY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(441227547613455101)
,p_event_id=>wwv_flow_imp.id(441227134092455096)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_std_hours Hr_Att_Shift_Rota.hours_worked%type;',
'    v_std_days Hr_Att_Shift_Rota.num_working_days%type;',
'    V_shift_id Hr_Att_Shift_Rota.ID%TYPE;',
'    V_COMPUTE_GROSS hr_Rcm_employee.COMPUTE_GROSS%TYPE;',
'',
'begin',
'',
'    SELECT shift_id, COMPUTE_GROSS INTO  V_shift_id, V_COMPUTE_GROSS',
'    from hr_Rcm_employee ',
'    where id= :P13000_EMP_ID;',
'     ',
'    select hours_worked, num_working_days into v_std_hours,  v_std_days',
'    from Hr_Att_Shift_Rota ',
'    where id =V_shift_id;',
'',
'   IF  V_COMPUTE_GROSS =''BASIC_PAY'' THEN',
'',
'    :P13000_PERSONAL_RATE := TO_NUMBER(replace(replace(:P13000_ANNUAL_SALARY,''$'',''''),'','',''''))/24;',
'    :P13000_HOURLY_RATE := (TO_NUMBER(replace(replace(:P13000_ANNUAL_SALARY,''$'',''''),'','',''''))/24)/v_std_hours;',
'    :P13000_DAILY_RATE := (TO_NUMBER(replace(replace(:P13000_ANNUAL_SALARY,''$'',''''),'','',''''))/24)/v_std_days;',
'',
'   END IF;',
'',
'',
'END;'))
,p_attribute_02=>'P13000_ANNUAL_SALARY,P13000_EMP_ID'
,p_attribute_03=>'P13000_PERSONAL_RATE ,P13000_HOURLY_RATE,P13000_DAILY_RATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3159968156570475297)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from VW_HR_RCM_SALARY'
,p_attribute_02=>'VW_HR_RCM_SALARY'
,p_attribute_03=>'P13000_ID'
,p_attribute_04=>'ID'
,p_internal_uid=>2738176163372478723
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3159966981839475296)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_PAGINATION'
,p_process_name=>'Get Next or Previous Primary Key Value'
,p_attribute_02=>'VW_HR_RCM_SALARY'
,p_attribute_03=>'P13000_ID'
,p_attribute_04=>'ID'
,p_attribute_07=>'PERSONAL_RATE'
,p_attribute_09=>'P13000_ID_NEXT'
,p_attribute_10=>'P13000_ID_PREV'
,p_attribute_13=>'P13000_ID_COUNT'
,p_attribute_14=>'EMP_ID=:P1281_ID'
,p_internal_uid=>2738174988641478722
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3159968919180475298)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_machine_insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P13000_MACHINE_INSERT is null and :P101_MACHINE_NAME is not null then',
' :P13000_MACHINE_INSERT:=:P101_MACHINE_NAME;',
'end if;',
'',
'if :P13000_MACHINE_UPDATE is null and :P101_MACHINE_NAME is not null then',
' :P13000_MACHINE_UPDATE:=:P101_MACHINE_NAME;',
'end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,CREATE_AGAIN'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>2738176925982478724
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3159968593449475298)
,p_process_sequence=>21
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_machine_update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' :P13000_MACHINE_UPDATE:=:P101_MACHINE_NAME;',
'',
' if :P13000_MACHINE_INSERT is null and :P101_MACHINE_NAME is not null then',
'    :P13000_MACHINE_INSERT:=:P101_MACHINE_NAME;',
' end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3159956850695475284)
,p_internal_uid=>2738176600251478724
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3159970169650475299)
,p_process_sequence=>31
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'POP_SEARCH'
,p_process_sql_clob=>':P13000_POP_SEARCH :=1;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3159945680428475256)
,p_internal_uid=>2738178176452478725
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3159967714825475297)
,p_process_sequence=>51
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of HR_RCM_SALARY'
,p_attribute_02=>'HR_RCM_SALARY'
,p_attribute_03=>'P13000_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P13000_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>2738175721627478723
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3159954526598475280)
,p_process_sequence=>61
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(4599210503214304595)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>' - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2738162533400478706
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3159966145926475295)
,p_process_sequence=>71
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CLOSE_PREVIOUS_RECORD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'        update hr_rcm_salary',
'        set end_date = TO_DATE(:P13000_START_DATE) -1',
'        where start_date =',
'                           (select max(start_date)',
'                            from hr_rcm_salary',
'                            where emp_id = :P13000_EMP_ID',
'                            and id != :P13000_ID)',
'        and id != :P13000_ID',
'        and emp_id = :P13000_EMP_ID;',
'        ',
'exception',
'    when others then null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE, CREATE_AGAIN'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'System will auto close the previous salary.'
,p_internal_uid=>2738174152728478721
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3159967403249475297)
,p_process_sequence=>81
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'282'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3159956472343475283)
,p_internal_uid=>2738175410051478723
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3159966600427475296)
,p_process_sequence=>91
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'auto_notify'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   v_Individual varchar2(200); ',
'   get_transaction TBLTRANSACTIONTYPE.TRANSACTION_DESCRIPTION%TYPE; ',
'   v_description tblworkflowstatus.WFL_STATUS_DESCRIPTION%TYPE;',
'begin',
'',
'begin',
'select initcap(TRANSACTION_DESCRIPTION)  into get_transaction ',
'from TBLTRANSACTIONTYPE ',
'where TRANSACTION_TYPE_ID=:P13000_TRANSACTION_TYPE_ID;',
'',
'select WFL_STATUS_DESCRIPTION into v_description',
'from tblworkflowstatus',
'where WFL_STATUS_ID=:P13000_STATUS;',
'',
'select INDIVIDUAL into v_Individual ',
'from VW_INDIVIDUAL a join HR_RCM_EMPLOYEE B on a.id=B.IND_ID',
'where B.Id=:P13000_EMP_ID;',
'',
'exception',
'  when no_data_found then null;',
'end;',
'  pkg_biz_rules.pop_notification',
'(',
'	get_transaction||'' for: ''||v_Individual,',
'	nvl(V(''APP_USER''),user),',
'	''ACTIVE'',',
'	current_date,	''f?p=''||:APP_ID||'':''||:APP_PAGE_ID||'':''||:APP_SESSION||''::NO::P''||:APP_PAGE_ID||''_ID:''||:P13000_ID,',
'	v_description||'' ''||get_transaction||'' for: ''||''salary change'',',
'	:P13000_STATUS,:APP_PAGE_ID,:P13000_TRANSACTION_TYPE_ID,',
'        ''HR_RCM_SALARY'');',
'        ',
'if upper(pkg_global_fnts.status_descript(:P13000_STATUS)) like upper(''APPROVE%'') then    ',
'      pkg_global_fnts.approve_record(:APP_USER, ''HR_RCM_SALARY'',''ID'', :P13000_ID);',
'',
'  elsif upper(pkg_global_fnts.status_descript(:P13000_STATUS)) like upper(''UNAPPROV%'') or  upper(pkg_global_fnts.status_descript(:P13000_STATUS)) like upper(''CANCEL%'') then',
'',
'      pkg_global_fnts.disapprove_record(NVL(V(''APP_USER''),user), ''HR_RCM_SALARY'', ''ID'', :P13000_ID);       ',
' end if;',
'',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3159956850695475284)
,p_internal_uid=>2738174607229478722
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3159969802501475299)
,p_process_sequence=>111
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'duplicate_sal_disbursement'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P13000_PAYMENT_MODE =''MULTI'' THEN',
'',
'    update hr_rcm_disbursement a',
'    set end_date = trunc(current_date)-1',
'    where exists(select 1',
'                  from hr_rcm_salary b',
'                  where a.salary_id = b.id',
'                  and end_date =(select max(end_date) from hr_rcm_salary where end_date is not null and EMP_ID=:P13000_EMP_ID and id !=:P13000_ID)',
'                  and EMP_ID=:P13000_EMP_ID',
'                  AND PAYMENT_MODE =''MULTI'')',
'    and end_date is null;',
'',
'',
'    INSERT INTO hr_rcm_disbursement ( salary_id,  payment_mode_dist,  percent_split,  start_date,',
'        bank_branch_id_dist,  bank_account_no_dist,  joint_acc,  emp_id_disp)',
'    select  :P13000_ID,  payment_mode_dist,  percent_split,  trunc(current_date),',
'        bank_branch_id_dist,  bank_account_no_dist,  joint_acc,  :P13000_EMP_ID',
'    from hr_rcm_disbursement a',
'    where exists(select 1',
'                  from hr_rcm_salary b',
'                  where a.salary_id = b.id',
'                  and end_date =(select max(end_date) from hr_rcm_salary where end_date is not null and EMP_ID=:P13000_EMP_ID and id !=:P13000_ID)',
'                  and EMP_ID=:P13000_EMP_ID',
'                  AND PAYMENT_MODE =''MULTI'')',
'    and end_date is not null;              ',
'',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,CREATE_AGAIN'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>2738177809303478725
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3159954914091475281)
,p_process_sequence=>121
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(4599210503214304595)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_total_percent number(3,2):=0;',
'    v_test_dis number:=0;',
'    ',
'begin',
'',
'    select nvl(count(1),0) into v_test_dis',
'    from HR_RCM_DISBURSEMENT',
'    where SALARY_ID=:P13000_ID ;',
'',
'if :P13000_PAYMENT_MODE =''MULTI'' and v_test_dis > 0 then',
'',
'    select nvl(sum(PERCENT_SPLIT),0) into v_total_percent',
'    from HR_RCM_DISBURSEMENT',
'    where SALARY_ID=:P13000_ID',
'    and start_date <=trunc(current_date)',
'    and (end_date is null or end_date >=trunc(current_date));',
'    ',
'    if v_total_percent < 1 then',
'     apex_error.add_error (',
'    p_message          => ''Please enter a successful recall'',',
'    p_display_location => apex_error.c_inline_in_notification );',
'    elsif  v_total_percent > 1 then',
'     apex_error.add_error (',
'    p_message          => ''Please enter a recall'',',
'    p_display_location => apex_error.c_inline_in_notification );',
'    else',
'    apex_application.g_print_success_message := ''<span style="color:red">Value is wrong.</span>'';',
'    end if;',
'',
'else',
'   apex_application.g_print_success_message := ''<span style="color:red">Value  is wrong.</span>'';',
'end if;',
'',
'exception',
'    when others then null;',
'       v_total_percent :=0;',
'          apex_application.g_print_success_message := ''<span style="color:red">Value is wrong.</span>'';',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_exec_cond_for_each_row=>'Y'
,p_only_for_changed_rows=>'N'
,p_process_is_stateful_y_n=>'Y'
,p_internal_uid=>2738162920893478707
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3159965776341475293)
,p_process_sequence=>131
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'cascade_entitlement'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_count number(10):=0; V_SALARY NUMBER(10):=0;',
'    ',
'begin ',
'    ',
'    select count(1) into v_count',
'    from hr_rcm_empentitle',
'    where emp_id =:P13000_EMP_ID',
'    and percentage > 0;',
'    ',
'    ',
'    SELECT personal_rate INTO V_SALARY',
'    from hr_rcm_salary',
'    where id=:P13000_ID;',
'',
'    if (:P13000_CASCADE_OTHER_EARNINGS = 1 and v_count > 0 ) or (:P13000_CASCADE_OTHER_EARNINGS = 1 and replace(replace(:P13000_PERSONAL_RATE,''$'',''''),'','','''')   != V_SALARY) then ',
'        for I in (SELECT id, emp_id, income_type, income_code_id, taxable, nis_deduction, (percentage/100) * pkg_global_fnts.fn_personalrate(emp_id, trunc(current_date)) amount, expense_code_id, admin_status, percentage,',
'                    remarks, quick_entry, start_date, entitlement_currency, pensionable',
'                   FROM hr_rcm_empentitle',
'                   where PERCENTAGE > 0',
'                   and amount > 0',
'                   and (end_date is null or end_date > trunc(current_date))',
'                   and EMP_ID = :P13000_EMP_ID) loop',
'                   ',
'    begin',
'            UPDATE hr_rcm_empentitle',
'            Set  END_DATE = trunc(current_date)-1           ',
'                ,REMARKS = REMARKS||'' system closed the entitlement due to new salary record.''',
'            where id =i.id;',
'    ',
'         if sql%rowcount > 0 then',
'           INSERT INTO hr_rcm_empentitle (  emp_id, income_type, income_code_id, taxable, nis_deduction, amount, expense_code_id, admin_status, percentage,',
'                    remarks, quick_entry, start_date, entitlement_currency, pensionable)',
'                    ',
'           values ( i.emp_id, i.income_type, i.income_code_id, i.taxable, i.nis_deduction, i.amount, i.expense_code_id, i.admin_status, i.percentage,',
'                    i.remarks, i.quick_entry,  trunc(current_date), i.entitlement_currency, i.pensionable);  ',
'         end if; ',
'         ',
'    exception',
'        when others then null;',
'    end;',
'    ',
'       end loop;',
'    ',
'    end if;',
'--exception',
'--    when others then null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE, CREATE_AGAIN, SAVE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'New Salary cascaded the deductions and allowances accordingly. '
,p_internal_uid=>2738173783143478719
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3159969344663475298)
,p_process_sequence=>141
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3159956025200475283)
,p_internal_uid=>2738177351465478724
);
wwv_flow_imp.component_end;
end;
/
