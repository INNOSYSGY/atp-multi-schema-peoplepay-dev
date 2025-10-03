prompt --application/pages/page_13015
begin
--   Manifest
--     PAGE: 13015
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>13015
,p_name=>'rptposition_desc_dtls'
,p_alias=>'RPTPOSITION-DESC-DTLS'
,p_step_title=>'Listing of Position Descriptions'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3603893400528388849)
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
,p_required_role=>wwv_flow_imp.id(3604031290683452795)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3801073415427718259)
,p_plug_name=>'Description Details'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(4360372042468669881)
,p_name=>'Position Details'
,p_parent_plug_id=>wwv_flow_imp.id(3801073415427718259)
,p_template=>2664334895415463485
,p_display_sequence=>10
,p_region_css_classes=>'js-master-region'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent1:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  p.position_name,',
'        p.orgdtl_id,',
'        p.grade_id,',
'        c.location_description,',
'        REPLACE(p.desc_dtl_status, ''_'', '' '') desc_dtl_status,',
'        REPLACE(initcap(p.use_for_recruitment), ''_'', '' '') description_source',
'from hr_hcf_position p left outer join HR_HCF_WORKLOCATION c on c.id=p.def_work_LOCATION_ID',
'where p.id = :P13015_ID',
'and exists (select 1',
'              from hr_hcf_orgstructuredtl x join hr_hcf_orgstructurehd y',
'              on y.id=x.ORG_STRUCTURE_ID',
'              WHERE p.ORGDTL_ID= X.ID --nvl(A.ORGDTL_ID,1)=decode(A.ORGDTL_ID,null, 1, X.ID)',
'              and y.org_id=:APP_ORG_ID',
'              )'))
,p_display_when_condition=>'P13015_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_items_to_submit=>'P13015_ID'
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
 p_id=>wwv_flow_imp.id(3183697087849971772)
,p_query_column_id=>1
,p_column_alias=>'POSITION_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Position Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3183695845814971771)
,p_query_column_id=>2
,p_column_alias=>'ORGDTL_ID'
,p_column_display_sequence=>30
,p_column_heading=>'Department'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(3632491032568373420)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3183696261929971771)
,p_query_column_id=>3
,p_column_alias=>'GRADE_ID'
,p_column_display_sequence=>40
,p_column_heading=>'Grade'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(3632558643709481228)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3183696612878971772)
,p_query_column_id=>4
,p_column_alias=>'LOCATION_DESCRIPTION'
,p_column_display_sequence=>50
,p_column_heading=>'Location Description'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3183695019215971770)
,p_query_column_id=>5
,p_column_alias=>'DESC_DTL_STATUS'
,p_column_display_sequence=>60
,p_column_heading=>'Status'
,p_column_html_expression=>'<b>#DESC_DTL_STATUS#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3183695427719971770)
,p_query_column_id=>6
,p_column_alias=>'DESCRIPTION_SOURCE'
,p_column_display_sequence=>70
,p_column_heading=>'Description Source'
,p_column_html_expression=>'<b>#DESCRIPTION_SOURCE#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4360372781087669888)
,p_plug_name=>'Key Outputs'
,p_parent_plug_id=>wwv_flow_imp.id(3801073415427718259)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:i-h320:t-Region--accent2:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P13015_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(4360371525354669876)
,p_name=>'Key Outputs'
,p_parent_plug_id=>wwv_flow_imp.id(4360372781087669888)
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
'    position_id,',
'    description || '' (Weighting: '' || weighting || '')'' key_outputs',
'from ',
'    hr_hcf_positionkeyoutput',
'where',
'    position_id = :P13015_ID'))
,p_display_when_condition=>'P13015_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P13015_ID'
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
 p_id=>wwv_flow_imp.id(3183693185474971767)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3183693583811971768)
,p_query_column_id=>2
,p_column_alias=>'SEQUENCE'
,p_column_display_sequence=>20
,p_column_heading=>'Sequence'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3183694330865971769)
,p_query_column_id=>3
,p_column_alias=>'POSITION_ID'
,p_column_display_sequence=>50
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3183693911979971768)
,p_query_column_id=>4
,p_column_alias=>'KEY_OUTPUTS'
,p_column_display_sequence=>40
,p_column_heading=>'Key Outputs'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4362042666405034540)
,p_plug_name=>'Position Responsibilities'
,p_parent_plug_id=>wwv_flow_imp.id(3801073415427718259)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:i-h320:t-Region--accent2:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P13015_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(4362042722458034541)
,p_name=>'Position Responsibilties'
,p_parent_plug_id=>wwv_flow_imp.id(4362042666405034540)
,p_template=>4501440665235496320
,p_display_sequence=>70
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
'    position_id,',
'    responsibility_detail',
'from ',
'    hr_hcf_positionresponsibility ',
'where',
'    position_id = :P13015_ID'))
,p_display_when_condition=>'P13015_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P13015_ID'
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
 p_id=>wwv_flow_imp.id(3183691789298971765)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3183690983558971764)
,p_query_column_id=>2
,p_column_alias=>'RESP_SEQUENCE'
,p_column_display_sequence=>40
,p_column_heading=>'Sequence'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3183692183049971766)
,p_query_column_id=>3
,p_column_alias=>'POSITION_ID'
,p_column_display_sequence=>60
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3183691403001971765)
,p_query_column_id=>4
,p_column_alias=>'RESPONSIBILITY_DETAIL'
,p_column_display_sequence=>50
,p_column_heading=>'Responsibility Detail'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4362043402311034548)
,p_plug_name=>'Competencies'
,p_parent_plug_id=>wwv_flow_imp.id(3801073415427718259)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:i-h320:t-Region--accent3:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P13015_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(4362043813386034552)
,p_name=>'Behavioural Competencies'
,p_parent_plug_id=>wwv_flow_imp.id(4362043402311034548)
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
'    a.position_id, ',
'    b.competency_type,',
'    a.competency_id,',
'    a.competency_lvl_id',
'from',
'    hr_hcf_positioncompetency a ',
'    left join hr_hcf_competency b on a.competency_id = b.id',
'where',
'    upper(DESCRIPTION_TYPE) NOT IN (''F'')     ',
'    and position_id = :P13015_ID',
'order by sequence asc'))
,p_display_when_condition=>'P13015_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P13015_ID'
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
 p_id=>wwv_flow_imp.id(3183699277277971775)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3183699661680971776)
,p_query_column_id=>2
,p_column_alias=>'SEQUENCE'
,p_column_display_sequence=>20
,p_column_heading=>'Sequence'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3183700054507971776)
,p_query_column_id=>3
,p_column_alias=>'POSITION_ID'
,p_column_display_sequence=>50
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3183698484257971774)
,p_query_column_id=>4
,p_column_alias=>'COMPETENCY_TYPE'
,p_column_display_sequence=>60
,p_column_heading=>'Competency Type'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(3159892325362453170)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3183698025955971774)
,p_query_column_id=>5
,p_column_alias=>'COMPETENCY_ID'
,p_column_display_sequence=>70
,p_column_heading=>'Competency'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(3160470084192574572)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3183698874196971775)
,p_query_column_id=>6
,p_column_alias=>'COMPETENCY_LVL_ID'
,p_column_display_sequence=>80
,p_column_heading=>'Competency Level'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(3160457187828557677)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4362043510103034549)
,p_plug_name=>'Skills'
,p_parent_plug_id=>wwv_flow_imp.id(3801073415427718259)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:i-h320:t-Region--accent3:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P13015_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(4362044361580034557)
,p_name=>'Functional Competencies'
,p_parent_plug_id=>wwv_flow_imp.id(4362043510103034549)
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
'    position_id, ',
'    description technical_competency,',
'    competency_id,',
'    competency_lvl_id',
'from',
'    hr_hcf_positioncompetency',
'where',
'    upper(DESCRIPTION_TYPE) = ''F''',
'    and position_id = :P13015_ID'))
,p_display_when_condition=>'P13015_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P13015_ID'
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
 p_id=>wwv_flow_imp.id(3183708227104971787)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3183708684870971788)
,p_query_column_id=>2
,p_column_alias=>'SEQUENCE'
,p_column_display_sequence=>20
,p_column_heading=>'Sequence'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3183709066073971788)
,p_query_column_id=>3
,p_column_alias=>'POSITION_ID'
,p_column_display_sequence=>50
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3183707815757971787)
,p_query_column_id=>4
,p_column_alias=>'TECHNICAL_COMPETENCY'
,p_column_display_sequence=>40
,p_column_heading=>'Skill Description'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3183707087343971786)
,p_query_column_id=>5
,p_column_alias=>'COMPETENCY_ID'
,p_column_display_sequence=>60
,p_column_heading=>'Linked to Skill'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(3160423675352557676)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3183707501747971786)
,p_query_column_id=>6
,p_column_alias=>'COMPETENCY_LVL_ID'
,p_column_display_sequence=>70
,p_column_heading=>'Linked to Skill Level'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(3160457187828557677)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4362043633542034550)
,p_plug_name=>'Minimum Education'
,p_parent_plug_id=>wwv_flow_imp.id(3801073415427718259)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:i-h320:t-Region--accent4:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P13015_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(4362044840722034562)
,p_name=>'Min Education'
,p_parent_plug_id=>wwv_flow_imp.id(4362043633542034550)
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
'    POSITION_ID,',
'    TRAINING_SEQUENCE,',
'    REQ_TRAINING_DETAIL || '' (Weighting: '' || weigthing || '')'' Required_education,',
'    TRAINING_LEVEL,',
'    SUBJECT_COURSE,',
'    CLASSIFICATION',
'from',
'    HR_HCF_POSITIONTRAINING',
'where position_id = :P13015_ID'))
,p_display_when_condition=>'P13015_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P13015_ID'
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
 p_id=>wwv_flow_imp.id(3183701085224971778)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3183703439593971780)
,p_query_column_id=>2
,p_column_alias=>'POSITION_ID'
,p_column_display_sequence=>90
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3183701435479971778)
,p_query_column_id=>3
,p_column_alias=>'TRAINING_SEQUENCE'
,p_column_display_sequence=>40
,p_column_heading=>'Sequence'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3183701820464971779)
,p_query_column_id=>4
,p_column_alias=>'REQUIRED_EDUCATION'
,p_column_display_sequence=>50
,p_column_heading=>'Education'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3183702206395971779)
,p_query_column_id=>5
,p_column_alias=>'TRAINING_LEVEL'
,p_column_display_sequence=>60
,p_column_heading=>'Training Level'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3183702672220971779)
,p_query_column_id=>6
,p_column_alias=>'SUBJECT_COURSE'
,p_column_display_sequence=>70
,p_column_heading=>'Subject Course'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3183703052657971780)
,p_query_column_id=>7
,p_column_alias=>'CLASSIFICATION'
,p_column_display_sequence=>80
,p_column_heading=>'Classification'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4362043774780034551)
,p_plug_name=>'Minimum Experience'
,p_parent_plug_id=>wwv_flow_imp.id(3801073415427718259)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:i-h320:t-Region--accent5:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P13015_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(4362045377474034567)
,p_name=>'Min Experience'
,p_parent_plug_id=>wwv_flow_imp.id(4362043774780034551)
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
'    POSITION_ID,',
'    EXPERIENCE_REQUIRED || '' (Weighting: '' || weigthing || '')'' experience_dtls,',
'    DURATION_QUANTITY || '' '' ||DURATION_UNIT Duration,',
'    at_position',
'from',
'    HR_HCF_POSITIONEXPERIENCE',
'where POSITION_ID = :P13015_ID'))
,p_display_when_condition=>'P13015_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P13015_ID'
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
 p_id=>wwv_flow_imp.id(3183704848219971782)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3183706011612971784)
,p_query_column_id=>2
,p_column_alias=>'POSITION_ID'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3183705301529971783)
,p_query_column_id=>3
,p_column_alias=>'EXPERIENCE_DTLS'
,p_column_display_sequence=>30
,p_column_heading=>'Experience'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3183705665901971783)
,p_query_column_id=>4
,p_column_alias=>'DURATION'
,p_column_display_sequence=>20
,p_column_heading=>'Duration'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3183704488442971782)
,p_query_column_id=>5
,p_column_alias=>'AT_POSITION'
,p_column_display_sequence=>50
,p_column_heading=>'At Position'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4416184172433939949)
,p_plug_name=>'Required Education & Experience'
,p_parent_plug_id=>wwv_flow_imp.id(3801073415427718259)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:i-h240:t-Region--accent2:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P13015_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(4416182685055939934)
,p_name=>'Required Education & Experience'
,p_parent_plug_id=>wwv_flow_imp.id(4416184172433939949)
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
'    hr_hcf_positiongenrequire',
'where ',
'    position_id = :P13015_ID'))
,p_display_when_condition=>'P13015_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_items_to_submit=>'P13015_ID'
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
 p_id=>wwv_flow_imp.id(3183689587875971762)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3183689916051971762)
,p_query_column_id=>2
,p_column_alias=>'REQUIREMENT'
,p_column_display_sequence=>40
,p_column_heading=>'Requirement'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(5817911898159273383)
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
'select P.id,',
'    null link_class,',
'    apex_page.get_url(p_items => ''P13015_ID'', p_values => P.id) link,',
'    null icon_class,',
'    null link_attr,',
'    null icon_color_class,',
'    case when nvl(:P13015_ID,''0'') = P.id',
'      then ''is-active'' ',
'      else '' ''',
'    end list_class,',
'    substr("POSITION_NAME" || '':-''|| "UNIT_NAME", 1, 50)||( case when length("POSITION_NAME") > 50 then ''...'' end ) list_title,',
'    replace(substr(P."DESC_DTL_STATUS", 1, 50), ''_'', '' '') ||( case when length(P."DESC_DTL_STATUS") > 50 then ''...'' end ) list_text,',
'    null list_badge',
'    from "HR_HCF_POSITION" P LEFT JOIN "HR_HCF_JOB" J ON P.JOB_ID = J.ID LEFT JOIN "HR_HCF_ORGSTRUCTUREDTL" D ON D.ID = P.ORGDTL_ID LEFT JOIN "HR_HCF_ORGSTRUCTUREHD" HD ON HD.ID = D.ORG_STRUCTURE_ID',
'  where (:P13015_SEARCH is null',
'        or upper(P."POSITION_NAME") like ''%''||upper(:P13015_SEARCH)||''%''',
'        or upper(P."POSITION_ABV") like ''%''||upper(:P13015_SEARCH)||''%''',
'        or replace(upper(P."DESC_DTL_STATUS"), ''_'', '' '') like ''%''||upper(:P13015_SEARCH)||''%''',
'',
'    )',
'and trunc(P.start_date) <= trunc(current_date) and trunc(nvl(P.end_date,trunc(current_date))) >= trunc(current_date)',
'and J.org_id= :APP_ORG_SHR_DED',
'and hd.org_id = :APP_ORG_ID',
'order by P."POSITION_NAME"',
'',
'',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P13015_SEARCH'
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
 p_id=>wwv_flow_imp.id(3183679605561971747)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>8
,p_column_heading=>'Id'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3183680077577971748)
,p_query_column_id=>2
,p_column_alias=>'LINK_CLASS'
,p_column_display_sequence=>1
,p_column_heading=>'Link Class'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3183680428805971748)
,p_query_column_id=>3
,p_column_alias=>'LINK'
,p_column_display_sequence=>9
,p_column_heading=>'Link'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3183680856854971749)
,p_query_column_id=>4
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>2
,p_column_heading=>'Icon Class'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3183681246461971749)
,p_query_column_id=>5
,p_column_alias=>'LINK_ATTR'
,p_column_display_sequence=>3
,p_column_heading=>'Link Attr'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3183681627166971750)
,p_query_column_id=>6
,p_column_alias=>'ICON_COLOR_CLASS'
,p_column_display_sequence=>4
,p_column_heading=>'Icon Color Class'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3183682067879971750)
,p_query_column_id=>7
,p_column_alias=>'LIST_CLASS'
,p_column_display_sequence=>10
,p_column_heading=>'List Class'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3183682496040971750)
,p_query_column_id=>8
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>5
,p_column_heading=>'List Title'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3183682886938971751)
,p_query_column_id=>9
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>6
,p_column_heading=>'List Text'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3183683208528971751)
,p_query_column_id=>10
,p_column_alias=>'LIST_BADGE'
,p_column_display_sequence=>7
,p_column_heading=>'List Badge'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5817911997245272258)
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
 p_id=>wwv_flow_imp.id(5817919079128296233)
,p_plug_name=>'Position Description Details'
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
 p_id=>wwv_flow_imp.id(5820606265424721008)
,p_plug_name=>'Listing of Position Descriptions'
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
 p_id=>wwv_flow_imp.id(5820606076341721008)
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
,p_detail_link=>'f?p=&APP_ID.:13016:&SESSION.::&DEBUG.:13016:P13016_POSITION:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'PUR_INV'
,p_internal_uid=>3264224172492061531
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3183686305297971757)
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
 p_id=>wwv_flow_imp.id(3183684000619971753)
,p_db_column_name=>'JOB_NAME'
,p_display_order=>11
,p_column_identifier=>'AF'
,p_column_label=>'Job Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3183684344165971754)
,p_db_column_name=>'KEY_OUTPUTS'
,p_display_order=>21
,p_column_identifier=>'AG'
,p_column_label=>'Key Outputs'
,p_column_html_expression=>'<pre style="font-size:9px;">#KEY_OUTPUTS#</pre>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3183684756972971754)
,p_db_column_name=>'RESPONSIBILITY_DTL'
,p_display_order=>31
,p_column_identifier=>'AH'
,p_column_label=>'Responsibility Dtl'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3183685122034971755)
,p_db_column_name=>'CORE_COMP'
,p_display_order=>41
,p_column_identifier=>'AI'
,p_column_label=>'Core Comp'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3183685564573971756)
,p_db_column_name=>'TECH_COMP'
,p_display_order=>51
,p_column_identifier=>'AJ'
,p_column_label=>'Tech Comp'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3183685962378971756)
,p_db_column_name=>'REQUIRED_EDU'
,p_display_order=>61
,p_column_identifier=>'AK'
,p_column_label=>'Required Edu'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5785401358007846343)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Chart View'
,p_report_seq=>10
,p_report_type=>'CHART'
,p_report_alias=>'6273048'
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
 p_id=>wwv_flow_imp.id(5820604183935721003)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6273052'
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
 p_id=>wwv_flow_imp.id(3183687863329971759)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5820606265424721008)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3183687409083971758)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5820606265424721008)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1307:&SESSION.::&DEBUG.:1307::'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3183677786236971743)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5817919079128296233)
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
 p_id=>wwv_flow_imp.id(3183678181316971744)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5817919079128296233)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:13015:&SESSION.:RESET:&DEBUG.:RP,13015::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3183678514483971744)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(5817919079128296233)
,p_button_name=>'EDIT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Edit'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:13016:&SESSION.::&DEBUG.:13016:P13016_POSITION:&P13015_ID.'
,p_button_condition=>'P13015_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-pencil'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3183677055554971742)
,p_name=>'P13015_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5817911997245272258)
,p_prompt=>'Search'
,p_placeholder=>'Press Enter to Search...'
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
 p_id=>wwv_flow_imp.id(3183678938689971745)
,p_name=>'P13015_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5817919079128296233)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3183688302606971759)
,p_name=>'P13015_ORGANISATION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5820606265424721008)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3183711540266971796)
,p_name=>'Refresh - Create'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3183687409083971758)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3183712099547971796)
,p_event_id=>wwv_flow_imp.id(3183711540266971796)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5820606265424721008)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3183712408369971796)
,p_name=>'Refresh - Edit'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(5820606265424721008)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3183712942925971797)
,p_event_id=>wwv_flow_imp.id(3183712408369971796)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5820606265424721008)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3183710178750971794)
,p_name=>'Perform Search'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P13015_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.which === apex.jQuery.ui.keyCode.ENTER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3183711123954971795)
,p_event_id=>wwv_flow_imp.id(3183710178750971794)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5817911898159273383)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3183710653421971795)
,p_event_id=>wwv_flow_imp.id(3183710178750971794)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CANCEL_EVENT'
);
wwv_flow_imp.component_end;
end;
/
