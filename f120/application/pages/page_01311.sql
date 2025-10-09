prompt --application/pages/page_01311
begin
--   Manifest
--     PAGE: 01311
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
 p_id=>1311
,p_name=>'frmOrganisation'
,p_alias=>'FRMORGANISATION'
,p_step_title=>'Create/Edit Organisation'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3825718090717574415)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(534290986142572142)
,p_plug_name=>'FreePay'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>81
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_location=>null
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P1311_ORGANISATION_TYPE =''SOFTWARE USER'' AND :P1311_ID IS NOT NULL and :APP_COUNTRY=''GUYANA'''
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(534290800704572141)
,p_plug_name=>'Before Re-Execute'
,p_parent_plug_id=>wwv_flow_imp.id(534290986142572142)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>101
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(1) Cnt,round(sum(freepayamount),0) freepayamount, organisation_name, FREEPAY_NAME,TO_CHAR(TO_DATE(extract(month from paydtl.period_start), ''MM''), ''MONTH'') freepay_month,',
'to_number(extract(year from paydtl.period_start)||TO_CHAR(paydtl.period_start,''MM'')) Mth_year, extract(year from paydtl.period_start)  free_year',
'from pa_pmg_payrolldtl paydtl join PA_PMG_PAYROLLDTLFREEPAY payfree on paydtl.id = payfree.pay_slipno',
'where org_id=:APP_ORG_ID',
'and trunc(paydtl.ENTRY_DATE) < trunc(current_date)',
'group by organisation_name,FREEPAY_NAME, freepay_month, Mth_year, free_year'))
,p_plug_source_type=>'NATIVE_IR'
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
 p_id=>wwv_flow_imp.id(546995544250485961)
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
,p_owner=>'AHEADLEY@INNOSYSGY.COM'
,p_internal_uid=>25761446431362430
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(546995477341485960)
,p_db_column_name=>'CNT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cnt'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(546995378112485959)
,p_db_column_name=>'ORGANISATION_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Organisation Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(546995192470485958)
,p_db_column_name=>'FREEPAY_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Freepay Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(533221435769677126)
,p_db_column_name=>'FREEPAYAMOUNT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Freepayamount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(533222181055677134)
,p_db_column_name=>'FREEPAY_MONTH'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Freepay Month'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(533222249941677135)
,p_db_column_name=>'MTH_YEAR'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Mth Year'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(533222376073677136)
,p_db_column_name=>'FREE_YEAR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Free Year'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(546683998692228303)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'260730'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FREEPAY_NAME:FREE_YEAR:FREEPAY_MONTH:CNT:FREEPAYAMOUNT:MTH_YEAR:'
,p_sort_column_1=>'MTH_YEAR'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'MTH_YEAR'
,p_break_enabled_on=>'MTH_YEAR'
,p_sum_columns_on_break=>'FREEPAYAMOUNT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(546996373655485969)
,p_plug_name=>'After Re-Execute'
,p_parent_plug_id=>wwv_flow_imp.id(534290986142572142)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>111
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(1) Cnt,round(sum(freepayamount),0) freepayamount, organisation_name, FREEPAY_NAME,TO_CHAR(TO_DATE(extract(month from paydtl.period_start), ''MM''), ''MONTH'') freepay_month,',
'to_number(extract(year from paydtl.period_start)||TO_CHAR(paydtl.period_start,''MM'')) Mth_year, extract(year from paydtl.period_start)  free_year',
'from pa_pmg_payrolldtl paydtl join PA_PMG_PAYROLLDTLFREEPAY payfree on paydtl.id = payfree.pay_slipno',
'where org_id=:APP_ORG_ID',
'group by organisation_name,FREEPAY_NAME, freepay_month, Mth_year, free_year'))
,p_plug_source_type=>'NATIVE_IR'
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
 p_id=>wwv_flow_imp.id(546995115973485957)
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
,p_owner=>'AHEADLEY@INNOSYSGY.COM'
,p_internal_uid=>25761874708362434
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(546995001352485956)
,p_db_column_name=>'CNT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cnt'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(546994946067485955)
,p_db_column_name=>'ORGANISATION_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Organisation Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(546994829143485954)
,p_db_column_name=>'FREEPAY_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Freepay Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(533221477019677127)
,p_db_column_name=>'FREEPAYAMOUNT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Freepayamount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(533222524344677137)
,p_db_column_name=>'FREEPAY_MONTH'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Freepay Month'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(533222586067677138)
,p_db_column_name=>'MTH_YEAR'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Mth Year'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(533222701076677139)
,p_db_column_name=>'FREE_YEAR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Free Year'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(546683419049228292)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'260736'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FREEPAY_NAME:FREE_YEAR:FREEPAY_MONTH:CNT:FREEPAYAMOUNT:MTH_YEAR:'
,p_sort_column_1=>'MTH_YEAR'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'MTH_YEAR'
,p_break_enabled_on=>'MTH_YEAR'
,p_sum_columns_on_break=>'FREEPAYAMOUNT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(565109814151266624)
,p_plug_name=>'Monthly TaxFree Parameters'
,p_parent_plug_id=>wwv_flow_imp.id(534290986142572142)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>91
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       RULESOURCE_ID,',
'       RULE_TABLE,',
'       FREEPAY_NAME,',
'       FREEPAY_CEILING,when_to_apply,',
'       REMARKS,',
'       OPERATOR,',
'       FREEPAY_UNIT,',
'       ENTRY_DATE,',
'       ENTERED_BY,',
'       LAST_UPDATED_DATE,',
'       LAST_UPDATED_BY,',
'       END_DATE,',
'       FREEPAY_CEILING_ANNUAL,',
'       ORG_ID,',
'       START_DATE',
'  from PA_PCF_FREEPAYCONFIG',
'  where org_id=:APP_ORG_SHR_DED'))
,p_plug_source_type=>'NATIVE_IG'
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
 p_id=>wwv_flow_imp.id(565110034783266626)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(565110186176266627)
,p_name=>'RULESOURCE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RULESOURCE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Rule Source'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>false
,p_lov_type=>'FUNCTION_BODY'
,p_lov_language=>'PLSQL'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :RULE_TABLE =''NIS'' and :ID is null then',
'return',
'      ''select ''''Date of Rate: ''''||date_of_rate||'''' Ceiling ''''||trim(to_char(nis_ceiling,''''$999,999,999''''))||'''' Payment Type ''''||Payment_type lable, id',
'       from hr_hcf_nisrate',
'       where date_effective_end is null',
'       and org_id = pkg_global_fnts.fn_shareRefOrg(:P1311_ID)'';',
'',
'elsif :RULE_TABLE =''NIS'' and :ID is not null then',
'return',
'      ''select ''''Date of Rate: ''''||date_of_rate||'''' Ceiling ''''||trim(to_char(nis_ceiling,''''$999,999,999''''))||'''' Payment Type ''''||Payment_type lable, id',
'       from hr_hcf_nisrate',
'       where org_id = pkg_global_fnts.fn_shareRefOrg(:P1311_ID)'';',
'',
'elsif :RULE_TABLE =''TAX'' and :ID is null then',
'return',
'      ''SELECT ''''Date of Rate: ''''||date_of_rate||'''' Ceiling 1/2/3:- ''''||trim(to_char(tax_ceiling_lower,''''$999,999,999''''))||''''/''''||trim(to_char(tax_ceiling_upper_b,''''$999,999,999''''))',
'        ||''''/''''||trim(to_char(tax_ceiling_upper,''''$999,999,999''''))||'''' Payment Type ''''||Payment_type label, id',
'        FROM HR_HCF_taxrATE',
'        where date_effective_end is null',
'        and org_id = pkg_global_fnts.fn_shareRefOrg(:P1311_ID)'';',
'else',
'    return',
'      ''SELECT ''''Date of Rate: ''''||date_of_rate||'''' Ceiling 1/2/3:- ''''||trim(to_char(tax_ceiling_lower,''''$999,999,999''''))||''''/''''||trim(to_char(tax_ceiling_upper_b,''''$999,999,999'''')) ',
'        ||''''/''''||trim(to_char(tax_ceiling_upper,''''$999,999,999''''))||'''' Payment Type ''''||Payment_type label, id',
'            FROM HR_HCF_taxrATE',
'            where org_id = pkg_global_fnts.fn_shareRefOrg(:P1311_ID)'';',
'end if;            '))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'RULE_TABLE,ID'
,p_ajax_items_to_submit=>'P1311_ID'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(565110230659266628)
,p_name=>'RULE_TABLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RULE_TABLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Rule Table'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:TAX;TAX,NIS;NIS'
,p_lov_display_extra=>false
,p_lov_display_null=>false
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
 p_id=>wwv_flow_imp.id(565110309466266629)
,p_name=>'FREEPAY_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FREEPAY_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Freepay Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(570858559022044788)
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
 p_id=>wwv_flow_imp.id(570773814823090280)
,p_name=>'FREEPAY_CEILING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FREEPAY_CEILING'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Freepay Ceiling'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(570774005338090281)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(570774059614090282)
,p_name=>'OPERATOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPERATOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Operator'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>255
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
 p_id=>wwv_flow_imp.id(570774179073090283)
,p_name=>'FREEPAY_UNIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FREEPAY_UNIT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Freepay Unit'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
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
 p_id=>wwv_flow_imp.id(570774279770090284)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
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
 p_id=>wwv_flow_imp.id(570774401891090285)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered By'
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
 p_id=>wwv_flow_imp.id(570774490532090286)
,p_name=>'LAST_UPDATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Updated Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
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
 p_id=>wwv_flow_imp.id(570774575744090287)
,p_name=>'LAST_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Updated By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
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
 p_id=>wwv_flow_imp.id(570774630335090288)
,p_name=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'End Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_format_mask=>'DD-MON-YYYY'
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
 p_id=>wwv_flow_imp.id(570774769030090289)
,p_name=>'FREEPAY_CEILING_ANNUAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FREEPAY_CEILING_ANNUAL'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Annual Ceiling'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>180
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(570774820066090290)
,p_name=>'ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORG_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>190
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'APP_ORG_SHR_DED'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(570774938673090291)
,p_name=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Start Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_format_mask=>'DD-MON-YYYY'
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(570775039219090292)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(570775181302090293)
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
 p_id=>wwv_flow_imp.id(593193673749406467)
,p_name=>'WHEN_TO_APPLY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WHEN_TO_APPLY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'When To Apply'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Before TAX Gross;0,After TAX Gross;1'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(565109927121266625)
,p_internal_uid=>82201818741378146
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
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
 p_id=>wwv_flow_imp.id(570779738123090834)
,p_interactive_grid_id=>wwv_flow_imp.id(565109927121266625)
,p_static_id=>'878717'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(570779962536090835)
,p_report_id=>wwv_flow_imp.id(570779738123090834)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(570780498443090843)
,p_view_id=>wwv_flow_imp.id(570779962536090835)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(565110034783266626)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(570781310160090852)
,p_view_id=>wwv_flow_imp.id(570779962536090835)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(565110186176266627)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>212
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(570782269223090857)
,p_view_id=>wwv_flow_imp.id(570779962536090835)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(565110230659266628)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(570783049904090862)
,p_view_id=>wwv_flow_imp.id(570779962536090835)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(565110309466266629)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>193
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(570783981573090866)
,p_view_id=>wwv_flow_imp.id(570779962536090835)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(570773814823090280)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(570784879461090871)
,p_view_id=>wwv_flow_imp.id(570779962536090835)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(570774005338090281)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(570785778663090876)
,p_view_id=>wwv_flow_imp.id(570779962536090835)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(570774059614090282)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(570786634490090880)
,p_view_id=>wwv_flow_imp.id(570779962536090835)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(570774179073090283)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(570787550309090885)
,p_view_id=>wwv_flow_imp.id(570779962536090835)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(570774279770090284)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(570788506505090890)
,p_view_id=>wwv_flow_imp.id(570779962536090835)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(570774401891090285)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(570789347465090895)
,p_view_id=>wwv_flow_imp.id(570779962536090835)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(570774490532090286)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(570790234287090899)
,p_view_id=>wwv_flow_imp.id(570779962536090835)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(570774575744090287)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(570791189747090904)
,p_view_id=>wwv_flow_imp.id(570779962536090835)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(570774630335090288)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(570792009686090909)
,p_view_id=>wwv_flow_imp.id(570779962536090835)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(570774769030090289)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(570792992973090916)
,p_view_id=>wwv_flow_imp.id(570779962536090835)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(570774820066090290)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(570793812668090924)
,p_view_id=>wwv_flow_imp.id(570779962536090835)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(570774938673090291)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(570796432464098420)
,p_view_id=>wwv_flow_imp.id(570779962536090835)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(570775039219090292)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(596288104660363749)
,p_view_id=>wwv_flow_imp.id(570779962536090835)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(593193673749406467)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(590927692641464719)
,p_plug_name=>'Requirements and Attributes'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>101
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT',
'        ID,',
'        ORG_id,attribute_description,ATTRIBUTE_VALUE,ATTRIBUTE_NAME,',
'        ATTRIBUTE_ID,',
'        REMARKS,',
'        START_DATE,',
'        END_DATE,',
'        ENTERED_BY,',
'        ENTRY_DATE,',
'        LAST_UPDATED_BY,',
'        LAST_UPDATED_DATE',
'    FROM APP_ATTRIBUTES a',
'    where org_id= :P1311_ID',
'',
' '))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1311_ID'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P1311_ORGANISATION_TYPE =''SOFTWARE USER'' AND :P1311_ID IS NOT NULL'
,p_plug_display_when_cond2=>'PLSQL'
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
 p_id=>wwv_flow_imp.id(533221289658677125)
,p_name=>'ATTRIBUTE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ATTRIBUTE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(556684373719795986)
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
 p_id=>wwv_flow_imp.id(556684406991795987)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(556684562147795988)
,p_name=>'LAST_UPDATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATED_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Updated Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
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
 p_id=>wwv_flow_imp.id(556684684492795989)
,p_name=>'LAST_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Updated By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(556684721037795990)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
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
 p_id=>wwv_flow_imp.id(590927895129464721)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(590927968321464722)
,p_name=>'ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORG_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P1311_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(590928011075464723)
,p_name=>'ATTRIBUTE_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ATTRIBUTE_DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Attribute Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(590928153324464724)
,p_name=>'ATTRIBUTE_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ATTRIBUTE_VALUE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Attribute Value'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>false
,p_max_length=>400
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    select list_value||'' ''||nvl(remarks,'''') a, list_value b',
'    from app_GLO_ATTRIB_DETAIL',
'    where attribute_id = :ATTRIBUTE_ID'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'ATTRIBUTE_ID'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(590928214423464725)
,p_name=>'ATTRIBUTE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ATTRIBUTE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Attribute'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ATT_OPTION_NAME, id',
'from app_glo_attribute b',
'where b.start_date <= trunc(current_date)',
'and (b.end_date is null or b.end_date >=  trunc(current_date))',
'and UPPER(att_country) in (''ALL_COUNTRIES'',UPPER(:APP_COUNTRY))',
'order by ATT_OPTION_NAME'))
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
 p_id=>wwv_flow_imp.id(590928332200464726)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>16000
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
 p_id=>wwv_flow_imp.id(590928453440464727)
,p_name=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Start Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_format_mask=>'DD-MON-YYYY'
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
,p_default_expression=>'trunc(current_date, ''MM'')'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(590928560863464728)
,p_name=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'End Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_format_mask=>'DD-MON-YYYY'
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
 p_id=>wwv_flow_imp.id(590928628166464729)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(590927791174464720)
,p_internal_uid=>108019682794576241
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
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
 p_id=>wwv_flow_imp.id(556679126356795613)
,p_interactive_grid_id=>wwv_flow_imp.id(590927791174464720)
,p_static_id=>'160779'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(556678897779795613)
,p_report_id=>wwv_flow_imp.id(556679126356795613)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(537168046043775249)
,p_view_id=>wwv_flow_imp.id(556678897779795613)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(533221289658677125)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(556666469083771490)
,p_view_id=>wwv_flow_imp.id(556678897779795613)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(556684406991795987)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(556668517548795568)
,p_view_id=>wwv_flow_imp.id(556678897779795613)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(556684562147795988)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(556669445457795571)
,p_view_id=>wwv_flow_imp.id(556678897779795613)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(556684684492795989)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(556670311748795575)
,p_view_id=>wwv_flow_imp.id(556678897779795613)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(556684721037795990)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(556671238219795578)
,p_view_id=>wwv_flow_imp.id(556678897779795613)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(590928628166464729)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(556672175922795582)
,p_view_id=>wwv_flow_imp.id(556678897779795613)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(590928560863464728)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(556672995130795585)
,p_view_id=>wwv_flow_imp.id(556678897779795613)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(590928453440464727)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(556673983024795589)
,p_view_id=>wwv_flow_imp.id(556678897779795613)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(590928332200464726)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(556674872159795592)
,p_view_id=>wwv_flow_imp.id(556678897779795613)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(590928214423464725)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>175.742
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(556675758819795596)
,p_view_id=>wwv_flow_imp.id(556678897779795613)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(590928153324464724)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(556676682070795599)
,p_view_id=>wwv_flow_imp.id(556678897779795613)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(590928011075464723)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>164.742
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(556677560098795603)
,p_view_id=>wwv_flow_imp.id(556678897779795613)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(590927968321464722)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(556678457138795607)
,p_view_id=>wwv_flow_imp.id(556678897779795613)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(590927895129464721)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3618930626468378242)
,p_plug_name=>'Reminder'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_08'
,p_location=>null
,p_plug_source=>'Kindly note that relative to the current financial year the tax Periods are very old. Ensure that the most recent Tax Rates are in the system.'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from hr_hcf_companyyear a',
'where trunc(current_date) between start_year and end_year',
'and exists(select 1',
'           from hr_hcf_taxrate b',
'           where DATE_EFFECTIVE between add_months(a.start_year,-1) and  add_months(a.end_year,1)',
'           and upper(b.PAYMENT_TYPE) =upper(b.PAYMENT_TYPE)',
'           and a.org_id=b.org_id)'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3651561382484046771)
,p_plug_name=>'Currency Converter'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>31
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID,',
'  ORG_ID,REMARKS,BASE_CURRENCY,',
'  EMP_CURRENCY,',
'  EMP_CURRENCY_TOBASE_RATE,',
'  START_DATE,',
'  END_DATE,',
'  LAST_CHANGED_BY,',
'  LAST_CHANGED_DATE,',
'  ENTERED_BY,',
'  ENTRY_DATE,EMP_BASE_TOCURRENCY_RATE',
'FROM PA_PCF_EARNINGCURRENCY ',
'where ORG_ID=:P1311_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1311_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P1311_ID'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P1311_PAY_STATUS'
,p_plug_read_only_when2=>'Y'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3651560098231046758)
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
 p_id=>wwv_flow_imp.id(3651560207044046759)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3651560264165046760)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
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
 p_id=>wwv_flow_imp.id(3651560421496046761)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
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
 p_id=>wwv_flow_imp.id(3651560446295046762)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
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
 p_id=>wwv_flow_imp.id(3651560600481046763)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
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
 p_id=>wwv_flow_imp.id(3651560655733046764)
,p_name=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'End Date'
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
,p_format_mask=>'DD-MON-YYYY'
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
 p_id=>wwv_flow_imp.id(3651560758532046765)
,p_name=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Start Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_format_mask=>'DD-MON-YYYY'
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
 p_id=>wwv_flow_imp.id(3651560858923046766)
,p_name=>'EMP_CURRENCY_TOBASE_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_CURRENCY_TOBASE_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Currency To Base'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3651560957462046767)
,p_name=>'EMP_CURRENCY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_CURRENCY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Currency'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3711575111217888762)
,p_lov_display_extra=>false
,p_lov_display_null=>false
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
 p_id=>wwv_flow_imp.id(3651561201013046769)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3776367017781735368)
,p_name=>'ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORG_ID'
,p_data_type=>'NUMBER'
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
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P1311_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3776367165392735369)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>2000
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
 p_id=>wwv_flow_imp.id(3785183885152452572)
,p_name=>'EMP_BASE_TOCURRENCY_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_BASE_TOCURRENCY_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Base To Currency'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>150
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
 p_id=>wwv_flow_imp.id(3785183953762452573)
,p_name=>'BASE_CURRENCY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BASE_CURRENCY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3651561321518046770)
,p_internal_uid=>486548012308575306
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
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(3651251666684537139)
,p_interactive_grid_id=>wwv_flow_imp.id(3651561321518046770)
,p_static_id=>'17903'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3651251618362537139)
,p_report_id=>wwv_flow_imp.id(3651251666684537139)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3651245345121535330)
,p_view_id=>wwv_flow_imp.id(3651251618362537139)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(3651560207044046759)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3651246554933537121)
,p_view_id=>wwv_flow_imp.id(3651251618362537139)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3651560264165046760)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3651247071708537122)
,p_view_id=>wwv_flow_imp.id(3651251618362537139)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3651560421496046761)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3651247563710537123)
,p_view_id=>wwv_flow_imp.id(3651251618362537139)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3651560446295046762)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3651248067817537125)
,p_view_id=>wwv_flow_imp.id(3651251618362537139)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3651560600481046763)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3651248644579537126)
,p_view_id=>wwv_flow_imp.id(3651251618362537139)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3651560655733046764)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3651249137794537127)
,p_view_id=>wwv_flow_imp.id(3651251618362537139)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3651560758532046765)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3651249604671537129)
,p_view_id=>wwv_flow_imp.id(3651251618362537139)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3651560858923046766)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>165
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3651250100752537130)
,p_view_id=>wwv_flow_imp.id(3651251618362537139)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3651560957462046767)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>173.98
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3651251069259537134)
,p_view_id=>wwv_flow_imp.id(3651251618362537139)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3651561201013046769)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3778385622913675265)
,p_view_id=>wwv_flow_imp.id(3651251618362537139)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3776367017781735368)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3778393966113716181)
,p_view_id=>wwv_flow_imp.id(3651251618362537139)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3776367165392735369)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3788449787628828193)
,p_view_id=>wwv_flow_imp.id(3651251618362537139)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3785183885152452572)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3788460040896334076)
,p_view_id=>wwv_flow_imp.id(3651251618362537139)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(3785183953762452573)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3659817641107061613)
,p_plug_name=>'Create/Edit Organisation for &P1311_ORGANISATION_NAME.'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>21
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_query_type=>'TABLE'
,p_query_table=>'HR_HCF_ORGANISATION'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3612784163721148311)
,p_plug_name=>' Second'
,p_parent_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>3
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3612784695366166932)
,p_plug_name=>' First'
,p_parent_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>2
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3622463480676615993)
,p_plug_name=>'Migrate System References'
,p_parent_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>13
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':APP_USER in (''TTROTMAN@INNOSYSGY.COM'',''RLANGFORD@INNOSYSGY.COM'') and :P1311_ORGANISATION_TYPE =''SOFTWARE USER'''
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3612649345503025140)
,p_plug_name=>'Generate Organisations'
,p_parent_plug_id=>wwv_flow_imp.id(3622463480676615993)
,p_region_template_options=>'#DEFAULT#:t-Region--accent10:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3659824537031061640)
,p_name=>'Audit Record Verified By: &P1311_VERIFIED_BY.'
,p_parent_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_template=>2664334895415463485
,p_display_sequence=>23
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
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
'from  HR_HCF_ORGANISATION',
'where  id = :P1311_ID'))
,p_display_when_condition=>':P1311_ID IS NOT NULL'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
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
 p_id=>wwv_flow_imp.id(686564054643325441)
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
 p_id=>wwv_flow_imp.id(686564171671325442)
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
 p_id=>wwv_flow_imp.id(686564211962325443)
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
 p_id=>wwv_flow_imp.id(686564668432325447)
,p_query_column_id=>4
,p_column_alias=>'MACHINE_INSERT'
,p_column_display_sequence=>70
,p_column_heading=>'Machine Insert'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(686564748092325448)
,p_query_column_id=>5
,p_column_alias=>'MACHINE_UPDATE'
,p_column_display_sequence=>80
,p_column_heading=>'Machine Update'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(686564565350325446)
,p_query_column_id=>6
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>60
,p_column_heading=>'Updated'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3660297854421231537)
,p_name=>'Bank Transits'
,p_template=>2664334895415463485
,p_display_sequence=>51
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'REGION_POSITION_08'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PA_PCF_BANKTRANSIT.ID as ID,',
'    PA_PCF_BANKTRANSIT.BANK_BRANCH_ID as BANK_BRANCH_ID,',
'    PA_PCF_BANKTRANSIT.ACCOUNT_NUMBER as ACCOUNT_NUMBER,',
'    PA_PCF_BANKTRANSIT.TRANSACTION_CODE as TRANSACTION_CODE,',
'    PA_PCF_BANKTRANSIT.CREDIT_DEBIT as CREDIT_DEBIT,',
'    PA_PCF_BANKTRANSIT.CHARGES as CHARGES,',
'    PA_PCF_BANKTRANSIT.TRANSITS as TRANSITS,',
'    PA_PCF_BANKTRANSIT.MACHINE_INSERT as MACHINE_INSERT,',
'    PA_PCF_BANKTRANSIT.MACHINE_UPDATE as MACHINE_UPDATE,',
'    PA_PCF_BANKTRANSIT.ENTERED_BY as ENTERED_BY,',
'    PA_PCF_BANKTRANSIT.ENTRY_DATE as ENTRY_DATE,',
'    PA_PCF_BANKTRANSIT.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    PA_PCF_BANKTRANSIT.LAST_CHANGED_DATE as LAST_CHANGED_DATE ',
' from PA_PCF_BANKTRANSIT PA_PCF_BANKTRANSIT',
'where PA_PCF_BANKTRANSIT.BANK_BRANCH_ID =:P1311_ID'))
,p_display_when_condition=>':P1311_SHORT_NAME=''RBGL'' and :P1311_ID is not null and pkg_security.GET_REGION_ACCESS(''FRMBANKTRANSITS'')>0'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1311_ID'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711664096774888809)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'EDIT'
,p_column_link=>'f?p=&APP_ID.:1318:&SESSION.::&DEBUG.::P1318_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711663765781888809)
,p_query_column_id=>2
,p_column_alias=>'BANK_BRANCH_ID'
,p_column_display_sequence=>2
,p_column_heading=>'BANK_BRANCH_ID'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711663378237888809)
,p_query_column_id=>3
,p_column_alias=>'ACCOUNT_NUMBER'
,p_column_display_sequence=>3
,p_column_heading=>'ACCOUNT NO.'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711662893211888809)
,p_query_column_id=>4
,p_column_alias=>'TRANSACTION_CODE'
,p_column_display_sequence=>4
,p_column_heading=>'TRANSACTION CODE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711662524465888809)
,p_query_column_id=>5
,p_column_alias=>'CREDIT_DEBIT'
,p_column_display_sequence=>5
,p_column_heading=>'CREDIT DEBIT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711662176231888808)
,p_query_column_id=>6
,p_column_alias=>'CHARGES'
,p_column_display_sequence=>6
,p_column_heading=>'CHARGES'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711661726893888808)
,p_query_column_id=>7
,p_column_alias=>'TRANSITS'
,p_column_display_sequence=>7
,p_column_heading=>'TRANSITS'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711661341259888808)
,p_query_column_id=>8
,p_column_alias=>'MACHINE_INSERT'
,p_column_display_sequence=>8
,p_column_heading=>'MACHINE_INSERT'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711660951882888808)
,p_query_column_id=>9
,p_column_alias=>'MACHINE_UPDATE'
,p_column_display_sequence=>9
,p_column_heading=>'MACHINE_UPDATE'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711660520509888808)
,p_query_column_id=>10
,p_column_alias=>'ENTERED_BY'
,p_column_display_sequence=>10
,p_column_heading=>'ENTERED_BY'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711660161452888808)
,p_query_column_id=>11
,p_column_alias=>'ENTRY_DATE'
,p_column_display_sequence=>11
,p_column_heading=>'ENTRY_DATE'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711659704610888808)
,p_query_column_id=>12
,p_column_alias=>'LAST_CHANGED_BY'
,p_column_display_sequence=>12
,p_column_heading=>'LAST_CHANGED_BY'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711659352889888808)
,p_query_column_id=>13
,p_column_alias=>'LAST_CHANGED_DATE'
,p_column_display_sequence=>13
,p_column_heading=>'LAST_CHANGED_DATE'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3660393768037493928)
,p_plug_name=>'Add Related Records'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>71
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_location=>null
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P1311_ORGANISATION_TYPE'
,p_plug_display_when_cond2=>'SOFTWARE USER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>'<div style="overflow:auto;">'
,p_plug_footer=>'</div>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3646439652375543682)
,p_name=>'Listing for Education Levy'
,p_parent_plug_id=>wwv_flow_imp.id(3660393768037493928)
,p_template=>2664334895415463485
,p_display_sequence=>29
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ID", ',
'"ANNUAL_EXEMPTED_AMOUNT",',
'"FIRST_PERCENT",',
'"FIRST_PERCENT_START_RANGE",',
'"FIRST_PERCENT_END_RANGE",',
'"SECOND_PERCENT",',
'"MINI_PAYMENT_AGE",',
'"START_DATE",',
'"END_DATE",',
'"ENTERED_BY",',
'"ENTRY_DATE",',
'"LAST_CHANGED_BY",',
'"LAST_CHANGED_DATE",',
'"MACHINE_INSERT",',
'"MACHINE_UPDATE"',
'from "#OWNER#"."PA_PCF_EDUCATION_LEVY" ',
'WHERE  ORG_ID=:APP_ORG_SHR_DED'))
,p_display_when_condition=>':P1311_ID is not null and pkg_security.GET_REGION_ACCESS(''FRMEDUCATIONLEVY'')>0 and :P1311_COUNTRY = ''ANTIGUA AND BARBUDA'''
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_header=>'<div style="overflow:auto;">'
,p_footer=>'</div>'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711651676954888803)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_column_link=>'f?p=&APP_ID.:1486:&SESSION.::&DEBUG.::P1486_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711651232794888803)
,p_query_column_id=>2
,p_column_alias=>'ANNUAL_EXEMPTED_AMOUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Annual Exempt Amt'
,p_column_format=>'FML999G999G999G999G990D00'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711650806088888803)
,p_query_column_id=>3
,p_column_alias=>'FIRST_PERCENT'
,p_column_display_sequence=>3
,p_column_heading=>'First%'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711650446460888803)
,p_query_column_id=>4
,p_column_alias=>'FIRST_PERCENT_START_RANGE'
,p_column_display_sequence=>4
,p_column_heading=>'First% Start Rnage'
,p_column_format=>'FML999G999G999G999G990D00'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711650052637888803)
,p_query_column_id=>5
,p_column_alias=>'FIRST_PERCENT_END_RANGE'
,p_column_display_sequence=>5
,p_column_heading=>'First% End Range'
,p_column_format=>'FML999G999G999G999G990D00'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711649590180888803)
,p_query_column_id=>6
,p_column_alias=>'SECOND_PERCENT'
,p_column_display_sequence=>6
,p_column_heading=>'Second%'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711649257675888803)
,p_query_column_id=>7
,p_column_alias=>'MINI_PAYMENT_AGE'
,p_column_display_sequence=>7
,p_column_heading=>'Mini Age'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711648881976888803)
,p_query_column_id=>8
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>8
,p_column_heading=>'Start Date'
,p_column_format=>'DD-MON-YYYY'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711648457097888802)
,p_query_column_id=>9
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>9
,p_column_heading=>'End Date'
,p_column_format=>'DD-MON-YYYY'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711648052053888802)
,p_query_column_id=>10
,p_column_alias=>'ENTERED_BY'
,p_column_display_sequence=>10
,p_column_heading=>'ENTERED_BY'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711647653123888802)
,p_query_column_id=>11
,p_column_alias=>'ENTRY_DATE'
,p_column_display_sequence=>11
,p_column_heading=>'ENTRY_DATE'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711646466683888802)
,p_query_column_id=>12
,p_column_alias=>'LAST_CHANGED_BY'
,p_column_display_sequence=>14
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711645993917888802)
,p_query_column_id=>13
,p_column_alias=>'LAST_CHANGED_DATE'
,p_column_display_sequence=>15
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711645661545888802)
,p_query_column_id=>14
,p_column_alias=>'MACHINE_INSERT'
,p_column_display_sequence=>16
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711645227652888802)
,p_query_column_id=>15
,p_column_alias=>'MACHINE_UPDATE'
,p_column_display_sequence=>17
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3659883751425320434)
,p_name=>'Listing of Organisational Requirements'
,p_parent_plug_id=>wwv_flow_imp.id(3660393768037493928)
,p_template=>4072358936313175081
,p_display_sequence=>19
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HR_HCF_ORG_RULE.ID as ID,',
'    HR_HCF_ORG_RULE.ORG_ID as ORG_ID,',
'    HR_HCF_ORG_RULE.ENFORCE_SALARY_SCALE as ENFORCE_SALARY_SCALE,',
'    HR_HCF_ORG_RULE.ALLOW_MANUAL_ADJ as ALLOW_MANUAL_ADJ,',
'    HR_HCF_ORG_RULE.ROUND_METHOD as ROUND_METHOD,',
'    HR_HCF_ORG_RULE.BANK_ACCOUNT_NO as BANK_ACCOUNT_NO,',
'    HR_HCF_ORG_RULE.BANK_BRANCH_ID as BANK_BRANCH_ID,',
'    HR_HCF_ORG_RULE.ESALARY_CHARGES as ESALARY_CHARGES,',
'    HR_HCF_ORG_RULE.CHARGES as CHARGES,',
'    HR_HCF_ORG_RULE.ESALARY_ACCOUNT as ESALARY_ACCOUNT,',
'    HR_HCF_ORG_RULE.START_DATE as START_DATE,',
'    HR_HCF_ORG_RULE.END_DATE as END_DATE,',
'    HR_HCF_ORG_RULE.PSC_RETIREMENT_AGE as PSC_RETIREMENT_AGE,',
'    HR_HCF_ORG_RULE.EMPLOYMENT_AGE as EMPLOYMENT_AGE,',
'    HR_HCF_ORG_RULE.PROBATION_DURATION as PROBATION_DURATION,',
'    HR_HCF_ORG_RULE.SICK_LEAVE_YRS_SERVICE as SICK_LEAVE_YRS_SERVICE,',
'    HR_HCF_ORG_RULE.SICK_LEAVE_HRS_QUALIFY as SICK_LEAVE_HRS_QUALIFY,',
'    HR_HCF_ORG_RULE.TAX_METHOD as TAX_METHOD,',
'    HR_HCF_ORG_RULE.TIMESHEET_POST_METHOD as TIMESHEET_POST_METHOD,',
'    GRATUITY_PERCENT*100 GRATUITY_PERCENT',
' from HR_HCF_ORG_RULE HR_HCF_ORG_RULE',
'where HR_HCF_ORG_RULE.ORG_ID=:P1311_ID'))
,p_display_when_condition=>':P1311_ID is not null and pkg_security.GET_REGION_ACCESS(''FRMORGANISATIONRULE'')>0'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1311_ID'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711644139608888801)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'EDIT'
,p_column_link=>'f?p=&APP_ID.:1312:&SESSION.::&DEBUG.::P1312_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711643733595888801)
,p_query_column_id=>2
,p_column_alias=>'ORG_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Org Id'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711643335836888801)
,p_query_column_id=>3
,p_column_alias=>'ENFORCE_SALARY_SCALE'
,p_column_display_sequence=>3
,p_column_heading=>'Enforce Salary Scale'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711642924236888801)
,p_query_column_id=>4
,p_column_alias=>'ALLOW_MANUAL_ADJ'
,p_column_display_sequence=>4
,p_column_heading=>'Allow Manual Adj'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711642542949888800)
,p_query_column_id=>5
,p_column_alias=>'ROUND_METHOD'
,p_column_display_sequence=>5
,p_column_heading=>'Round Method'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711642160762888800)
,p_query_column_id=>6
,p_column_alias=>'BANK_ACCOUNT_NO'
,p_column_display_sequence=>6
,p_column_heading=>'Bank Account No.'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711641722294888800)
,p_query_column_id=>7
,p_column_alias=>'BANK_BRANCH_ID'
,p_column_display_sequence=>7
,p_column_heading=>'Bank Branch'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711641294320888800)
,p_query_column_id=>8
,p_column_alias=>'ESALARY_CHARGES'
,p_column_display_sequence=>8
,p_column_heading=>'Esalary Charges'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711640891738888800)
,p_query_column_id=>9
,p_column_alias=>'CHARGES'
,p_column_display_sequence=>9
,p_column_heading=>'Charges'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711640521886888800)
,p_query_column_id=>10
,p_column_alias=>'ESALARY_ACCOUNT'
,p_column_display_sequence=>10
,p_column_heading=>'Esalary Account'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711640084149888800)
,p_query_column_id=>11
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>11
,p_column_heading=>'Start Date'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711639780715888800)
,p_query_column_id=>12
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>12
,p_column_heading=>'End Date'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711639348478888800)
,p_query_column_id=>13
,p_column_alias=>'PSC_RETIREMENT_AGE'
,p_column_display_sequence=>13
,p_column_heading=>'Psc Retirement Age'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711638907763888799)
,p_query_column_id=>14
,p_column_alias=>'EMPLOYMENT_AGE'
,p_column_display_sequence=>14
,p_column_heading=>'Employment Age(Yrs)'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711638566745888799)
,p_query_column_id=>15
,p_column_alias=>'PROBATION_DURATION'
,p_column_display_sequence=>15
,p_column_heading=>'Probation Duration(Mths)'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711638086723888799)
,p_query_column_id=>16
,p_column_alias=>'SICK_LEAVE_YRS_SERVICE'
,p_column_display_sequence=>16
,p_column_heading=>'Sick Leave Yrs Service'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711637726784888799)
,p_query_column_id=>17
,p_column_alias=>'SICK_LEAVE_HRS_QUALIFY'
,p_column_display_sequence=>17
,p_column_heading=>'Sick Leave Hrs Qualify'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711637294565888799)
,p_query_column_id=>18
,p_column_alias=>'TAX_METHOD'
,p_column_display_sequence=>18
,p_column_heading=>'Tax Method'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711636967281888799)
,p_query_column_id=>19
,p_column_alias=>'TIMESHEET_POST_METHOD'
,p_column_display_sequence=>19
,p_column_heading=>'Timesheet Post Method'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3711636535339888799)
,p_query_column_id=>20
,p_column_alias=>'GRATUITY_PERCENT'
,p_column_display_sequence=>20
,p_column_heading=>'Gratuity Percent'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3659907053158917748)
,p_plug_name=>'Listing Of NIB Rates'
,p_parent_plug_id=>wwv_flow_imp.id(3660393768037493928)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>49
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HR_HCF_NISRATE.ID as ID,',
'    HR_HCF_NISRATE.ORG_ID as ORG_ID,',
'    HR_HCF_NISRATE.DATE_OF_RATE as DATE_OF_RATE,',
'    HR_HCF_NISRATE.PAYMENT_TYPE as PAYMENT_TYPE,',
'    HR_HCF_NISRATE.NIS_CEILING as NIS_CEILING,',
'    HR_HCF_NISRATE.EMPLOYER_PER as EMPLOYER_PER,',
'    HR_HCF_NISRATE.EMPLOYEE_PER as EMPLOYEE_PER,',
'    HR_HCF_NISRATE.LOWER_AGE as LOWER_AGE,',
'    HR_HCF_NISRATE.UPPER_AGE as UPPER_AGE,',
'    HR_HCF_NISRATE.CONSISTENT as CONSISTENT,',
'    HR_HCF_NISRATE.OVER_60_UNDER_16 as OVER_60_UNDER_16,',
'    HR_HCF_NISRATE.DATE_EFFECTIVE as DATE_EFFECTIVE,',
'    HR_HCF_NISRATE.DATE_EFFECTIVE_END as DATE_EFFECTIVE_END,',
'    HR_HCF_NISRATE.ENTERED_BY as ENTERED_BY,',
'    HR_HCF_NISRATE.ENTRY_DATE as ENTRY_DATE,',
'    HR_HCF_NISRATE.MACHINE_INSERT as MACHINE_INSERT,',
'    HR_HCF_NISRATE.MACHINE_UPDATE as MACHINE_UPDATE,',
'    HR_HCF_NISRATE.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    HR_HCF_NISRATE.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    HR_HCF_NISRATE.COUNTRY as COUNTRY ',
' from HR_HCF_NISRATE HR_HCF_NISRATE',
' where HR_HCF_NISRATE.ORG_ID=:APP_ORG_SHR_DED',
'and upper(COUNTRY) =upper(:APP_COUNTRY)',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P1311_ID is not null and pkg_security.GET_REGION_ACCESS(''FRMNISRATE'')>0'
,p_plug_display_when_cond2=>'PLSQL'
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
 p_id=>wwv_flow_imp.id(570777806790090319)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1313:&SESSION.::&DEBUG.:1313:P1313_ID:#ID#'
,p_detail_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'TEMPLATE_APPV8'
,p_internal_uid=>87869698410201840
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(570777875186090320)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(570777963437090321)
,p_db_column_name=>'ORG_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Org Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(570778008423090322)
,p_db_column_name=>'DATE_OF_RATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Date Of Rate'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(570778191958090323)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(570778298177090324)
,p_db_column_name=>'NIS_CEILING'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Nis Ceiling'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(570778331923090325)
,p_db_column_name=>'EMPLOYER_PER'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Employer Per'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(570778455229090326)
,p_db_column_name=>'EMPLOYEE_PER'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Employee Per'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(570778595640090327)
,p_db_column_name=>'LOWER_AGE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Lower Age'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(570778655375090328)
,p_db_column_name=>'UPPER_AGE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Upper Age'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(570778729554090329)
,p_db_column_name=>'CONSISTENT'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Consistent'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(570826101100163580)
,p_db_column_name=>'OVER_60_UNDER_16'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Over 60 Under 16'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(570826119290163581)
,p_db_column_name=>'DATE_EFFECTIVE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Date Effective'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(570826228443163582)
,p_db_column_name=>'DATE_EFFECTIVE_END'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Date Effective End'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(570826309904163583)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(570826428243163584)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(570826578535163585)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(570826614876163586)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(570826769471163587)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(570826836756163588)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(570826965556163589)
,p_db_column_name=>'COUNTRY'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Country'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(570844449120164986)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'879364'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DATE_OF_RATE:PAYMENT_TYPE:NIS_CEILING:EMPLOYER_PER:EMPLOYEE_PER:LOWER_AGE:UPPER_AGE:OVER_60_UNDER_16:DATE_EFFECTIVE:DATE_EFFECTIVE_END:COUNTRY:'
,p_sort_column_1=>'DATE_OF_RATE'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3659917549808124881)
,p_plug_name=>'Listing of Tax Rates'
,p_parent_plug_id=>wwv_flow_imp.id(3660393768037493928)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>59
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HR_HCF_TAXRATE.ID as ID,',
'    HR_HCF_TAXRATE.ORG_ID as ORG_ID,',
'    HR_HCF_TAXRATE.DATE_OF_RATE as DATE_OF_RATE,',
'    HR_HCF_TAXRATE.PAYMENT_TYPE as PAYMENT_TYPE,',
'    HR_HCF_TAXRATE.TAX_CEILING_LOWER as TAX_CEILING_LOWER,',
'    HR_HCF_TAXRATE.TAX_PERCENTAGE_LOWER as TAX_PERCENTAGE_LOWER,',
'    HR_HCF_TAXRATE.TAX_CEILING_UPPER as TAX_CEILING_UPPER,',
'    HR_HCF_TAXRATE.TAX_PERCENTAGE_UPPER as TAX_PERCENTAGE_UPPER,',
'    HR_HCF_TAXRATE.CONSISTENT as CONSISTENT,',
'    HR_HCF_TAXRATE.ANN_TAX_CEILING_LOWER as ANN_TAX_CEILING_LOWER,',
'    HR_HCF_TAXRATE.ANN_TAX_CEILING_UPPER as ANN_TAX_CEILING_UPPER,',
'    HR_HCF_TAXRATE.DATE_EFFECTIVE as DATE_EFFECTIVE,',
'    HR_HCF_TAXRATE.ADJ_CEILING_LOWER as ADJ_CEILING_LOWER,',
'    HR_HCF_TAXRATE.ADJ_CEILING_UPPER as ADJ_CEILING_UPPER,',
'    HR_HCF_TAXRATE.ADJ_ANN_TAX_CEILING_LOWER as ADJ_ANN_TAX_CEILING_LOWER,',
'    HR_HCF_TAXRATE.ADJ_ANN_TAX_CEILING_UPPER as ADJ_ANN_TAX_CEILING_UPPER,',
'    HR_HCF_TAXRATE.DATE_EFFECTIVE_END as DATE_EFFECTIVE_END,',
'    HR_HCF_TAXRATE.DAILY_TAX_CEILING_LOWER as DAILY_TAX_CEILING_LOWER,',
'    HR_HCF_TAXRATE.DAILY_TAX_CEILING_UPPER as DAILY_TAX_CEILING_UPPER,',
'    case when HR_HCF_TAXRATE.PRO_RATE_TAXFREE=0 then ''NO'' else ''YES'' end as PRO_RATE_TAXFREE,',
'    HR_HCF_TAXRATE.COUNTRY as COUNTRY,',
'    tax_ceiling_upper_fraction, TAX_CEILING_UPPER_B',
' from HR_HCF_TAXRATE HR_HCF_TAXRATE',
'where ORG_ID=:APP_ORG_SHR_DED',
'and trim(upper(COUNTRY)) =trim(upper(:APP_COUNTRY))',
' '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P1311_ID is not null and pkg_security.GET_REGION_ACCESS(''FRMTAXRATE'')>0'
,p_plug_display_when_cond2=>'PLSQL'
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
 p_id=>wwv_flow_imp.id(570775315452090295)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1314:&SESSION.::&DEBUG.:1314:P1314_ID:#ID#'
,p_detail_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'TEMPLATE_APPV8'
,p_internal_uid=>87867207072201816
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(570775443294090296)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(570775568074090297)
,p_db_column_name=>'ORG_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Org Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(570775682396090298)
,p_db_column_name=>'DATE_OF_RATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Date Of Rate'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(570775801820090299)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(570775811565090300)
,p_db_column_name=>'TAX_CEILING_LOWER'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Tax Ceiling Lower'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(570775968333090301)
,p_db_column_name=>'TAX_PERCENTAGE_LOWER'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Tax Percentage Lower'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(570776074074090302)
,p_db_column_name=>'TAX_CEILING_UPPER'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Tax Ceiling Upper'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(570776206939090303)
,p_db_column_name=>'TAX_PERCENTAGE_UPPER'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Tax Percentage Upper'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(570776219799090304)
,p_db_column_name=>'CONSISTENT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Consistent'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(570776384783090305)
,p_db_column_name=>'ANN_TAX_CEILING_LOWER'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Ann Tax Ceiling Lower'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(570776477827090306)
,p_db_column_name=>'ANN_TAX_CEILING_UPPER'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Ann Tax Ceiling Upper'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(570776553867090307)
,p_db_column_name=>'DATE_EFFECTIVE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Date Effective'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(570776662793090308)
,p_db_column_name=>'ADJ_CEILING_LOWER'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Adj Ceiling Lower'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(570776715110090309)
,p_db_column_name=>'ADJ_CEILING_UPPER'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Adj Ceiling Upper'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(570776898919090310)
,p_db_column_name=>'ADJ_ANN_TAX_CEILING_LOWER'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Adj Ann Tax Ceiling Lower'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(570776939293090311)
,p_db_column_name=>'ADJ_ANN_TAX_CEILING_UPPER'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Adj Ann Tax Ceiling Upper'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(570777024500090312)
,p_db_column_name=>'DATE_EFFECTIVE_END'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Date Effective End'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(570777138396090313)
,p_db_column_name=>'DAILY_TAX_CEILING_LOWER'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Daily Tax Ceiling Lower'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(570777273594090314)
,p_db_column_name=>'DAILY_TAX_CEILING_UPPER'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Daily Tax Ceiling Upper'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(570777346130090315)
,p_db_column_name=>'PRO_RATE_TAXFREE'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Pro Rate Taxfree'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(570777456209090316)
,p_db_column_name=>'COUNTRY'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Country'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(570777557312090317)
,p_db_column_name=>'TAX_CEILING_UPPER_FRACTION'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Tax Ceiling Upper Fraction'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(570777705988090318)
,p_db_column_name=>'TAX_CEILING_UPPER_B'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Tax Ceiling Upper B'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(570845055818165001)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'879370'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DATE_OF_RATE:PAYMENT_TYPE:TAX_CEILING_LOWER:TAX_PERCENTAGE_LOWER:TAX_CEILING_UPPER_B:TAX_PERCENTAGE_UPPER:TAX_CEILING_UPPER:ANN_TAX_CEILING_LOWER:ANN_TAX_CEILING_UPPER:TAX_CEILING_UPPER_FRACTION:COUNTRY:'
,p_sort_column_1=>'DATE_OF_RATE'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3659935266944792175)
,p_plug_name=>'Listing Of Company Years'
,p_parent_plug_id=>wwv_flow_imp.id(3660393768037493928)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>79
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HR_HCF_COMPANYYEAR.ID as ID, id pkey,',
'    HR_HCF_COMPANYYEAR.ORG_ID as ORG_ID,',
'    HR_HCF_COMPANYYEAR.PAYMENT_TYPE as PAYMENT_TYPE,',
'    HR_HCF_COMPANYYEAR.COMPANY_YEAR as COMPANY_YEAR,',
'    HR_HCF_COMPANYYEAR.START_YEAR as START_YEAR,',
'    HR_HCF_COMPANYYEAR.END_YEAR as END_YEAR,',
'    HR_HCF_COMPANYYEAR.ENTRY_DATE as ENTRY_DATE,',
'    HR_HCF_COMPANYYEAR.ENTERED_BY as ENTERED_BY,',
'    HR_HCF_COMPANYYEAR.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    HR_HCF_COMPANYYEAR.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    HR_HCF_COMPANYYEAR.MACHINE_INSERT as MACHINE_INSERT,',
'    HR_HCF_COMPANYYEAR.MACHINE_UPDATE as MACHINE_UPDATE ',
' from HR_HCF_COMPANYYEAR HR_HCF_COMPANYYEAR',
'where HR_HCF_COMPANYYEAR.ORG_ID=:P1311_ID',
'ORDER BY HR_HCF_COMPANYYEAR.COMPANY_YEAR DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1311_ID'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P1311_ID is not null and pkg_security.GET_REGION_ACCESS(''FRMORGANISATIONYEAR'')>0'
,p_plug_display_when_cond2=>'PLSQL'
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
 p_id=>wwv_flow_imp.id(537562532232092689)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1315:&SESSION.::&DEBUG.:1315:P1315_ID:#ID#'
,p_detail_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'TEMPLATE_APPV8'
,p_internal_uid=>54654423852204210
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(537562612005092690)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(537562763238092691)
,p_db_column_name=>'PKEY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Pkey'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(537562821061092692)
,p_db_column_name=>'ORG_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Org Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(537562967740092693)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(537563077549092694)
,p_db_column_name=>'COMPANY_YEAR'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Company Year'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(537563148899092695)
,p_db_column_name=>'START_YEAR'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Start Year'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(537563293031092696)
,p_db_column_name=>'END_YEAR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'End Year'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(537563314380092697)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(537563417272092698)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(537563586985092699)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(537563692884092700)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(537563750868092701)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(537563863163092702)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(538832971134772969)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'559249'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAYMENT_TYPE:COMPANY_YEAR:START_YEAR:END_YEAR:ENTRY_DATE:ENTERED_BY:LAST_CHANGED_BY:LAST_CHANGED_DATE:MACHINE_INSERT:MACHINE_UPDATE:'
,p_sort_column_1=>'PAYMENT_TYPE'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'COMPANY_YEAR'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'START_YEAR'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3659943544919598973)
,p_plug_name=>'Listing of Work Locations'
,p_parent_plug_id=>wwv_flow_imp.id(3660393768037493928)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>89
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HR_HCF_WORKLOCATION.ID as ID,',
'    HR_HCF_WORKLOCATION.ORG_ID as ORG_ID,',
'    (select LOCATION_DESCRIPTION from HR_HCF_WORKLOCATION k where k.ID=HR_HCF_WORKLOCATION.WKLOCATION_ID) as WKLOCATION_ID,',
'    HR_HCF_WORKLOCATION.LOCATION_CODE as LOCATION_CODE,',
'    HR_HCF_WORKLOCATION.LOCATION_DESCRIPTION as LOCATION_DESCRIPTION,',
'    HR_HCF_WORKLOCATION.CLASSIFICATION as CLASSIFICATION,',
'    HR_HCF_WORKLOCATION.START_DATE as START_DATE,',
'    HR_HCF_WORKLOCATION.END_DATE as END_DATE,',
'    HR_HCF_WORKLOCATION.ADDRESS as ADDRESS,',
'    HR_HCF_WORKLOCATION.BILLING_ADDRESS as BILLING_ADDRESS,',
'    HR_HCF_WORKLOCATION.TEL_NO as TEL_NO,',
'    HR_HCF_WORKLOCATION.ENTRY_DATE as ENTRY_DATE,',
'    HR_HCF_WORKLOCATION.ENTERED_BY as ENTERED_BY,',
'    HR_HCF_WORKLOCATION.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    HR_HCF_WORKLOCATION.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    HR_HCF_WORKLOCATION.MACHINE_INSERT as MACHINE_INSERT,',
'    HR_HCF_WORKLOCATION.MACHINE_UPDATE as MACHINE_UPDATE ',
' from HR_HCF_WORKLOCATION HR_HCF_WORKLOCATION',
'where HR_HCF_WORKLOCATION.ORG_ID =:P1311_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1311_ID'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P1311_ID is not null and pkg_security.GET_REGION_ACCESS(''FRMWORKLOCATION'')>0'
,p_plug_display_when_cond2=>'PLSQL'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Listing of Work Locations'
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
 p_id=>wwv_flow_imp.id(3836550978439975125)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1316:&SESSION.::&DEBUG.:1316:P1316_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'PPLPAYDEMO'
,p_internal_uid=>41509534461274206
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3836550876540975124)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3836550746705975123)
,p_db_column_name=>'ORG_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Org Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3836550644704975122)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Wklocation Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3836550588310975121)
,p_db_column_name=>'LOCATION_CODE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Location Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3836550464502975120)
,p_db_column_name=>'LOCATION_DESCRIPTION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Location Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3836550358853975119)
,p_db_column_name=>'CLASSIFICATION'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Classification'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854313634827558974)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3836550252253975118)
,p_db_column_name=>'START_DATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3836550174024975117)
,p_db_column_name=>'END_DATE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3836550083806975116)
,p_db_column_name=>'ADDRESS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3836550006737975115)
,p_db_column_name=>'BILLING_ADDRESS'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Billing Address'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3836549832113975114)
,p_db_column_name=>'TEL_NO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Tel No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3836549733733975113)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3836549674876975112)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3836549529218975111)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3836549453721975110)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3836549323558975109)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3836549233142975108)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3836497361412824073)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'415632'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'LOCATION_CODE:LOCATION_DESCRIPTION:CLASSIFICATION:START_DATE:END_DATE:ADDRESS:BILLING_ADDRESS:TEL_NO:ENTRY_DATE:ENTERED_BY:LAST_CHANGED_DATE:LAST_CHANGED_BY:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3682242560338071889)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>99
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3796847114049348873)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3721650924808334228)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>11
,p_plug_display_point=>'REGION_POSITION_08'
,p_location=>null
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3772643169384002375)
,p_plug_name=>'Clone Organisation Type'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>41
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_location=>null
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P1311_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3711698209838888828)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3772643169384002375)
,p_button_name=>'CLONE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Clone'
,p_button_execute_validations=>'N'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3535637103950209536)
,p_button_sequence=>230
,p_button_plug_id=>wwv_flow_imp.id(3612784163721148311)
,p_button_name=>'REMOVE_LOGO_LD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Remove Letter HD Logo'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'from hr_hcf_organisation',
'where id=:P1311_ID',
'and LETTER_HEAD_LOGO is not null'))
,p_button_condition_type=>'EXISTS'
,p_grid_new_row=>'Y'
,p_grid_column=>3
,p_security_scheme=>wwv_flow_imp.id(3807159470688545770)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3711675104926888813)
,p_button_sequence=>240
,p_button_plug_id=>wwv_flow_imp.id(3612784163721148311)
,p_button_name=>'REMOVE_LOGO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Remove Logo'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'from hr_hcf_organisation',
'where id=:P1311_ID',
'and PHOTO is not null'))
,p_button_condition_type=>'EXISTS'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_security_scheme=>wwv_flow_imp.id(3807159470688545770)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(546994758763485953)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(565109814151266624)
,p_button_name=>'GEN_RETRO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Generate Retro'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-gear'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3711603759502888784)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3659943544919598973)
,p_button_name=>'CREATE_WORKLOC'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1316:&SESSION.::&DEBUG.:1316:P1316_ORG_ID:&P1311_ID.'
,p_button_condition=>'P1311_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3807160206270545771)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3711611280194888791)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3659935266944792175)
,p_button_name=>'CREATE_YEAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1315:&SESSION.::&DEBUG.:1315:P1315_ORG_ID:&P1311_ID.'
,p_button_condition=>'P1311_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3807160206270545771)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3711617516130888793)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3659917549808124881)
,p_button_name=>'CREATE_TAX'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1314:&SESSION.::&DEBUG.:1314:P1314_ORG_ID:&P1311_ID.'
,p_button_condition=>'P1311_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3807160206270545771)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3711627473352888796)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3659907053158917748)
,p_button_name=>'CREATE_NIS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1313:&SESSION.::&DEBUG.:1313:P1313_ORG_ID:&P1311_ID.'
,p_button_condition=>'P1311_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3807160206270545771)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3711636161759888799)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3659883751425320434)
,p_button_name=>'CREATE_ORGREQ'
,p_button_static_id=>'add-orgreq'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1312:&SESSION.::&DEBUG.:1312:P1312_ORG_ID:&P1311_ID.'
,p_button_condition=>'P1311_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3807160206270545771)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3711644831870888801)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3646439652375543682)
,p_button_name=>'CREATE_EDULVY'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1486:&SESSION.::&DEBUG.:1486:P1486_ORG_ID:&P1311_ID.'
,p_security_scheme=>wwv_flow_imp.id(3807160206270545771)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3711658913748888807)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3660297854421231537)
,p_button_name=>'CREATE_BANKTRANS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1318:&SESSION.::&DEBUG.:1318::'
,p_button_condition=>'P1311_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3807160206270545771)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3711685404939888817)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3612649345503025140)
,p_button_name=>'P1311_BTNGENORG'
,p_button_static_id=>'P1311_BTNGENORG'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Migrate Org'
,p_button_position=>'EDIT'
,p_security_scheme=>wwv_flow_imp.id(3807159470688545770)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3711685798084888817)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3622463480676615993)
,p_button_name=>'P1311_MIGRATE'
,p_button_static_id=>'P1311_MIGRATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Migrate'
,p_button_position=>'EDIT'
,p_security_scheme=>wwv_flow_imp.id(3807159470688545770)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3791217518193846356)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3682242560338071889)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1310:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3791216713629846356)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3682242560338071889)
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
'FROM HR_HCF_ORGANISATION',
'WHERE ID=:P1311_ID',
'AND VERIFIED_BY IS NULL'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(3807160074582545770)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3791216351759846356)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3682242560338071889)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'if (:P1311_ID is not null and LENGTH(:P1311_VERIFIED_BY)=0) OR  (PKG_GLOBAL_FNTS.chk_verifier(nvl(V(''APP_USER''),USER), :APP_PAGE_ID)>0 AND :P1311_ID is not null) THEN',
'RETURN TRUE;',
'ELSE',
'RETURN FALSE;',
'END IF;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_security_scheme=>wwv_flow_imp.id(3807159759962545770)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3791215987696846356)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3682242560338071889)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_condition=>'P1311_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3807160206270545771)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3791214792333846355)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(3682242560338071889)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create Again'
,p_button_position=>'EDIT'
,p_button_condition=>'P1311_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3807160206270545771)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3791214385391846355)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(3682242560338071889)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1311:&SESSION.::&DEBUG.:1311::'
,p_button_condition=>'P1311_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3807160206270545771)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3791213971061846355)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(3682242560338071889)
,p_button_name=>'WORK_LOCATION_SHIFT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Work Location Shift'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:62:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3836549087127975106)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(3682242560338071889)
,p_button_name=>'UPDATE_COMPANY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Update History Records'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3711575444254888763)
,p_branch_name=>'CREATE AGAIN'
,p_branch_action=>'f?p=&APP_ID.:1311:&SESSION.::&DEBUG.:1311::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3791214792333846355)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3711575793575888763)
,p_branch_name=>'delete_Record'
,p_branch_action=>'f?p=&APP_ID.:1310:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3791216713629846356)
,p_branch_sequence=>2
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3711577026287888763)
,p_branch_name=>'Go To Page 1311'
,p_branch_action=>'f?p=&APP_ID.:1311:&SESSION.::&DEBUG.:1311:P1311_ID:&P1311_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>3
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(534291478236572147)
,p_name=>'P1311_BRANCH_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3612784695366166932)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_prompt=>'Branch Code'
,p_source=>'BRANCH_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(534291534843572148)
,p_name=>'P1311_BANKCODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3612784695366166932)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_prompt=>'Bank Code'
,p_source=>'BANK_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(540926690843215496)
,p_name=>'P1311_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(540926739710215497)
,p_name=>'P1311_ORGANISATION_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3612784695366166932)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_prompt=>'Organisation Type'
,p_source=>'ORGANISATION_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ORGANISATION_TYPE'
,p_lov=>'.'||wwv_flow_imp.id(3825751601675630128)||'.'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(540927081457215500)
,p_name=>'P1311_PARENT_ORG_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3612784695366166932)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_prompt=>'Parent Organisation'
,p_source=>'PARENT_ORG_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(organisation_name) organisation_name,id',
'from HR_HCF_ORGANISATION k',
'where verified_by is not null',
'and ORGANISATION_TYPE =:P1311_ORGANISATION_TYPE',
'and k.parent_org_id is null  ',
'and exists (select 1',
'            from vw_useraccess_REF x',
'            where x.org_id= k.user_org_id)  ',
'and user_org_id = :APP_ORG_SHR_DED     ',
'ORDER BY organisation_name',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1311_ORGANISATION_TYPE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(540927114196215501)
,p_name=>'P1311_ORGANISATION_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3612784695366166932)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_prompt=>'Organisation Name'
,p_source=>'ORGANISATION_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>1000
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(540927246178215502)
,p_name=>'P1311_ORGANISATION_TAG'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3612784695366166932)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_prompt=>'Organisation Tag'
,p_source=>'ORGANISATION_TAG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(540927481660215504)
,p_name=>'P1311_SHORT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3612784163721148311)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_prompt=>'Short Name'
,p_source=>'SHORT_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(540927594224215505)
,p_name=>'P1311_ADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3612784695366166932)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_prompt=>'Address'
,p_source=>'ADDRESS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RICH_TEXT_EDITOR'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_custom_html', 'N',
  'format', 'HTML',
  'min_height', '150',
  'toolbar', 'FULL',
  'toolbar_style', 'OVERFLOW')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(540927621597215506)
,p_name=>'P1311_TELNUM'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3612784695366166932)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_prompt=>'Telnum'
,p_source=>'TELNUM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(540927786179215507)
,p_name=>'P1311_FAXNUM'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3612784163721148311)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_prompt=>'Faxnum'
,p_source=>'FAXNUM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(540927825320215508)
,p_name=>'P1311_CATCH_LINE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3612784163721148311)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_prompt=>'Catch Line'
,p_source=>'CATCH_LINE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>400
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(540927986025215509)
,p_name=>'P1311_NIS_REG_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3612784163721148311)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_prompt=>'Nis Reg No'
,p_source=>'NIS_REG_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(540928035946215510)
,p_name=>'P1311_TAX_REG_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3612784163721148311)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_prompt=>'Tax Reg No'
,p_source=>'TAX_REG_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(540928146229215511)
,p_name=>'P1311_LETTER_HEAD_LOGO'
,p_source_data_type=>'BLOB'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(3612784163721148311)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_prompt=>'Letter Head Logo'
,p_source=>'LETTER_HEAD_LOGO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_cMaxlength=>500
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'content_disposition', 'attachment',
  'display_as', 'INLINE',
  'display_download_link', 'Y',
  'storage_type', 'DB_COLUMN')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(540928239141215512)
,p_name=>'P1311_START_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3612784163721148311)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_prompt=>'Start Date'
,p_source=>'START_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(540928387156215513)
,p_name=>'P1311_END_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3612784163721148311)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_prompt=>'End Date'
,p_source=>'END_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(540928443568215514)
,p_name=>'P1311_VERIFIED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_source=>'VERIFIED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(540928508748215515)
,p_name=>'P1311_VERIFIED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_source=>'VERIFIED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(540929209889215522)
,p_name=>'P1311_TRANSACTION_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(3612784163721148311)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_prompt=>'Transaction Type'
,p_source=>'TRANSACTION_TYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
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
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(540929397020215523)
,p_name=>'P1311_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(3612784163721148311)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Wfl_Status_Description,Wfl_Status_Id',
'from TBLWORKFLOWSTATUS a Join Tblworkflowdtl D On D.Id=A.Workflow_Dtl_Id',
'where exists (select 1',
'              from TBLWORKFLOWSTAGELIST B join TBLWORKFLOWDTL C on B.STAGE_ID=C.STAGE_ID',
'              Where A.Workflow_Dtl_Id=C.Id)  ',
'and upper(Wfl_Status_Description) not like DECODE(:P1311_ID, NULL,''%VERI%'',''%test%'') ',
'And Webpage_Id=:App_Page_Id      ',
'and TRANSACTION_TYPE_ID=:P1311_TRANSACTION_TYPE_ID',
'order by sequence'))
,p_lov_cascade_parent_items=>'P1311_TRANSACTION_TYPE_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(540929485041215524)
,p_name=>'P1311_TRANSITS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_source=>'TRANSITS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(540929597359215525)
,p_name=>'P1311_COUNTRY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3612784695366166932)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_prompt=>'Country'
,p_source=>'COUNTRY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_named_lov=>'COUNTRY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description a,UPPER(value_description) b',
'from hr_hcf_lookup A',
'where TABLE_NAME= ''TBLCOUNTRY''',
'and exists(select 1',
'           from hr_hcf_organisation b',
'           where b.id = a.org_id',
'           and use_for_seeded_data = 1',
'           and organisation_type=''SOFTWARE USER'')',
'order by 1'))
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(540929657524215526)
,p_name=>'P1311_PHOTO'
,p_source_data_type=>'BLOB'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(3612784163721148311)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_prompt=>'Add Logo'
,p_source=>'PHOTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'blob_last_updated_column', 'LAST_UPDATE_PHOTO',
  'content_disposition', 'attachment',
  'display_as', 'INLINE',
  'display_download_link', 'Y',
  'filename_column', 'FILENAME',
  'mime_type_column', 'MIMETYPE',
  'storage_type', 'DB_COLUMN')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(540929793011215527)
,p_name=>'P1311_FILENAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_source=>'FILENAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(540929829003215528)
,p_name=>'P1311_MIMETYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_source=>'MIMETYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(540929950429215529)
,p_name=>'P1311_LAST_UPDATE_PHOTO'
,p_source_data_type=>'DATE'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_source=>'LAST_UPDATE_PHOTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(550545377976427780)
,p_name=>'P1311_BASE_CURRENCY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3612784695366166932)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_prompt=>'Base Currency'
,p_source=>'BASE_CURRENCY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_named_lov=>'CURRENCY'
,p_lov=>'.'||wwv_flow_imp.id(3854466293571782257)||'.'
,p_cSize=>30
,p_cMaxlength=>50
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(550545487043427781)
,p_name=>'P1311_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3612784163721148311)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(550545560144427782)
,p_name=>'P1311_WEBSITE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3612784163721148311)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_prompt=>'Website'
,p_source=>'WEBSITE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(550545705702427783)
,p_name=>'P1311_USER_ORG_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_source=>'USER_ORG_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(550545799846427784)
,p_name=>'P1311_MIGRATE_PK'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_source=>'MIGRATE_PK'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(550545808450427785)
,p_name=>'P1311_MMG_AGENT_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(3612784163721148311)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_prompt=>'MMG Agent No'
,p_source=>'MMG_AGENT_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(550545952291427786)
,p_name=>'P1311_USE_FOR_SEEDED_DATA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(3612784163721148311)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_prompt=>'Source For Seeded Data'
,p_source=>'USE_FOR_SEEDED_DATA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(550546058212427787)
,p_name=>'P1311_VENDOR_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_source=>'VENDOR_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(550546128126427788)
,p_name=>'P1311_PAYSITE_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_source=>'PAYSITE_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(550546256893427789)
,p_name=>'P1311_BANK_INITIALS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_source=>'BANK_INITIALS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(550546398972427790)
,p_name=>'P1311_BANK_ROUTING_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_source=>'BANK_ROUTING_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(550546452764427791)
,p_name=>'P1311_BIN_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_source=>'BIN_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(550546514245427792)
,p_name=>'P1311_GROUP_COMPANY_MODE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(3612784163721148311)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_prompt=>'Reference Type'
,p_source=>'GROUP_COMPANY_MODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'Shared',
  'off_value', '2',
  'on_label', 'Dedicated',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(550546643194427793)
,p_name=>'P1311_LEAVE_ANNIVERSARY_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_source=>'LEAVE_ANNIVERSARY_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(550546777216427794)
,p_name=>'P1311_LHD_FILENAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_source=>'LHD_FILENAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(550546827455427795)
,p_name=>'P1311_LHD_LAST_UPDATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_source=>'LHD_LAST_UPDATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(550547007703427796)
,p_name=>'P1311_LHD_MIMETYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_source=>'LHD_MIMETYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(550547084724427797)
,p_name=>'P1311_MERGE_REPORT_OPTION'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3612784695366166932)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_prompt=>'Merge Report Option'
,p_source=>'MERGE_REPORT_OPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:None;NONE,With Other Children;WITH_OTHER_CHILDREN,With Parent;WITH_PARENT'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(550547183640427798)
,p_name=>'P1311_LFT_FILENAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_source=>'LFT_FILENAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(550547249524427799)
,p_name=>'P1311_LFT_MIMETYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_source=>'LFT_MIMETYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(550547398346427800)
,p_name=>'P1311_LFT_LAST_UPDATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_source=>'LFT_LAST_UPDATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(550547432980427801)
,p_name=>'P1311_LETTER_FOOTER_LOGO'
,p_source_data_type=>'BLOB'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(3612784163721148311)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_prompt=>'Letter Footer'
,p_source=>'LETTER_FOOTER_LOGO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'content_disposition', 'attachment',
  'display_as', 'INLINE',
  'display_download_link', 'Y',
  'storage_type', 'DB_COLUMN')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(550547593987427802)
,p_name=>'P1311_EXT_LETTER_HEAD_LOGO'
,p_source_data_type=>'BLOB'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(3612784163721148311)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_prompt=>'Ext Letter Head'
,p_source=>'EXT_LETTER_HEAD_LOGO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'content_disposition', 'attachment',
  'display_as', 'INLINE',
  'display_download_link', 'Y',
  'storage_type', 'DB_COLUMN')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(550547651544427803)
,p_name=>'P1311_EXT_LHD_FILENAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_source=>'EXT_LHD_FILENAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(550547739102427804)
,p_name=>'P1311_EXT_LHD_LAST_UPDATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_source=>'EXT_LHD_LAST_UPDATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(550547886645427805)
,p_name=>'P1311_EXT_LHD_MIMETYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_source=>'EXT_LHD_MIMETYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(550547933255427806)
,p_name=>'P1311_MIGRATE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_source=>'MIGRATE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(550548011080427807)
,p_name=>'P1311_REPORT_SIGNATURE'
,p_source_data_type=>'BLOB'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(3612784163721148311)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_prompt=>'Reports Signature'
,p_source=>'REPORT_SIGNATURE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'content_disposition', 'attachment',
  'display_as', 'INLINE',
  'display_download_link', 'Y',
  'storage_type', 'DB_COLUMN')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(550548197795427808)
,p_name=>'P1311_STAMP'
,p_source_data_type=>'BLOB'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(3612784163721148311)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_prompt=>'Company Stamp'
,p_source=>'STAMP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'content_disposition', 'attachment',
  'display_as', 'INLINE',
  'display_download_link', 'Y',
  'storage_type', 'DB_COLUMN')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(550548296504427809)
,p_name=>'P1311_APP_CORRESPENDENCE_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3612784695366166932)
,p_item_source_plug_id=>wwv_flow_imp.id(3659817641107061613)
,p_prompt=>'App Correspendence Email'
,p_source=>'APP_CORRESPENDENCE_EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3711674365881888813)
,p_name=>'P1311_ADD_CHILD_RECORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3612784163721148311)
,p_prompt=>'<font color="green" size="2"><b> Browse Related Records </b></font>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT B.PAGE_TITLE',
',APEX_UTIL.PREPARE_URL(p_url =>''f?p=''||:APP_ID||'':''||WEBPAGE_ID||'':''||:APP_SESSION||''::NO::P''||WEBPAGE_ID||''_ID:''',
'||fn_getprimarykey(:P1311_ID, WEBPAGE_ID), p_checksum_type => ''SESSION'') WEBPAGE_ID',
'FROM TBLPAGELIST a JOIN APEX_APPLICATION_PAGES B ON A.WEBPAGE_ID=B.PAGE_ID',
'WHERE PARENT_PAGE= :APP_PAGE_ID',
'and add_child_only=1',
'AND WORKSPACE=APEX_UTIL.FIND_WORKSPACE((SELECT APEX_APPLICATION.GET_SECURITY_GROUP_ID FROM DUAL))',
'and upper(PAGE_TITLE) NOT LIKE ''%NIS RATES''',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_display_when=>'P1311_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'REDIRECT_URL')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3711684254269888817)
,p_name=>'P1311_ORGANISATION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3612649345503025140)
,p_prompt=>'Migrate Reference'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  DISTINCT INITCAP(ORGANISATION_NAME) A, ID',
'FROM HR_HCF_ORGANISATION A',
'where not EXISTS (SELECT 1 ',
'                FROM HR_HCF_ORGANISATION b',
'                WHERE A.ORGANISATION_TYPE = b.ORGANISATION_TYPE',
'                AND A.ORGANISATION_NAME  = b.ORGANISATION_NAME',
'                and USER_ORG_ID= :P1311_ID',
'                )',
'AND ORGANISATION_TYPE=:P1311_ORGANISATION_TYPE_G',
'and exists(select 1',
'           from hr_hcf_organisation b',
'           where A.USER_ORG_ID=b.id',
'           AND USE_FOR_SEEDED_DATA=1',
'           and organisation_type=''SOFTWARE USER''',
'           )',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All--'
,p_lov_cascade_parent_items=>'P1311_ORGANISATION_TYPE_G'
,p_ajax_optimize_refresh=>'Y'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_06', 'Y',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3711684671313888817)
,p_name=>'P1311_ORGANISATION_TYPE_G'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3612649345503025140)
,p_prompt=>'Search by Organisation Type'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct ORGANISATION_TYPE a, oRGANISATION_TYPE b',
'from HR_HCF_ORGANISATION a',
'where oRGANISATION_TYPE!=''SOFTWARE USER''',
'and exists(select 1',
'           from hr_hcf_organisation b',
'           where A.user_org_id=b.id',
'           AND USE_FOR_SEEDED_DATA=1',
'           and organisation_type=''SOFTWARE USER''',
'           )',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'---ALL--'
,p_lov_null_value=>'1'
,p_cSize=>30
,p_grid_label_column_span=>1
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3711685063004888817)
,p_name=>'P1311_MIGRATE_REFERENCE'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_imp.id(3622463480676615993)
,p_prompt=>'Migrate Reference'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  DISTINCT initcap(Table_Description) A,Table_Name ',
'from hr_hcf_lookup a',
'where exists(select 1',
'           from hr_hcf_organisation b',
'           where A.org_id=b.id',
'           AND USE_FOR_SEEDED_DATA=1',
'           and organisation_type=''SOFTWARE USER''',
'           )',
'AND table_name NOT IN (''TBLPAYMENTTYPE'',''TBLPAYMENTMODE'',''REF_TYPE'')',
'AND not EXISTS (SELECT 1 ',
'                FROM hr_hcf_lookup b',
'                WHERE A.TABLE_NAME = b.TABLE_NAME',
'                AND A.TABLE_DESCRIPTION  = b.TABLE_DESCRIPTION',
'                AND A.TABLE_VALUE = b.TABLE_VALUE',
'                and org_id = :P1311_ID',
'                )',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--ALL--'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3711697784801888828)
,p_name=>'P1311_ORGANISATION_TYPE_CL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3772643169384002375)
,p_prompt=>'Organisation Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct ORGANISATION_TYPE A, ORGANISATION_TYPE b',
'from hr_hcf_organisation',
'where user_org_id = :APP_ORG_ID',
'and id != :P1311_ID'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3711599058782888783)
,p_validation_name=>'chk_workflow_mode'
,p_validation_sequence=>1
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  V_COUNT PLS_INTEGER:=0;',
'',
'begin',
'',
'select COUNT(1) INTO V_COUNT',
'from  hr_hcf_org_rule a',
'where ORG_id=:P1311_ID',
'AND workflow_required =1',
'and ((to_date(:P1311_START_DATE) between trunc(start_date) and trunc(end_date) and end_date is not null)',
'OR  (trunc(start_date) <= to_date(:P1311_START_DATE) AND trunc(end_date) IS NULL ));',
'',
' IF V_COUNT>=1 and :P1311_TRANSACTION_TYPE_ID is null then',
'  return false;',
' else',
'  return true;',
' end if;',
'',
'exception',
' when others then',
'   return true;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Workflow mode is enabled, please select a transaction and subsequent status.'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3711598592776888783)
,p_validation_name=>'enf_workflow_seq'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF pkg_global_fnts.fn_enforce_wfl_seq(:P1311_TRANSACTION_TYPE_ID, :APP_PAGE_ID, :P1311_ID, :P1311_STATUS) =FALSE THEN',
'  RETURN FALSE;',
'ELSE',
'  RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The work flow sequence is set to enforce mode, select the next status value in sequence as it appear in the LOV.'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3711599807154888783)
,p_validation_name=>'reject_verification_unverification'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if pkg_global_fnts.chk_verifier(:APP_USER ,:APP_PAGE_ID )=0 and pkg_global_fnts.status_descript(:P1311_STATUS) like ''%VER%'' then',
'return FALSE;',
'ELSE',
' RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You are not a verifier, actual disallowed.'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3711599401933888783)
,p_validation_name=>'chk_dates'
,p_validation_sequence=>31
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'IF TO_DATE(:P1311_END_DATE) < TO_DATE(:P1311_START_DATE) THEN',
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
 p_id=>wwv_flow_imp.id(3711600214708888783)
,p_validation_name=>'reject_unverification'
,p_validation_sequence=>41
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_old_status number;',
'',
'begin',
'    ',
'    select count(1) into v_old_status',
'    from hr_hcf_lookup',
'    where id = :P1311_ID',
'    and verified_by is not null;',
'',
'    if pkg_global_fnts.chk_verifier(:APP_USER, :APP_PAGE_ID) =0 and v_old_status > 0 and  pkg_global_fnts.status_descript(:P1311_STATUS) not like ''VER%'' then',
'        return FALSE;',
'    else',
'         return TRUE;',
'    end if;',
'exception',
'    when others then null;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You are not a verifier, action disallowed since the record is verified.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3535637245524209537)
,p_validation_name=>'enf_dedicated_parent'
,p_validation_sequence=>51
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P1311_GROUP_COMPANY_MODE=2 and :P1311_PARENT_ORG_ID IS NULL and :P1311_ORGANISATION_TYPE =''SOFTWARE USER'' then',
'        return ''A Parent company must have dedicated reference data. Alternatively you cannot remove the parent company from a company set to Shared References. '';',
' else ',
'        return '''';',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'CREATE, SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3535637314391209538)
,p_validation_name=>'enf_one_seeded_company'
,p_validation_sequence=>61
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'        v_test_multi_seeded number(10);',
'begin',
' if :P1311_USE_FOR_SEEDED_DATA = 1 AND :P1311_ORGANISATION_TYPE= ''SOFTWARE USER''  THEN',
'',
'        select count(1) into v_test_multi_seeded',
'        from hr_hcf_organisation',
'        where organisation_type =''SOFTWARE USER''',
'        AND use_for_seeded_data=1',
'        AND ID !=:P1311_ID;',
'',
'        IF v_test_multi_seeded > 0 then',
'          return ''Another seeded company exists, only one is allowed per environment.'';',
'        else ',
'            return '''';',
'        end if;',
'end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_imp.id(3791216351759846356)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3535637885079209543)
,p_validation_name=>'chk_sw_share_to_dedicate_vice_versa'
,p_validation_sequence=>71
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_count_ref number(10):=0; chk_license number(10):=0;',
'',
'begin',
'    select count(1) into v_count_ref',
'    from hr_hcf_lookup',
'    where org_id= :P1311_ID;',
'',
'    select count(1) into chk_license',
'    from app_module_licence',
'    where org_id = :P1311_ID;',
'',
'if :P1311_GROUP_COMPANY_MODE=2 and v_count_ref > 0 and chk_license > 0 then',
'    return ''You cannot switch a company that has references to one that will share.'';',
'elsif :P1311_GROUP_COMPANY_MODE=1 and v_count_ref =0 and chk_license > 0 then',
'    return ''You cannot switch a company that has no references to one that will be dedicated.'';',
'else    ',
'    return '''';',
'end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'CREATE, CREATE_AGAIN, SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(428036397654957593)
,p_validation_name=>'chk_NIS_RegNo'
,p_validation_sequence=>81
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF LENGTH(TRIM(:P1311_NIS_REG_NO)) > 6 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Your NIS Reg No. is more than 6 characters. Please fix/update.'
,p_validation_condition=>'CREATE,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3711593914263888770)
,p_name=>'Refresh OrgReq - Create'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3657802265840248922)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3711593411206888770)
,p_event_id=>wwv_flow_imp.id(3711593914263888770)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3659883751425320434)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3711593010728888769)
,p_name=>'Refresh OrgReq - Edit'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3659883751425320434)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3711592574163888769)
,p_event_id=>wwv_flow_imp.id(3711593010728888769)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3659883751425320434)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3711592131129888769)
,p_name=>'Refresh EduLevy - Create'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3671317772236658332)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3711591623007888768)
,p_event_id=>wwv_flow_imp.id(3711592131129888769)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3646439652375543682)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3711591241333888768)
,p_name=>'Refresh EduLevy - Edit'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3646439652375543682)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3711590745887888768)
,p_event_id=>wwv_flow_imp.id(3711591241333888768)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3646439652375543682)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3711590296076888768)
,p_name=>'Refresh NIB/SS - Create'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3657801941945241981)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3711589789950888768)
,p_event_id=>wwv_flow_imp.id(3711590296076888768)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3659907053158917748)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3711589455830888767)
,p_name=>'Refresh NIB/SS - Edit'
,p_event_sequence=>60
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3659907053158917748)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3711588980122888767)
,p_event_id=>wwv_flow_imp.id(3711589455830888767)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3659907053158917748)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3711588498932888767)
,p_name=>'Refresh Tax - Create'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3657801758090237191)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3711588024271888767)
,p_event_id=>wwv_flow_imp.id(3711588498932888767)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3659917549808124881)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3711587597987888767)
,p_name=>'Refresh Tax - Edit'
,p_event_sequence=>80
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3659917549808124881)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3711587154745888767)
,p_event_id=>wwv_flow_imp.id(3711587597987888767)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3659917549808124881)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3711586707273888767)
,p_name=>'Refresh Year - Create'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3657801543199232928)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3711586279461888766)
,p_event_id=>wwv_flow_imp.id(3711586707273888767)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3659935266944792175)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3711585851991888766)
,p_name=>'Refresh Year - Edit'
,p_event_sequence=>100
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3659935266944792175)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3711585290995888766)
,p_event_id=>wwv_flow_imp.id(3711585851991888766)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3659935266944792175)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3711584974659888766)
,p_name=>'Refresh WorkLoc - Create'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3711603759502888784)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3711584447650888766)
,p_event_id=>wwv_flow_imp.id(3711584974659888766)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3659943544919598973)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3711583992012888766)
,p_name=>'Refresh WorkLoc - Edit'
,p_event_sequence=>120
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3659943544919598973)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3711583521332888766)
,p_event_id=>wwv_flow_imp.id(3711583992012888766)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3659943544919598973)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3711583121033888766)
,p_name=>'Refresh BankTrans - Create'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3657442749694784747)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3711582632172888765)
,p_event_id=>wwv_flow_imp.id(3711583121033888766)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3660297854421231537)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3711582228463888765)
,p_name=>'Refresh BankTrans - Edit'
,p_event_sequence=>140
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3660297854421231537)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3711581778610888765)
,p_event_id=>wwv_flow_imp.id(3711582228463888765)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3660297854421231537)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3711581303584888765)
,p_name=>'SHOW_REF_GEN'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1311_MIGRATE_REFERENCE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3711580863989888765)
,p_event_id=>wwv_flow_imp.id(3711581303584888765)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3711685798084888817)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3711579906667888764)
,p_name=>'SHOW_ORG_GEN'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1311_ORGANISATION_TYPE_G'
,p_condition_element=>'P1311_ORGANISATION_TYPE_G'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3711578981032888764)
,p_event_id=>wwv_flow_imp.id(3711579906667888764)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3711685404939888817)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3711579448568888764)
,p_event_id=>wwv_flow_imp.id(3711579906667888764)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3711685404939888817)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3711578534148888764)
,p_name=>'show_hide_account_codes'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1311_ORGANISATION_TYPE'
,p_condition_element=>'P1311_ORGANISATION_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'BANK'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3711577579747888763)
,p_event_id=>wwv_flow_imp.id(3711578534148888764)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1311_BIN_NO,P1311_BANK_INITIALS,P1311_VENDOR_ID,P1311_PAYSITE_CODE,P1311_TRANSITS,P1311_BANK_ROUTING_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3711578059728888763)
,p_event_id=>wwv_flow_imp.id(3711578534148888764)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1311_BIN_NO,P1311_BANK_INITIALS,P1311_VENDOR_ID,P1311_PAYSITE_CODE,P1311_TRANSITS,P1311_BANK_ROUTING_NO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3262761003350439646)
,p_name=>'show_hide_shared_ref'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1311_ORGANISATION_TYPE'
,p_condition_element=>'P1311_ORGANISATION_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'SOFTWARE USER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3262761157519439647)
,p_event_id=>wwv_flow_imp.id(3262761003350439646)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1311_USE_FOR_SEEDED_DATA,P1311_GROUP_COMPANY_MODE,P1311_ADD_PHOTO,P1311_LETTER_HEAD_LOGO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3262761228547439648)
,p_event_id=>wwv_flow_imp.id(3262761003350439646)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1311_USE_FOR_SEEDED_DATA,P1311_GROUP_COMPANY_MODE,P1311_ADD_PHOTO,P1311_LETTER_HEAD_LOGO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3612649370414025141)
,p_name=>'show_org_gen'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1311_MIGRATE_REFERENCE'
,p_condition_element=>'P1311_MIGRATE_REFERENCE'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3612649467625025142)
,p_event_id=>wwv_flow_imp.id(3612649370414025141)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3612649345503025140)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3612649575535025143)
,p_event_id=>wwv_flow_imp.id(3612649370414025141)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3612649345503025140)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3535637405463209539)
,p_name=>'show_hide_ref_seed_data'
,p_event_sequence=>200
,p_condition_element=>'P1311_ORGANISATION_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'SOFTWARE USER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3535637511644209540)
,p_event_id=>wwv_flow_imp.id(3535637405463209539)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1311_USE_FOR_SEEDED_DATA,P1311_GROUP_COMPANY_MODE,P1311_ADD_PHOTO,P1311_LETTER_HEAD_LOGO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3535637722455209542)
,p_event_id=>wwv_flow_imp.id(3535637405463209539)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1311_USE_FOR_SEEDED_DATA,P1311_GROUP_COMPANY_MODE,P1311_ADD_PHOTO,P1311_LETTER_HEAD_LOGO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(570827030955163590)
,p_name=>'cal_annual'
,p_event_sequence=>210
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(565109814151266624)
,p_triggering_element=>'FREEPAY_CEILING'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(570827128143163591)
,p_event_id=>wwv_flow_imp.id(570827030955163590)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'compute_annual'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'FREEPAY_CEILING_ANNUAL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_payment_type varchar2(50);',
'',
'begin',
'',
'    if :RULE_TABLE=''NIS'' then',
'        select payment_type into v_payment_type',
'        from hr_hcf_nisrate',
'        where id = :RULESOURCE_ID;',
'    else',
'        select payment_type into v_payment_type',
'        from hr_hcf_taxrate',
'        where id = :RULESOURCE_ID;',
'',
'    end if;',
'',
'        :FREEPAY_CEILING_ANNUAL := CASE when v_payment_type =''MONTHLY'' THEN :FREEPAY_CEILING * 12',
'                                        when v_payment_type =''WEEKLY'' THEN :FREEPAY_CEILING * 52',
'                                        when v_payment_type =''BI-MONTHLY'' THEN :FREEPAY_CEILING * 24',
'                                        else :FREEPAY_CEILING * 26 end;',
'',
'        return :FREEPAY_CEILING_ANNUAL;',
'  ',
'end;'))
,p_attribute_07=>'RULE_TABLE,RULESOURCE_ID,FREEPAY_CEILING,FREEPAY_CEILING_ANNUAL'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(556684174906795984)
,p_name=>'DY_SET_ATT_OPTION_DESCRIPTION'
,p_event_sequence=>220
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(590927692641464719)
,p_triggering_element=>'ATTRIBUTE_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(556684067430795983)
,p_event_id=>wwv_flow_imp.id(556684174906795984)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'ATTRIBUTE_DESCRIPTION,ATTRIBUTE_NAME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ATT_DESCRIPTION,ATT_OPTION_NAME ',
'from app_glo_attribute ',
'where id = :ATTRIBUTE_ID;'))
,p_attribute_07=>'ATTRIBUTE_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(552688332612681583)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3659817641107061613)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Create/Edit Organisation'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>69780224232793104
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3711686533860888818)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3651561382484046771)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'DML_PROCESS_CURCONVERTOR'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3068069850473706678
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(546994585300485951)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Generate Retro'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    p_out_return varchar2(50);',
'begin',
'    PKG_PAYROLL_FREEPAY.retro_freepay(:APP_ORG_ID, 1,  1, p_out_return);                     ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Retro FreePay has not been generated successfully'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(546994758763485953)
,p_process_success_message=>'Retro FreePay has been generated successfully'
,p_internal_uid=>25762405381362440
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3711595103771888770)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'auto_notify'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'      get_transaction TBLTRANSACTIONTYPE.TRANSACTION_DESCRIPTION%TYPE; ',
'   v_description tblworkflowstatus.WFL_STATUS_DESCRIPTION%TYPE;',
'begin',
'',
'select initcap(TRANSACTION_DESCRIPTION)  into get_transaction ',
'from TBLTRANSACTIONTYPE ',
'where TRANSACTION_TYPE_ID=:P1311_TRANSACTION_TYPE_ID;',
'',
'select WFL_STATUS_DESCRIPTION into v_description',
'from tblworkflowstatus',
'where WFL_STATUS_ID=:P1311_STATUS;',
'',
'  pkg_biz_rules.pop_notification',
'(',
'	get_transaction||'' for: ''||:P1311_ORGANISATION_NAME,',
'	nvl(V(''APP_USER''),user),',
'	''ACTIVE'',',
'	current_date,	''f?p=''||:APP_ID||'':''||:APP_PAGE_ID||'':''||:APP_SESSION||''::NO::P''||:APP_PAGE_ID||''_ID:''||:P1311_ID,',
'	v_description||'' ''||get_transaction||'' for: ''||''Organisations'',',
'	:P1311_STATUS,:APP_PAGE_ID,:P1311_TRANSACTION_TYPE_ID,',
'        ''HR_HCF_ORGANISATION'');',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P1311_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>3067978420384706630
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3711597166107888777)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'migrate_data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
' ',
'BEGIN',
'',
'',
'  ',
'if :P1311_MIGRATE_REFERENCE is  null then',
'',
'        for I in (',
'            select lookup_id, table_name,table_description, table_value, value_description, classification, custom_field,lookup_table,',
'                custom_field1, start_period, end_period, transaction_type_id, status, :P1311_ID ORG_ID, verified_by, verified_date,module_main, module_main_id',
'            from hr_hcf_lookup a',
'            where exists(select 1',
'                        from hr_hcf_organisation b',
'                        where A.org_id=b.id',
'                        AND USE_FOR_SEEDED_DATA=1',
'                        and organisation_type=''SOFTWARE USER''',
'                        )             ',
'              and TABLE_NAME != ''REF_TYPE'' ',
'              and COUNTRY !=''ALL_COUNTRIES''',
'            ) loop',
'            ',
'        begin     ',
'            insert into hr_hcf_lookup (COUNTRY, lookup_id, table_name,table_description, table_value, value_description, classification, custom_field, ',
'                        custom_field1, start_period, end_period, transaction_type_id, status, org_id,verified_by, verified_date, module_main, module_main_id, lookup_table)	',
'                        	           		',
'            values( :P1311_COUNTRY,  i.lookup_id,   i.table_name,   i.table_description,   i.table_value,   i.value_description,   i.classification,   i.custom_field,',
'                            i.custom_field1,   i.start_period,   i.end_period,   i.transaction_type_id,   i.status,   i.ORG_ID,  i.verified_by,   i.verified_date, i.module_main, i.module_main_id, i.lookup_table);',
'            ',
'        exception ',
'          when others then null;',
'        end;',
'',
'        end loop;',
'',
' else',
'',
'        l_selected := APEX_UTIL.STRING_TO_TABLE(:P1311_MIGRATE_REFERENCE);',
'',
'        if :P1311_ORGANISATION_TYPE =''SOFTWARE USER'' then',
'        ',
'        FOR j IN 1..l_selected.COUNT',
'        LOOP',
'',
'        ',
'        for I in (',
'            select lookup_id, table_name,table_description, table_value, value_description, classification, custom_field,lookup_table,',
'                custom_field1, start_period, end_period, transaction_type_id, status, :P1311_ID ORG_ID, verified_by, verified_date,module_main, module_main_id',
'            from hr_hcf_lookup a',
'            where exists(select 1',
'                        from hr_hcf_organisation b',
'                        where A.org_id=b.id',
'                        AND USE_FOR_SEEDED_DATA=1',
'                        and organisation_type=''SOFTWARE USER''',
'                        )',
'            and upper(country) = upper(:P1311_COUNTRY)',
'            AND upper(TABLE_NAME) = nvl(upper(l_selected(j)) , upper(TABLE_NAME))',
'            ) loop',
'            ',
'        begin     ',
'            insert into hr_hcf_lookup (COUNTRY, lookup_id, table_name,table_description, table_value, value_description, classification, custom_field, ',
'                        custom_field1, start_period, end_period, transaction_type_id, status, org_id,verified_by, verified_date, module_main, module_main_id, lookup_table)		           		',
'            values( :P1311_COUNTRY, i.lookup_id,   i.table_name,   i.table_description,   i.table_value,   i.value_description,   i.classification,   i.custom_field,',
'                            i.custom_field1,   i.start_period,   i.end_period,   i.transaction_type_id,   i.status,   i.ORG_ID,  i.verified_by,   i.verified_date, i.module_main, i.module_main_id, i.lookup_table);',
'            ',
'        exception ',
'          when others then null;',
'        end;',
'',
'        end loop;',
'        END LOOP;',
'',
'       ',
'end if;',
' COMMIT;',
' ',
' --load competencies',
' INSERT INTO hr_hcf_competency ( org_id, short_name,  competency_type,  description, competency_def,',
'    why_important, positive_indicators, warning_signs, factor_weight, start_date, remarks, sequence) ',
'select :P1311_ID, short_name,  competency_type,  description, competency_def,',
'    why_important, positive_indicators, warning_signs, factor_weight, start_date, remarks, sequence',
'from hr_hcf_competency a',
'where  exists(select 1',
'                        from hr_hcf_organisation b',
'                        where A.org_id=b.id',
'                        AND USE_FOR_SEEDED_DATA=1',
'                        and organisation_type=''SOFTWARE USER''',
'                        );  ',
'',
'begin',
'--migrate notification scheduler',
'INSERT INTO hr_apu_notify_scheduler (org_id,  notification_name, days_notify,  start_date,  days_keep_active)',
'select :P1311_ID,  notification_name, days_notify,  start_date,  days_keep_active',
'from hr_apu_notify_scheduler a',
'where exists(select 1',
'                   from hr_hcf_organisation b',
'                   where A.org_id=b.id',
'                   AND USE_FOR_SEEDED_DATA=1',
'                   and organisation_type=''SOFTWARE USER''',
'                   );',
'                    COMMIT;',
'exception',
'    when others then null;',
'end;',
'--hoildays',
'',
'begin',
'INSERT INTO HR_HCF_HOLIDAY(COUNTRY, HOLIDAY_CODE, HOLIDAY_DATE, HOLIDAY_DESCRIP,  RATE_OF_PAY,  TENTATIVE_STATUS,  STATUS_CODE, ADHOC_HOLIDAY,',
'                           FOR_CALCULATION, TRANSACTION_TYPE_ID, STATUS, ORG_ID )',
'                           ',
'select  :P1311_COUNTRY, HOLIDAY_CODE, HOLIDAY_DATE, HOLIDAY_DESCRIP,  RATE_OF_PAY,  TENTATIVE_STATUS,  STATUS_CODE, ADHOC_HOLIDAY,',
'    FOR_CALCULATION, TRANSACTION_TYPE_ID, STATUS, :P1311_ID',
'from HR_HCF_HOLIDAY',
'where extract(year from HOLIDAY_DATE) = (select max( extract(year from HOLIDAY_DATE))',
'                                      from HR_HCF_HOLIDAY a',
'                                       where exists(select 1',
'                                                   from hr_hcf_organisation b',
'                                                   where A.org_id=b.id',
'                                                   AND USE_FOR_SEEDED_DATA=1',
'                                                   and organisation_type=''SOFTWARE USER''',
'                                                   )',
'                                       )',
' and upper(country) = upper(:P1311_COUNTRY);',
' COMMIT;',
'exception',
'    when others then null;',
'end;',
'',
'--income codes',
'begin',
'',
'INSERT INTO PA_PCF_INCOMECODE(INCOME_CODE, DESCRIPTION, ACCOUNT_CODE,USE_STANDARD_HOURS,SORT_ORDER,START_DATE,',
'      VERIFIED_BY,VERIFIED_DATE,TRANSACTION_TYPE_ID,STATUS,BULK_PAYMENT,INCOME_TYPE,TAXABLE,NIS_DEDUCTION,ADMIN_STATUS,org_id,',
'      apply_freepay, include_retro_compute, add_to_basic_inc, remarks, pensionable, hourly_rate_multiplier,',
'      percent_of_basic, dept_to_manage, allow_entitle_overlap,prorate,proration_days,SHORT_PAY, RETRO_PAY, earning_rate, inc_percent_option, rate_amount )',
'      ',
'select INCOME_CODE, DESCRIPTION, ACCOUNT_CODE,USE_STANDARD_HOURS,SORT_ORDER,START_DATE,',
'      VERIFIED_BY,VERIFIED_DATE,TRANSACTION_TYPE_ID,STATUS,BULK_PAYMENT,INCOME_TYPE,TAXABLE,NIS_DEDUCTION,ADMIN_STATUS,:P1311_ID,',
'      apply_freepay, include_retro_compute, add_to_basic_inc, remarks, pensionable, hourly_rate_multiplier,',
'        percent_of_basic, dept_to_manage, allow_entitle_overlap,prorate,proration_days, SHORT_PAY, RETRO_PAY, earning_rate, inc_percent_option, rate_amount',
'from PA_PCF_INCOMECODE a    ',
'where exists(select 1',
'                   from hr_hcf_organisation b',
'                   where A.org_id=b.id',
'                   AND USE_FOR_SEEDED_DATA=1',
'                   and organisation_type=''SOFTWARE USER''',
'                   );',
' COMMIT;',
'exception',
'    when others then null;',
'end;',
'',
'---clean out none Guyana references',
'IF :P1311_COUNTRY != ''GUYANA'' then',
'',
'    DELETE',
'    FROM HR_HCF_LOOKUP',
'    WHERE TABLE_NAME  IN (''TBLDOCTOR'',''TBLHOSPITAL'',''TBLSCHOOL'',''TBLTOWN'',''TBLVILLAGE'',''TBLPARISH'',',
'                         ''TBLDISTRICT'',''TBLREGION'')',
'    AND ORG_ID = :P1311_ID',
'    and upper(country) = :P1311_COUNTRY;',
'',
'END IF;',
'',
'    begin',
'            --SCMS Configuration',
'            INSERT INTO tblsystemconfiguration (',
'                days_due_notification,',
'                item_hierarchy,',
'                auto_forward,',
'                use_sourcing_rules,',
'                no_of_quotes_for_evaluation,',
'                no_of_quotes_saved,',
'                audit_pr,',
'                audit_rfq,',
'                audit_quotes,',
'                audit_po,',
'                audit_item_master,',
'                audit_move_order,',
'                multi_org_item_population,',
'                company_name,',
'                software_registration_date,',
'                address,',
'                telephone_nos,',
'                fax_nos,',
'                email,',
'                created_by,',
'                creation_date,',
'                last_updated_by,',
'                last_update_date,',
'                master_org_code,',
'                generate_item_no,',
'                item_number_separator,',
'                item_no_merge,',
'                item_no_prefix,',
'                version_id,',
'                source_gen,',
'                last_gen_number,',
'                asset_no_prefix,',
'                asset_number_separator,',
'                filename,',
'                generate_asset_no,',
'                grn_counter,',
'                last_gen_asset_number,',
'                last_update_photo,',
'                mimetype,',
'                photo,',
'                receipt_issuance,',
'                org_id',
'            ) ',
'            select ',
'                days_due_notification,',
'                item_hierarchy,',
'                auto_forward,',
'                use_sourcing_rules,',
'                no_of_quotes_for_evaluation,',
'                no_of_quotes_saved,',
'                audit_pr,',
'                audit_rfq,',
'                audit_quotes,',
'                audit_po,',
'                audit_item_master,',
'                audit_move_order,',
'                multi_org_item_population,',
'                company_name,',
'                software_registration_date,',
'                address,',
'                telephone_nos,',
'                fax_nos,',
'                email,',
'                created_by,',
'                creation_date,',
'                last_updated_by,',
'                last_update_date,',
'                master_org_code,',
'                generate_item_no,',
'                item_number_separator,',
'                item_no_merge,',
'                item_no_prefix,',
'                version_id,',
'                source_gen,',
'                last_gen_number,',
'                asset_no_prefix,',
'                asset_number_separator,',
'                filename,',
'                generate_asset_no,',
'                grn_counter,',
'                last_gen_asset_number,',
'                last_update_photo,',
'                mimetype,',
'                photo,',
'                receipt_issuance,',
'                :P1311_ID',
'            from tblsystemconfiguration a',
'            where exists(select 1',
'                            from hr_hcf_organisation b',
'                            where A.org_id=b.id',
'                            AND USE_FOR_SEEDED_DATA=1',
'                            and organisation_type=''SOFTWARE USER''',
'                            );',
'    exception ',
'        when others then null;',
'    end;',
'    ',
'end if;',
'',
'    :P1311_MIGRATE_REFERENCE :=null;',
' COMMIT;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3711685798084888817)
,p_process_success_message=>'System references successfully migrated to system references.'
,p_internal_uid=>3067980482720706637
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3711597507154888782)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'migrate_organisations'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_selected APEX_APPLICATION_GLOBAL.VC_ARR2; V_TEST_REMIT number:=0;',
'   v_sqlcode varchar2(25); v_mesg varchar2(2000);',
'  v_sqlerrm varchar2(2000); step varchar2(1000);',
'  v_id number; ',
'  ',
'BEGIN',
'    if :P1311_ORGANISATION is not null then',
'',
'            l_selected := APEX_UTIL.STRING_TO_TABLE(:P1311_ORGANISATION);',
'        ',
'        FOR j IN 1..l_selected.COUNT',
'        LOOP',
'',
'        ',
'        for I in (',
'                SELECT ORGANISATION_NAME,  ORGANISATION_TAG, ORGANISATION_TYPE, SHORT_NAME, ADDRESS,  TELNUM,',
'                FAXNUM, CATCH_LINE, NIS_REG_NO, TAX_REG_NO, LETTER_HEAD_LOGO, START_DATE, END_DATE, VERIFIED_DATE, VERIFIED_BY,',
'                TRANSACTION_TYPE_ID, STATUS, TRANSITS, COUNTRY, PHOTO, FILENAME,MIMETYPE, LAST_UPDATE_PHOTO,  BASE_CURRENCY',
'                FROM HR_HCF_ORGANISATION',
'                WHERE USE_FOR_SEEDED_DATA=1',
'                AND ORGANISATION_TYPE!=''SOFTWARE USER''',
'                and upper(country)= :P1311_COUNTRY',
'                AND ID = nvl(l_selected(j),id)',
'            ) loop',
'            ',
'            ',
'        begin     ',
'            insert into HR_HCF_ORGANISATION(  ORGANISATION_NAME,  ORGANISATION_TAG, ORGANISATION_TYPE, SHORT_NAME, ADDRESS,  TELNUM,',
'                FAXNUM, CATCH_LINE, NIS_REG_NO, TAX_REG_NO, LETTER_HEAD_LOGO, START_DATE, END_DATE, VERIFIED_DATE, VERIFIED_BY,',
'                TRANSACTION_TYPE_ID, STATUS, TRANSITS, COUNTRY,  BASE_CURRENCY, USER_ORG_ID)',
'                ',
'            VALUES(  I.ORGANISATION_NAME,  I.ORGANISATION_TAG, I.ORGANISATION_TYPE, I.SHORT_NAME, I.ADDRESS,  I.TELNUM,',
'                I.FAXNUM, I.CATCH_LINE, I.NIS_REG_NO, I.TAX_REG_NO, I.LETTER_HEAD_LOGO, I.START_DATE, I.END_DATE, I.VERIFIED_DATE, I.VERIFIED_BY,',
'                I.TRANSACTION_TYPE_ID, I.STATUS, I.TRANSITS, I.COUNTRY,  I.BASE_CURRENCY, :P1311_ID );',
'            ',
'        exception',
'        when others then ',
'            v_sqlcode := sqlcode;',
'            v_sqlerrm := sqlerrm;',
'            pkg_biz_rules.log_message(v_sqlcode ,v_sqlerrm ,''error occurred while generating none software type organisations'' ,''P1311.migrate_organisations'',NULL);                                        ',
'                    ',
'        end;',
'',
'        end loop;',
'',
'        END LOOP;  ',
'',
'else',
'    for I in (',
'                SELECT ORGANISATION_NAME,  ORGANISATION_TAG, ORGANISATION_TYPE, SHORT_NAME, ADDRESS,  TELNUM,',
'                FAXNUM, CATCH_LINE, NIS_REG_NO, TAX_REG_NO, LETTER_HEAD_LOGO, START_DATE, END_DATE, VERIFIED_DATE, VERIFIED_BY,',
'                TRANSACTION_TYPE_ID, STATUS, TRANSITS, COUNTRY, PHOTO, FILENAME,MIMETYPE, LAST_UPDATE_PHOTO,  BASE_CURRENCY',
'                FROM HR_HCF_ORGANISATION',
'                WHERE USE_FOR_SEEDED_DATA=1',
'                AND ORGANISATION_TYPE!=''SOFTWARE USER''    ',
'                and upper(country)= :P1311_COUNTRY           ',
'            ) loop',
'            ',
'            ',
'        begin     ',
'            insert into HR_HCF_ORGANISATION(  ORGANISATION_NAME,  ORGANISATION_TAG, ORGANISATION_TYPE, SHORT_NAME, ADDRESS,  TELNUM,',
'                FAXNUM, CATCH_LINE, NIS_REG_NO, TAX_REG_NO, LETTER_HEAD_LOGO, START_DATE, END_DATE, VERIFIED_DATE, VERIFIED_BY,',
'                TRANSACTION_TYPE_ID, STATUS, TRANSITS, COUNTRY,  BASE_CURRENCY, USER_ORG_ID)',
'                ',
'            VALUES(  I.ORGANISATION_NAME,  I.ORGANISATION_TAG, I.ORGANISATION_TYPE, I.SHORT_NAME, I.ADDRESS,  I.TELNUM,',
'                I.FAXNUM, I.CATCH_LINE, I.NIS_REG_NO, I.TAX_REG_NO, I.LETTER_HEAD_LOGO, I.START_DATE, I.END_DATE, I.VERIFIED_DATE, I.VERIFIED_BY,',
'                I.TRANSACTION_TYPE_ID, I.STATUS, I.TRANSITS, I.COUNTRY,  I.BASE_CURRENCY, :P1311_ID );',
'            ',
'        exception',
'        when others then ',
'            v_sqlcode := sqlcode;',
'            v_sqlerrm := sqlerrm;',
'            pkg_biz_rules.log_message(v_sqlcode ,v_sqlerrm ,''error occurred while generating none software type organisations'' ,''P1311.migrate_organisations'',NULL);                                        ',
'                    ',
'        end;',
'',
'        end loop;',
'',
'end if;',
'',
'',
'SELECT COUNT(1) INTO V_TEST_REMIT',
'from vw_organisationCUR',
'where organisation_type=''REMITTANCE'';',
'',
'IF V_TEST_REMIT > 0 THEN',
'',
'--deduction code',
'',
' ',
'begin',
'',
' for I in (select distinct EXPENSE_CODE, DESCRIPTION, PRIORITY_LEVEL, ACCOUNT_CODE, WHO_PAYS, SORT_ORDER, a.START_DATE, a.VERIFIED_BY,',
'            a.VERIFIED_DATE, QUERY_EMPLOYEE_DATA, ACCOUNT_CODE_EMPLR, UNION_AMOUNT, null, UNION_DEDUCTION, GROUP_MED, a.TRANSACTION_TYPE_ID,',
'            a.STATUS, REDUCE_TAX_NIS_TOTAL, :APP_ORG_ID ORG_ID, prv_active_dup, remarks, employer_ded_per, employee_ded_per, affected_by_gross_reduct, pension_deduction',
'            from PA_PCF_DEDUCTIONCODE a',
'            where exists(select 1',
'                   from hr_hcf_organisation b',
'                   where A.org_id=b.id',
'                   AND USE_FOR_SEEDED_DATA=1',
'                   and organisation_type=''SOFTWARE USER''',
'                   )',
'            ) loop',
'',
'',
'begin    ',
'    INSERT INTO PA_PCF_DEDUCTIONCODE(EXPENSE_CODE, DESCRIPTION, PRIORITY_LEVEL, ACCOUNT_CODE, WHO_PAYS, SORT_ORDER, START_DATE, VERIFIED_BY,',
'        VERIFIED_DATE, QUERY_EMPLOYEE_DATA, ACCOUNT_CODE_EMPLR, UNION_AMOUNT, ENTITY_ABBREVIATION, UNION_DEDUCTION, GROUP_MED, TRANSACTION_TYPE_ID,',
'        STATUS, REDUCE_TAX_NIS_TOTAL, ORG_ID, prv_active_dup, remarks, employer_ded_per, employee_ded_per, affected_by_gross_reduct, pension_deduction)',
'     ',
'    values(I.EXPENSE_CODE, I.DESCRIPTION, I.PRIORITY_LEVEL, I.ACCOUNT_CODE, I.WHO_PAYS, I.SORT_ORDER, I.START_DATE, I.VERIFIED_BY,',
'            I.VERIFIED_DATE, I.QUERY_EMPLOYEE_DATA, I.ACCOUNT_CODE_EMPLR, I.UNION_AMOUNT, null, I.UNION_DEDUCTION, I.GROUP_MED, I.TRANSACTION_TYPE_ID,',
'            i.STATUS, i.REDUCE_TAX_NIS_TOTAL, i.ORG_ID,  i.prv_active_dup,  i.remarks,  i.employer_ded_per,  i.employee_ded_per,  i.affected_by_gross_reduct,  i.pension_deduction);',
'',
'exception',
'  when others then ',
'      v_sqlcode := sqlcode;',
'      v_sqlerrm := sqlerrm;',
'      pkg_biz_rules.log_message(v_sqlcode ,v_sqlerrm ,''error occurred while generating none software type organisations'' ,''P1311.DEDUCTION_CODES'',NULL);                                        ',
'     ',
'end;',
'end LOOP;',
'',
'  commit;',
'  ',
'end;',
'',
'',
'END IF;',
'',
'',
'begin',
'    for i in (select id, organisation_name, start_date,  end_date,  remarks, config_name',
'              from hr_rcm_configref a',
'              where exists(select 1',
'                   from hr_hcf_organisation b',
'                   where A.org_id=b.id',
'                   AND USE_FOR_SEEDED_DATA=1',
'                   and organisation_type=''SOFTWARE USER''',
'                   )',
'              and start_date <= trunc(current_date)',
'              and (end_date is null or end_date >= trunc(current_date))) loop',
'    ',
'    begin          ',
'        INSERT INTO hr_rcm_configref (org_id, organisation_name, start_date,  end_date,  remarks, config_name)',
'        values (:P1311_ID, :P1311_ORGANISATION_NAME, i.start_date,  i.end_date,  i.remarks, i.config_name)',
'        returning id into v_id;',
'    ',
'    exception',
'        when others then null;',
'    end;',
'    ',
'        for J in (select questions, indicators, start_date,  end_date, question_classification, display_sequence',
'                FROM hr_rcm_configref_dtls',
'                where CONFIG_ID = i.id) loop',
'     ',
'     begin           ',
'        INSERT INTO hr_rcm_configref_dtls (config_id, questions, indicators,  start_date,  end_date, question_classification,  display_sequence)',
'        values (v_id, j.questions, j.indicators, j.start_date,  j.end_date, j.question_classification, j.display_sequence);',
'       ',
'        exception',
'            when others then null;',
'    end;         ',
'        end loop;',
'    ',
'    end loop;',
'    ',
'    commit;',
'    ',
'end;    ',
'',
'   :P1311_ORGANISATION:=NULL;',
'   ',
'   begin',
'    for I in ',
'            (select distinct id, table_name, audit_table, start_audit,  :P1311_ID org_id',
'            from audit_table_repo a',
'            where exists(select 1',
'                       from hr_hcf_organisation b',
'                       where A.org_id=b.id',
'                       AND USE_FOR_SEEDED_DATA=1',
'                       and organisation_type=''SOFTWARE USER''',
'                       ) ) loop',
'       ',
'       begin     ',
'           ',
'            INSERT INTO audit_table_repo ( table_name, audit_table, start_audit,  org_id)',
'            values (i.table_name, i.audit_table, trunc(current_date), i.org_id)',
'            returning ID into v_id;',
'            ',
'            for J in (',
'                     SELECT table_name, field_name, audit_field, table_id, remarks, self_serve_field',
'                     FROM audit_field_repo    ',
'                     where TABLE_ID = i.id) loop',
'                     ',
'                     insert into audit_field_repo(table_name, field_name, audit_field, table_id, remarks, self_serve_field)',
'                     values (j.table_name, j.field_name, j.audit_field, v_id, j.remarks, j.self_serve_field);',
'                     ',
'            end loop;',
'           ',
'        exception',
'            when others then null;',
'        end;',
'        ',
'    end loop;',
'    ',
'    commit;',
'end;  ',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3711685404939888817)
,p_process_success_message=>'Successful generation of Organisations.'
,p_internal_uid=>3067980823767706642
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3711597936900888782)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'REMOVE_PHOTO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update hr_hcf_organisation',
'set photo=null,',
'    FILENAME=null,',
'    MIMETYPE=null,',
'    LAST_UPDATE_PHOTO=null',
'where id=:P1311_ID;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3711675104926888813)
,p_process_success_message=>'Application logo successfully removed.'
,p_internal_uid=>3067981253513706642
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3535637032447209535)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'REMOVE_PHOTO_LD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update hr_hcf_organisation',
'set LETTER_HEAD_LOGO=null,',
'    lhd_FILENAME=null,',
'    lhd_MIMETYPE=null,',
'    lhd_LAST_UPDATE=null',
'where id=:P1311_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3535637103950209536)
,p_process_success_message=>'Letter head logo successfully removed.'
,p_internal_uid=>2892020349060027395
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3711598302787888783)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CLONE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN  ',
'for I in (',
'          SELECT ORGANISATION_NAME,  ORGANISATION_TAG, ORGANISATION_TYPE, SHORT_NAME, ADDRESS,  TELNUM,',
'          FAXNUM, CATCH_LINE, NIS_REG_NO, TAX_REG_NO, LETTER_HEAD_LOGO, START_DATE, END_DATE, VERIFIED_DATE, VERIFIED_BY,',
'          TRANSACTION_TYPE_ID, STATUS, TRANSITS, COUNTRY, PHOTO, FILENAME,MIMETYPE, LAST_UPDATE_PHOTO,  BASE_CURRENCY',
'          FROM HR_HCF_ORGANISATION',
'          WHERE ID=:P1311_ID',
'      ) loop',
'      ',
'      ',
'    begin     ',
'        insert into HR_HCF_ORGANISATION(  ORGANISATION_NAME,  ORGANISATION_TAG, ORGANISATION_TYPE, SHORT_NAME, ADDRESS,  TELNUM,',
'            FAXNUM, CATCH_LINE, NIS_REG_NO, TAX_REG_NO, LETTER_HEAD_LOGO, START_DATE, END_DATE, VERIFIED_DATE, VERIFIED_BY,',
'            TRANSACTION_TYPE_ID, STATUS, TRANSITS, COUNTRY,  BASE_CURRENCY, USER_ORG_ID)',
'            ',
'        VALUES(  I.ORGANISATION_NAME,  I.ORGANISATION_TAG, :P1311_ORGANISATION_TYPE_CL, I.SHORT_NAME, I.ADDRESS,  I.TELNUM,',
'            I.FAXNUM, I.CATCH_LINE, I.NIS_REG_NO, I.TAX_REG_NO, I.LETTER_HEAD_LOGO, I.START_DATE, I.END_DATE, I.VERIFIED_DATE, I.VERIFIED_BY,',
'            I.TRANSACTION_TYPE_ID, I.STATUS, I.TRANSITS, I.COUNTRY,  I.BASE_CURRENCY, :APP_ORG_ID );',
'        ',
'    exception',
'    when others then NULL;',
'    end;',
'',
'end loop;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3711698209838888828)
,p_process_success_message=>'Current record successfully cloned to the select organisation type.'
,p_internal_uid=>3067981619400706643
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3857855280990067427)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'cascade_seeded_assignment'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'    update hr_hcf_organisation',
'    set USE_FOR_SEEDED_DATA=1',
'    where user_org_id=:P1311_ID',
'    and :P1311_USE_FOR_SEEDED_DATA=1',
'    and USE_FOR_SEEDED_DATA=0;',
'',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3791216351759846356)
,p_internal_uid=>3214238597602885287
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3836549157644975107)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Switch_company'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    sp_switch_DemoCompany(:P1311_ORGANISATION_NAME, :P1311_ID);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3836549087127975106)
,p_internal_uid=>3192932474257792967
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3204110411041292863)
,p_process_sequence=>120
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Cascade_curr_base'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE pa_pcf_earningcurrency',
'SET base_currency = :P1311_BASE_CURRENCY',
'WHERE ORG_ID= :P1311_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2560493727654110723
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3711595488222888770)
,p_process_sequence=>130
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'29'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3791216713629846356)
,p_internal_uid=>3067978804835706630
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(570775249630090294)
,p_process_sequence=>140
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(565109814151266624)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'TaxFree Parameters - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>87867141250201815
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(556684245133795985)
,p_process_sequence=>150
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(590927692641464719)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Requirements and Attributes - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>16072745548052406
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(540926873734215498)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(3659817641107061613)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form frmOrganisation'
,p_internal_uid=>58018765354327019
);
wwv_flow_imp.component_end;
end;
/
