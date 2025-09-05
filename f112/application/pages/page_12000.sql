prompt --application/pages/page_12000
begin
--   Manifest
--     PAGE: 12000
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
 p_id=>12000
,p_name=>'rptleavetransaction'
,p_alias=>'RPTLEAVETRANSACTION'
,p_step_title=>'Leave Transaction'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3297885415547704719)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(134772575440333053)
,p_plug_name=>'Leave Transactions ReadOnly'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.ID,',
'       a.LEAVE_ID,',
'       a.DAYS_TAKEN,',
'       a.HOLIDAYS,',
'       a.EMPLVENT_ID,',
'       a.LEAVE_YEAR,',
'       a.EMP_ID,',
'       a.TRANSACTION_TYPE, --dr cr',
'       a.TRANSACTION_SOURCE,',
'       a.TRANSACTION_DATE,',
'       round(a.AMOUNT,8) amount,',
'       a.LEAVE_TYPE,',
'       a.TRANSACTION_VALUE,',
'       a.LAST_CHANGED_BY,',
'       a.LAST_CHANGED_DATE',
'  from HR_LV_LEAVETRANSACTION a ',
'  where exists (select 1 from hr_rcm_employee ',
'                where emp_id = id ',
'                and org_id = :APP_ORG_ID) and a.emp_id = NVL(:P12000_EMPLOYEE,a.emp_id)',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P12000_EMPLOYEE'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Leave Transactions ReadOnly'
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
 p_id=>wwv_flow_imp.id(135401780685004820)
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
,p_owner=>'MKDEVELOPER'
,p_internal_uid=>19617646828691115
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135401844431004821)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135402121568004823)
,p_db_column_name=>'DAYS_TAKEN'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Days Taken'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135402196105004824)
,p_db_column_name=>'HOLIDAYS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Holidays'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135402237624004825)
,p_db_column_name=>'EMPLVENT_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Entitlement'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(86002143764773723)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135402405823004826)
,p_db_column_name=>'LEAVE_YEAR'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Leave Year'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135402507064004827)
,p_db_column_name=>'EMP_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3326577844798849578)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135402537079004828)
,p_db_column_name=>'TRANSACTION_TYPE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Transaction Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135402647426004829)
,p_db_column_name=>'TRANSACTION_SOURCE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Transaction Source'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135402740343004830)
,p_db_column_name=>'TRANSACTION_DATE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Transaction Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135402874378004831)
,p_db_column_name=>'AMOUNT'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135403017488004832)
,p_db_column_name=>'LEAVE_TYPE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Leave Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135403128423004833)
,p_db_column_name=>'TRANSACTION_VALUE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Transaction Value'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135403159671004834)
,p_db_column_name=>'LEAVE_ID'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Leave Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(85187182544806802)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(85187242042806803)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(135410095623005856)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'196260'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_ID:TRANSACTION_DATE:LEAVE_YEAR:LEAVE_TYPE:EMPLVENT_ID:AMOUNT:TRANSACTION_TYPE:TRANSACTION_VALUE:TRANSACTION_SOURCE:'
,p_sort_column_1=>'TRANSACTION_DATE'
,p_sort_direction_1=>'DESC'
,p_break_on=>'EMP_ID'
,p_break_enabled_on=>'EMP_ID'
,p_sum_columns_on_break=>'AMOUNT'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(145527670049214993)
,p_report_id=>wwv_flow_imp.id(135410095623005856)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'TRANSACTION_VALUE'
,p_operator=>'='
,p_expr=>'T'
,p_condition_sql=>'"TRANSACTION_VALUE" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''T''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(135403238504004835)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'USER')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(136062931539754348)
,p_plug_name=>'Leave Transactions Yearly Summary'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT emp_id, leave_year,leave_type, leave_id, nvl(E,0) earned, nvl(T,0) taken, nvl(C,0) cancelled ',
',nvl(cadj,0) "cr_adj(+)", nvl(dadj,0) "dr_adj(-)"',
'FROM (',
'    SELECT emp_id,',
'           leave_year,',
'           leave_type,',
'           leave_id,',
'           transaction_value,',
'           amount',
'    FROM hr_lv_leavetransaction',
'    where emp_id = nvl(:P12000_EMPLOYEE,emp_id )',
'    and  transaction_value IN (''E'', ''T'', ''C'',''+'',''-'')',
'    AND transaction_value <> ''YNCF''',
') ',
'PIVOT (',
'    SUM(amount) FOR transaction_value IN (''E'' AS E, ''T'' AS T, ''C'' AS C, ''+'' Cadj, ''-'' Dadj)',
');',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P12000_EMPLOYEE'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'New'
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
 p_id=>wwv_flow_imp.id(136063061129754350)
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
,p_owner=>'MKDEVELOPER'
,p_internal_uid=>20278927273440645
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136063189433754351)
,p_db_column_name=>'EMP_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Emp'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(134470429490875385)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136063322576754352)
,p_db_column_name=>'LEAVE_YEAR'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Leave Year'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136063399452754353)
,p_db_column_name=>'LEAVE_TYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Leave Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136063462337754354)
,p_db_column_name=>'LEAVE_ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Leave'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3326523779868798320)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136063600516754355)
,p_db_column_name=>'EARNED'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Earned'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(144182813455649506)
,p_db_column_name=>'TAKEN'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Taken'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(144182871647649507)
,p_db_column_name=>'CANCELLED'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cancelled'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(144183086883649509)
,p_db_column_name=>'cr_adj(+)'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cr Adj(+)'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(144183168312649510)
,p_db_column_name=>'dr_adj(-)'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Dr Adj(-)'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(144192786672656353)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'284087'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_ID:LEAVE_YEAR:LEAVE_TYPE:EARNED:TAKEN:CANCELLED:dr_adj(-):cr_adj(+):'
,p_break_on=>'EMP_ID:LEAVE_YEAR'
,p_break_enabled_on=>'EMP_ID:LEAVE_YEAR'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(142630123106158833)
,p_plug_name=>'bc'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>70
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10460765779079194647)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(485866061179711075)
,p_plug_name=>'Leave Transactions Edit'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.ID,',
'       a.LEAVE_ID,',
'       a.DAYS_TAKEN,',
'       a.HOLIDAYS,',
'       a.EMPLVENT_ID,',
'       a.LEAVE_YEAR,',
'       a.EMP_ID,',
'       a.TRANSACTION_TYPE, --dr cr',
'       a.TRANSACTION_SOURCE,',
'       a.TRANSACTION_DATE,',
'       a.AMOUNT,',
'       a.LEAVE_TYPE,',
'       a.TRANSACTION_VALUE',
'  from HR_LV_LEAVETRANSACTION a ',
'  where exists (select 1 from hr_rcm_employee ',
'                where emp_id = id ',
'                and org_id = :APP_ORG_ID) and a.emp_id = NVL(:P12000_EMPLOYEE,a.emp_id)',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P12000_EMPLOYEE'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Leave Transactions Edit'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(485864129590711055)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(485864191585711056)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(485864335645711057)
,p_name=>'TRANSACTION_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRANSACTION_VALUE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Transaction Type Value'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>2
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
 p_id=>wwv_flow_imp.id(485864433359711058)
,p_name=>'LEAVE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LEAVE_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Leave Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(485864496541711059)
,p_name=>'AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>140
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(485864619750711060)
,p_name=>'TRANSACTION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRANSACTION_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Transaction Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'is-readonly'
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
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>'trunc(current_date)'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(485864717705711061)
,p_name=>'TRANSACTION_SOURCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRANSACTION_SOURCE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Transaction Source'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'manual entry'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(485864822907711062)
,p_name=>'TRANSACTION_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRANSACTION_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Transaction Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Debit;DEBIT,Credit;CREDIT'
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(485865276479711067)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Employee'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select employee_name || '' - '' || emp_company_no, id',
'from vw_employee a',
'where (DATE_SEPARATED IS NULL OR employment_status = ''ACTIVE'')',
'AND ORG_ID = :APP_ORG_ID'))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'--Select Employee--'
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
 p_id=>wwv_flow_imp.id(485865371127711068)
,p_name=>'LEAVE_YEAR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LEAVE_YEAR'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Leave Year'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(485865468696711069)
,p_name=>'EMPLVENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLVENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Leave'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.leave_description, b.id',
'from  hr_rcm_empleaveentitle b ',
'join hr_lv_leavetype a on a.id = b.leave_type_id',
'where a.org_id = :APP_ORG_ID',
'and b.emp_id = :EMP_ID',
'and :TRANSACTION_DATE between b.start_date and nvl(b.end_date, current_date)',
'order by 1',
'',
'-- select a.leave_description, b.id',
'-- from  hr_rcm_empleaveentitle b ',
'-- join hr_lv_leavetype a on a.id = b.leave_type_id',
'-- where a.org_id = :APP_ORG_ID',
'-- and b.emp_id = :EMP_ID',
'-- and :TRANSACTION_DATE between b.start_date and nvl(b.end_date, current_date)',
'-- order by 1'))
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_lov_cascade_parent_items=>'EMP_ID'
,p_ajax_items_to_submit=>'EMP_ID,TRANSACTION_DATE'
,p_ajax_optimize_refresh=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(485865646161711070)
,p_name=>'HOLIDAYS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HOLIDAYS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Holidays'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
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
 p_id=>wwv_flow_imp.id(485865692963711071)
,p_name=>'DAYS_TAKEN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DAYS_TAKEN'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Days Taken'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
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
 p_id=>wwv_flow_imp.id(485865767722711072)
,p_name=>'LEAVE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LEAVE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Leave'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(485865908503711073)
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(485865991740711074)
,p_internal_uid=>370081857884397369
,p_is_editable=>true
,p_edit_operations=>'i:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
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
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(356127321903819317)
,p_interactive_grid_id=>wwv_flow_imp.id(485865991740711074)
,p_name=>'Default'
,p_static_id=>'5473559'
,p_type=>'ALTERNATIVE'
,p_default_view=>'GRID'
,p_authorization_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(356127536613819318)
,p_report_id=>wwv_flow_imp.id(356127321903819317)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(356128008507819324)
,p_view_id=>wwv_flow_imp.id(356127536613819318)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(485865908503711073)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(356128942366819333)
,p_view_id=>wwv_flow_imp.id(356127536613819318)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(485865767722711072)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(356129810776819338)
,p_view_id=>wwv_flow_imp.id(356127536613819318)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(485865692963711071)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(356130697732819343)
,p_view_id=>wwv_flow_imp.id(356127536613819318)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(485865646161711070)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(356131633582819348)
,p_view_id=>wwv_flow_imp.id(356127536613819318)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(485865468696711069)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>146.993
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(356132578225819353)
,p_view_id=>wwv_flow_imp.id(356127536613819318)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(485865371127711068)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>65
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(356133440914819357)
,p_view_id=>wwv_flow_imp.id(356127536613819318)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(485865276479711067)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>237
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(356137809153819383)
,p_view_id=>wwv_flow_imp.id(356127536613819318)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(485864822907711062)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>127
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(356138723838819388)
,p_view_id=>wwv_flow_imp.id(356127536613819318)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(485864717705711061)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>143
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(356139620220819393)
,p_view_id=>wwv_flow_imp.id(356127536613819318)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(485864619750711060)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>132
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(356140571805819399)
,p_view_id=>wwv_flow_imp.id(356127536613819318)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(485864496541711059)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>61
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(356141451758819404)
,p_view_id=>wwv_flow_imp.id(356127536613819318)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(485864433359711058)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>159
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(356142337008819409)
,p_view_id=>wwv_flow_imp.id(356127536613819318)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(485864335645711057)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>167.69799999999998
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(356149295863836110)
,p_view_id=>wwv_flow_imp.id(356127536613819318)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(485864191585711056)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_filter(
 p_id=>wwv_flow_imp.id(1092378221646014033)
,p_report_id=>wwv_flow_imp.id(356127321903819317)
,p_type=>'ROW'
,p_is_case_sensitive=>false
,p_expression=>'brean'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(485853515371679852)
,p_interactive_grid_id=>wwv_flow_imp.id(485865991740711074)
,p_static_id=>'3710699'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(485853300661679851)
,p_report_id=>wwv_flow_imp.id(485853515371679852)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(485831541411663059)
,p_view_id=>wwv_flow_imp.id(485853300661679851)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(485864191585711056)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(485838500266679760)
,p_view_id=>wwv_flow_imp.id(485853300661679851)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(485864335645711057)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>91
,p_sort_order=>3
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(485839385516679765)
,p_view_id=>wwv_flow_imp.id(485853300661679851)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(485864433359711058)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(485840265469679770)
,p_view_id=>wwv_flow_imp.id(485853300661679851)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(485864496541711059)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>139
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(485841217054679776)
,p_view_id=>wwv_flow_imp.id(485853300661679851)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(485864619750711060)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>132
,p_sort_order=>2
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(485842113436679781)
,p_view_id=>wwv_flow_imp.id(485853300661679851)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(485864717705711061)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>253.5
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(485843028121679786)
,p_view_id=>wwv_flow_imp.id(485853300661679851)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(485864822907711062)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>127
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(485847396360679812)
,p_view_id=>wwv_flow_imp.id(485853300661679851)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(485865276479711067)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>237
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(485848259049679816)
,p_view_id=>wwv_flow_imp.id(485853300661679851)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(485865371127711068)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>126
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(485849203692679821)
,p_view_id=>wwv_flow_imp.id(485853300661679851)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(485865468696711069)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>122
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(485850139542679826)
,p_view_id=>wwv_flow_imp.id(485853300661679851)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(485865646161711070)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(485851026498679831)
,p_view_id=>wwv_flow_imp.id(485853300661679851)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(485865692963711071)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(485851894908679836)
,p_view_id=>wwv_flow_imp.id(485853300661679851)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(485865767722711072)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(485852828767679845)
,p_view_id=>wwv_flow_imp.id(485853300661679851)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(485865908503711073)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(115784391998320508)
,p_view_id=>wwv_flow_imp.id(485853300661679851)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(485864496541711059)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152899004542612740)
,p_name=>'P12000_EMPLOYEE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(485866061179711075)
,p_prompt=>'Employee'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'EMPLOYEE_ALL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  initcap(Surname || '', '' || nvl(First_Name, '''')) ||'' ''||nvl(Middle_Name,'''') ||''(No.:''||EMP_COMPANY_NO||'')(''||PKG_GLOBAL_FNTS.Get_Lookup_Col(employment_class_id, ''TABLE_VALUE'' )||case when x.verified_by is null then '' Unverified)'' else ',
'        case when DATE_SEPARATED is null then '' Active'' else '' Separated'' end|| '')'' end a,x.ID b',
'        from vw_employee x join hr_rcm_individual z on z.id=x.ind_id',
'        where exists(select 1        ',
'                     from vw_useraccess_finegrain k',
'                     where NVL(k.grade_id, nvl(x.emp_grade_id,1)) = nvl(x.emp_grade_id,1)',
'                     and user_name=:APP_USER)  ',
'        and exists(select 1',
'                from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER))',
'                where  t.id=x.ORGDTL_ID',
'                and X.ORGDTL_ID=decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, X.ORGDTL_ID, w.org_structure_id)         ',
'                  )',
'        and org_id=:APP_ORG_ID             ',
'        order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
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
 p_id=>wwv_flow_imp.id(133724490678737638)
,p_name=>'set_parents'
,p_event_sequence=>20
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(485866061179711075)
,p_triggering_element=>'EMPLVENT_ID'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'EMPLVENT_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133724945887737639)
,p_event_id=>wwv_flow_imp.id(133724490678737638)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'LEAVE_ID,LEAVE_TYPE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.id leave_id, c.leave_description leave_type, ''manual entry''',
'from table(pkg_global_fnts.get_lookup_value(''TBLLEAVETYPE'')) a',
'join hr_rcm_empleaveentitle b on a.id = b.leave_type_id',
'join hr_lv_leavetype c on c.leave_type = a.id',
'where c.org_id = :APP_ORG_ID',
'and b.id = :EMPLVENT_ID',
'order by 1'))
,p_attribute_07=>'EMPLVENT_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133725340628737640)
,p_name=>'set_value'
,p_event_sequence=>30
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(485866061179711075)
,p_triggering_element=>'TRANSACTION_TYPE'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'TRANSACTION_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'DEBIT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133725879282737640)
,p_event_id=>wwv_flow_imp.id(133725340628737640)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'TRANSACTION_VALUE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'-'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133726415613737641)
,p_event_id=>wwv_flow_imp.id(133725340628737640)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'TRANSACTION_VALUE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'+'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133726807314737641)
,p_name=>'set_leave_year'
,p_event_sequence=>40
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(485866061179711075)
,p_triggering_element=>'TRANSACTION_DATE'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'TRANSACTION_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133727275485737641)
,p_event_id=>wwv_flow_imp.id(133726807314737641)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'LEAVE_YEAR'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'TO_CHAR(TO_DATE(:TRANSACTION_DATE,''DD-MON-YYYY''),''YYYY'')'
,p_attribute_07=>'TRANSACTION_DATE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133727703108737642)
,p_name=>'refresh_emplv'
,p_event_sequence=>50
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(485866061179711075)
,p_triggering_element=>'EMP_ID'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'EMP_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133728159886737642)
,p_event_id=>wwv_flow_imp.id(133727703108737642)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'EMPLVENT_ID'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(152899106913612741)
,p_name=>'REFRESH'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12000_EMPLOYEE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152899169646612742)
,p_event_id=>wwv_flow_imp.id(152899106913612741)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(485866061179711075)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144182947689649508)
,p_event_id=>wwv_flow_imp.id(152899106913612741)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(136062931539754348)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133724012757737631)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(485866061179711075)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'New - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>17939878901423926
);
wwv_flow_imp.component_end;
end;
/
