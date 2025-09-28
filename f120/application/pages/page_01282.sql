prompt --application/pages/page_01282
begin
--   Manifest
--     PAGE: 01282
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
 p_id=>1282
,p_name=>'frmSalary'
,p_page_mode=>'MODAL'
,p_step_title=>'Create/Edit Wages/Salaries'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3603892462384379471)
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
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3585334160394360204)
,p_dialog_width=>'1000'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3520784963128151986)
,p_name=>'Audit'
,p_template=>2664334895415463485
,p_display_sequence=>51
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
'where  id = :P1282_ID'))
,p_display_when_condition=>':P1282_ID is not null'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1282_ID'
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
 p_id=>wwv_flow_imp.id(475925316863652178)
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
 p_id=>wwv_flow_imp.id(475925474325652179)
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
 p_id=>wwv_flow_imp.id(475925576848652180)
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
 p_id=>wwv_flow_imp.id(475925663859652181)
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
 p_id=>wwv_flow_imp.id(475925710490652182)
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
 p_id=>wwv_flow_imp.id(475925836104652183)
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
 p_id=>wwv_flow_imp.id(3563809355344714150)
,p_plug_name=>'Detail Audit'
,p_parent_plug_id=>wwv_flow_imp.id(3520784963128151986)
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
'where HR_RCM_SALARY_AUD.id = :P1282_ID',
'ORDER BY  START_DATE DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1282_ID'
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
 p_id=>wwv_flow_imp.id(3563809100384714147)
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
,p_internal_uid=>73876602923735225
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3563808949558714146)
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
 p_id=>wwv_flow_imp.id(3563808862409714145)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3563808720327714144)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3563808629211714143)
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
 p_id=>wwv_flow_imp.id(3563808601022714142)
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
 p_id=>wwv_flow_imp.id(3563808428186714141)
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
 p_id=>wwv_flow_imp.id(3563808305050714140)
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
 p_id=>wwv_flow_imp.id(3563808270981714139)
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
 p_id=>wwv_flow_imp.id(3563808137595714138)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3563808100149714137)
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
 p_id=>wwv_flow_imp.id(3563807949926714136)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3563807817042714135)
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
 p_id=>wwv_flow_imp.id(3563807779241714134)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3563807628009714133)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3563807599881714132)
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
 p_id=>wwv_flow_imp.id(3563807420356714131)
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
 p_id=>wwv_flow_imp.id(3563807358195714130)
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
 p_id=>wwv_flow_imp.id(3563807278997714129)
,p_db_column_name=>'SALARY_CURRENCY'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Salary Currency'
,p_column_type=>'STRING'
,p_static_id=>'SALARY_CURRENCY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3563807190805714128)
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
 p_id=>wwv_flow_imp.id(3563807071256714127)
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
 p_id=>wwv_flow_imp.id(3563806992005714126)
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
 p_id=>wwv_flow_imp.id(3563806889917714125)
,p_db_column_name=>'PAYMENT_MODE'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Payment Mode'
,p_column_type=>'STRING'
,p_static_id=>'PAYMENT_MODE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3563806733780714124)
,p_db_column_name=>'PKEY'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Pkey'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3563806618410714123)
,p_db_column_name=>'REMARKS'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3563806558267714122)
,p_db_column_name=>'EMPLOYEE_STATUS'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Employee Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3563573562926271171)
,p_db_column_name=>'COMPUTE_GROSS'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Compute Gross'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3563573467920271170)
,p_db_column_name=>'ORG_STRUCTURE'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Org Structure'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3563573332252271169)
,p_db_column_name=>'POSITION_NAME'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Position Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3563573278900271168)
,p_db_column_name=>'SEPARATED_STATUS'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Separated Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3563573186579271167)
,p_db_column_name=>'EMPLOYMENT_STATUS'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Employment Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3563573041080271166)
,p_db_column_name=>'ENTERED_BY_AUD'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Entered By Aud'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3563572918691271165)
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
 p_id=>wwv_flow_imp.id(3563556435716248960)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'741293'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_ID:EMPLOYMENT_CLASS:PAYMENT_TYPE:ORG_STRUCTURE:POSITION_NAME:ENTERED_BY_AUD:ENTRY_DATE_AUD:WKLOCATION_ID:PERSONAL_RATE:DAILY_RATE:HOURLY_RATE:START_DATE:END_DATE:ENTERED_BY:ENTRY_DATE:LAST_CHANGED_BY:LAST_CHANGED_DATE:SALARY_CURRENCY:PKEY:REMARKS'
||':'
,p_break_on=>'EMP_ID:EMPLOYMENT_CLASS:PAYMENT_TYPE:ORG_STRUCTURE:POSITION_NAME:0'
,p_break_enabled_on=>'EMP_ID:EMPLOYMENT_CLASS:PAYMENT_TYPE:ORG_STRUCTURE:POSITION_NAME:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3520789374658152002)
,p_plug_name=>'Create/Edit Wages/Salaries'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--TO make readonly',
'select 1',
'from pa_pmg_payrolldtl a',
'where exists(select 1',
'            from hr_rcm_salary b',
'            where b.id = a.salary_id ',
'            and b.id =:P1282_ID );'))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3531444687895413730)
,p_plug_name=>'Search Employee Salaries'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent2:t-Region--scrollBody:margin-bottom-none'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  HR_RCM_SALARY.ID as ID, HR_RCM_SALARY.ID PKEY, daily_rate,',
'     EMP_ID as EMP_ID,',
'     PERSONAL_RATE as PERSONAL_RATE,annual_salary,',
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
' from HR_RCM_SALARY join HR_RCM_EMPLOYEE V on  HR_RCM_SALARY.emp_id=v.id',
'where exists ( ',
'              select 1',
'              FROM VW_USERACCESS A ',
'              where v.org_id=a.org_id',
'              and v.employment_class_id=a.employment_class_id',
'              and upper(v.payment_type)=a.payment_type            ',
'              and v.org_id =a.org_id',
'              )',
'AND (:P1282_POP_SEARCH =1 OR HR_RCM_SALARY.EMP_ID =:P1282_EMP_ID)',
'and v.date_separated is null',
'ORDER BY  START_DATE DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1282_EMP_ID'
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
 p_id=>wwv_flow_imp.id(3531444475758413730)
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
,p_internal_uid=>121394690388573839
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3608002898846741509)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:1282:&SESSION.::&DEBUG.::P1282_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3608002555250741508)
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
 p_id=>wwv_flow_imp.id(3608002147710741508)
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
 p_id=>wwv_flow_imp.id(3608001737144741508)
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
 p_id=>wwv_flow_imp.id(3608001344339741508)
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
 p_id=>wwv_flow_imp.id(3608000913601741506)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3608000510384741506)
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
 p_id=>wwv_flow_imp.id(3608000107869741506)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3607999713400741506)
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
 p_id=>wwv_flow_imp.id(3607999304029741505)
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
 p_id=>wwv_flow_imp.id(3607998919908741504)
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
 p_id=>wwv_flow_imp.id(3607998526513741504)
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
 p_id=>wwv_flow_imp.id(3607998074863741504)
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
 p_id=>wwv_flow_imp.id(3607997755687741503)
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
 p_id=>wwv_flow_imp.id(3607997345697741502)
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
 p_id=>wwv_flow_imp.id(3607996958238741502)
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
 p_id=>wwv_flow_imp.id(3607996505443741502)
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
 p_id=>wwv_flow_imp.id(3607996145549741500)
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
 p_id=>wwv_flow_imp.id(3496338673568650108)
,p_db_column_name=>'PKEY'
,p_display_order=>28
,p_column_identifier=>'S'
,p_column_label=>'Pkey'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3497384728288039800)
,p_db_column_name=>'REMARKS'
,p_display_order=>38
,p_column_identifier=>'T'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3487852729882486511)
,p_db_column_name=>'EMPLOYEE_STATUS'
,p_display_order=>48
,p_column_identifier=>'U'
,p_column_label=>'Employee Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3487852709649486510)
,p_db_column_name=>'COMPUTE_GROSS'
,p_display_order=>58
,p_column_identifier=>'V'
,p_column_label=>'Compute Gross'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3487852600624486509)
,p_db_column_name=>'ORG_STRUCTURE'
,p_display_order=>68
,p_column_identifier=>'W'
,p_column_label=>'Org Structure'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3487852474010486508)
,p_db_column_name=>'POSITION_NAME'
,p_display_order=>78
,p_column_identifier=>'X'
,p_column_label=>'Position Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3487852354938486507)
,p_db_column_name=>'SEPARATED_STATUS'
,p_display_order=>88
,p_column_identifier=>'Y'
,p_column_label=>'Separated Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3487852274632486506)
,p_db_column_name=>'EMPLOYMENT_STATUS'
,p_display_order=>98
,p_column_identifier=>'Z'
,p_column_label=>'Employment Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3487852206767486505)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>108
,p_column_identifier=>'AA'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3487852091279486504)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>118
,p_column_identifier=>'AB'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3487852003003486503)
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
 p_id=>wwv_flow_imp.id(3487343032991306491)
,p_db_column_name=>'DAILY_RATE'
,p_display_order=>138
,p_column_identifier=>'AD'
,p_column_label=>'Daily Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450314193573707981)
,p_db_column_name=>'ANNUAL_SALARY'
,p_display_order=>148
,p_column_identifier=>'AE'
,p_column_label=>'Annual Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D000'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3531443195927413728)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'448434'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'ID:EMP_ID:PAYMENT_MODE:PERSONAL_RATE:ANNUAL_SALARY:HOURLY_RATE:DAILY_RATE:SALARY_CURRENCY:LEAVE_PASSAGE_AMOUNT:LEAVE_PASSAGE_DATE:START_DATE:END_DATE:'
,p_break_on=>'0:0:0:0:0'
,p_break_enabled_on=>'0:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3603166442919072462)
,p_plug_name=>'Disbursements'
,p_region_name=>'disburse'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
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
'where salary_id=:P1282_ID;'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1282_ID'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P1282_PAYMENT_MODE'
,p_plug_display_when_cond2=>'MULTI'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3581844124509187122)
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
,p_default_expression=>'P1282_EMP_ID'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3603165050369072448)
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
 p_id=>wwv_flow_imp.id(3603165091512072449)
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
 p_id=>wwv_flow_imp.id(3603165232857072450)
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
 p_id=>wwv_flow_imp.id(3603165341983072451)
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
 p_id=>wwv_flow_imp.id(3603165369054072452)
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
 p_id=>wwv_flow_imp.id(3603165525044072453)
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
 p_id=>wwv_flow_imp.id(3603165640713072454)
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
 p_id=>wwv_flow_imp.id(3603165712671072455)
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
 p_id=>wwv_flow_imp.id(3603165857842072456)
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
 p_id=>wwv_flow_imp.id(3603165958953072457)
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
 p_id=>wwv_flow_imp.id(3603166044023072458)
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
 p_id=>wwv_flow_imp.id(3603166137440072459)
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
,p_default_expression=>'P1282_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3603166242218072460)
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
 p_id=>wwv_flow_imp.id(3610306995014938642)
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
 p_id=>wwv_flow_imp.id(3610307116687938643)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3603166315540072461)
,p_internal_uid=>49672850606915108
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
 p_id=>wwv_flow_imp.id(3603131041055005872)
,p_interactive_grid_id=>wwv_flow_imp.id(3603166315540072461)
,p_static_id=>'17970'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3603130962913005872)
,p_report_id=>wwv_flow_imp.id(3603131041055005872)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3573049471127981715)
,p_view_id=>wwv_flow_imp.id(3603130962913005872)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(3581844124509187122)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3603122913771992444)
,p_view_id=>wwv_flow_imp.id(3603130962913005872)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3603165050369072448)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>107
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3603125010119005825)
,p_view_id=>wwv_flow_imp.id(3603130962913005872)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(3603165091512072449)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3603125503827005829)
,p_view_id=>wwv_flow_imp.id(3603130962913005872)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3603165232857072450)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3603126038118005834)
,p_view_id=>wwv_flow_imp.id(3603130962913005872)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3603165341983072451)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3603126503194005837)
,p_view_id=>wwv_flow_imp.id(3603130962913005872)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3603165369054072452)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3603127040401005840)
,p_view_id=>wwv_flow_imp.id(3603130962913005872)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3603165525044072453)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>60
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3603127538406005845)
,p_view_id=>wwv_flow_imp.id(3603130962913005872)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3603165640713072454)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>87
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3603127993470005848)
,p_view_id=>wwv_flow_imp.id(3603130962913005872)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3603165712671072455)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>286.3333435058594
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3603128541049005853)
,p_view_id=>wwv_flow_imp.id(3603130962913005872)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(3603165857842072456)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3603129043015005857)
,p_view_id=>wwv_flow_imp.id(3603130962913005872)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3603165958953072457)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>120
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3603129477149005861)
,p_view_id=>wwv_flow_imp.id(3603130962913005872)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3603166044023072458)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>87
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3603129876739005865)
,p_view_id=>wwv_flow_imp.id(3603130962913005872)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3603166137440072459)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3603130432381005870)
,p_view_id=>wwv_flow_imp.id(3603130962913005872)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3603166242218072460)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3610161480435122589)
,p_view_id=>wwv_flow_imp.id(3603130962913005872)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(3610307116687938643)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3605388441793095843)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3575005810086614051)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3609206985364525749)
,p_plug_name=>'Buttons Container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3607993460222741495)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3605388441793095843)
,p_button_name=>'GET_PREVIOUS_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_PREVIOUS_ID'')'
,p_button_condition=>'P1282_ID_PREV'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-angle-left'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3625508847280029405)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3603166442919072462)
,p_button_name=>'DISBURSE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Save'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3627933530273169914)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3531444687895413730)
,p_button_name=>'INITIALISE_SEARCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Initialise Search'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3607994982164741497)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3605388441793095843)
,p_button_name=>'RETURN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3607994647888741497)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3605388441793095843)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM HR_RCM_EMPLOYEE a',
'WHERE VERIFIED_BY IS NULL',
'AND EXISTS(SELECT 1',
'           FROM HR_RCM_SALARY B',
'           WHERE A.ID=B.EMP_ID',
'           and b.id=:P1282_ID)',
'and NVL(DATE_SEPARATED,current_date+1) > current_date'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(3585335384393360204)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3607994209169741496)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3605388441793095843)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_condition=>':P1282_ID is not null and NVL(:P1281_DATE_SEPARATED,current_date+1) > current_date'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(3585335069773360204)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3607993797032741495)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3605388441793095843)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_condition=>'P1282_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3607992608195741494)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(3605388441793095843)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create Again'
,p_button_position=>'EDIT'
,p_button_condition=>'P1282_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3607992189326741494)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(3605388441793095843)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1282:&SESSION.::&DEBUG.:1282:P1282_EMP_ID,P1282_EMP_GRADE_ID:&P1282_EMP_ID.,&P1282_EMP_GRADE_ID.'
,p_button_condition=>':P1282_ID is not null and NVL(:P1281_DATE_SEPARATED,current_date+1) > current_date'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3609206877690525748)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(3605388441793095843)
,p_button_name=>'DISBURSEMENT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add Disbursement'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1278:&SESSION.::&DEBUG.:RP,1278:P1278_SALARY_ID:&P1282_ID.'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-money'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3607993013233741495)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(3605388441793095843)
,p_button_name=>'GET_NEXT_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Next'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_NEXT_ID'')'
,p_button_condition=>'P1282_ID_NEXT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-angle-right'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3607970189890741450)
,p_branch_name=>'CREATE AGAIN'
,p_branch_action=>'f?p=&APP_ID.:1282:&SESSION.::&DEBUG.:1282:P1282_EMP_ID:&P1282_EMP_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3607992608195741494)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3607970615962741450)
,p_branch_name=>'delete_branch'
,p_branch_action=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3607994647888741497)
,p_branch_sequence=>2
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3607971834640741460)
,p_branch_action=>'f?p=&APP_ID.:1282:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>3
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3607970987694741451)
,p_branch_action=>'f?p=&APP_ID.:1282:&SESSION.::&DEBUG.::P1282_ID:&P1282_ID_PREV.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3607993460222741495)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3607971395054741459)
,p_branch_action=>'f?p=&APP_ID.:1282:&SESSION.::&DEBUG.::P1282_ID:&P1282_ID_NEXT.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3607993013233741495)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(431167651956430447)
,p_name=>'P1282_ANNUAL_SALARY'
,p_is_required=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(3520789374658152002)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Annual Salary'
,p_format_mask=>'FML999G999G999G999G990D000'
,p_source=>'ANNUAL_SALARY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>18
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Value is computed based on the Basic Pay Rate for the specific payment mode or frequency.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(450315123877707990)
,p_name=>'P1282_EMPLOYMENT_CLASS_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3520789374658152002)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  employment_class_id',
'from hr_rcm_employee ',
'where id =:P1282_EMP_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(450315716106707996)
,p_name=>'P1282_NEW'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3520789374658152002)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when :P1282_EMPLOYMENT_CLASS_ID= 8550410 THEN ''!! Please enter the Annual Salary Only for auto computation of Personal Rate, Hourly and Daily Rates; if the employment class is Salaried.!!''',
'                else ''!! Please enter the Personal Rate for auto computation of Annual Salary, Hourly and Daily Rates; if the employment class is NOT Salaried. !!'' ',
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
 p_id=>wwv_flow_imp.id(475925935655652184)
,p_name=>'P1282_MACHINE_INSERT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(3520784963128151986)
,p_source=>'LOGIN_VAR'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3482359381083579315)
,p_name=>'P1282_SALARY_TAXABLE'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3520789374658152002)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_prompt=>'Salary Taxable'
,p_source=>'SALARY_TAXABLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
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
 p_id=>wwv_flow_imp.id(3482361276612579334)
,p_name=>'P1282_CASCADE_DEDUCTIONS'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(3520789374658152002)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_prompt=>'Cascade Deductions'
,p_source=>'CASCADE_DEDUCTIONS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
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
 p_id=>wwv_flow_imp.id(3482361332990579335)
,p_name=>'P1282_CASCADE_OTHER_EARNINGS'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(3520789374658152002)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_prompt=>'Cascade Other Remuneration'
,p_source=>'CASCADE_OTHER_EARNINGS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
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
 p_id=>wwv_flow_imp.id(3484676887659444002)
,p_name=>'P1282_PERSON_RATE'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(3520789374658152002)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3490919748639329541)
,p_name=>'P1282_REASON_SALARY_CHANGE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(3520789374658152002)
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
 p_id=>wwv_flow_imp.id(3494745610913359492)
,p_name=>'P1282_PAYMENT_TYPE'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(3520789374658152002)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(payment_type) a',
'from hr_rcm_employee',
'where id = :P1282_EMP_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3503878715216863337)
,p_name=>'P1282_GRADE_POINT_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3520789374658152002)
,p_use_cache_before_default=>'NO'
,p_source=>'GRADE_POINT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3503878953120863339)
,p_name=>'P1282_SAL_GRADE_ID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3520789374658152002)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Salary Grade'
,p_source=>'SAL_GRADE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select grade_description||''(''||grade_code||'') as at ''||EFFECTIVE_FROMDATE a, id',
'from hr_hcf_positiongrade V',
'where  id = :P1282_EMP_GRADE_ID'))
,p_lov_cascade_parent_items=>'P1282_EMP_GRADE_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'This is the Salary Grade that is associated with the position to which the employee is substantively appointed. '
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3505319306162884833)
,p_name=>'P1282_EMP_GRADE_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3520789374658152002)
,p_item_default=>'select emp_grade_id from hr_rcm_employee where id = :P1282_EMP_ID'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3538748986647782760)
,p_name=>'P1282_GRADE_POINT'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3520789374658152002)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Salary Grade Point'
,p_source=>'GRADE_POINT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Point ''||point||'': ''||trim(to_char(point_amount,''$999,999,999,999'')) a, point',
'from HR_HCF_POSITIONGRADEPOINT',
'where position_grade_id= :P1282_EMP_GRADE_ID--:P1282_SAL_GRADE_ID',
'and start_date <= trunc(current_date)',
'and nvl(end_date,trunc(current_date)) >=  trunc(current_date)',
'order by point_amount',
'',
'',
'/*select ''Point ''||point||'': ''||trim(to_char(point_amount,''$999,999,999,999'')) a, id',
'from HR_HCF_POSITIONGRADEPOINT',
'where position_grade_id=:P1282_EMP_GRADE_ID*/',
'',
'',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Point--'
,p_lov_cascade_parent_items=>'P1282_SAL_GRADE_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'This is the monthly salary that is associated with a specific grade point on the Job/Position Salary Scale.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3563809251017714149)
,p_name=>'P1282_POP_SEARCH_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3563809355344714150)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3588900397556789561)
,p_name=>'P1282_DAILY_RATE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(3520789374658152002)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Daily Rate'
,p_format_mask=>'FML999G999G999G999G990D000'
,p_source=>'DAILY_RATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>18
,p_tag_css_classes=>'DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
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
 p_id=>wwv_flow_imp.id(3607981522649741477)
,p_name=>'P1282_MACHINE_UPDATE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(3520784963128151986)
,p_source=>'LOGIN_VAR'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3607984239857741481)
,p_name=>'P1282_ID_COUNT'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(3520789374658152002)
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
 p_id=>wwv_flow_imp.id(3607984642052741481)
,p_name=>'P1282_ID_PREV'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(3520789374658152002)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3607985035393741481)
,p_name=>'P1282_ID_NEXT'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(3520789374658152002)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3607985465155741482)
,p_name=>'P1282_STD_DETAIL_KEY'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(3520789374658152002)
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
 p_id=>wwv_flow_imp.id(3607985856049741482)
,p_name=>'P1282_REMARKS'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(3520789374658152002)
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
 p_id=>wwv_flow_imp.id(3607986178689741484)
,p_name=>'P1282_EMP_MOV_ID'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(3520789374658152002)
,p_use_cache_before_default=>'NO'
,p_source=>'EMP_MOV_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3607986580619741484)
,p_name=>'P1282_END_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3520789374658152002)
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
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3607987056974741485)
,p_name=>'P1282_START_DATE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3520789374658152002)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_count number:=0; v_DATE_EMPLOYED date;',
'begin',
'',
'    select DATE_EMPLOYED into v_DATE_EMPLOYED',
'    from HR_RCM_EMPLOYEE b',
'    where ID =:P1282_EMP_ID;',
'',
'    SELECT COUNT(1) into v_count',
'    from hr_rcm_salary',
'    where EMP_ID =:P1282_EMP_ID;',
'',
'  if v_count =0 then',
'     return v_DATE_EMPLOYED;',
'  else',
'    return trunc((current_date),''month'');',
'  end if;',
'',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
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
' where salary_id=:P1282_ID;'))
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
 p_id=>wwv_flow_imp.id(3607987380365741485)
,p_name=>'P1282_LEAVE_PASSAGE_DATE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(3520789374658152002)
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
 p_id=>wwv_flow_imp.id(3607987831923741485)
,p_name=>'P1282_LEAVE_PASSAGE_AMOUNT'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(3520789374658152002)
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
 p_id=>wwv_flow_imp.id(3607988235720741486)
,p_name=>'P1282_SALARY_CURRENCY'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3520789374658152002)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select base_currency',
'from HR_HCF_ORGANISATION',
'where id=:APP_ORG_ID'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Salary Currency'
,p_source=>'SALARY_CURRENCY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
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
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3607988624407741486)
,p_name=>'P1282_HOURLY_RATE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(3520789374658152002)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Hourly Rate'
,p_format_mask=>'FML999G999G999G999G990D000'
,p_source=>'HOURLY_RATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>18
,p_tag_css_classes=>'DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(3607989471044741489)
,p_name=>'P1282_PERSONAL_RATE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(3520789374658152002)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'&P1282_PAYMENT_TYPE. Personal Rate'
,p_format_mask=>'FML999G999G999G999G990D000'
,p_source=>'PERSONAL_RATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>18
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_column=>7
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
 p_id=>wwv_flow_imp.id(3607989909279741489)
,p_name=>'P1282_PAYMENT_MODE'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3520789374658152002)
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
,p_field_template=>2526760615038828570
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3607990343072741490)
,p_name=>'P1282_EMP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3520789374658152002)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&P1281_ID.'
,p_source=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3607990670191741490)
,p_name=>'P1282_ADD_RELATED_RECORDS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3520789374658152002)
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
,p_display_when=>'P1281_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'REDIRECT_URL')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3607991149560741491)
,p_name=>'P1282_EMPLOYEE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3520789374658152002)
,p_prompt=>'Employee'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  initcap(Surname || '', '' || nvl(First_Name, '''')) ||'' ''||nvl(Middle_Name,'''') ||'' (''||y.organisation_name||'':-''||initcap(employment_class||'' ''||payment_type)||'' No.:''||EMP_COMPANY_NO||'')'' a',
'from VW_EMPLOYEE X join HR_RCM_INDIVIDUAL Z on Z.id=X.IND_ID',
'join HR_HCF_ORGANISATION Y on Y.id=X.ORG_ID',
'WHERE X.ID=nvl(:P1282_EMP_ID,:P1281_ID)'))
,p_source_type=>'QUERY'
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
 p_id=>wwv_flow_imp.id(3607991500497741493)
,p_name=>'P1282_ID'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(3520789374658152002)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3627933548618169915)
,p_name=>'P1282_POP_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3531444687895413730)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3631343185422822220)
,p_name=>'P1282_INC_AMOUNT'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(3520789374658152002)
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
 p_id=>wwv_flow_imp.id(3636030444725881860)
,p_name=>'P1282_SALARY_NIS_DEDUCTIBLE'
,p_is_required=>true
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(3520789374658152002)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_prompt=>'NIB Deductible'
,p_source=>'SALARY_NIS_DEDUCTIBLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
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
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3605389991557095859)
,p_tabular_form_region_id=>wwv_flow_imp.id(3603166442919072462)
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
'    where SALARY_ID=:P1282_ID ;',
'',
'if :P1282_PAYMENT_MODE =''MULTI'' and v_test_dis > 0 then',
'',
'    select nvl(sum(PERCENT_SPLIT),0) into v_total_percent',
'    from HR_RCM_DISBURSEMENT',
'    where SALARY_ID=:P1282_ID',
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
 p_id=>wwv_flow_imp.id(3625508685041029403)
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
'    where SALARY_ID=:P1282_ID ;',
'',
'if :P1282_PAYMENT_MODE =''MULTI'' and v_test_dis > 0 then',
'',
'    select nvl(sum(PERCENT_SPLIT),0) into v_total_percent',
'    from HR_RCM_DISBURSEMENT',
'    where SALARY_ID=:P1282_ID',
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
 p_id=>wwv_flow_imp.id(3607978308374741472)
,p_validation_name=>'chk_multi_active_rec'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_cnt pls_integer:=0;',
'begin',
'',
'select count(1) into v_cnt ',
'from hr_rcm_salary',
'where emp_id=:P1282_EMP_ID',
'and (end_date is null or end_date > current_date);',
'',
'IF  v_cnt >=1 AND :P1282_END_DATE IS NULL THEN',
'RETURN FALSE;',
'ELSE',
'RETURN TRUE;',
'END IF;',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You have an active salarys record, please close it off before adding a new one.'
,p_validation_condition_type=>'NEVER'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3607977101035741468)
,p_validation_name=>'chk_multi_active_rec1'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_cnt pls_integer:=0;',
'begin',
'',
'select count(1) into v_cnt ',
'from hr_rcm_salary',
'where emp_id=:P1282_EMP_ID',
'and (end_date is null or end_date > current_date)',
'and id !=:P1282_ID;',
'',
'IF  v_cnt >1 AND :P1282_END_DATE IS NULL THEN',
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
,p_when_button_pressed=>wwv_flow_imp.id(3607994209169741496)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3607976701146741468)
,p_validation_name=>'chk_spaning_date'
,p_validation_sequence=>50
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_cnt pls_integer:=0;',
'begin',
'',
'select count(1) into v_cnt ',
'from hr_rcm_salary',
'where emp_id=:P1282_EMP_ID',
'and (to_date(:P1282_START_DATE) between start_date and end_date',
'     or to_date(:P1282_START_DATE) < start_date and :P1282_END_DATE is null',
'     or to_date(:P1282_START_DATE) > start_date and end_date is null )',
'and id != :P1282_ID;',
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
'Two salaries have lapped over dates this is not allowed please change the start date for the record entered.',
''))
,p_validation_condition_type=>'NEVER'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3602741510542778340)
,p_validation_name=>'enf_salary_scale'
,p_validation_sequence=>60
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
'        where c.id=:P1282_EMP_ID;',
'        ',
'                 ',
'    if v_enf_scale = 1 and to_number(replace(replace(:P1282_PERSONAL_RATE,''$'',''''),'','',''''))  not between v_lower_scale and v_upper_scale AND :P1282_END_DATE IS NULL THEN ',
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
 p_id=>wwv_flow_imp.id(3607977528481741468)
,p_validation_name=>'chk_empdate_with_sal_date'
,p_validation_sequence=>70
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_dt_emp number(4);',
'',
'begin',
'select extract(year from DATE_EMPLOYED) into v_dt_emp',
'from hr_rcm_employee',
'where id=:P1282_EMP_ID;',
'',
'if v_dt_emp > extract(year from to_date(:P1282_START_DATE)) then',
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
 p_id=>wwv_flow_imp.id(3607977956829741469)
,p_validation_name=>'chk_dates'
,p_validation_sequence=>80
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'IF TO_DATE(:P1282_END_DATE) < TO_DATE(:P1282_START_DATE) THEN',
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
 p_id=>wwv_flow_imp.id(3482359499111579316)
,p_validation_name=>'enf_salary_tax'
,p_validation_sequence=>90
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_employment_type_id number(10); v_country varchar2(100); v_ind_id number;',
'    ',
'begin',
'    select employment_type_id, ind_id into v_employment_type_id, v_ind_id',
'    from hr_rcm_employee a ',
'    where id = :P1282_EMP_ID;',
'',
'    v_country:= trim(upper(pkg_global_fnts.fn_Address(''HOME'', v_ind_id, ''COUNTRY'', current_date)));',
'',
'',
'    if :P1282_SALARY_TAXABLE = 0 and v_employment_type_id=2 and v_country=''GUYANA'' then',
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3607972798683741463)
,p_name=>'set_leave_passage'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1282_START_DATE'
,p_condition_element=>'P1282_START_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3607972359388741461)
,p_event_id=>wwv_flow_imp.id(3607972798683741463)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1282_LEAVE_PASSAGE_AMOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    d.leave_passage_amount',
'FROM',
'    hr_rcm_employee               a',
'    JOIN hr_hcf_position               c ON c.id = a.position_id',
'    JOIN hr_hcf_positiongrade          d ON d.id = c.grade_id',
'WHERE',
'    a.id = :p1282_emp_id'))
,p_attribute_07=>'P1282_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3625508975557029406)
,p_name=>'dy_save_interactive_grid'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3625508847280029405)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3625509115600029407)
,p_event_id=>wwv_flow_imp.id(3625508975557029406)
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
 p_id=>wwv_flow_imp.id(3505319466088884835)
,p_name=>'set_salary_personal_rate'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1282_GRADE_POINT'
,p_condition_element=>'P1282_GRADE_POINT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3505319565128884836)
,p_event_id=>wwv_flow_imp.id(3505319466088884835)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1282_ANNUAL_SALARY'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select point_amount',
'from HR_HCF_POSITIONGRADEPOINT a ',
'where a.position_grade_id=:P1282_EMP_GRADE_ID',
'and a.point=:P1282_GRADE_POINT',
'and end_date is null',
''))
,p_attribute_07=>'P1282_EMP_GRADE_ID,P1282_GRADE_POINT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3494745720229359493)
,p_event_id=>wwv_flow_imp.id(3505319466088884835)
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
'        for i in (select  compute_gross, hours_worked std_hours, num_working_days std_days, upper(a.payment_type) payment_type,:P1282_PERSON_RATE personal_rate',
'        from hr_rcm_employee a join Hr_Att_Shift_Rota b on b.id = a.shift_id',
'        where a.id =:P1282_EMP_ID) loop',
'        ',
'        begin',
'       ',
'        if i.payment_type =''MONTHLY'' then',
'            :P1282_PERSONAL_RATE := i.personal_rate;',
'            :P1282_HOURLY_RATE:=  round(nvl(i.personal_rate/i.std_hours,0),2);             ',
'            :P1282_DAILY_RATE := round(i.personal_rate/ i.std_days,2);',
'            ',
'        ELSIF i.payment_type =''FORTNIGHTLY'' then',
'            :P1282_PERSONAL_RATE := round((i.personal_rate*12)/26);',
'            :P1282_HOURLY_RATE:=  round(nvl(i.personal_rate/i.std_hours,0),2);             ',
'            :P1282_DAILY_RATE := round(i.personal_rate/ i.std_days,2);',
'            ',
'        elsif  i.payment_type =''WEEKLY'' then',
'            :P1282_PERSONAL_RATE := round((i.personal_rate*12)/52);',
'            :P1282_HOURLY_RATE:=  round(nvl(i.personal_rate/i.std_hours,0),2);             ',
'            :P1282_DAILY_RATE := round(i.personal_rate/ i.std_days,2);',
'        ELSE',
'            :P1282_PERSONAL_RATE := round((i.personal_rate*12)/24);',
'            :P1282_HOURLY_RATE:=  round(nvl(i.personal_rate/i.std_hours,0),2);             ',
'            :P1282_DAILY_RATE := round(i.personal_rate/ i.std_days,2);',
'          ',
'        end if; ',
'        exception WHEN ZERO_DIVIDE THEN',
'               RAISE_APPLICATION_ERROR(-20050,''No employee requirements exist for standard hours for this employee.'');',
'    end;',
'  end loop;',
'end;'))
,p_attribute_02=>'P1282_HOURLY_RATE,P1282_EMP_ID,P1282_PERSONAL_RATE,P1282_PERSON_RATE'
,p_attribute_03=>'P1282_HOURLY_RATE,P1282_DAILY_RATE,P1282_PERSONAL_RATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3541801671381366698)
,p_name=>'dy_set_grade_point'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1282_GRADE_POINT_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3541802110072366700)
,p_event_id=>wwv_flow_imp.id(3541801671381366698)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1282_GRADE_POINT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select point',
'from HR_HCF_POSITIONGRADEPOINT',
'where position_grade_id=:P1282_SAL_GRADE_ID',
'AND id = :P1282_GRADE_POINT_ID',
'and start_date <= trunc(current_date)',
'and nvl(end_date,trunc(current_date)) >=  trunc(current_date)',
'order by point_amount'))
,p_attribute_07=>'P1282_SAL_GRADE_ID,P1282_GRADE_POINT_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3542866082935759711)
,p_name=>'dy_set_grade_point_id'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1282_GRADE_POINT'
,p_condition_element=>'P1282_GRADE_POINT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3542866449132759714)
,p_event_id=>wwv_flow_imp.id(3542866082935759711)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1282_GRADE_POINT_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id',
'from HR_HCF_POSITIONGRADEPOINT',
'where position_grade_id=:P1282_SAL_GRADE_ID',
'and point = :P1282_GRADE_POINT',
'and (end_date is null or end_date > current_date)',
'order by point_amount',
''))
,p_attribute_07=>'P1282_SAL_GRADE_ID,P1282_GRADE_POINT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3480975778303445141)
,p_name=>'dy_calculate_personalrate'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1282_PERSONAL_RATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3480975807046445142)
,p_event_id=>wwv_flow_imp.id(3480975778303445141)
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
'        where a.id =:P1282_EMP_ID; ',
'',
'    ',
'                if v_compute_gross =''BASIC_PAY'' then',
'               ',
'                    :P1282_HOURLY_RATE:= round(replace(replace(:P1282_PERSONAL_RATE,''$'',''''),'','','''')/v_std_hours,3);',
'                    :P1282_DAILY_RATE :=  round(replace(replace(:P1282_PERSONAL_RATE,''$'',''''),'','','''')/v_std_days,3);',
'                Else',
'',
'                    :P1282_HOURLY_RATE:= round(replace(replace(:P1282_PERSONAL_RATE,''$'',''''),'','',''''),3);',
'                    :P1282_PERSONAL_RATE:= round(replace(replace(:P1282_PERSONAL_RATE,''$'',''''),'','','''')*v_std_hours,3);',
'                    :P1282_DAILY_RATE :=  round(replace(replace(:P1282_HOURLY_RATE,''$'',''''),'','','''')*8,3);     ',
'',
'                    ',
'                     :P1282_ANNUAL_SALARY := case when v_payment_type IN (''FORTNIGHTLY'',''BI-WEEKLY'') then  round(replace(replace(:P1282_PERSONAL_RATE,''$'',''''),'','',''''),3) * 26',
'                                                 when v_payment_type =''WEEKLY'' then  round(replace(replace(:P1282_PERSONAL_RATE,''$'',''''),'','',''''),3) * 52',
'                                                 when v_payment_type =''MONTHLY'' then  round(replace(replace(:P1282_PERSONAL_RATE,''$'',''''),'','',''''),3) * 12',
'                                                 when v_payment_type =''BI-MONTHLY'' then  round(replace(replace(:P1282_PERSONAL_RATE,''$'',''''),'','',''''),3) * 24',
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
,p_attribute_02=>'P1282_HOURLY_RATE,P13000_DAILY_RATE,P1282_EMP_ID,P1282_PERSONAL_RATE'
,p_attribute_03=>'P1282_HOURLY_RATE,P1282_DAILY_RATE,P1282_PERSONAL_RATE,P1282_ANNUAL_SALARY'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(450314917760707988)
,p_name=>'Compute_salary_rates'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1282_ANNUAL_SALARY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450315033376707989)
,p_event_id=>wwv_flow_imp.id(450314917760707988)
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
'    where id= :P1282_EMP_ID;',
'     ',
'    select hours_worked, num_working_days into v_std_hours,  v_std_days',
'    from Hr_Att_Shift_Rota ',
'    where id =V_shift_id;',
'',
'   IF  V_COMPUTE_GROSS =''BASIC_PAY'' THEN',
'',
'    :P1282_PERSONAL_RATE := TO_NUMBER(replace(replace(:P1282_ANNUAL_SALARY,''$'',''''),'','',''''))/24;',
'    :P1282_HOURLY_RATE := (TO_NUMBER(replace(replace(:P1282_ANNUAL_SALARY,''$'',''''),'','',''''))/24)/v_std_hours;',
'    :P1282_DAILY_RATE := (TO_NUMBER(replace(replace(:P1282_ANNUAL_SALARY,''$'',''''),'','',''''))/24)/v_std_days;',
'',
'   END IF;',
'',
'',
'END;'))
,p_attribute_02=>'P1282_EMP_ID,P1282_PERSONAL_RATE,P1282_ANNUAL_SALARY,P1282_EMP_ID'
,p_attribute_03=>'P1282_PERSONAL_RATE ,P1282_HOURLY_RATE,P1282_DAILY_RATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3607975208591741466)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from VW_HR_RCM_SALARY'
,p_attribute_02=>'VW_HR_RCM_SALARY'
,p_attribute_03=>'P1282_ID'
,p_attribute_04=>'ID'
,p_internal_uid=>3186183215393744892
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3607974031046741465)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_PAGINATION'
,p_process_name=>'Get Next or Previous Primary Key Value'
,p_attribute_02=>'VW_HR_RCM_SALARY'
,p_attribute_03=>'P1282_ID'
,p_attribute_04=>'ID'
,p_attribute_07=>'PERSONAL_RATE'
,p_attribute_09=>'P1282_ID_NEXT'
,p_attribute_10=>'P1282_ID_PREV'
,p_attribute_13=>'P1282_ID_COUNT'
,p_attribute_14=>'EMP_ID=:P1281_ID'
,p_internal_uid=>3186182037848744891
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3627933645637169916)
,p_process_sequence=>31
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'POP_SEARCH'
,p_process_sql_clob=>':P1282_POP_SEARCH :=1;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3627933530273169914)
,p_internal_uid=>3206141652439173342
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3607974847176741465)
,p_process_sequence=>51
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of HR_RCM_SALARY'
,p_attribute_02=>'HR_RCM_SALARY'
,p_attribute_03=>'P1282_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P1282_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>3186182853978744891
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3586883426896141148)
,p_process_sequence=>61
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3603166442919072462)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>' - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3165091433698144574
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3487771301514285794)
,p_process_sequence=>71
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CLOSE_PREVIOUS_RECORD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'        update hr_rcm_salary',
'        set end_date = TO_DATE(:P1282_START_DATE) -1',
'        where start_date =',
'                           (select max(start_date)',
'                            from hr_rcm_salary',
'                            where emp_id = :P1282_EMP_ID',
'                            and id != :P1282_ID)',
'        and id != :P1282_ID',
'        and emp_id = :P1282_EMP_ID;',
'        ',
'exception',
'    when others then null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE, CREATE_AGAIN'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'System will auto close the previous salary.'
,p_internal_uid=>3065979308316289220
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3607974420884741465)
,p_process_sequence=>81
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'282'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3607994647888741497)
,p_internal_uid=>3186182427686744891
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3607973231411741463)
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
'where TRANSACTION_TYPE_ID=:P1281_TRANSACTION_TYPE_ID;',
'',
'select WFL_STATUS_DESCRIPTION into v_description',
'from tblworkflowstatus',
'where WFL_STATUS_ID=:P1281_STATUS;',
'',
'select INDIVIDUAL into v_Individual ',
'from VW_INDIVIDUAL a join HR_RCM_EMPLOYEE B on a.id=B.IND_ID',
'where B.Id=:P1282_EMP_ID;',
'',
'exception',
'  when no_data_found then null;',
'end;',
'',
'  pkg_biz_rules.pop_notification',
'(',
'	get_transaction||'' for: ''||v_Individual,',
'	nvl(V(''APP_USER''),user),',
'	''ACTIVE'',',
'	current_date,	''f?p=''||:APP_ID||'':''||:APP_PAGE_ID||'':''||:APP_SESSION||''::NO::P''||:APP_PAGE_ID||''_ID:''||:P1282_ID,',
'	v_description||'' ''||get_transaction||'' for: ''||''salary change'',',
'	:P1281_STATUS,:APP_PAGE_ID,:P1281_TRANSACTION_TYPE_ID,',
'        ''HR_RCM_SALARY'');',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,CREATE_AGAIN'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>3186181238213744889
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3607976405808741467)
,p_process_sequence=>101
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3607994982164741497)
,p_internal_uid=>3186184412610744893
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3619120124012316568)
,p_process_sequence=>111
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'duplicate_sal_disbursement'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1282_PAYMENT_MODE =''MULTI'' THEN',
'',
'    update hr_rcm_disbursement a',
'    set end_date = trunc(current_date)-1',
'    where exists(select 1',
'                  from hr_rcm_salary b',
'                  where a.salary_id = b.id',
'                  and end_date =(select max(end_date) from hr_rcm_salary where end_date is not null and EMP_ID=:P1282_EMP_ID and id !=:P1282_ID)',
'                  and EMP_ID=:P1282_EMP_ID',
'                  AND PAYMENT_MODE =''MULTI'')',
'    and end_date is null;',
'',
'',
'    INSERT INTO hr_rcm_disbursement ( salary_id,  payment_mode_dist,  percent_split,  start_date,',
'        bank_branch_id_dist,  bank_account_no_dist,  joint_acc,  emp_id_disp)',
'    select  :P1282_ID,  payment_mode_dist,  percent_split,  trunc(current_date),',
'        bank_branch_id_dist,  bank_account_no_dist,  joint_acc,  :P1282_EMP_ID',
'    from hr_rcm_disbursement a',
'    where exists(select 1',
'                  from hr_rcm_salary b',
'                  where a.salary_id = b.id',
'                  and end_date =(select max(end_date) from hr_rcm_salary where end_date is not null and EMP_ID=:P1282_EMP_ID and id !=:P1282_ID)',
'                  and EMP_ID=:P1282_EMP_ID',
'                  AND PAYMENT_MODE =''MULTI'')',
'    and end_date is not null;              ',
'',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,CREATE_AGAIN'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>3197328130814319994
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3625509241920029409)
,p_process_sequence=>121
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3603166442919072462)
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
'    where SALARY_ID=:P1282_ID ;',
'',
'if :P1282_PAYMENT_MODE =''MULTI'' and v_test_dis > 0 then',
'',
'    select nvl(sum(PERCENT_SPLIT),0) into v_total_percent',
'    from HR_RCM_DISBURSEMENT',
'    where SALARY_ID=:P1282_ID',
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
,p_internal_uid=>3203717248722032835
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3482362057317579342)
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
'    from hr_rcm_empentitle a ',
'    where emp_id =:P1282_EMP_ID',
'    and percentage > 0;',
'    ',
'    ',
'    SELECT personal_rate INTO V_SALARY',
'    from hr_rcm_salary',
'    where id=:P1282_ID;',
'',
'    if (:P1282_CASCADE_OTHER_EARNINGS = 1 and replace(replace(:P1282_PERSONAL_RATE,''$'',''''),'','','''')   != V_SALARY) then ',
'        for I in (SELECT a.id, emp_id, C.income_type, A.income_code_id, C.taxable, C.nis_deduction, (percentage/100) * replace(replace(:P1282_PERSONAL_RATE,''$'',''''),'','','''') amount, expense_code_id, c.admin_status, percentage,',
'                    A.remarks, quick_entry, A.start_date, entitlement_currency, C.pensionable',
'                   FROM hr_rcm_empentitle  a join pa_pcf_incomecode c on a.income_code_id = c.id',
'                   where PERCENTAGE > 0',
'                   and amount > 0',
'                   and c.earning_rate <> ''FIXED_RATE''',
'                   and C.income_type = ''EARNINGS''',
'                   and (A.end_date is null or A.end_date > trunc(current_date))',
'                   and EMP_ID = :P1282_EMP_ID) loop',
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
,p_process_when_type=>'NEVER'
,p_process_success_message=>'New Salary cascaded the deductions and allowances accordingly. '
,p_internal_uid=>3060570064119582768
);
wwv_flow_imp.component_end;
end;
/
