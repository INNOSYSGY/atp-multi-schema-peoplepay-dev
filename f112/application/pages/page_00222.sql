prompt --application/pages/page_00222
begin
--   Manifest
--     PAGE: 00222
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
 p_id=>222
,p_name=>'rptdetailviewinc'
,p_alias=>'RPTDETAILVIEWINC'
,p_page_mode=>'MODAL'
,p_step_title=>'Details of Income'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2955470886198243487)
,p_plug_name=>'INC'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  description,  hlla.payroll_days Quantity, hlla.rate unit_amount, hlla.amount leave_dollar_value',
'from hr_lv_leavehistory hll  join hr_lv_leaverequest_as hlla on hll.id = hlla.leaverequest_id   ',
'join pa_pcf_earningperiod ppe on ppe.id = hlla.earnings_period_id',
'join hr_rcm_empentitle ent on  ent.id = hlla.EMPENT_ID',
'join pa_pcf_incomecode inc on inc.id=ent.income_code_id',
'where hlla.earnings_period_id = :P222_EARNINGS_PERIOD_ID',
'and hll.emp_id = :P222_EMP_ID',
'and income_code_id= :P222_INCOME_CODE'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P222_EARNINGS_PERIOD_ID,P222_EMP_ID,P222_INCOME_CODE'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'INC'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
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
 p_id=>wwv_flow_imp.id(2955471029596243488)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
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
,p_owner=>'JAY.KHAN'
,p_internal_uid=>314840689177427405
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1060256205939443)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>10
,p_column_identifier=>'AB'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1060025521939441)
,p_db_column_name=>'UNIT_AMOUNT'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Unit Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1059945459939440)
,p_db_column_name=>'LEAVE_DOLLAR_VALUE'
,p_display_order=>40
,p_column_identifier=>'AE'
,p_column_label=>'Total Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1059630800939437)
,p_db_column_name=>'QUANTITY'
,p_display_order=>50
,p_column_identifier=>'AF'
,p_column_label=>'Quantity'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2958179546723862710)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3175493'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DESCRIPTION:QUANTITY:UNIT_AMOUNT:LEAVE_DOLLAR_VALUE:'
,p_sum_columns_on_break=>'QUANTITY:AMOUNT_PAID:DAYS_TAKEN:LEAVE_DOLLAR_VALUE'
,p_count_columns_on_break=>'WORK_DATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1059720282939438)
,p_name=>'P222_EMP_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2955470886198243487)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1059846297939439)
,p_name=>'P222_EARNINGS_PERIOD_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2955470886198243487)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2955474113477243519)
,p_name=>'P222_INCOME_CODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2955470886198243487)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2963343485402242986)
,p_name=>'P222_FLAG'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2955470886198243487)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp.component_end;
end;
/
