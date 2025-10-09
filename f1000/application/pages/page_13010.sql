prompt --application/pages/page_13010
begin
--   Manifest
--     PAGE: 13010
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>1000
,p_default_id_offset=>221683928681757931
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>13010
,p_name=>'rptjob_desc_dtls'
,p_alias=>'RPTJOB-DESC-DTLS'
,p_step_title=>'Listing of Job Descriptions'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3825577329210146780)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Scroll Results Only in Side Column */',
'.t-Body-side {',
'    display: flex;',
'    flex-direction: column;',
'    overflow: hidden;',
'}',
'.search-results {',
'    flex: 1;',
'    overflow: auto;',
'}',
'/* Format Search Region */',
'.search-region {',
'    border-bottom: 1px solid rgba(0,0,0,.1);',
'    flex-shrink: 0;',
'}',
'',
''))
,p_step_template=>2526643373347724467
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3807018089076118135)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4014902300842163066)
,p_plug_name=>'Description Details'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3980954678991226087)
,p_name=>'Job Details'
,p_parent_plug_id=>wwv_flow_imp.id(4014902300842163066)
,p_template=>2664334895415463485
,p_display_sequence=>10
,p_region_css_classes=>'js-master-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-useLocalStorage:is-expanded:t-Region--accent4:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_grid_column_span=>6
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  j.job_classification,',
'        j.description || '' ['' || j.job_code || '']'' description,',
'        initcap(pkg_global_fnts.Get_Lookup_Col(j.employment_class_job, ''VALUE_DESCRIPTION'')) employment_class,',
'        j.shift_rota_id shift_rotation,',
'        REPLACE(j.desc_dtl_status, ''_'', '' '') desc_dtl_status',
'from hr_hcf_job j',
'left join hr_hcf_positiongrade pg on pg.id = j.job_grade_id',
'where j.id = :P13010_ID',
'and j.org_id = :APP_ORG_SHR_DED'))
,p_display_when_condition=>'P13010_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_items_to_submit=>'P13010_ID'
,p_lazy_loading=>false
,p_query_row_template=>2100515439059797523
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397511825669416557)
,p_query_column_id=>1
,p_column_alias=>'JOB_CLASSIFICATION'
,p_column_display_sequence=>10
,p_column_heading=>'Job Classification'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397512217840416558)
,p_query_column_id=>2
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>30
,p_column_heading=>'Description'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397512962729416558)
,p_query_column_id=>3
,p_column_alias=>'EMPLOYMENT_CLASS'
,p_column_display_sequence=>40
,p_column_heading=>'Employment Class'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397512555045416558)
,p_query_column_id=>4
,p_column_alias=>'SHIFT_ROTATION'
,p_column_display_sequence=>70
,p_column_heading=>'Shift Rotation'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  SHIFT_CYCLE_NAME value_desc, a.id',
'from HR_ATT_SHIFT_ROTA a join hr_hcf_lookup b on b.id = a.shift_TYPE_ID',
'where B.table_name = ''TBLSHIFTTYPE''',
'and a.start_date <= trunc(current_date)',
'and (a.end_date is null or a.end_date >=trunc(current_date))',
'and a.org_id=:APP_ORG_SHR_DED',
'ORDER BY 1'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397513372707416559)
,p_query_column_id=>5
,p_column_alias=>'DESC_DTL_STATUS'
,p_column_display_sequence=>80
,p_column_heading=>'Status'
,p_column_html_expression=>'<b>#DESC_DTL_STATUS#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3980955417610226094)
,p_plug_name=>'Key Outputs'
,p_parent_plug_id=>wwv_flow_imp.id(4014902300842163066)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:i-h320:t-Region--accent1:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P13010_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3980954161877226082)
,p_name=>'Key Outputs'
,p_parent_plug_id=>wwv_flow_imp.id(3980955417610226094)
,p_template=>4501440665235496320
,p_display_sequence=>60
,p_region_css_classes=>'js-detail-region'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--hideNoPagination'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    id,',
'    sequence,',
'    job_id,',
'    description || '' (Weighting: '' || weighting || '')'' key_outputs',
'from ',
'    hr_hcf_jobkeyoutput',
'where',
'    job_id = :P13010_ID',
'order by sequence asc'))
,p_display_when_condition=>'P13010_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P13010_ID'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<center><b>Records to be added</b></center>'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397509841114416555)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397510282251416555)
,p_query_column_id=>2
,p_column_alias=>'SEQUENCE'
,p_column_display_sequence=>20
,p_column_heading=>'Sequence'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397510639689416556)
,p_query_column_id=>3
,p_column_alias=>'JOB_ID'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397511114532416556)
,p_query_column_id=>4
,p_column_alias=>'KEY_OUTPUTS'
,p_column_display_sequence=>40
,p_column_heading=>'Key Outputs'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3982625302927590746)
,p_plug_name=>'Job Responsibilities'
,p_parent_plug_id=>wwv_flow_imp.id(4014902300842163066)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:i-h320:t-Region--accent2:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P13010_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3982625358980590747)
,p_name=>'Job Responsibilties'
,p_parent_plug_id=>wwv_flow_imp.id(3982625302927590746)
,p_template=>4501440665235496320
,p_display_sequence=>20
,p_region_css_classes=>'js-detail-region'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--hideNoPagination'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    id,',
'    resp_sequence,',
'    job_id,',
'    responsibility_detail',
'from ',
'    hr_hcf_jobresponsibility ',
'where',
'    job_id = :P13010_ID',
'order by resp_sequence asc'))
,p_display_when_condition=>'P13010_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P13010_ID'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<center><b>Records to be added</b></center>'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397508885831416553)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397508054928416553)
,p_query_column_id=>2
,p_column_alias=>'RESP_SEQUENCE'
,p_column_display_sequence=>40
,p_column_heading=>'Sequence'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397507648627416552)
,p_query_column_id=>3
,p_column_alias=>'JOB_ID'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397508512486416553)
,p_query_column_id=>4
,p_column_alias=>'RESPONSIBILITY_DETAIL'
,p_column_display_sequence=>50
,p_column_heading=>'Responsibility Detail'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3982626038833590754)
,p_plug_name=>'Competencies'
,p_parent_plug_id=>wwv_flow_imp.id(4014902300842163066)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:i-h320:t-Region--accent3:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P13010_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3982626449908590758)
,p_name=>'Core Competencies'
,p_parent_plug_id=>wwv_flow_imp.id(3982626038833590754)
,p_template=>4501440665235496320
,p_display_sequence=>90
,p_region_css_classes=>'js-detail-region'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--hideNoPagination'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    a.id, ',
'    a.sequence, ',
'    a.job_id, ',
'    b.competency_type,',
'    a.competency_id,',
'    a.competency_lvl_id',
'from',
'    hr_hcf_jobcompetency a ',
'    left join hr_hcf_competency b on a.competency_id = b.id',
'where',
'    upper(DESCRIPTION_TYPE) NOT IN (''F'')     ',
'    and job_id = :P13010_ID',
'order by sequence asc'))
,p_display_when_condition=>'P13010_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P13010_ID'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<center><b>Records to be added</b></center>'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397515599942416562)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397515975835416562)
,p_query_column_id=>2
,p_column_alias=>'SEQUENCE'
,p_column_display_sequence=>20
,p_column_heading=>'Sequence'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397516408720416562)
,p_query_column_id=>3
,p_column_alias=>'JOB_ID'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397514344131416560)
,p_query_column_id=>4
,p_column_alias=>'COMPETENCY_TYPE'
,p_column_display_sequence=>50
,p_column_heading=>'Competency Type'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(3382043905565225639)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397514813990416561)
,p_query_column_id=>5
,p_column_alias=>'COMPETENCY_ID'
,p_column_display_sequence=>60
,p_column_heading=>'Competency'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(3382154012874332503)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397515187405416561)
,p_query_column_id=>6
,p_column_alias=>'COMPETENCY_LVL_ID'
,p_column_display_sequence=>70
,p_column_heading=>'Competency Level'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(3382141116510315608)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3982626146625590755)
,p_plug_name=>'Skills'
,p_parent_plug_id=>wwv_flow_imp.id(4014902300842163066)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:i-h320:t-Region--accent3:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P13010_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3982626998102590763)
,p_name=>'Technical Competencies'
,p_parent_plug_id=>wwv_flow_imp.id(3982626146625590755)
,p_template=>4501440665235496320
,p_display_sequence=>140
,p_region_css_classes=>'js-detail-region'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--hideNoPagination'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    id, ',
'    sequence, ',
'    job_id, ',
'    description technical_competency,',
'    competency_id,',
'    competency_lvl_id',
'from',
'    hr_hcf_jobcompetency',
'where',
'    upper(DESCRIPTION_TYPE) = ''F''',
'    and job_id = :P13010_ID',
'order by sequence asc'))
,p_display_when_condition=>'P13010_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P13010_ID'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<center><b>Records to be added</b></center>'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397518582029416565)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397518972128416566)
,p_query_column_id=>2
,p_column_alias=>'SEQUENCE'
,p_column_display_sequence=>20
,p_column_heading=>'Sequence'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397519364392416566)
,p_query_column_id=>3
,p_column_alias=>'JOB_ID'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397518194775416565)
,p_query_column_id=>4
,p_column_alias=>'TECHNICAL_COMPETENCY'
,p_column_display_sequence=>40
,p_column_heading=>'Skill Description'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397517816012416565)
,p_query_column_id=>5
,p_column_alias=>'COMPETENCY_ID'
,p_column_display_sequence=>50
,p_column_heading=>'Linked to Skill'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(3382107604034315607)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397517411366416564)
,p_query_column_id=>6
,p_column_alias=>'COMPETENCY_LVL_ID'
,p_column_display_sequence=>60
,p_column_heading=>'Linked to Skill Level'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(3382141116510315608)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3982626270064590756)
,p_plug_name=>'Minimum Education'
,p_parent_plug_id=>wwv_flow_imp.id(4014902300842163066)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:i-h320:t-Region--accent4:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P13010_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3982627477244590768)
,p_name=>'Min Education'
,p_parent_plug_id=>wwv_flow_imp.id(3982626270064590756)
,p_template=>4501440665235496320
,p_display_sequence=>160
,p_region_css_classes=>'js-detail-region'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--hideNoPagination'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    ID,',
'    JOB_ID,',
'    TRAINING_SEQUENCE,',
'    REQ_TRAINING_DETAIL || '' (Weighting: '' || weigthing || '')'' Required_education,',
'    TRAINING_LEVEL,',
'    SUBJECT_COURSE,',
'    CLASSIFICATION',
'from',
'    HR_HCF_JOBTRAINING',
'where job_id = :P13010_ID',
'order by training_sequence asc'))
,p_display_when_condition=>'P13010_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P13010_ID'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<center><b>Records to be added</b></center>'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397520377475416568)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397520806854416568)
,p_query_column_id=>2
,p_column_alias=>'JOB_ID'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397521179427416569)
,p_query_column_id=>3
,p_column_alias=>'TRAINING_SEQUENCE'
,p_column_display_sequence=>40
,p_column_heading=>'Sequence'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397521593550416569)
,p_query_column_id=>4
,p_column_alias=>'REQUIRED_EDUCATION'
,p_column_display_sequence=>50
,p_column_heading=>'Education'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397522016149416570)
,p_query_column_id=>5
,p_column_alias=>'TRAINING_LEVEL'
,p_column_display_sequence=>60
,p_column_heading=>'Training Level'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397522357772416570)
,p_query_column_id=>6
,p_column_alias=>'SUBJECT_COURSE'
,p_column_display_sequence=>70
,p_column_heading=>'Subject Course'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397522822499416570)
,p_query_column_id=>7
,p_column_alias=>'CLASSIFICATION'
,p_column_display_sequence=>80
,p_column_heading=>'Classification'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3982626411302590757)
,p_plug_name=>'Minimum Experience'
,p_parent_plug_id=>wwv_flow_imp.id(4014902300842163066)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:i-h320:t-Region--accent5:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P13010_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3982628013996590773)
,p_name=>'Min Experience'
,p_parent_plug_id=>wwv_flow_imp.id(3982626411302590757)
,p_template=>4501440665235496320
,p_display_sequence=>180
,p_region_css_classes=>'js-detail-region'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--hideNoPagination'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    ID,',
'    JOB_ID,',
'    EXPERIENCE_REQUIRED || '' (Weighting: '' || weigthing || '')'' experience_dtls,',
'    DURATION_QUANTITY || '' '' ||DURATION_UNIT Duration,',
'    AT_POSITION',
'from',
'    HR_HCF_JOBEXPERIENCE',
'where JOB_ID = :P13010_ID'))
,p_display_when_condition=>'P13010_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P13010_ID'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<center><b>Records to be added</b></center>'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397524179384416573)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397524561179416573)
,p_query_column_id=>2
,p_column_alias=>'JOB_ID'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397524937038416573)
,p_query_column_id=>3
,p_column_alias=>'EXPERIENCE_DTLS'
,p_column_display_sequence=>50
,p_column_heading=>'Experience'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397525335660416574)
,p_query_column_id=>4
,p_column_alias=>'DURATION'
,p_column_display_sequence=>40
,p_column_heading=>'Duration'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397523774634416572)
,p_query_column_id=>5
,p_column_alias=>'AT_POSITION'
,p_column_display_sequence=>60
,p_column_heading=>'At Position'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4012699004727807269)
,p_plug_name=>'Required Education & Experience'
,p_parent_plug_id=>wwv_flow_imp.id(4014902300842163066)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:i-h240:t-Region--accent2:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P13010_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(4012697517349807254)
,p_name=>'Required Education & Experience'
,p_parent_plug_id=>wwv_flow_imp.id(4012699004727807269)
,p_template=>4501440665235496320
,p_display_sequence=>50
,p_region_css_classes=>'js-detail-region'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    id,',
'    requirement',
'FROM',
'    hr_hcf_jobgenrequire',
'where ',
'    JOB_ID = :P13010_ID'))
,p_display_when_condition=>'P13010_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_items_to_submit=>'P13010_ID'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<center><b>Records to be added</b></center>'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397506295713416550)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397506693267416550)
,p_query_column_id=>2
,p_column_alias=>'REQUIREMENT'
,p_column_display_sequence=>40
,p_column_heading=>'Requirement'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(5438494534681829589)
,p_name=>'Master Records'
,p_template=>3371237801798025892
,p_display_sequence=>30
,p_region_css_classes=>'search-results'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'t-MediaList--showDesc:t-MediaList--stack'
,p_display_point=>'REGION_POSITION_02'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select J.id,',
'    null link_class,',
'    apex_page.get_url(p_items => ''P13010_ID'', p_values => J.id) link,',
'    null icon_class,',
'    null link_attr,',
'    null icon_color_class,',
'    case when nvl(:P13010_ID,''0'') = J.id',
'      then ''is-active'' ',
'      else '' ''',
'    end list_class,',
'    substr("DESCRIPTION", 1, 50)||( case when length("DESCRIPTION") > 50 then ''...'' end ) list_title,',
'    REPLACE(substr("DESC_DTL_STATUS", 1, 50), ''_'', '' '')||( case when length("DESC_DTL_STATUS") > 50 then ''...'' end ) list_text,',
'    null list_badge',
'    from "HR_HCF_JOB" J',
'  where (:P13010_SEARCH is null',
'        or upper(J."DESCRIPTION") like ''%''||upper(:P13010_SEARCH)||''%''',
'        or upper(J."JOB_CODE") like ''%''||upper(:P13010_SEARCH)||''%''',
'        or upper(J."DESC_DTL_STATUS") like ''%''||upper(:P13010_SEARCH)||''%''',
'        or replace(upper(J."DESC_DTL_STATUS"), ''_'', '' '') like ''%''||upper(:P13010_SEARCH)||''%''',
'    )',
'and trunc(J.start_date) <= trunc(current_date) and trunc(nvl(J.end_date,trunc(current_date))) >= trunc(current_date)',
'and J.org_id= :APP_ORG_SHR_DED',
'order by "DESCRIPTION"',
'',
'',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P13010_SEARCH'
,p_lazy_loading=>false
,p_query_row_template=>2093604263195414824
,p_query_num_rows=>1000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'<div class="u-tC">No Records Found</div>'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397528645203416579)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>8
,p_column_heading=>'Id'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397529038054416580)
,p_query_column_id=>2
,p_column_alias=>'LINK_CLASS'
,p_column_display_sequence=>1
,p_column_heading=>'Link Class'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397529451362416580)
,p_query_column_id=>3
,p_column_alias=>'LINK'
,p_column_display_sequence=>9
,p_column_heading=>'Link'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397529868759416580)
,p_query_column_id=>4
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>2
,p_column_heading=>'Icon Class'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397530236692416581)
,p_query_column_id=>5
,p_column_alias=>'LINK_ATTR'
,p_column_display_sequence=>3
,p_column_heading=>'Link Attr'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397530712516416581)
,p_query_column_id=>6
,p_column_alias=>'ICON_COLOR_CLASS'
,p_column_display_sequence=>4
,p_column_heading=>'Icon Color Class'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397531108136416582)
,p_query_column_id=>7
,p_column_alias=>'LIST_CLASS'
,p_column_display_sequence=>10
,p_column_heading=>'List Class'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397531484248416582)
,p_query_column_id=>8
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>5
,p_column_heading=>'List Title'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397531868209416582)
,p_query_column_id=>9
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>6
,p_column_heading=>'List Text'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3397532299714416583)
,p_query_column_id=>10
,p_column_alias=>'LIST_BADGE'
,p_column_display_sequence=>7
,p_column_heading=>'List Badge'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5438494633767828464)
,p_plug_name=>'Search'
,p_region_css_classes=>'search-region padding-md'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_02'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5438501715650852439)
,p_plug_name=>'Job Description Details'
,p_icon_css_classes=>'fa-server-search'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--iconsCircle'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5441188901947277214)
,p_plug_name=>'Listing of Job Descriptions'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    job_hd.id, ',
'    trim(job_hd.description) job_name,',
'    key_outputs.key_outputs,',
'    resp.details responsibility_dtl,',
'    job_comp_core.core_comp, ',
'    job_comp_tech.tech_comp, ',
'    req_edu.edu required_edu',
'from',
'    hr_hcf_job job_hd',
'    left join (select ',
'            job_id, ',
'            listagg(description, ''; '' ||  CHR(13) || CHR(10)) within group (order by sequence) key_outputs',
'        from ',
'            hr_hcf_jobkeyoutput ',
'        group by ',
'            job_id) key_outputs on key_outputs.job_id = job_hd.id',
'    left join (select ',
'            job_id, ',
'            listagg(responsibility_detail, ''; '' ||  CHR(13) || CHR(10)) within group (order by resp_sequence) details ',
'        from ',
'            hr_hcf_jobresponsibility ',
'        group by ',
'            job_id ) resp on resp.job_id = job_hd.id',
'    left join (select ',
'            job_id, ',
'            ''Core/Leadership Competencies: '' ||listagg(description, ''; '' ||  CHR(13) || CHR(10)) within group (order by sequence) core_comp',
'        from',
'            hr_hcf_jobcompetency',
'        where',
'             upper(DESCRIPTION_TYPE) IN (''CORE'',''LEADERSHIP'') ',
'        group by',
'            job_id) job_comp_core on job_comp_core.job_id = job_hd.id',
'    left join (select ',
'            job_id, ',
'            ''Technical Competencies: '' ||listagg(description, ''; '' ||  CHR(13) || CHR(10)) within group (order by sequence) tech_comp',
'        from',
'            hr_hcf_jobcompetency',
'        where',
'             upper(DESCRIPTION_TYPE)=''TECHNICAL''',
'        group by',
'            job_id) job_comp_tech on job_comp_tech.job_id = job_hd.id    ',
'    left join (select ',
'            job_id, ',
'            listagg(requirement, ''; '' ||  CHR(13) || CHR(10)) within group (order by sequence) edu',
'        from',
'            hr_hcf_jobgenrequire',
'        group by',
'            job_id) req_edu on req_edu.job_id = job_hd.id    ',
'where',
'    job_hd.org_id = :APP_ORG_SHR_DED',
'order by ',
'    JOB_NAME',
'    '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5441188712864277214)
,p_name=>'Listing of Jobs'
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
,p_detail_link=>'f?p=&APP_ID.:13011:&SESSION.::&DEBUG.::P13011_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'PUR_INV'
,p_internal_uid=>2663122880332859806
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3397535400081416589)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3397532985254416585)
,p_db_column_name=>'JOB_NAME'
,p_display_order=>11
,p_column_identifier=>'AF'
,p_column_label=>'Job Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3397533397244416587)
,p_db_column_name=>'KEY_OUTPUTS'
,p_display_order=>21
,p_column_identifier=>'AG'
,p_column_label=>'Key Outputs'
,p_column_html_expression=>'<pre style="font-size:9px;">#KEY_OUTPUTS#</pre>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3397533790427416587)
,p_db_column_name=>'RESPONSIBILITY_DTL'
,p_display_order=>31
,p_column_identifier=>'AH'
,p_column_label=>'Responsibility Dtl'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3397534211034416588)
,p_db_column_name=>'CORE_COMP'
,p_display_order=>41
,p_column_identifier=>'AI'
,p_column_label=>'Core Comp'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3397534615976416588)
,p_db_column_name=>'TECH_COMP'
,p_display_order=>51
,p_column_identifier=>'AJ'
,p_column_label=>'Tech Comp'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3397534949639416588)
,p_db_column_name=>'REQUIRED_EDU'
,p_display_order=>61
,p_column_identifier=>'AK'
,p_column_label=>'Required Edu'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5405983994530402549)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Chart View'
,p_report_seq=>10
,p_report_type=>'CHART'
,p_report_alias=>'6194698'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>25
,p_break_on=>'JOB_CLASSIFICATION:0:0:0:0:0'
,p_break_enabled_on=>'JOB_CLASSIFICATION:0:0:0:0:0'
,p_chart_type=>'bar'
,p_chart_label_column=>'DESIGNATION_CATEGORY'
,p_chart_value_column=>'ID'
,p_chart_aggregate=>'COUNT'
,p_chart_sorting=>'DEFAULT'
,p_chart_orientation=>'horizontal'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5441186820458277209)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6194702'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>':JOB_NAME:KEY_OUTPUTS:RESPONSIBILITY_DTL:CORE_COMP:TECH_COMP:REQUIRED_EDU'
,p_sort_column_1=>'DESCRIPTION'
,p_sort_direction_1=>'ASC'
,p_break_on=>'DESIGNATION_CATEGORY:0:0:0:0:0'
,p_break_enabled_on=>'DESIGNATION_CATEGORY:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3397536887677416592)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5441188901947277214)
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
 p_id=>wwv_flow_imp.id(3397536515982416591)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5441188901947277214)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1307:&SESSION.::&DEBUG.:1307::'
,p_security_scheme=>wwv_flow_imp.id(3807019444763118136)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3397526807741416576)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5438501715650852439)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Return'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:95:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-hand-o-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3397527150395416577)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5438501715650852439)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:13010:&SESSION.:RESET:&DEBUG.:RP,13010::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3397527629399416577)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(5438501715650852439)
,p_button_name=>'EDIT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Edit'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:13011:&SESSION.::&DEBUG.:13011:P13011_JOB:&P13010_ID.'
,p_icon_css_classes=>'fa-pencil'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3397526072424416575)
,p_name=>'P13010_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5438494633767828464)
,p_prompt=>'Search'
,p_placeholder=>'Search...'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:t-Form-fieldContainer--postTextBlock'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3397528030384416578)
,p_name=>'P13010_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5438501715650852439)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3397537250270416592)
,p_name=>'P13010_ORGANISATION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5441188901947277214)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3397539779674416603)
,p_name=>'Refresh - Create'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3397536515982416591)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3397540292370416604)
,p_event_id=>wwv_flow_imp.id(3397539779674416603)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5441188901947277214)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3397540719864416604)
,p_name=>'Refresh - Edit'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(5441188901947277214)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3397541186733416605)
,p_event_id=>wwv_flow_imp.id(3397540719864416604)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5441188901947277214)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3397538384706416600)
,p_name=>'Perform Search'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P13010_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.which === apex.jQuery.ui.keyCode.ENTER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3397538910397416602)
,p_event_id=>wwv_flow_imp.id(3397538384706416600)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5438494534681829589)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3397539359361416603)
,p_event_id=>wwv_flow_imp.id(3397538384706416600)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CANCEL_EVENT'
);
wwv_flow_imp.component_end;
end;
/
