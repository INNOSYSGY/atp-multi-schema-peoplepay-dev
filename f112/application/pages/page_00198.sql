prompt --application/pages/page_00198
begin
--   Manifest
--     PAGE: 00198
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.7'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>198
,p_name=>'frmOrganisation'
,p_alias=>'FRMORGANISATION1'
,p_step_title=>'frmOrganisation'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3127721898502869688)
,p_plug_name=>'Add Related Records for &P1311_ORGANISATION_NAME.'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>79
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P198_ORGANISATION_TYPE'
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
 p_id=>wwv_flow_imp.id(3128172121620764643)
,p_name=>'Listing of Work Locations'
,p_parent_plug_id=>wwv_flow_imp.id(3127721898502869688)
,p_template=>2664334895415463485
,p_display_sequence=>79
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'where HR_HCF_WORKLOCATION.ORG_ID =:P198_ID'))
,p_display_when_condition=>':P198_ID is not null and pkg_security.GET_REGION_ACCESS(''FRMWORKLOCATION'')>0'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P198_ID'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
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
 p_id=>wwv_flow_imp.id(3263448379021980895)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'EDIT'
,p_column_link=>'f?p=&APP_ID.:1316:&SESSION.::&DEBUG.::P1316_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263448000762980894)
,p_query_column_id=>2
,p_column_alias=>'ORG_ID'
,p_column_display_sequence=>2
,p_column_heading=>'ORG_ID'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263447605667980894)
,p_query_column_id=>3
,p_column_alias=>'WKLOCATION_ID'
,p_column_display_sequence=>3
,p_column_heading=>'PARENT LOCATION'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263447199913980894)
,p_query_column_id=>4
,p_column_alias=>'LOCATION_CODE'
,p_column_display_sequence=>4
,p_column_heading=>'LOCATION CODE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263446802689980894)
,p_query_column_id=>5
,p_column_alias=>'LOCATION_DESCRIPTION'
,p_column_display_sequence=>5
,p_column_heading=>'LOCATION DESCRIPTION'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263446402539980894)
,p_query_column_id=>6
,p_column_alias=>'CLASSIFICATION'
,p_column_display_sequence=>6
,p_column_heading=>'CLASSIFICATION'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263445965229980894)
,p_query_column_id=>7
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'START DATE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263445643873980893)
,p_query_column_id=>8
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>8
,p_column_heading=>'END DATE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263445150419980893)
,p_query_column_id=>9
,p_column_alias=>'ADDRESS'
,p_column_display_sequence=>9
,p_column_heading=>'ADDRESS'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263444817000980893)
,p_query_column_id=>10
,p_column_alias=>'BILLING_ADDRESS'
,p_column_display_sequence=>10
,p_column_heading=>'BILLING ADDRESS'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263444345933980893)
,p_query_column_id=>11
,p_column_alias=>'TEL_NO'
,p_column_display_sequence=>11
,p_column_heading=>'TEL NO'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263443976451980893)
,p_query_column_id=>12
,p_column_alias=>'ENTRY_DATE'
,p_column_display_sequence=>12
,p_column_heading=>'ENTRY_DATE'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263443544277980893)
,p_query_column_id=>13
,p_column_alias=>'ENTERED_BY'
,p_column_display_sequence=>13
,p_column_heading=>'ENTERED_BY'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263443151691980892)
,p_query_column_id=>14
,p_column_alias=>'LAST_CHANGED_DATE'
,p_column_display_sequence=>14
,p_column_heading=>'LAST_CHANGED_DATE'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263442809677980892)
,p_query_column_id=>15
,p_column_alias=>'LAST_CHANGED_BY'
,p_column_display_sequence=>15
,p_column_heading=>'LAST_CHANGED_BY'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263442397481980892)
,p_query_column_id=>16
,p_column_alias=>'MACHINE_INSERT'
,p_column_display_sequence=>16
,p_column_heading=>'MACHINE_INSERT'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263441953429980892)
,p_query_column_id=>17
,p_column_alias=>'MACHINE_UPDATE'
,p_column_display_sequence=>17
,p_column_heading=>'MACHINE_UPDATE'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3128180399595571441)
,p_name=>'Listing Of Company Years'
,p_parent_plug_id=>wwv_flow_imp.id(3127721898502869688)
,p_template=>2664334895415463485
,p_display_sequence=>69
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'where HR_HCF_COMPANYYEAR.ORG_ID=:P198_ID',
'ORDER BY HR_HCF_COMPANYYEAR.COMPANY_YEAR DESC'))
,p_display_when_condition=>':P198_ID is not null and pkg_security.GET_REGION_ACCESS(''FRMORGANISATIONYEAR'')>0'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P198_ID'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
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
 p_id=>wwv_flow_imp.id(3263454253622980897)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'EDIT'
,p_column_link=>'f?p=&APP_ID.:1315:&SESSION.::&DEBUG.::P1315_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263453909252980897)
,p_query_column_id=>2
,p_column_alias=>'PKEY'
,p_column_display_sequence=>13
,p_column_heading=>'Pkey'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263453481169980897)
,p_query_column_id=>3
,p_column_alias=>'ORG_ID'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263453060245980897)
,p_query_column_id=>4
,p_column_alias=>'PAYMENT_TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'PAYMENT FREQUENCY'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(3297921391420761695)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263452671634980897)
,p_query_column_id=>5
,p_column_alias=>'COMPANY_YEAR'
,p_column_display_sequence=>4
,p_column_heading=>'COMPANY YEAR'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263452256314980896)
,p_query_column_id=>6
,p_column_alias=>'START_YEAR'
,p_column_display_sequence=>5
,p_column_heading=>'START YEAR'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263451883602980896)
,p_query_column_id=>7
,p_column_alias=>'END_YEAR'
,p_column_display_sequence=>6
,p_column_heading=>'END YEAR'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263451520634980896)
,p_query_column_id=>8
,p_column_alias=>'ENTRY_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'ENTRY DATE'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263451142683980896)
,p_query_column_id=>9
,p_column_alias=>'ENTERED_BY'
,p_column_display_sequence=>8
,p_column_heading=>'ENTERED BY'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263450678099980896)
,p_query_column_id=>10
,p_column_alias=>'LAST_CHANGED_BY'
,p_column_display_sequence=>9
,p_column_heading=>'LAST CHANGED BY'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263450274934980896)
,p_query_column_id=>11
,p_column_alias=>'LAST_CHANGED_DATE'
,p_column_display_sequence=>10
,p_column_heading=>'LAST CHANGED DATE'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263449907435980895)
,p_query_column_id=>12
,p_column_alias=>'MACHINE_INSERT'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263449535984980895)
,p_query_column_id=>13
,p_column_alias=>'MACHINE_UPDATE'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3128198116732238735)
,p_name=>'Listing of Tax Rates'
,p_parent_plug_id=>wwv_flow_imp.id(3127721898502869688)
,p_template=>2664334895415463485
,p_display_sequence=>59
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'where ORG_ID=:P198_ID',
' and exists (select 1',
'             from vw_useraccess v',
'             where decode(:APP_USER, ''PEOPLEPAY'',''1'',HR_HCF_TAXRATE.org_id)= decode(:APP_USER, ''PEOPLEPAY'',''1'',v.org_id)',
'             and decode(:APP_USER, ''PEOPLEPAY'',''1'',HR_HCF_TAXRATE.PAYMENT_TYPE)=decode(:APP_USER, ''PEOPLEPAY'',''1'',v.PAYMENT_TYPE))',
'order by DATE_OF_RATE desc'))
,p_display_when_condition=>':P198_ID is not null and pkg_security.GET_REGION_ACCESS(''FRMTAXRATE'')>0'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P198_ID'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
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
 p_id=>wwv_flow_imp.id(3263464493146980902)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'EDIT'
,p_column_link=>'f?p=&APP_ID.:1314:&SESSION.::&DEBUG.::P1314_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263464087772980901)
,p_query_column_id=>2
,p_column_alias=>'ORG_ID'
,p_column_display_sequence=>2
,p_column_heading=>'ORG_ID'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263463743709980901)
,p_query_column_id=>3
,p_column_alias=>'DATE_OF_RATE'
,p_column_display_sequence=>3
,p_column_heading=>'DATE OF RATE'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263463298162980901)
,p_query_column_id=>4
,p_column_alias=>'PAYMENT_TYPE'
,p_column_display_sequence=>4
,p_column_heading=>'FREQUENCY'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263462888882980901)
,p_query_column_id=>5
,p_column_alias=>'TAX_CEILING_LOWER'
,p_column_display_sequence=>5
,p_column_heading=>'TAX CEILING LOWER'
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263462473840980901)
,p_query_column_id=>6
,p_column_alias=>'TAX_PERCENTAGE_LOWER'
,p_column_display_sequence=>6
,p_column_heading=>'TAX LOWER(%)'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263462097761980901)
,p_query_column_id=>7
,p_column_alias=>'TAX_CEILING_UPPER'
,p_column_display_sequence=>7
,p_column_heading=>'Tax Ceiling Upper'
,p_column_format=>'FML999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263461693176980900)
,p_query_column_id=>8
,p_column_alias=>'TAX_PERCENTAGE_UPPER'
,p_column_display_sequence=>23
,p_column_heading=>'Tax percentage upper'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263461311328980900)
,p_query_column_id=>9
,p_column_alias=>'CONSISTENT'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263460939377980900)
,p_query_column_id=>10
,p_column_alias=>'ANN_TAX_CEILING_LOWER'
,p_column_display_sequence=>9
,p_column_heading=>'ANN TAX CEILING LOWER'
,p_column_format=>'FML999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263460516920980900)
,p_query_column_id=>11
,p_column_alias=>'ANN_TAX_CEILING_UPPER'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263460058373980900)
,p_query_column_id=>12
,p_column_alias=>'DATE_EFFECTIVE'
,p_column_display_sequence=>11
,p_column_heading=>'DATE EFFECTIVE'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263459734205980900)
,p_query_column_id=>13
,p_column_alias=>'ADJ_CEILING_LOWER'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263458958309980899)
,p_query_column_id=>14
,p_column_alias=>'ADJ_CEILING_UPPER'
,p_column_display_sequence=>13
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263458544532980899)
,p_query_column_id=>15
,p_column_alias=>'ADJ_ANN_TAX_CEILING_LOWER'
,p_column_display_sequence=>14
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263458203040980899)
,p_query_column_id=>16
,p_column_alias=>'ADJ_ANN_TAX_CEILING_UPPER'
,p_column_display_sequence=>15
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263457758002980899)
,p_query_column_id=>17
,p_column_alias=>'DATE_EFFECTIVE_END'
,p_column_display_sequence=>16
,p_column_heading=>'DATE EFFECTIVE END'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263457377055980899)
,p_query_column_id=>18
,p_column_alias=>'DAILY_TAX_CEILING_LOWER'
,p_column_display_sequence=>17
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263457039290980898)
,p_query_column_id=>19
,p_column_alias=>'DAILY_TAX_CEILING_UPPER'
,p_column_display_sequence=>18
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263456560601980898)
,p_query_column_id=>20
,p_column_alias=>'PRO_RATE_TAXFREE'
,p_column_display_sequence=>19
,p_column_heading=>'PRO RATE TAXFREE'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263456154337980898)
,p_query_column_id=>21
,p_column_alias=>'COUNTRY'
,p_column_display_sequence=>20
,p_column_heading=>'Country'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263455818471980898)
,p_query_column_id=>22
,p_column_alias=>'TAX_CEILING_UPPER_FRACTION'
,p_column_display_sequence=>21
,p_column_heading=>'Tax ceiling upper fraction'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263455383349980898)
,p_query_column_id=>23
,p_column_alias=>'TAX_CEILING_UPPER_B'
,p_column_display_sequence=>22
,p_column_heading=>'Tax ceiling upper b'
,p_column_format=>'FML999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3128208613381445868)
,p_name=>'Listing Of NIB/SS Rates'
,p_parent_plug_id=>wwv_flow_imp.id(3127721898502869688)
,p_template=>2664334895415463485
,p_display_sequence=>49
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
' where HR_HCF_NISRATE.ORG_ID=:P198_ID',
' and exists (select 1',
'             from vw_useraccess v',
'             where decode(:APP_USER, ''PEOPLEPAY'',''1'',HR_HCF_NISRATE.org_id) = decode(:APP_USER, ''PEOPLEPAY'',''1'',v.org_id)',
'             and decode(:APP_USER, ''PEOPLEPAY'',''1'',upper(HR_HCF_NISRATE.PAYMENT_TYPE))= decode(:APP_USER, ''PEOPLEPAY'',''1'',upper(v.PAYMENT_TYPE)))',
'order by DATE_OF_RATE desc'))
,p_display_when_condition=>':P198_ID is not null and pkg_security.GET_REGION_ACCESS(''FRMNISRATE'')>0'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P198_ID'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
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
 p_id=>wwv_flow_imp.id(3263473209091980906)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'EDIT'
,p_column_link=>'f?p=&APP_ID.:1313:&SESSION.::&DEBUG.::P1313_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263472816053980905)
,p_query_column_id=>2
,p_column_alias=>'ORG_ID'
,p_column_display_sequence=>2
,p_column_heading=>'ORG_ID'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263472394377980905)
,p_query_column_id=>3
,p_column_alias=>'DATE_OF_RATE'
,p_column_display_sequence=>3
,p_column_heading=>'DATE OF RATE'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263472024596980905)
,p_query_column_id=>4
,p_column_alias=>'PAYMENT_TYPE'
,p_column_display_sequence=>4
,p_column_heading=>'PAYMENT TYPE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263471602827980905)
,p_query_column_id=>5
,p_column_alias=>'NIS_CEILING'
,p_column_display_sequence=>5
,p_column_heading=>'NIB/SS CEILING'
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263471158935980905)
,p_query_column_id=>6
,p_column_alias=>'EMPLOYER_PER'
,p_column_display_sequence=>6
,p_column_heading=>'EMPLOYER(%)'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263470792576980905)
,p_query_column_id=>7
,p_column_alias=>'EMPLOYEE_PER'
,p_column_display_sequence=>7
,p_column_heading=>'EMPLOYEE(%)'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263470347721980904)
,p_query_column_id=>8
,p_column_alias=>'LOWER_AGE'
,p_column_display_sequence=>8
,p_column_heading=>'LOWER AGE'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263470035866980904)
,p_query_column_id=>9
,p_column_alias=>'UPPER_AGE'
,p_column_display_sequence=>9
,p_column_heading=>'UPPER AGE'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263469562666980904)
,p_query_column_id=>10
,p_column_alias=>'CONSISTENT'
,p_column_display_sequence=>10
,p_column_heading=>'CONSISTENT'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263469210192980904)
,p_query_column_id=>11
,p_column_alias=>'OVER_60_UNDER_16'
,p_column_display_sequence=>11
,p_column_heading=>'OVER 60 UNDER 16'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263468757635980904)
,p_query_column_id=>12
,p_column_alias=>'DATE_EFFECTIVE'
,p_column_display_sequence=>12
,p_column_heading=>'DATE EFFECTIVE'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263468373246980903)
,p_query_column_id=>13
,p_column_alias=>'DATE_EFFECTIVE_END'
,p_column_display_sequence=>13
,p_column_heading=>'DATE_EFFECTIVE_END'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263467997061980903)
,p_query_column_id=>14
,p_column_alias=>'ENTERED_BY'
,p_column_display_sequence=>14
,p_column_heading=>'ENTERED_BY'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263467642184980903)
,p_query_column_id=>15
,p_column_alias=>'ENTRY_DATE'
,p_column_display_sequence=>15
,p_column_heading=>'ENTRY_DATE'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263467206254980903)
,p_query_column_id=>16
,p_column_alias=>'MACHINE_INSERT'
,p_column_display_sequence=>16
,p_column_heading=>'MACHINE_INSERT'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263466775748980903)
,p_query_column_id=>17
,p_column_alias=>'MACHINE_UPDATE'
,p_column_display_sequence=>17
,p_column_heading=>'MACHINE_UPDATE'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263466363664980903)
,p_query_column_id=>18
,p_column_alias=>'LAST_CHANGED_BY'
,p_column_display_sequence=>18
,p_column_heading=>'LAST_CHANGED_BY'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263465950311980902)
,p_query_column_id=>19
,p_column_alias=>'LAST_CHANGED_DATE'
,p_column_display_sequence=>19
,p_column_heading=>'LAST_CHANGED_DATE'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263465612955980902)
,p_query_column_id=>20
,p_column_alias=>'COUNTRY'
,p_column_display_sequence=>20
,p_column_heading=>'Country'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3128231915115043182)
,p_name=>'Listing of Organisational Requirements'
,p_parent_plug_id=>wwv_flow_imp.id(3127721898502869688)
,p_template=>2664334895415463485
,p_display_sequence=>19
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
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
'where HR_HCF_ORG_RULE.ORG_ID=:P198_ID'))
,p_display_when_condition=>':P198_ID is not null and pkg_security.GET_REGION_ACCESS(''FRMORGANISATIONRULE'')>0'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P198_ID'
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
 p_id=>wwv_flow_imp.id(3263481905087980909)
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
 p_id=>wwv_flow_imp.id(3263481470069980909)
,p_query_column_id=>2
,p_column_alias=>'ORG_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Org Id'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263481075223980909)
,p_query_column_id=>3
,p_column_alias=>'ENFORCE_SALARY_SCALE'
,p_column_display_sequence=>3
,p_column_heading=>'Enforce Salary Scale'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263480692652980909)
,p_query_column_id=>4
,p_column_alias=>'ALLOW_MANUAL_ADJ'
,p_column_display_sequence=>4
,p_column_heading=>'Allow Manual Adj'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263480300889980909)
,p_query_column_id=>5
,p_column_alias=>'ROUND_METHOD'
,p_column_display_sequence=>5
,p_column_heading=>'Round Method'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263479844193980909)
,p_query_column_id=>6
,p_column_alias=>'BANK_ACCOUNT_NO'
,p_column_display_sequence=>6
,p_column_heading=>'Bank Account No.'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263479463141980908)
,p_query_column_id=>7
,p_column_alias=>'BANK_BRANCH_ID'
,p_column_display_sequence=>7
,p_column_heading=>'Bank Branch'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263479120275980908)
,p_query_column_id=>8
,p_column_alias=>'ESALARY_CHARGES'
,p_column_display_sequence=>8
,p_column_heading=>'Esalary Charges'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263478662710980908)
,p_query_column_id=>9
,p_column_alias=>'CHARGES'
,p_column_display_sequence=>9
,p_column_heading=>'Charges'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263478250247980908)
,p_query_column_id=>10
,p_column_alias=>'ESALARY_ACCOUNT'
,p_column_display_sequence=>10
,p_column_heading=>'Esalary Account'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263477937229980908)
,p_query_column_id=>11
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>11
,p_column_heading=>'Start Date'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263477524286980908)
,p_query_column_id=>12
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>12
,p_column_heading=>'End Date'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263477060224980907)
,p_query_column_id=>13
,p_column_alias=>'PSC_RETIREMENT_AGE'
,p_column_display_sequence=>13
,p_column_heading=>'Psc Retirement Age'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263476659867980907)
,p_query_column_id=>14
,p_column_alias=>'EMPLOYMENT_AGE'
,p_column_display_sequence=>14
,p_column_heading=>'Employment Age(Yrs)'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263476294117980907)
,p_query_column_id=>15
,p_column_alias=>'PROBATION_DURATION'
,p_column_display_sequence=>15
,p_column_heading=>'Probation Duration(Mths)'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263475849341980907)
,p_query_column_id=>16
,p_column_alias=>'SICK_LEAVE_YRS_SERVICE'
,p_column_display_sequence=>16
,p_column_heading=>'Sick Leave Yrs Service'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263475509581980907)
,p_query_column_id=>17
,p_column_alias=>'SICK_LEAVE_HRS_QUALIFY'
,p_column_display_sequence=>17
,p_column_heading=>'Sick Leave Hrs Qualify'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263475119241980907)
,p_query_column_id=>18
,p_column_alias=>'TAX_METHOD'
,p_column_display_sequence=>18
,p_column_heading=>'Tax Method'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263474660516980906)
,p_query_column_id=>19
,p_column_alias=>'TIMESHEET_POST_METHOD'
,p_column_display_sequence=>19
,p_column_heading=>'Timesheet Post Method'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263474249141980906)
,p_query_column_id=>20
,p_column_alias=>'GRATUITY_PERCENT'
,p_column_display_sequence=>20
,p_column_heading=>'Gratuity Percent'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3141676014164819934)
,p_name=>'Listing for Education Levy'
,p_parent_plug_id=>wwv_flow_imp.id(3127721898502869688)
,p_template=>2664334895415463485
,p_display_sequence=>29
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
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
'--"VERIFIED_BY",',
'--"VERIFIED_DATE",',
'"LAST_CHANGED_BY",',
'"LAST_CHANGED_DATE",',
'"MACHINE_INSERT",',
'"MACHINE_UPDATE"',
'from "PA_PCF_EDUCATION_LEVY" ',
'WHERE  ORG_ID=:P198_ID'))
,p_display_when_condition=>':P198_ID is not null and pkg_security.GET_REGION_ACCESS(''FRMEDUCATIONLEVY'')>0 and :P198_COUNTRY = ''Antigua & Barbuda'''
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_header=>'<div style="overflow:auto;">'
,p_footer=>'</div>'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P198_ID'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263489391492980913)
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
 p_id=>wwv_flow_imp.id(3263489005068980913)
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
 p_id=>wwv_flow_imp.id(3263488560993980912)
,p_query_column_id=>3
,p_column_alias=>'FIRST_PERCENT'
,p_column_display_sequence=>3
,p_column_heading=>'First%'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263488230613980912)
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
 p_id=>wwv_flow_imp.id(3263487826744980912)
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
 p_id=>wwv_flow_imp.id(3263487392930980912)
,p_query_column_id=>6
,p_column_alias=>'SECOND_PERCENT'
,p_column_display_sequence=>6
,p_column_heading=>'Second%'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263486975141980912)
,p_query_column_id=>7
,p_column_alias=>'MINI_PAYMENT_AGE'
,p_column_display_sequence=>7
,p_column_heading=>'Mini Age'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263486606031980912)
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
 p_id=>wwv_flow_imp.id(3263486154300980911)
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
 p_id=>wwv_flow_imp.id(3263485752886980911)
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
 p_id=>wwv_flow_imp.id(3263485361125980911)
,p_query_column_id=>11
,p_column_alias=>'ENTRY_DATE'
,p_column_display_sequence=>11
,p_column_heading=>'ENTRY_DATE'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263484155841980911)
,p_query_column_id=>12
,p_column_alias=>'LAST_CHANGED_BY'
,p_column_display_sequence=>14
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263483747999980910)
,p_query_column_id=>13
,p_column_alias=>'LAST_CHANGED_DATE'
,p_column_display_sequence=>15
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263483398210980910)
,p_query_column_id=>14
,p_column_alias=>'MACHINE_INSERT'
,p_column_display_sequence=>16
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263483020906980910)
,p_query_column_id=>15
,p_column_alias=>'MACHINE_UPDATE'
,p_column_display_sequence=>17
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3127817812119132079)
,p_name=>'Bank Transits'
,p_template=>2664334895415463485
,p_display_sequence=>69
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_3'
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
'where PA_PCF_BANKTRANSIT.BANK_BRANCH_ID =:P198_ID'))
,p_display_when_condition=>':P198_SHORT_NAME=''RBGL'' and :P198_ID is not null and pkg_security.GET_REGION_ACCESS(''FRMBANKTRANSITS'')>0'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
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
 p_id=>wwv_flow_imp.id(3263495577560980917)
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
 p_id=>wwv_flow_imp.id(3263495146162980916)
,p_query_column_id=>2
,p_column_alias=>'BANK_BRANCH_ID'
,p_column_display_sequence=>2
,p_column_heading=>'BANK_BRANCH_ID'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263494839205980916)
,p_query_column_id=>3
,p_column_alias=>'ACCOUNT_NUMBER'
,p_column_display_sequence=>3
,p_column_heading=>'ACCOUNT NO.'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263494345465980916)
,p_query_column_id=>4
,p_column_alias=>'TRANSACTION_CODE'
,p_column_display_sequence=>4
,p_column_heading=>'TRANSACTION CODE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263493975682980916)
,p_query_column_id=>5
,p_column_alias=>'CREDIT_DEBIT'
,p_column_display_sequence=>5
,p_column_heading=>'CREDIT DEBIT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263493551397980916)
,p_query_column_id=>6
,p_column_alias=>'CHARGES'
,p_column_display_sequence=>6
,p_column_heading=>'CHARGES'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263493181980980915)
,p_query_column_id=>7
,p_column_alias=>'TRANSITS'
,p_column_display_sequence=>7
,p_column_heading=>'TRANSITS'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263492789086980915)
,p_query_column_id=>8
,p_column_alias=>'MACHINE_INSERT'
,p_column_display_sequence=>8
,p_column_heading=>'MACHINE_INSERT'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263492368635980915)
,p_query_column_id=>9
,p_column_alias=>'MACHINE_UPDATE'
,p_column_display_sequence=>9
,p_column_heading=>'MACHINE_UPDATE'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263492008824980914)
,p_query_column_id=>10
,p_column_alias=>'ENTERED_BY'
,p_column_display_sequence=>10
,p_column_heading=>'ENTERED_BY'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263491613683980914)
,p_query_column_id=>11
,p_column_alias=>'ENTRY_DATE'
,p_column_display_sequence=>11
,p_column_heading=>'ENTRY_DATE'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263491153555980914)
,p_query_column_id=>12
,p_column_alias=>'LAST_CHANGED_BY'
,p_column_display_sequence=>12
,p_column_heading=>'LAST_CHANGED_BY'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3263490752246980914)
,p_query_column_id=>13
,p_column_alias=>'LAST_CHANGED_DATE'
,p_column_display_sequence=>13
,p_column_heading=>'LAST_CHANGED_DATE'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3128291129509301976)
,p_plug_name=>'Audit Record Verified By: &P1311_VERIFIED_BY.'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>9
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>wwv_flow_imp.id(3204264350542747183)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'pkg_global_fnts.fn_getsimplemode=''N'''
,p_plug_display_when_cond2=>'PLSQL'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3128298025433302003)
,p_plug_name=>'Create/Edit Organisation'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>2
,p_plug_display_point=>'BODY_3'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3183915197771956513)
,p_plug_name=>' Second'
,p_parent_plug_id=>wwv_flow_imp.id(3128298025433302003)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>3
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
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
 p_id=>wwv_flow_imp.id(3183915729416975134)
,p_plug_name=>' First'
,p_parent_plug_id=>wwv_flow_imp.id(3128298025433302003)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>2
,p_plug_display_point=>'SUB_REGIONS'
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
 p_id=>wwv_flow_imp.id(3169185040071985374)
,p_plug_name=>'Reminder'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>1
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Kindly note that the current financial year and the tax year are incompatible. As such year to date computations',
'for all income and expenses will be specific to the financial year, except those that affect taxes namely:-',
'Gross taxable and PAYE, current and year to date figures; these will be linked to the tax year.',
''))
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
 p_id=>wwv_flow_imp.id(3193594514727424195)
,p_plug_name=>'Migrate System References'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>89
,p_plug_display_point=>'BODY_3'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':APP_USER in (''APPS'',''RLANGFORD'')'
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3222702562166992035)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3269014564518480438)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3263506616389980923)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(3183915197771956513)
,p_button_name=>'REMOVE_LOGO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Remove Logo'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'from hr_hcf_organisation',
'where id=:P198_ID',
'and PHOTO is not null'))
,p_button_condition_type=>'EXISTS'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_security_scheme=>wwv_flow_imp.id(3279326921157677335)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3263441576380980892)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3128172121620764643)
,p_button_name=>'CREATE_WORKLOC'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1316:&SESSION.::&DEBUG.:1316::'
,p_button_condition=>'P198_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3263449115742980895)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3128180399595571441)
,p_button_name=>'CREATE_YEAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1315:&SESSION.::&DEBUG.:1315::'
,p_button_condition=>'P198_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3263454960746980898)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3128198116732238735)
,p_button_name=>'CREATE_TAX'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1314:&SESSION.::&DEBUG.:1314::'
,p_button_condition=>'P198_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3263465164158980902)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3128208613381445868)
,p_button_name=>'CREATE_NIS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1313:&SESSION.::&DEBUG.:1313::'
,p_button_condition=>'P198_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3263473920756980906)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3128231915115043182)
,p_button_name=>'CREATE_ORGREQ'
,p_button_static_id=>'add-orgreq'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1312:&SESSION.::&DEBUG.:1312::'
,p_button_condition=>'P198_id'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3263482556738980910)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3141676014164819934)
,p_button_name=>'CREATE_EDULVY'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1486:&SESSION.::&DEBUG.:1486::'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3263490423649980913)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3127817812119132079)
,p_button_name=>'CREATE_BANKTRANS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1318:&SESSION.::&DEBUG.:1318::'
,p_button_condition=>'P198_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3263517306784980932)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3193594514727424195)
,p_button_name=>'P198_MIGRATE'
,p_button_static_id=>'P1311_MIGRATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Migrate'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P198_ID'
,p_button_condition2=>'1668'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_security_scheme=>wwv_flow_imp.id(3279326921157677335)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3263521562310980939)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3222702562166992035)
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
 p_id=>wwv_flow_imp.id(3263516874162980932)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3193594514727424195)
,p_button_name=>'P198_BTNGENORG'
,p_button_static_id=>'P1311_BTNGENORG'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Migrate Org'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P198_ID'
,p_button_condition2=>'1668'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_security_scheme=>wwv_flow_imp.id(3279326921157677335)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3263520771086980938)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3222702562166992035)
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
'WHERE ID=:P198_ID',
'AND VERIFIED_BY IS NULL'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(3279327525051677335)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3263520362163980938)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3222702562166992035)
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
'if (:P198_ID is not null and LENGTH(:P198_VERIFIED_BY)=0) OR  (PKG_GLOBAL_FNTS.chk_verifier(nvl(V(''APP_USER''),USER), :APP_PAGE_ID)>0 AND :P198_ID is not null) THEN',
'RETURN TRUE;',
'ELSE',
'RETURN FALSE;',
'END IF;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_security_scheme=>wwv_flow_imp.id(3279327210431677335)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3263520011633980937)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3222702562166992035)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P198_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3263519551044980937)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(3222702562166992035)
,p_button_name=>'GET_PREVIOUS_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'&lt; Previous'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_PREVIOUS_ID'')'
,p_button_condition=>'P198_ID_PREV'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3263519143974980937)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(3222702562166992035)
,p_button_name=>'GET_NEXT_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Next &gt;'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_NEXT_ID'')'
,p_button_condition=>'P198_ID_NEXT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3263518807154980937)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(3222702562166992035)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create Again'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P198_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3263518435417980936)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(3222702562166992035)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:198:&SESSION.::&DEBUG.:198::'
,p_button_condition=>'P198_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3263518011714980936)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(3222702562166992035)
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
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3263416093684980878)
,p_branch_name=>'CREATE AGAIN'
,p_branch_action=>'f?p=&APP_ID.:1311:&SESSION.::&DEBUG.:1311::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3263518807154980937)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3263416448857980878)
,p_branch_name=>'delete_Record'
,p_branch_action=>'f?p=&APP_ID.:1310:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3263520771086980938)
,p_branch_sequence=>2
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3263417654194980878)
,p_branch_action=>'f?p=&APP_ID.:1311:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>3
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3263416863661980878)
,p_branch_action=>'f?p=&APP_ID.:1311:&SESSION.::&DEBUG.::P1311_ID:&P1311_ID_PREV.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3263519551044980937)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3263417246906980878)
,p_branch_action=>'f?p=&APP_ID.:1311:&SESSION.::&DEBUG.::P1311_ID:&P1311_ID_NEXT.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3263519143974980937)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3263496330770980918)
,p_name=>'P198_MACHINE_UPDATE'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(3128291129509301976)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Machine Update'
,p_source=>'MACHINE_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_imp.id(3263496660253980918)
,p_name=>'P198_MACHINE_INSERT'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(3128291129509301976)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&P101_MACHINE_NAME.'
,p_prompt=>'Machine Insert'
,p_source=>'MACHINE_INSERT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_imp.id(3263497114519980918)
,p_name=>'P198_ENTRY_DATE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(3128291129509301976)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Entry Date'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_imp.id(3263497504629980918)
,p_name=>'P198_ENTERED_BY'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(3128291129509301976)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Entered By'
,p_source=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_imp.id(3263497923676980918)
,p_name=>'P198_LAST_CHANGED_DATE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(3128291129509301976)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Changed Date'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_imp.id(3263498267270980919)
,p_name=>'P198_LAST_CHANGED_BY'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(3128291129509301976)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Changed By'
,p_source=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_imp.id(3263498736998980919)
,p_name=>'P198_VERIFIED_BY'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(3128291129509301976)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Verified By'
,p_source=>'VERIFIED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_imp.id(3263499073991980919)
,p_name=>'P198_VERIFIED_DATE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(3128291129509301976)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Verified Date'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'VERIFIED_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_imp.id(3263499755840980920)
,p_name=>'P198_ID_COUNT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(3183915197771956513)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'class="fielddata"'
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(3263500177309980920)
,p_name=>'P198_USE_FOR_SEEDED_DATA'
,p_is_required=>true
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(3183915197771956513)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Use For Seeded Data'
,p_source=>'USE_FOR_SEEDED_DATA'
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
 p_id=>wwv_flow_imp.id(3263500589944980920)
,p_name=>'P198_ADD_PHOTO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(3183915197771956513)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Add Logo'
,p_source=>'PHOTO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>20
,p_cMaxlength=>4000
,p_display_when=>'P198_ORGANISATION_TYPE'
,p_display_when2=>'SOFTWARE USER'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'blob_last_updated_column', 'LAST_UPDATE_PHOTO',
  'content_disposition', 'attachment',
  'display_as', 'INLINE',
  'display_download_link', 'Y',
  'download_link_text', 'Download',
  'filename_column', 'FILENAME',
  'mime_type_column', 'MIMETYPE',
  'storage_type', 'DB_COLUMN')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3263501009870980920)
,p_name=>'P198_MMG_AGENT_NO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3183915197771956513)
,p_use_cache_before_default=>'NO'
,p_prompt=>'MMG Agent No.'
,p_source=>'MMG_AGENT_NO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3263501416926980920)
,p_name=>'P198_STATUS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3183915197771956513)
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
'and upper(Wfl_Status_Description) not like DECODE(:P198_ID, NULL,''%VERI%'',''%test%'') ',
'And Webpage_Id=:App_Page_Id      ',
'and TRANSACTION_TYPE_ID=:P198_TRANSACTION_TYPE_ID',
'order by sequence'))
,p_lov_cascade_parent_items=>'P198_TRANSACTION_TYPE_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3263501762945980920)
,p_name=>'P198_PAYSITE_CODE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3183915197771956513)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Paysite Code'
,p_source=>'PAYSITE_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3263502215622980921)
,p_name=>'P198_VENDOR_ID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3183915197771956513)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vendor ID'
,p_source=>'VENDOR_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3263502643588980921)
,p_name=>'P198_TRANSACTION_TYPE_ID'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3183915197771956513)
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
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3263503011959980921)
,p_name=>'P198_CATCH_LINE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3183915197771956513)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Catch Line'
,p_source=>'CATCH_LINE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>100
,p_display_when=>'pkg_global_fnts.fn_getsimplemode=''N'''
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3263503383491980921)
,p_name=>'P198_SHORT_NAME'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3183915197771956513)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Short Name'
,p_source=>'SHORT_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>100
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3263503837199980921)
,p_name=>'P198_END_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3183915197771956513)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End Date'
,p_source=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>255
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
 p_id=>wwv_flow_imp.id(3263504230682980922)
,p_name=>'P198_START_DATE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3183915197771956513)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Start Date'
,p_source=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
 p_id=>wwv_flow_imp.id(3263504568420980922)
,p_name=>'P198_FAXNUM'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3183915197771956513)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fax Nos.'
,p_source=>'FAXNUM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>100
,p_display_when=>'pkg_global_fnts.fn_getsimplemode=''N'''
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3263505015502980922)
,p_name=>'P198_EMAIL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3183915197771956513)
,p_prompt=>'Email'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>4000
,p_display_when=>'pkg_global_fnts.fn_getsimplemode=''N'''
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3263505344792980922)
,p_name=>'P198_WEBSITE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3183915197771956513)
,p_prompt=>'Website'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>4000
,p_display_when=>'pkg_global_fnts.fn_getsimplemode=''N'''
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3263505772096980923)
,p_name=>'P198_ADD_CHILD_RECORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3183915197771956513)
,p_prompt=>'<font color="green" size="2"><b> Browse Related Records </b></font>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT B.PAGE_TITLE',
',APEX_UTIL.PREPARE_URL(p_url =>''f?p=''||:APP_ID||'':''||WEBPAGE_ID||'':''||:APP_SESSION||''::NO::P''||WEBPAGE_ID||''_ID:''',
'||fn_getprimarykey(:P198_ID, WEBPAGE_ID), p_checksum_type => ''SESSION'') WEBPAGE_ID',
'FROM TBLPAGELIST a JOIN APEX_APPLICATION_PAGES B ON A.WEBPAGE_ID=B.PAGE_ID',
'WHERE PARENT_PAGE= :APP_PAGE_ID',
'and add_child_only=1',
'AND WORKSPACE=APEX_UTIL.FIND_WORKSPACE((SELECT APEX_APPLICATION.GET_SECURITY_GROUP_ID FROM DUAL))',
'and upper(PAGE_TITLE) NOT LIKE ''%NIS RATES''',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_display_when=>'P198_ORGANISATION_TYPE'
,p_display_when2=>'SOFTWARE USER'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'REDIRECT_URL')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3263506180733980923)
,p_name=>'P198_MIGRATE_PK'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3183915197771956513)
,p_use_cache_before_default=>'NO'
,p_source=>'MIGRATE_PK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3263507829955980924)
,p_name=>'P198_BASE_CURRENCY'
,p_is_required=>true
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(3183915729416975134)
,p_use_cache_before_default=>'NO'
,p_item_default=>'GYD'
,p_prompt=>'Base Currency'
,p_source=>'BASE_CURRENCY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CURRENCY'
,p_lov=>'.'||wwv_flow_imp.id(3326633744040913822)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Use for salary conversion, in cases where employee salary doesn''t match the base currency of the company.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3263508238748980924)
,p_name=>'P198_TELNUM'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(3183915729416975134)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tel Nos.'
,p_source=>'TELNUM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>200
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3263508617494980924)
,p_name=>'P198_NIS_REG_NO'
,p_item_sequence=>161
,p_item_plug_id=>wwv_flow_imp.id(3183915729416975134)
,p_use_cache_before_default=>'NO'
,p_prompt=>'NIB/SS Reg No'
,p_source=>'NIS_REG_NO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>30
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3263508995380980924)
,p_name=>'P198_TAX_REG_NO'
,p_item_sequence=>151
,p_item_plug_id=>wwv_flow_imp.id(3183915729416975134)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tax Reg No'
,p_source=>'TAX_REG_NO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>30
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3263509848773980925)
,p_name=>'P198_TRANSITS'
,p_item_sequence=>121
,p_item_plug_id=>wwv_flow_imp.id(3183915729416975134)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Transits'
,p_source=>'TRANSITS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>5
,p_cMaxlength=>4000
,p_display_when=>'pkg_global_fnts.fn_getsimplemode=''N'''
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_help_text=>'Unique routing number used by Republic bank for their payroll remittance ebanking solution.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3263510281763980925)
,p_name=>'P198_COUNTRY'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3183915729416975134)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Country'
,p_source=>'COUNTRY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'COUNTRY_FULL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(value_description) a, UPPER(value_description) b',
'from hr_hcf_lookup A',
'where TABLE_NAME= ''TBLCOUNTRY''',
'and exists(select 1',
'           from hr_hcf_organisation b',
'           where b.id = a.org_id',
'           and use_for_seeded_data = 1',
'           and organisation_type=''SOFTWARE USER'')',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3263510672067980925)
,p_name=>'P198_ADDRESS'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3183915729416975134)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address'
,p_source=>'ADDRESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>40
,p_cMaxlength=>200
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3263511081531980926)
,p_name=>'P198_ORGANISATION_TAG'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3183915729416975134)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Organisation Tag'
,p_source=>'ORGANISATION_TAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>100
,p_display_when=>'pkg_global_fnts.fn_getsimplemode=''N'''
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3263511449703980926)
,p_name=>'P198_ORGANISATION_NAME'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3183915729416975134)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Organisation Name'
,p_source=>'ORGANISATION_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>1000
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3263512376057980927)
,p_name=>'P198_PARENT_ORG_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3183915729416975134)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Parent Organisation'
,p_source=>'PARENT_ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(organisation_name) organisation_name,id',
'from HR_HCF_ORGANISATION k',
'where verified_by is not null',
'and ORGANISATION_TYPE =:P198_ORGANISATION_TYPE',
'AND UPPER(organisation_name)!=:P198_ORGANISATION_NAME',
'and exists (select 1',
'            from VW_USERACCESS_FULL w',
'            where w.org_id = k.USER_ORG_id)            ',
'ORDER BY organisation_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_lov_cascade_parent_items=>'P198_ORGANISATION_TYPE'
,p_ajax_optimize_refresh=>'Y'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_help_text=>'Users must have access to the parent company. System administrators should grant and expire the access if users are not allowed to interact with parent company data.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'SINGLE',
  'attribute_08', 'CIC',
  'attribute_10', '500')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3263512774544980927)
,p_name=>'P198_ORGANISATION_TYPE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3183915729416975134)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Organisation Type'
,p_source=>'ORGANISATION_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ORGANISATION_TYPE'
,p_lov=>'.'||wwv_flow_imp.id(3297919052144761693)||'.'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3263513468827980928)
,p_name=>'P198_ID_PREV'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(3128298025433302003)
,p_prompt=>'P198_ID_PREV'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3263513917950980929)
,p_name=>'P198_ID_NEXT'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(3128298025433302003)
,p_prompt=>'P198_ID_NEXT'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3263514268274980929)
,p_name=>'P198_LETTER_HEAD_LOGO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3128298025433302003)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Letter Head Logo'
,p_source=>'LETTER_HEAD_LOGO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>3
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3263514716903980929)
,p_name=>'P198_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3128298025433302003)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3263515732199980930)
,p_name=>'P198_ORGANISATION'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_imp.id(3193594514727424195)
,p_prompt=>'Migrate Reference'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  DISTINCT INITCAP(ORGANISATION_NAME) A, ID',
'FROM HR_HCF_ORGANISATION A',
'where not EXISTS (SELECT 1 ',
'                FROM HR_HCF_ORGANISATION b',
'                WHERE A.ORGANISATION_TYPE = b.ORGANISATION_TYPE',
'                AND A.ORGANISATION_NAME  = b.ORGANISATION_NAME',
'                and USER_ORG_ID= :P198_ID',
'                )',
'AND ORGANISATION_TYPE=:P198_ORGANISATION_TYPE_G',
'and exists(select 1',
'           from hr_hcf_organisation b',
'           where A.USER_ORG_ID=b.id',
'           AND USE_FOR_SEEDED_DATA=1',
'           and organisation_type=''SOFTWARE USER''',
'           )',
'order by 1'))
,p_lov_cascade_parent_items=>'P198_ORGANISATION_TYPE_G'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>10
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_controls', 'ALL')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3263516066271980930)
,p_name=>'P198_ORGANISATION_TYPE_G'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_imp.id(3193594514727424195)
,p_prompt=>'Search by Organisation Type'
,p_display_as=>'NATIVE_SELECT_LIST'
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
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3263516532111980931)
,p_name=>'P198_MIGRATE_REFERENCE'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_imp.id(3193594514727424195)
,p_prompt=>'Migrate Reference'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  DISTINCT initcap(Table_Description) A,Table_Name ',
'from hr_hcf_lookup a',
'where exists(select 1',
'           from hr_hcf_organisation b',
'           where A.org_id=b.id',
'           AND USE_FOR_SEEDED_DATA=1',
'           and organisation_type=''SOFTWARE USER''',
'           )',
'AND table_name NOT IN (''TBLPAYMENTTYPE'',''TBLPAYMENTMODE'')',
'AND not EXISTS (SELECT 1 ',
'                FROM hr_hcf_lookup b',
'                WHERE A.TABLE_NAME = b.TABLE_NAME',
'                AND A.TABLE_DESCRIPTION  = b.TABLE_DESCRIPTION',
'                AND A.TABLE_VALUE = b.TABLE_VALUE',
'                and org_id = :P198_ID',
'                )',
'order by 1'))
,p_cHeight=>10
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_controls', 'ALL')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3263439329043980888)
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
'where ORG_id=:P198_ID',
'AND workflow_required =1',
'and ((to_date(:P198_START_DATE) between trunc(start_date) and trunc(end_date) and end_date is not null)',
'OR  (trunc(start_date) <= to_date(:P198_START_DATE) AND trunc(end_date) IS NULL ));',
'',
' IF V_COUNT>=1 and :P198_TRANSACTION_TYPE_ID is null then',
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
 p_id=>wwv_flow_imp.id(3263438862226980888)
,p_validation_name=>'enf_workflow_seq'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF pkg_global_fnts.fn_enforce_wfl_seq(:P198_TRANSACTION_TYPE_ID, :APP_PAGE_ID, :P198_ID, :P198_STATUS) =FALSE THEN',
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
 p_id=>wwv_flow_imp.id(3263440122109980889)
,p_validation_name=>'reject_verification_unverification'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if pkg_global_fnts.chk_verifier(:APP_USER ,:APP_PAGE_ID )=0 and pkg_global_fnts.status_descript(:P198_STATUS) like ''%VER%'' then',
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
 p_id=>wwv_flow_imp.id(3263439678392980889)
,p_validation_name=>'chk_dates'
,p_validation_sequence=>31
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'IF TO_DATE(:P198_END_DATE) < TO_DATE(:P198_START_DATE) THEN',
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
 p_id=>wwv_flow_imp.id(3263440523074980889)
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
'    where id = :P198_ID',
'    and verified_by is not null;',
'',
'    if pkg_global_fnts.chk_verifier(:APP_USER, :APP_PAGE_ID) =0 and v_old_status > 0 and  pkg_global_fnts.status_descript(:P198_STATUS) not like ''VER%'' then',
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
,p_when_button_pressed=>wwv_flow_imp.id(3263520362163980938)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3263434615846980885)
,p_name=>'Refresh OrgReq - Create'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3215332147219682043)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3263434135184980884)
,p_event_id=>wwv_flow_imp.id(3263434615846980885)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3128231915115043182)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3263433741680980884)
,p_name=>'Refresh OrgReq - Edit'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3128231915115043182)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3263433180062980884)
,p_event_id=>wwv_flow_imp.id(3263433741680980884)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3128231915115043182)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3263432775428980884)
,p_name=>'Refresh EduLevy - Create'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3228847653616091453)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3263432257269980883)
,p_event_id=>wwv_flow_imp.id(3263432775428980884)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3141676014164819934)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3263431880033980883)
,p_name=>'Refresh EduLevy - Edit'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3141676014164819934)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3263431372502980883)
,p_event_id=>wwv_flow_imp.id(3263431880033980883)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3141676014164819934)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3263431021038980883)
,p_name=>'Refresh NIB/SS - Create'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3215331823324675102)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3263430493767980883)
,p_event_id=>wwv_flow_imp.id(3263431021038980883)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3128208613381445868)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3263430135890980883)
,p_name=>'Refresh NIB/SS - Edit'
,p_event_sequence=>60
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3128208613381445868)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3263429586629980883)
,p_event_id=>wwv_flow_imp.id(3263430135890980883)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3128208613381445868)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3263429168224980882)
,p_name=>'Refresh Tax - Create'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3215331639469670312)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3263428739615980882)
,p_event_id=>wwv_flow_imp.id(3263429168224980882)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3128198116732238735)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3263428314239980882)
,p_name=>'Refresh Tax - Edit'
,p_event_sequence=>80
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3128198116732238735)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3263427825104980882)
,p_event_id=>wwv_flow_imp.id(3263428314239980882)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3128198116732238735)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3263427361115980882)
,p_name=>'Refresh Year - Create'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3215331424578666049)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3263426912696980882)
,p_event_id=>wwv_flow_imp.id(3263427361115980882)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3128180399595571441)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3263426482315980882)
,p_name=>'Refresh Year - Edit'
,p_event_sequence=>100
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3128180399595571441)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3263425949489980881)
,p_event_id=>wwv_flow_imp.id(3263426482315980882)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3128180399595571441)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3263425590182980881)
,p_name=>'Refresh WorkLoc - Create'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3263441576380980892)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3263425100918980881)
,p_event_id=>wwv_flow_imp.id(3263425590182980881)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3128172121620764643)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3263424660346980881)
,p_name=>'Refresh WorkLoc - Edit'
,p_event_sequence=>120
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3128172121620764643)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3263424190234980881)
,p_event_id=>wwv_flow_imp.id(3263424660346980881)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3128172121620764643)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3263423828858980881)
,p_name=>'Refresh BankTrans - Create'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3214972631074217868)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3263423341350980881)
,p_event_id=>wwv_flow_imp.id(3263423828858980881)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3127817812119132079)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3263422888438980880)
,p_name=>'Refresh BankTrans - Edit'
,p_event_sequence=>140
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3127817812119132079)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3263422347899980880)
,p_event_id=>wwv_flow_imp.id(3263422888438980880)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3127817812119132079)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3263422017625980880)
,p_name=>'SHOW_REF_GEN'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P198_MIGRATE_REFERENCE'
,p_condition_element=>'P198_MIGRATE_REFERENCE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3263420998840980880)
,p_event_id=>wwv_flow_imp.id(3263422017625980880)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3263517306784980932)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3263421511489980880)
,p_event_id=>wwv_flow_imp.id(3263422017625980880)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3263517306784980932)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3263420633451980879)
,p_name=>'SHOW_ORG_GEN'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P198_ORGANISATION'
,p_condition_element=>'P198_ORGANISATION'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3263419593486980879)
,p_event_id=>wwv_flow_imp.id(3263420633451980879)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3263516874162980932)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3263420085511980879)
,p_event_id=>wwv_flow_imp.id(3263420633451980879)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3263516874162980932)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3263419159579980879)
,p_name=>'show_hide_account_codes'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P198_ORGANISATION_TYPE'
,p_condition_element=>'P198_ORGANISATION_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'BANK'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3263418160319980879)
,p_event_id=>wwv_flow_imp.id(3263419159579980879)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P198_VENDOR_ID,P198_PAYSITE_CODE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3263418712795980879)
,p_event_id=>wwv_flow_imp.id(3263419159579980879)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P198_VENDOR_ID,P198_PAYSITE_CODE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3263437371605980886)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from HR_HCF_ORGANISATION'
,p_attribute_02=>'HR_HCF_ORGANISATION'
,p_attribute_03=>'P198_ID'
,p_attribute_04=>'ID'
,p_attribute_15=>'D'
,p_internal_uid=>3147653237749667181
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3263436985778980886)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_PAGINATION'
,p_process_name=>'Get Next or Previous Primary Key Value'
,p_attribute_02=>'HR_HCF_ORGANISATION'
,p_attribute_03=>'P198_ID'
,p_attribute_04=>'ID'
,p_attribute_07=>'ORGANISATION_NAME'
,p_attribute_09=>'P198_ID_NEXT'
,p_attribute_10=>'P198_ID_PREV'
,p_attribute_13=>'P198_ID_COUNT'
,p_attribute_14=>wwv_flow_string.join(wwv_flow_t_varchar2(
'ORGANISATION_TYPE=:P1310_ORGANISATION',
'and  exists ( ',
'              select 1',
'              FROM VW_USERACCESS A ',
'              where HR_HCF_ORGANISATION.USER_ORG_ID = a.org_id )'))
,p_internal_uid=>3147652851922667181
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3263435431532980886)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_machine_insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P198_MACHINE_INSERT is null and V(''LOGIN_VAR'') is not null then',
' :P198_MACHINE_INSERT:=V(''LOGIN_VAR'');',
'end if;',
'',
'if :P198_MACHINE_UPDATE is null and V(''LOGIN_VAR'') is not null then',
' :P198_MACHINE_UPDATE:=V(''LOGIN_VAR'');',
'end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,CREATE_AGAIN'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>3147651297676667181
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3263435035195980885)
,p_process_sequence=>21
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_machine_update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' :P198_MACHINE_UPDATE:=V(''LOGIN_VAR'');',
'',
' if :P198_MACHINE_INSERT is null and V(''LOGIN_VAR'') is not null then',
'    :P198_MACHINE_INSERT:=V(''LOGIN_VAR'');',
' end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3263520362163980938)
,p_internal_uid=>3147650901339667180
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3263436559015980886)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of HR_HCF_ORGANISATION'
,p_attribute_02=>'HR_HCF_ORGANISATION'
,p_attribute_03=>'P198_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P198_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>3147652425159667181
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3263436233938980886)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'29'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3263520771086980938)
,p_internal_uid=>3147652100082667181
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3263435839607980886)
,p_process_sequence=>50
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
'where TRANSACTION_TYPE_ID=:P198_TRANSACTION_TYPE_ID;',
'',
'select WFL_STATUS_DESCRIPTION into v_description',
'from tblworkflowstatus',
'where WFL_STATUS_ID=:P198_STATUS;',
'',
'  pkg_biz_rules.pop_notification',
'(',
'	get_transaction||'' for: ''||:P198_ORGANISATION_NAME,',
'	nvl(V(''APP_USER''),user),',
'	''ACTIVE'',',
'	current_date,	''f?p=''||:APP_ID||'':''||:APP_PAGE_ID||'':''||:APP_SESSION||''::NO::P''||:APP_PAGE_ID||''_ID:''||:P198_ID,',
'	v_description||'' ''||get_transaction||'' for: ''||''Organisations'',',
'	:P198_STATUS,:APP_PAGE_ID,:P198_TRANSACTION_TYPE_ID,',
'        ''HR_HCF_ORGANISATION'');',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3263520362163980938)
,p_process_when=>'P198_TRANSACTION_TYPE_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>3147651705751667181
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3263437820952980887)
,p_process_sequence=>60
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
'l_selected := APEX_UTIL.STRING_TO_TABLE(:P198_MIGRATE_REFERENCE);',
'',
'  ',
'FOR j IN 1..l_selected.COUNT',
'LOOP',
'',
'  ',
'for I in (',
'      select lookup_id, table_name,table_description, table_value, value_description, classification, custom_field,',
'          custom_field1, start_period, end_period, transaction_type_id, status, :P198_ID ORG_ID, verified_by, verified_date',
'      from hr_hcf_lookup a',
'      where exists(select 1',
'                   from hr_hcf_organisation b',
'                   where A.org_id=b.id',
'                   AND USE_FOR_SEEDED_DATA=1',
'                   and organisation_type=''SOFTWARE USER''',
'                   )',
'      AND TABLE_NAME = l_selected(j)',
'      ) loop',
'      ',
'begin     ',
'    insert into hr_hcf_lookup (lookup_id, table_name,table_description, table_value, value_description, classification, custom_field, ',
'                   custom_field1, start_period, end_period, transaction_type_id, status, org_id,verified_by, verified_date)		           		',
'    values(  i.lookup_id,   i.table_name,   i.table_description,   i.table_value,   i.value_description,   i.classification,   i.custom_field,',
'                    i.custom_field1,   i.start_period,   i.end_period,   i.transaction_type_id,   i.status,   i.ORG_ID,  i.verified_by,   i.verified_date);',
'      ',
'exception ',
'  when others then null;',
'end;',
'',
'end loop;',
'',
'',
'END LOOP;  ',
'',
'--migrate notification scheduler',
'INSERT INTO hr_apu_notify_scheduler (org_id,  notification_name, days_notify,  start_date,  days_keep_active)',
'select :P198_ID,  notification_name, days_notify,  start_date,  days_keep_active',
'from hr_apu_notify_scheduler a',
'where exists(select 1',
'                   from hr_hcf_organisation b',
'                   where A.org_id=b.id',
'                   AND USE_FOR_SEEDED_DATA=1',
'                   and organisation_type=''SOFTWARE USER''',
'                   );',
'',
'--hoildays',
'',
'begin',
'INSERT INTO HR_HCF_HOLIDAY(HOLIDAY_CODE, HOLIDAY_DATE, HOLIDAY_DESCRIP,  RATE_OF_PAY,  TENTATIVE_STATUS,  STATUS_CODE, ADHOC_HOLIDAY,',
'                           FOR_CALCULATION, TRANSACTION_TYPE_ID, STATUS, ORG_ID )',
'                           ',
'select  HOLIDAY_CODE, HOLIDAY_DATE, HOLIDAY_DESCRIP,  RATE_OF_PAY,  TENTATIVE_STATUS,  STATUS_CODE, ADHOC_HOLIDAY,',
'    FOR_CALCULATION, TRANSACTION_TYPE_ID, STATUS, :P198_ID',
'from HR_HCF_HOLIDAY',
'where extract(year from HOLIDAY_DATE) = (select max( extract(year from HOLIDAY_DATE))',
'                                      from HR_HCF_HOLIDAY a',
'                                       where exists(select 1',
'                                                   from hr_hcf_organisation b',
'                                                   where A.org_id=b.id',
'                                                   AND USE_FOR_SEEDED_DATA=1',
'                                                   and organisation_type=''SOFTWARE USER''',
'                                                   )',
'                                       );',
'',
'exception',
'    when others then null;',
'end;',
'',
'--income codes',
'begin',
'',
'INSERT INTO PA_PCF_INCOMECODE(INCOME_CODE, DESCRIPTION, ACCOUNT_CODE,USE_STANDARD_HOURS,SORT_ORDER,START_DATE,',
'      VERIFIED_BY,VERIFIED_DATE,TRANSACTION_TYPE_ID,STATUS,BULK_PAYMENT,INCOME_TYPE,TAXABLE,NIS_DEDUCTION,ADMIN_STATUS,org_id )',
'      ',
'select INCOME_CODE, DESCRIPTION, ACCOUNT_CODE,USE_STANDARD_HOURS,SORT_ORDER,START_DATE,',
'      VERIFIED_BY,VERIFIED_DATE,TRANSACTION_TYPE_ID,STATUS,BULK_PAYMENT,INCOME_TYPE,TAXABLE,NIS_DEDUCTION,ADMIN_STATUS,:P198_ID',
'from PA_PCF_INCOMECODE a    ',
'where exists(select 1',
'                   from hr_hcf_organisation b',
'                   where A.org_id=b.id',
'                   AND USE_FOR_SEEDED_DATA=1',
'                   and organisation_type=''SOFTWARE USER''',
'                   );',
'',
'exception',
'    when others then null;',
'end;',
'',
'    :P198_MIGRATE_REFERENCE :=null;',
'',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3263517306784980932)
,p_process_success_message=>'System references successfully migrated to current organisaton.'
,p_internal_uid=>3147653687096667182
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3263438199414980888)
,p_process_sequence=>70
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
'',
'    l_selected := APEX_UTIL.STRING_TO_TABLE(:P198_ORGANISATION);',
'  ',
'FOR j IN 1..l_selected.COUNT',
'LOOP',
'',
'  ',
'for I in (',
'          SELECT ORGANISATION_NAME,  ORGANISATION_TAG, ORGANISATION_TYPE, SHORT_NAME, ADDRESS,  TELNUM,',
'          FAXNUM, CATCH_LINE, NIS_REG_NO, TAX_REG_NO, LETTER_HEAD_LOGO, START_DATE, END_DATE, VERIFIED_DATE, VERIFIED_BY,',
'          TRANSACTION_TYPE_ID, STATUS, TRANSITS, COUNTRY, PHOTO, FILENAME,MIMETYPE, LAST_UPDATE_PHOTO,  BASE_CURRENCY',
'          FROM HR_HCF_ORGANISATION',
'          WHERE USE_FOR_SEEDED_DATA=1',
'          AND ORGANISATION_TYPE!=''SOFTWARE USER''',
'          AND ID = l_selected(j)',
'      ) loop',
'      ',
'      ',
'begin     ',
'    insert into HR_HCF_ORGANISATION(  ORGANISATION_NAME,  ORGANISATION_TAG, ORGANISATION_TYPE, SHORT_NAME, ADDRESS,  TELNUM,',
'          FAXNUM, CATCH_LINE, NIS_REG_NO, TAX_REG_NO, LETTER_HEAD_LOGO, START_DATE, END_DATE, VERIFIED_DATE, VERIFIED_BY,',
'          TRANSACTION_TYPE_ID, STATUS, TRANSITS, COUNTRY,  BASE_CURRENCY, USER_ORG_ID)',
'          ',
'    VALUES(  I.ORGANISATION_NAME,  I.ORGANISATION_TAG, I.ORGANISATION_TYPE, I.SHORT_NAME, I.ADDRESS,  I.TELNUM,',
'          I.FAXNUM, I.CATCH_LINE, I.NIS_REG_NO, I.TAX_REG_NO, I.LETTER_HEAD_LOGO, I.START_DATE, I.END_DATE, I.VERIFIED_DATE, I.VERIFIED_BY,',
'          I.TRANSACTION_TYPE_ID, I.STATUS, I.TRANSITS, I.COUNTRY,  I.BASE_CURRENCY, :P198_ID );',
'      ',
'exception',
'  when others then ',
'      v_sqlcode := sqlcode;',
'      v_sqlerrm := sqlerrm;',
'      pkg_biz_rules.log_message(v_sqlcode ,v_sqlerrm ,''error occurred while generating none software type organisations'' ,''P198.migrate_organisations'',NULL);                                        ',
'             ',
'end;',
'',
'end loop;',
'',
'',
'END LOOP;  ',
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
'            a.STATUS, REDUCE_TAX_NIS_TOTAL, :APP_ORG_ID ORG_ID',
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
'        STATUS, REDUCE_TAX_NIS_TOTAL, ORG_ID )',
'     ',
'    values(I.EXPENSE_CODE, I.DESCRIPTION, I.PRIORITY_LEVEL, I.ACCOUNT_CODE, I.WHO_PAYS, I.SORT_ORDER, I.START_DATE, I.VERIFIED_BY,',
'            I.VERIFIED_DATE, I.QUERY_EMPLOYEE_DATA, I.ACCOUNT_CODE_EMPLR, I.UNION_AMOUNT, null, I.UNION_DEDUCTION, I.GROUP_MED, I.TRANSACTION_TYPE_ID,',
'            i.STATUS, i.REDUCE_TAX_NIS_TOTAL, i.ORG_ID);',
'',
'exception',
'  when others then ',
'      v_sqlcode := sqlcode;',
'      v_sqlerrm := sqlerrm;',
'      pkg_biz_rules.log_message(v_sqlcode ,v_sqlerrm ,''error occurred while generating none software type organisations'' ,''P198.DEDUCTION_CODES'',NULL);                                        ',
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
'        values (:P198_ID, i.organisation_name, i.start_date,  i.end_date,  i.remarks, i.config_name)',
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
'   :P198_ORGANISATION:=NULL;',
'   ',
'   begin',
'    for I in ',
'            (select distinct id, table_name, audit_table, start_audit,  :P198_ID org_id',
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
,p_process_when_button_id=>wwv_flow_imp.id(3263516874162980932)
,p_process_success_message=>'Successful generation of Organisations.'
,p_internal_uid=>3147654065558667183
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3263438610973980888)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'REMOVE_PHOTO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update hr_hcf_organisation',
'set photo=null,',
'    FILENAME=null,',
'    MIMETYPE=null,',
'    LAST_UPDATE_PHOTO=null',
'where id=:P198_ID;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3263506616389980923)
,p_internal_uid=>3147654477117667183
);
wwv_flow_imp.component_end;
end;
/
