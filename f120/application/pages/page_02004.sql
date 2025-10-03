prompt --application/pages/page_02004
begin
--   Manifest
--     PAGE: 02004
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
 p_id=>2004
,p_name=>'frmStaff_Requisition'
,p_alias=>'FRMSTAFF-REQUISITION'
,p_step_title=>'Create/Edit Staff Requisition'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3603892462384379471)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3585334160394360204)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(448636617884841689)
,p_plug_name=>'bc'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>69
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10766773638420877516)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5331482418437104477)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>19
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5544447262985642780)
,p_plug_name=>'Warning!'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>9
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>'This requisition will not be accepted for Position Opening unless the Max Req employee counter in increase.'
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5613569330300659785)
,p_plug_name=>'Position Description Details'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>39
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P2004_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5949624775933782208)
,p_plug_name=>'Description Details'
,p_parent_plug_id=>wwv_flow_imp.id(5613569330300659785)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6508924141593733837)
,p_plug_name=>'Key Outputs'
,p_parent_plug_id=>wwv_flow_imp.id(5949624775933782208)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:i-h320:t-Region--accent2:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P2004_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(6508922885860733825)
,p_name=>'Key Outputs'
,p_parent_plug_id=>wwv_flow_imp.id(6508924141593733837)
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
'    position_id = :P2004_POS_ID'))
,p_display_when_condition=>'P2004_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P2004_POS_ID'
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
 p_id=>wwv_flow_imp.id(3215150192795555113)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215150540519555114)
,p_query_column_id=>2
,p_column_alias=>'SEQUENCE'
,p_column_display_sequence=>20
,p_column_heading=>'Sequence'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215150983067555114)
,p_query_column_id=>3
,p_column_alias=>'POSITION_ID'
,p_column_display_sequence=>50
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215151387834555115)
,p_query_column_id=>4
,p_column_alias=>'KEY_OUTPUTS'
,p_column_display_sequence=>40
,p_column_heading=>'Key Outputs'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(6509033686481855980)
,p_name=>'Position Details'
,p_parent_plug_id=>wwv_flow_imp.id(5949624775933782208)
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
'        REPLACE(p.desc_dtl_status, ''_'', '' '') desc_dtl_status',
'from hr_hcf_position p left outer join HR_HCF_WORKLOCATION c on c.id=p.def_work_LOCATION_ID',
'where p.id = :P2004_POS_ID',
'and exists (select 1',
'              from hr_hcf_orgstructuredtl x join hr_hcf_orgstructurehd y',
'              on y.id=x.ORG_STRUCTURE_ID',
'              WHERE p.ORGDTL_ID= X.ID --nvl(A.ORGDTL_ID,1)=decode(A.ORGDTL_ID,null, 1, X.ID)',
'              and y.org_id=:APP_ORG_ID',
'              )'))
,p_display_when_condition=>'P2004_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_items_to_submit=>'P2004_POS_ID'
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
 p_id=>wwv_flow_imp.id(3215152010457555116)
,p_query_column_id=>1
,p_column_alias=>'POSITION_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Position Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215152459196555117)
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
 p_id=>wwv_flow_imp.id(3215152889230555117)
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
 p_id=>wwv_flow_imp.id(3215153288070555117)
,p_query_column_id=>4
,p_column_alias=>'LOCATION_DESCRIPTION'
,p_column_display_sequence=>50
,p_column_heading=>'Location Description'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215153659328555118)
,p_query_column_id=>5
,p_column_alias=>'DESC_DTL_STATUS'
,p_column_display_sequence=>60
,p_column_heading=>'Status'
,p_column_html_expression=>'<b>#DESC_DTL_STATUS#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6510594026911098489)
,p_plug_name=>'Position Responsibilities'
,p_parent_plug_id=>wwv_flow_imp.id(5949624775933782208)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:i-h320:t-Region--accent2:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P2004_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(6510594082964098490)
,p_name=>'Position Responsibilties'
,p_parent_plug_id=>wwv_flow_imp.id(6510594026911098489)
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
'    position_id = :P2004_POS_ID'))
,p_display_when_condition=>'P2004_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P2004_POS_ID'
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
 p_id=>wwv_flow_imp.id(3215154623397555119)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215155013915555121)
,p_query_column_id=>2
,p_column_alias=>'RESP_SEQUENCE'
,p_column_display_sequence=>40
,p_column_heading=>'Sequence'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215155417226555121)
,p_query_column_id=>3
,p_column_alias=>'POSITION_ID'
,p_column_display_sequence=>60
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215155880661555121)
,p_query_column_id=>4
,p_column_alias=>'RESPONSIBILITY_DETAIL'
,p_column_display_sequence=>50
,p_column_heading=>'Responsibility Detail'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6510594762817098497)
,p_plug_name=>'Competencies'
,p_parent_plug_id=>wwv_flow_imp.id(5949624775933782208)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:i-h320:t-Region--accent3:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P2004_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(6510595173892098501)
,p_name=>'Behavioural Competencies'
,p_parent_plug_id=>wwv_flow_imp.id(6510594762817098497)
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
'    and position_id = :P2004_POS_ID',
'order by sequence asc'))
,p_display_when_condition=>'P2004_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P2004_POS_ID'
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
 p_id=>wwv_flow_imp.id(3215156857880555123)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215157292663555123)
,p_query_column_id=>2
,p_column_alias=>'SEQUENCE'
,p_column_display_sequence=>20
,p_column_heading=>'Sequence'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215157616846555124)
,p_query_column_id=>3
,p_column_alias=>'POSITION_ID'
,p_column_display_sequence=>50
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215158096977555124)
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
 p_id=>wwv_flow_imp.id(3215158428111555124)
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
 p_id=>wwv_flow_imp.id(3215158873665555125)
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
 p_id=>wwv_flow_imp.id(6510594870609098498)
,p_plug_name=>'Skills'
,p_parent_plug_id=>wwv_flow_imp.id(5949624775933782208)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:i-h320:t-Region--accent3:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P2004_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(6510595722086098506)
,p_name=>'Functional Competencies'
,p_parent_plug_id=>wwv_flow_imp.id(6510594870609098498)
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
'    competency_id, competency_lvl_id',
'from',
'    hr_hcf_positioncompetency',
'where',
'    upper(DESCRIPTION_TYPE) = ''F''',
'    and position_id = :P2004_POS_ID'))
,p_display_when_condition=>'P2004_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P2004_POS_ID'
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
 p_id=>wwv_flow_imp.id(3215159869583555127)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215160254814555127)
,p_query_column_id=>2
,p_column_alias=>'SEQUENCE'
,p_column_display_sequence=>20
,p_column_heading=>'Sequence'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215160670298555128)
,p_query_column_id=>3
,p_column_alias=>'POSITION_ID'
,p_column_display_sequence=>50
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215161075959555129)
,p_query_column_id=>4
,p_column_alias=>'TECHNICAL_COMPETENCY'
,p_column_display_sequence=>40
,p_column_heading=>'Skill Description'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215161442555555129)
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
 p_id=>wwv_flow_imp.id(3215161821203555130)
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
 p_id=>wwv_flow_imp.id(6510594994048098499)
,p_plug_name=>'Minimum Education'
,p_parent_plug_id=>wwv_flow_imp.id(5949624775933782208)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:i-h320:t-Region--accent4:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P2004_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(6510596201228098511)
,p_name=>'Min Education'
,p_parent_plug_id=>wwv_flow_imp.id(6510594994048098499)
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
'where position_id = :P2004_POS_ID'))
,p_display_when_condition=>'P2004_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P2004_POS_ID'
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
 p_id=>wwv_flow_imp.id(3215162805243555131)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215163275074555131)
,p_query_column_id=>2
,p_column_alias=>'POSITION_ID'
,p_column_display_sequence=>90
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215163631640555132)
,p_query_column_id=>3
,p_column_alias=>'TRAINING_SEQUENCE'
,p_column_display_sequence=>40
,p_column_heading=>'Sequence'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215164017206555132)
,p_query_column_id=>4
,p_column_alias=>'REQUIRED_EDUCATION'
,p_column_display_sequence=>50
,p_column_heading=>'Education'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215164419408555133)
,p_query_column_id=>5
,p_column_alias=>'TRAINING_LEVEL'
,p_column_display_sequence=>60
,p_column_heading=>'Training Level'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215164810895555133)
,p_query_column_id=>6
,p_column_alias=>'SUBJECT_COURSE'
,p_column_display_sequence=>70
,p_column_heading=>'Subject Course'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215165229241555134)
,p_query_column_id=>7
,p_column_alias=>'CLASSIFICATION'
,p_column_display_sequence=>80
,p_column_heading=>'Classification'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6510595135286098500)
,p_plug_name=>'Minimum Experience'
,p_parent_plug_id=>wwv_flow_imp.id(5949624775933782208)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:i-h320:t-Region--accent5:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P2004_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(6510596737980098516)
,p_name=>'Min Experience'
,p_parent_plug_id=>wwv_flow_imp.id(6510595135286098500)
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
'where POSITION_ID = :P2004_POS_ID'))
,p_display_when_condition=>'P2004_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P2004_POS_ID'
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
 p_id=>wwv_flow_imp.id(3215166287336555135)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215166685334555136)
,p_query_column_id=>2
,p_column_alias=>'POSITION_ID'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215167052408555136)
,p_query_column_id=>3
,p_column_alias=>'EXPERIENCE_DTLS'
,p_column_display_sequence=>30
,p_column_heading=>'Experience'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215167441216555136)
,p_query_column_id=>4
,p_column_alias=>'DURATION'
,p_column_display_sequence=>20
,p_column_heading=>'Duration'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215167837216555137)
,p_query_column_id=>5
,p_column_alias=>'AT_POSITION'
,p_column_display_sequence=>50
,p_column_heading=>'At Position'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6564735532940003898)
,p_plug_name=>'Required Education & Experience'
,p_parent_plug_id=>wwv_flow_imp.id(5949624775933782208)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:t-Region--accent2:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P2004_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(6564734045562003883)
,p_name=>'Required Education & Experience'
,p_parent_plug_id=>wwv_flow_imp.id(6564735532940003898)
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
'    position_id = :P2004_POS_ID'))
,p_display_when_condition=>'P2004_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_items_to_submit=>'P2004_POS_ID'
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
 p_id=>wwv_flow_imp.id(3215168809229555138)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215169247753555139)
,p_query_column_id=>2
,p_column_alias=>'REQUIREMENT'
,p_column_display_sequence=>40
,p_column_heading=>'Requirement'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5643788812370494667)
,p_plug_name=>'Create/Edit Staff Requisition'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>29
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5307784188434301443)
,p_plug_name=>'Proposed Job Description'
,p_parent_plug_id=>wwv_flow_imp.id(5643788812370494667)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(5643798813580595393)
,p_name=>'Audit Record Verified by: &P2004_VERIFIED_BY.'
,p_template=>4072358936313175081
,p_display_sequence=>59
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
' to_char(entry_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||entered_by entered,',
' to_char(last_changed_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||last_changed_by last_changed,',
' to_char(verified_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||verified_by verified,',
' machine_insert,',
' machine_update,',
' apex_util.get_since(last_changed_date) updated',
'from HR_RCM_STAFF_REQUISITION',
'where id = :P2004_ID',
''))
,p_display_when_condition=>'P2004_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P2004_ID'
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
 p_id=>wwv_flow_imp.id(463030946612585410)
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
 p_id=>wwv_flow_imp.id(463031012762585411)
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
 p_id=>wwv_flow_imp.id(463031104179585412)
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
 p_id=>wwv_flow_imp.id(463031288820585413)
,p_query_column_id=>4
,p_column_alias=>'MACHINE_INSERT'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(463031331539585414)
,p_query_column_id=>5
,p_column_alias=>'MACHINE_UPDATE'
,p_column_display_sequence=>50
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(463031479853585415)
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
 p_id=>wwv_flow_imp.id(5949704155348838856)
,p_plug_name=>'Job Description Details'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>49
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5915757272116901884)
,p_plug_name=>'Key Outputs'
,p_parent_plug_id=>wwv_flow_imp.id(5949704155348838856)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:i-h320:t-Region--accent1:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P2004_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(5915756016383901872)
,p_name=>'Key Outputs'
,p_parent_plug_id=>wwv_flow_imp.id(5915757272116901884)
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
'    job_id = :P2004_JOB_ID',
'order by sequence asc'))
,p_display_when_condition=>'P2004_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P2004_JOB_ID'
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
 p_id=>wwv_flow_imp.id(3215195917498555171)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215196306339555172)
,p_query_column_id=>2
,p_column_alias=>'SEQUENCE'
,p_column_display_sequence=>20
,p_column_heading=>'Sequence'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215196726989555172)
,p_query_column_id=>3
,p_column_alias=>'JOB_ID'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215197109917555172)
,p_query_column_id=>4
,p_column_alias=>'KEY_OUTPUTS'
,p_column_display_sequence=>40
,p_column_heading=>'Key Outputs'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(5915785372239965255)
,p_name=>'Job Details'
,p_parent_plug_id=>wwv_flow_imp.id(5949704155348838856)
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
'join hr_hcf_positiongrade pg on pg.id = j.job_grade_id',
'where j.id = :P2004_JOB_ID',
'and j.org_id = :APP_ORG_ID'))
,p_display_when_condition=>'P2004_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_items_to_submit=>'P2004_JOB_ID'
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
 p_id=>wwv_flow_imp.id(3215188179125555161)
,p_query_column_id=>1
,p_column_alias=>'JOB_CLASSIFICATION'
,p_column_display_sequence=>10
,p_column_heading=>'Job Classification'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215188571425555162)
,p_query_column_id=>2
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>30
,p_column_heading=>'Description'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215188948934555162)
,p_query_column_id=>3
,p_column_alias=>'EMPLOYMENT_CLASS'
,p_column_display_sequence=>40
,p_column_heading=>'Employment Class'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215189320297555163)
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
 p_id=>wwv_flow_imp.id(3215189752401555163)
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
 p_id=>wwv_flow_imp.id(5917427157434266536)
,p_plug_name=>'Job Responsibilities'
,p_parent_plug_id=>wwv_flow_imp.id(5949704155348838856)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:i-h320:t-Region--accent2:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P2004_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(5917427213487266537)
,p_name=>'Job Responsibilties'
,p_parent_plug_id=>wwv_flow_imp.id(5917427157434266536)
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
'    job_id = :P2004_JOB_ID',
'order by resp_sequence asc'))
,p_display_when_condition=>'P2004_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P2004_JOB_ID'
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
 p_id=>wwv_flow_imp.id(3215190757131555165)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215191144185555165)
,p_query_column_id=>2
,p_column_alias=>'RESP_SEQUENCE'
,p_column_display_sequence=>40
,p_column_heading=>'Sequence'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215191518427555165)
,p_query_column_id=>3
,p_column_alias=>'JOB_ID'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215192000753555166)
,p_query_column_id=>4
,p_column_alias=>'RESPONSIBILITY_DETAIL'
,p_column_display_sequence=>50
,p_column_heading=>'Responsibility Detail'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5917427893340266544)
,p_plug_name=>'Competencies'
,p_parent_plug_id=>wwv_flow_imp.id(5949704155348838856)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:i-h320:t-Region--accent3:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P2004_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(5917428304415266548)
,p_name=>'Core Competencies'
,p_parent_plug_id=>wwv_flow_imp.id(5917427893340266544)
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
'    a.description core_competency,',
'    b.competency_type, competency_lvl_id',
'from',
'    hr_hcf_jobcompetency a ',
'    left join hr_hcf_competency b on a.competency_id = b.id',
'where',
'    upper(DESCRIPTION_TYPE) NOT IN (''F'')     ',
'    and job_id = :P2004_JOB_ID',
'order by sequence asc'))
,p_display_when_condition=>'P2004_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P2004_JOB_ID'
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
 p_id=>wwv_flow_imp.id(3215192967154555168)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215193334727555168)
,p_query_column_id=>2
,p_column_alias=>'SEQUENCE'
,p_column_display_sequence=>20
,p_column_heading=>'Sequence'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215193778715555168)
,p_query_column_id=>3
,p_column_alias=>'JOB_ID'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215194188354555169)
,p_query_column_id=>4
,p_column_alias=>'CORE_COMPETENCY'
,p_column_display_sequence=>50
,p_column_heading=>'Competency'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215194522638555169)
,p_query_column_id=>5
,p_column_alias=>'COMPETENCY_TYPE'
,p_column_display_sequence=>40
,p_column_heading=>'Competency Type'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(3160359976883467708)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215194908082555170)
,p_query_column_id=>6
,p_column_alias=>'COMPETENCY_LVL_ID'
,p_column_display_sequence=>60
,p_column_heading=>'Competency Level'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(3160457187828557677)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5917428001132266545)
,p_plug_name=>'Skills'
,p_parent_plug_id=>wwv_flow_imp.id(5949704155348838856)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:i-h320:t-Region--accent3:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P2004_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(5917428852609266553)
,p_name=>'Technical Competencies'
,p_parent_plug_id=>wwv_flow_imp.id(5917428001132266545)
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
'    and job_id = :P2004_JOB_ID',
'order by sequence asc'))
,p_display_when_condition=>'P2004_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P2004_JOB_ID'
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
 p_id=>wwv_flow_imp.id(3215198193192555174)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215198528333555175)
,p_query_column_id=>2
,p_column_alias=>'SEQUENCE'
,p_column_display_sequence=>20
,p_column_heading=>'Sequence'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215198976859555175)
,p_query_column_id=>3
,p_column_alias=>'JOB_ID'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215199345758555175)
,p_query_column_id=>4
,p_column_alias=>'TECHNICAL_COMPETENCY'
,p_column_display_sequence=>40
,p_column_heading=>'Skill Description'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215199754986555176)
,p_query_column_id=>5
,p_column_alias=>'COMPETENCY_ID'
,p_column_display_sequence=>50
,p_column_heading=>'Linked to Skill'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(3160423675352557676)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215200187550555176)
,p_query_column_id=>6
,p_column_alias=>'COMPETENCY_LVL_ID'
,p_column_display_sequence=>60
,p_column_heading=>'Linked to Skill Level'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(3160457187828557677)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5917428124571266546)
,p_plug_name=>'Minimum Education'
,p_parent_plug_id=>wwv_flow_imp.id(5949704155348838856)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:i-h320:t-Region--accent4:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P2004_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(5917429331751266558)
,p_name=>'Min Education'
,p_parent_plug_id=>wwv_flow_imp.id(5917428124571266546)
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
'where job_id = :P2004_JOB_ID',
'order by training_sequence asc'))
,p_display_when_condition=>'P2004_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P2004_JOB_ID'
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
 p_id=>wwv_flow_imp.id(3215201110826555178)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215201591838555179)
,p_query_column_id=>2
,p_column_alias=>'JOB_ID'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215201961552555179)
,p_query_column_id=>3
,p_column_alias=>'TRAINING_SEQUENCE'
,p_column_display_sequence=>40
,p_column_heading=>'Sequence'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215202340681555179)
,p_query_column_id=>4
,p_column_alias=>'REQUIRED_EDUCATION'
,p_column_display_sequence=>50
,p_column_heading=>'Education'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215202771968555180)
,p_query_column_id=>5
,p_column_alias=>'TRAINING_LEVEL'
,p_column_display_sequence=>60
,p_column_heading=>'Training Level'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215203156778555180)
,p_query_column_id=>6
,p_column_alias=>'SUBJECT_COURSE'
,p_column_display_sequence=>70
,p_column_heading=>'Subject Course'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215203545339555181)
,p_query_column_id=>7
,p_column_alias=>'CLASSIFICATION'
,p_column_display_sequence=>80
,p_column_heading=>'Classification'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5917428265809266547)
,p_plug_name=>'Minimum Experience'
,p_parent_plug_id=>wwv_flow_imp.id(5949704155348838856)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:i-h320:t-Region--accent5:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P2004_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(5917429868503266563)
,p_name=>'Min Experience'
,p_parent_plug_id=>wwv_flow_imp.id(5917428265809266547)
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
'where JOB_ID = :P2004_JOB_ID'))
,p_display_when_condition=>'P2004_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P2004_JOB_ID'
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
 p_id=>wwv_flow_imp.id(3215204564252555182)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215204994743555183)
,p_query_column_id=>2
,p_column_alias=>'JOB_ID'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215205320916555183)
,p_query_column_id=>3
,p_column_alias=>'EXPERIENCE_DTLS'
,p_column_display_sequence=>50
,p_column_heading=>'Experience'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215205739249555184)
,p_query_column_id=>4
,p_column_alias=>'DURATION'
,p_column_display_sequence=>40
,p_column_heading=>'Duration'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215206111094555184)
,p_query_column_id=>5
,p_column_alias=>'AT_POSITION'
,p_column_display_sequence=>60
,p_column_heading=>'At Position'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5947500859234483059)
,p_plug_name=>'Required Education & Experience'
,p_parent_plug_id=>wwv_flow_imp.id(5949704155348838856)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:t-Region--accent2:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P2004_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(5947499371856483044)
,p_name=>'Required Education & Experience'
,p_parent_plug_id=>wwv_flow_imp.id(5947500859234483059)
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
'    JOB_ID = :P2004_JOB_ID'))
,p_display_when_condition=>'P2004_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_items_to_submit=>'P2004_JOB_ID'
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
 p_id=>wwv_flow_imp.id(3215207125448555186)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3215207554808555186)
,p_query_column_id=>2
,p_column_alias=>'REQUIREMENT'
,p_column_display_sequence=>40
,p_column_heading=>'Requirement'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3215169980735555140)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(448636617884841689)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:2003:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3215170330279555141)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(448636617884841689)
,p_button_name=>'Add_NEw_JOB_POSITION'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add New Job & Position'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1307:&SESSION.::&DEBUG.:1307::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3215170751734555141)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(448636617884841689)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>' UPPER(pkg_global_fnts.status_descript(:P2004_STATUS)) !=''COMPLETED'' AND :P2004_ID IS NOT NULL'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(3585335384393360204)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3215171148838555142)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(448636617884841689)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>' UPPER(pkg_global_fnts.status_descript(:P2004_STATUS)) !=''COMPLETED'' AND :P2004_ID IS NOT NULL'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(3585335069773360204)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3215171576074555142)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(448636617884841689)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P2004_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3215171981353555143)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(448636617884841689)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:2004:&SESSION.::&DEBUG.:2004::'
,p_button_condition=>'P2004_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3215172379207555143)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(448636617884841689)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create Again'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P2004_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3215172743990555143)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(448636617884841689)
,p_button_name=>'MANUAL_FORWARD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#::t-Button--primary:::::::'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Manual Forward'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:RP,37:P37_PK_KEY,P37_PK_KEY_ITEM,P37_STATUS_M,P37_TABLE_NAME,P37_TRANSACTION_TYPE_ID_M,P37_PROCESS_NAME,P37_PAGE_NUM:&P2004_ID.,ID,&P2004_STATUS.,HR_RCM_STAFF_REQUISITION,&P2004_TRANSACTION_TYPE_ID.,Requisition Management,2004'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM (SELECT 1 ',
'      FROM tbluser',
'      WHERE user_name= nvl(V(''APP_USER''),user)',
'      AND forward_default_only=''N''',
'         union',
'      select 1',
'      from TBLSYSTEMCONFIGURATION',
'      where AUTO_FORWARD=''CHOOSE''',
'      )'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3215222266609555206)
,p_branch_name=>'DELETE_BRANCH'
,p_branch_action=>'f?p=&APP_ID.:2003:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3215170751734555141)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3215221808461555206)
,p_branch_name=>'CREATE_AGAIN'
,p_branch_action=>'f?p=&APP_ID.:2004:&SESSION.::&DEBUG.:2004::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3215172379207555143)
,p_branch_sequence=>2
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3215222684993555207)
,p_branch_action=>'f?p=&APP_ID.:2004:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>3
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3215147821659555106)
,p_name=>'P2004_POS_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5331482418437104477)
,p_use_cache_before_default=>'NO'
,p_source=>'select id from hr_hcf_position where orgdtl_id = :P2004_ORGDTL_ID and job_id = :P2004_JOB_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3215148271267555107)
,p_name=>'P2004_POS_DESC_SRC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5331482418437104477)
,p_use_cache_before_default=>'NO'
,p_source=>'select use_for_recruitment from hr_hcf_position where orgdtl_id = :P2004_ORGDTL_ID and job_id = :P2004_JOB_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3215173107264555144)
,p_name=>'P2004_POSITION_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5643788812370494667)
,p_use_cache_before_default=>'NO'
,p_source=>'POSITION_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3215173554169555144)
,p_name=>'P2004_HR_REQ_NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5643788812370494667)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Requisition No.'
,p_source=>'HR_REQ_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3215173984264555145)
,p_name=>'P2004_STATS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5643788812370494667)
,p_prompt=>'Statistics'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  ''Min Req:''||no_required_min ||'' Filled:''|| NO_FILLED||'' Max Req:''||NO_REQUIRED_MAX fvalue               ',
'from hr_hcf_position',
'where id=:P2004_POSITION_ID'))
,p_source_type=>'QUERY'
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
 p_id=>wwv_flow_imp.id(3215174334928555145)
,p_name=>'P2004_DATE_REQUESTED'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(5643788812370494667)
,p_use_cache_before_default=>'NO'
,p_item_default=>'trunc(current_date)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Date Requested'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'DATE_REQUESTED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Only current date will be accepted.'
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
 p_id=>wwv_flow_imp.id(3215175238603555146)
,p_name=>'P2004_NEW_POSITION'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(5643788812370494667)
,p_use_cache_before_default=>'NO'
,p_item_default=>'EXIST'
,p_prompt=>'Request Options'
,p_source=>'NEW_POSITION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''New Position Only'' labels, ''NPO'' ID',
'from dual',
'union',
'select ''New Job and Position'' labels, ''NJP'' ID',
'from dual',
'union',
'select ''Job and Position Exist'' labels, ''EXIST''  ID',
'from dual'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3215175632717555147)
,p_name=>'P2004_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(5643788812370494667)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3215176030232555147)
,p_name=>'P2004_ORGDTL_ID'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(5643788812370494667)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Requesting Department'
,p_source=>'ORGDTL_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P2004_NEW_POSITION in (''NPO'',''NJP'') then',
' return ',
'        ''Select distinct ''''Level: ''''||Unit_Level||'''' ''''|| Unit_Name||'''' ''''||value_description A, m.Id',
'        From Hr_Hcf_Orgstructuredtl M Join Hr_Hcf_Lookup N On M.Classification=N.Id',
'        join hr_hcf_orgstructurehd hd on hd.id = m.org_structure_id',
'        Where Trunc(M.Start_Date) <= :P2004_DATE_REQUESTED',
'        and (trunc(m.end_date) is null or m.end_date >= :P2004_DATE_REQUESTED)',
'        and M.org_structure_name !=''''HRMIS CONSULTANTS''''',
'        and hd.org_id=:APP_ORG_ID',
'        and exists(select 1',
'          from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT k on ( t.id = k.ORG_STRUCTURE_ID  and nvl(k.user_name,''''1'''') = decode(k.user_name, null, ''''1'''', :APP_USER))',
'          where  t.id = m.id',
'          and m.id=decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, m.id, k.org_structure_id)       ',
'                    )'';',
'',
'else ',
'  return ',
'        ''Select distinct ''''Level: ''''||Unit_Level||'''' ''''|| Unit_Name||'''' ''''||value_description A, m.Id',
'        From Hr_Hcf_Orgstructuredtl M Join Hr_Hcf_Lookup N On M.Classification=N.Id',
'        join hr_hcf_orgstructurehd hd on hd.id = m.org_structure_id',
'        Where Trunc(M.Start_Date) <= :P2004_DATE_REQUESTED',
'        and hd.org_id=:APP_ORG_ID',
'        and (trunc(m.end_date) is null or m.end_date >= :P2004_DATE_REQUESTED)',
'        and M.org_structure_name !=''''HRMIS CONSULTANTS''''',
'        and exists(select 1',
'          from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT k on ( t.id = k.ORG_STRUCTURE_ID  and nvl(k.user_name,''''1'''') = decode(k.user_name, null, ''''1'''', :APP_USER))',
'          where  t.id = m.id',
'          and m.id=decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, m.id, k.org_structure_id)       ',
'                    )    ',
'        and exists(select 1',
'                from hr_hcf_position pos',
'                where pos.orgdtl_id=m.id',
'                )        ',
'        order by 1'';',
'',
'end if;',
'',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P2004_DATE_REQUESTED,P2004_NEW_POSITION'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>2526760615038828570
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
 p_id=>wwv_flow_imp.id(3215176441658555148)
,p_name=>'P2004_JOB_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(5643788812370494667)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Existing/Alternate Job'
,p_source=>'JOB_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P2004_NEW_POSITION =''EXIST'' then ',
'  return       ''select DESCRIPTION, id',
'                from hr_hcf_job w',
'                where org_id = :APP_ORG_SHR_DED',
'                and Trunc(w.Start_Date) <= trunc(current_date)',
'                and (trunc(w.end_date) is null or w.end_date >= trunc(current_date))',
'                and exists(select 1',
'                        from hr_hcf_position k',
'                        where k.job_id = w.id',
'                        and k.orgdtl_id=:P2004_ORGDTL_ID',
'                        )'';',
'',
'elsif :P2004_NEW_POSITION =''NPO'' then     ',
'  return       ''select DESCRIPTION, id',
'                from hr_hcf_job w',
'                where org_id = :APP_ORG_SHR_DED',
'                and Trunc(w.Start_Date) <= trunc(current_date)',
'                and (trunc(w.end_date) is null or w.end_date >= trunc(current_date))',
'                and not exists(select 1',
'                              from hr_hcf_position k',
'                              where k.job_id = w.id',
'                              and k.orgdtl_id=:P2004_ORGDTL_ID',
'                              )'';                ',
'else           ',
'    return     ''select DESCRIPTION, id',
'                from hr_hcf_job w',
'                where org_id = :APP_ORG_SHR_DED'';         ',
'end if;                '))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P2004_NEW_POSITION,P2004_ORGDTL_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(3215176855248555148)
,p_name=>'P2004_WKLOCATION_ID'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(5643788812370494667)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Work Location'
,p_source=>'WKLOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P2004_NEW_POSITION =''EXIST'' then ',
'  return       ''select distinct LOCATION_DESCRIPTION a, w.id b',
'                from HR_HCF_WORKLOCATION w ',
'                where org_id = :APP_ORG_ID',
'                and exists(select 1',
'                        from hr_hcf_position k',
'                        where k.Def_Work_Location_Id = w.id',
'                        and k.orgdtl_id=:P2004_ORGDTL_ID',
'                        )'';',
'',
'elsif :P2004_NEW_POSITION =''NPO'' then     ',
'  return       ''select distinct LOCATION_DESCRIPTION a, w.id b',
'                from HR_HCF_WORKLOCATION w ',
'                where org_id = :APP_ORG_ID',
'                and not exists(select 1',
'                              from hr_hcf_position k',
'                              where k.Def_Work_Location_Id = w.id',
'                              )'';                ',
'else           ',
'    return     ''select distinct LOCATION_DESCRIPTION a, a.id b',
'                from HR_HCF_WORKLOCATION A ',
'                where org_id = :APP_ORG_ID',
'                order by 1'';         ',
'end if;                '))
,p_lov_cascade_parent_items=>'P2004_NEW_POSITION,P2004_ORGDTL_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(3215177277473555149)
,p_name=>'P2004_REASON_FOR_HIRE'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(5643788812370494667)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Reason For Hire'
,p_source=>'REASON_FOR_HIRE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_cMaxlength=>1000
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_show_quick_picks=>'Y'
,p_quick_pick_label_01=>'Expanding Company'
,p_quick_pick_value_01=>'Expanding Company'
,p_quick_pick_label_02=>'Employee Separation'
,p_quick_pick_value_02=>'Employee Separation'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3215177696920555149)
,p_name=>'P2004_QUANTITY'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(5643788812370494667)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_prompt=>'Quantity'
,p_source=>'QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3215178050337555150)
,p_name=>'P2004_REQUESTING_MANAGER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(5643788812370494667)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Requesting Manager'
,p_source=>'REQUESTING_MANAGER'
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
,p_lov_null_text=>'--None--'
,p_cSize=>30
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3215178494883555150)
,p_name=>'P2004_FILLED_BY_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(5643788812370494667)
,p_use_cache_before_default=>'NO'
,p_item_default=>'current_date+45'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Filled By Date'
,p_source=>'FILLED_BY_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'A minimum of 45 days from current date is set by default and allowed here.'
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
 p_id=>wwv_flow_imp.id(3215179402122555151)
,p_name=>'P2004_JOB_DESCRIPTION_PREPARED'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(5643788812370494667)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Job Description Prepared By'
,p_source=>'JOB_DESCRIPTION_PREPARED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  initcap(Surname || '', '' || nvl(First_Name, '''')) ||'' ''||nvl(Middle_Name,'''') ||''(No.:''||EMP_COMPANY_NO||'')(''||PKG_GLOBAL_FNTS.Get_Lookup_Col(employment_class_id, ''TABLE_VALUE'' )||case when x.verified_by is null then '' Unverified)'' else ',
'case when DATE_SEPARATED is null then '' Active'' else '' Separated'' end|| '')'' end a,x.ID b',
'From Vw_Employee X Join Hr_Rcm_Individual Z On Z.Id=X.Ind_Id',
'where x.org_id =:APP_ORG_ID',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3215179769214555151)
,p_name=>'P2004_TRANSACTION_TYPE_ID'
,p_is_required=>true
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(5643788812370494667)
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
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3215180189879555152)
,p_name=>'P2004_STATUS'
,p_is_required=>true
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(5643788812370494667)
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
'              Where A.Workflow_Dtl_Id=C.Id) ',
'and upper(Wfl_Status_Description) not like DECODE(:P2004_ID, NULL,''%VERI%'',''%test%'')               ',
'And Webpage_Id=:App_Page_Id      ',
'and TRANSACTION_TYPE_ID=:P2004_TRANSACTION_TYPE_ID',
'AND upper(Wfl_Status_Description) NOT LIKE DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%APP%'',''test'') ',
'AND upper(Wfl_Status_Description) not like DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%DISAPP%'',''test'') ',
'order by sequence',
''))
,p_lov_cascade_parent_items=>'P2004_TRANSACTION_TYPE_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Only Completed requisitions will be used at Position Opening.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3215181012685555153)
,p_name=>'P2004_REMARKS'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(5643788812370494667)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Remarks'
,p_source=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3215181413257555153)
,p_name=>'P2004_POSITION_NAME'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(5643788812370494667)
,p_use_cache_before_default=>'NO'
,p_source=>'POSITION_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3215181827579555154)
,p_name=>'P2004_COMENT_SWITCH'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(5643788812370494667)
,p_item_default=>'0'
,p_prompt=>'Add Workflow Notes'
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
 p_id=>wwv_flow_imp.id(3215182218240555154)
,p_name=>'P2004_WORK_FLOW_COMMENT'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(5643788812370494667)
,p_prompt=>'<font color="purple" size="2"><b>  Work Flow Notes</b> </font>'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>2000
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'Y',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3215182664133555155)
,p_name=>'P2004_ORG_ID'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(5643788812370494667)
,p_use_cache_before_default=>'NO'
,p_item_default=>'APP_ORG_ID'
,p_item_default_type=>'ITEM'
,p_source=>'ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3215183309170555156)
,p_name=>'P2004_NEW_JOB_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5307784188434301443)
,p_use_cache_before_default=>'NO'
,p_prompt=>'New Job Name'
,p_source=>'NEW_JOB_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3215183750329555156)
,p_name=>'P2004_NEW_JOB_DESCRIPTION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5307784188434301443)
,p_use_cache_before_default=>'NO'
,p_prompt=>'New Job Description'
,p_source=>'NEW_JOB_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RICH_TEXT_EDITOR'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_restricted_characters=>'NO_SPECIAL_CHAR_NL'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_custom_html', 'N',
  'format', 'HTML',
  'max_height', '20',
  'min_height', '180',
  'toolbar', 'FULL',
  'toolbar_style', 'OVERFLOW')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3215185961802555159)
,p_name=>'P2004_VERIFIED_BY'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(5643798813580595393)
,p_use_cache_before_default=>'NO'
,p_source=>'VERIFIED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3215186765603555159)
,p_name=>'P2004_MACHINE_INSERT'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(5643798813580595393)
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
 p_id=>wwv_flow_imp.id(3215187130387555160)
,p_name=>'P2004_MACHINE_UPDATE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(5643798813580595393)
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
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3213753141547984783)
,p_validation_name=>'val_date_requested'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if to_date(:P2004_DATE_REQUESTED) != trunc(to_date(:P2004_ENTRY_DATE)) then',
'        return ''You must use the entry date or today date as the date requested.'';',
'    else',
'        return '''';',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3215208029372555189)
,p_validation_name=>'chk_dates'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if trunc(to_date(:P2004_DATE_REQUESTED)) > trunc(to_date(:P2004_FILLED_BY_DATE)) then',
'  return FALSE;',
'ELSE',
'  RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The Date Requested cannot be after the date file. Please correct dates now.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3215208444172555191)
,p_validation_name=>'chk_NJP'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    if :P2004_NEW_POSITION=''NJP'' and (:P2004_NEW_JOB_DESCRIPTION  IS NULL or :P2004_NEW_JOB_NAME IS NULL) then',
'        return FALSE;',
'    else',
'        return TRUE;',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You must state the New Job Name in addition to a supplying a detail Job Description'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3215208880437555191)
,p_validation_name=>'job_description_chk'
,p_validation_sequence=>50
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_count number:=0; v_Jobrep number:=0; v_jobComp number:=0; v_jobGen number:=0; v_count_qual number:=0; v_count_exp number:=0; ',
'',
'begin',
'        -- select count(1) into v_count',
'        -- from hr_hcf_jobkeyoutput',
'        -- where job_id =:P2004_JOB_ID;',
'',
'        select count(1) into v_Jobrep',
'        from HR_HCF_JOBRESPONSIBILITY',
'        where job_id =:P2004_JOB_ID;',
'',
'        -- select count(1) into v_jobComp',
'        -- from HR_HCF_JOBCOMPETENCY',
'        -- where job_id =:P2004_JOB_ID;',
'',
'        -- select count(1) into v_jobGen',
'        -- from hr_hcf_jobgenrequire',
'        -- where job_id =:P2004_JOB_ID;',
'',
'        -- select count(1) into v_count_qual',
'        -- from hr_hcf_jobtraining',
'        -- where job_id =:P2004_JOB_ID;',
'',
'',
'        select count(1) into v_count_exp',
'        from hr_hcf_jobexperience',
'        where job_id =:P2004_JOB_ID;',
'',
'    if :G_PARSING_SCHEMA != ''GAFOORS'' then',
'        if v_Jobrep=0 or  v_count_exp = 0 then',
'            return ''This Job does not have an existing job description you must have Key Outputs, Responsibility Competencies,Training, Mini Eduction and Experience a You cannot create a requisition if this is not completed.'';',
'        else',
'            return '''';',
'        end if;',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3215209284112555192)
,p_validation_name=>'prev_less_45days'
,p_validation_sequence=>60
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if  TO_DATE(:P2004_FILLED_BY_DATE) < to_date(:P2004_DATE_REQUESTED) then',
'        return ''You are not allowed to request a fill date that is less than date requested.'';',
'    else',
'        return '''';',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3215212786898555196)
,p_name=>'show_comments'
,p_event_sequence=>10
,p_condition_element=>'P2004_COMENT_SWITCH'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3215213230275555197)
,p_event_id=>wwv_flow_imp.id(3215212786898555196)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2004_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3215213773471555198)
,p_event_id=>wwv_flow_imp.id(3215212786898555196)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2004_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3215214125820555198)
,p_name=>'show_comment'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2004_COMENT_SWITCH'
,p_condition_element=>'P2004_COMENT_SWITCH'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3215214656085555199)
,p_event_id=>wwv_flow_imp.id(3215214125820555198)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2004_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3215215136386555199)
,p_event_id=>wwv_flow_imp.id(3215214125820555198)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2004_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3215215531852555200)
,p_name=>'show_hide_jobdescription'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2004_NEW_POSITION'
,p_condition_element=>'P2004_NEW_POSITION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'NJP'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3215216041426555200)
,p_event_id=>wwv_flow_imp.id(3215215531852555200)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3215170330279555141)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3215216519441555201)
,p_event_id=>wwv_flow_imp.id(3215215531852555200)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5307784188434301443)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3215217025861555201)
,p_event_id=>wwv_flow_imp.id(3215215531852555200)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3215170330279555141)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3215217536542555201)
,p_event_id=>wwv_flow_imp.id(3215215531852555200)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5307784188434301443)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3215217994687555202)
,p_name=>'show_hide_jobdesc_prep_by'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2004_NEW_POSITION'
,p_condition_element=>'P2004_NEW_POSITION'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'EXIST'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3215218405306555202)
,p_event_id=>wwv_flow_imp.id(3215217994687555202)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2004_JOB_DESCRIPTION_PREPARED'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3215219000375555203)
,p_event_id=>wwv_flow_imp.id(3215217994687555202)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2004_JOB_DESCRIPTION_PREPARED'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3215219389135555203)
,p_name=>'show_hide_desc_dtl'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2004_POS_DESC_SRC'
,p_condition_element=>'P2004_POS_DESC_SRC'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'POSITION_DESCRIPTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3215219849397555203)
,p_event_id=>wwv_flow_imp.id(3215219389135555203)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5613569330300659785)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3215220354589555204)
,p_event_id=>wwv_flow_imp.id(3215219389135555203)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5949704155348838856)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3215220847848555204)
,p_event_id=>wwv_flow_imp.id(3215219389135555203)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5613569330300659785)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3215221316794555205)
,p_event_id=>wwv_flow_imp.id(3215219389135555203)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5949704155348838856)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3215211947287555195)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from HR_RCM_STAFF_REQUISITION'
,p_attribute_02=>'HR_RCM_STAFF_REQUISITION'
,p_attribute_03=>'P2004_ID'
,p_attribute_04=>'ID'
,p_attribute_08=>wwv_flow_string.join(wwv_flow_t_varchar2(
'exists ( ',
'          SELECT 1',
'          FROM VW_USERACCESS A JOIN HR_HCF_ORGSTRUCTUREHD B ON A.ORG_ID = B.ORG_ID ',
'          JOIN HR_HCF_ORGSTRUCTUREDTL C ON B.ID = C.ORG_STRUCTURE_ID',
'          WHERE HR_RCM_STAFF_REQUISITION.ORGDTL_ID=c.id               ',
'          )',
''))
,p_internal_uid=>2793419954089558621
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3215209560751555192)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GEN_REQ_NO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_R NUMBER:=0;',
'  V_unique boolean:= false;',
'  v_count number := 0;',
'  v_NUMBER_PREFIX varchar2(50);',
'  ',
'BEGIN',
'',
' IF :P2004_HR_REQ_NUMBER =0 THEN',
' ',
'',
'   V_R:=pkg_global_fnts.get_system_no(''EMP_REQ_NUM'');',
'',
' begin',
'   ',
'   select NUMBER_PREFIX into v_NUMBER_PREFIX',
'   from HR_SYS_NUMBER',
'   WHERE ORG_ID =:APP_ORG_ID',
'   AND NUMBER_NAME = ''EMP_REQ_NUM'';',
'   ',
' exception',
'     when no_data_found then',
'         V_NUMBER_PREFIX := null;',
' end; ',
'',
' ',
'  while (v_unique = false)',
'    loop',
'        ',
'       V_R :=V_R + 1;',
'       ',
'    if v_NUMBER_PREFIX is null then ',
'   ',
'        select count(1) into v_count from hr_rcm_staff_requisition a join HR_HCF_ORGSTRUCTUREDTL b on b.id=a.ORGDTL_ID  join HR_HCF_ORGSTRUCTUREHD c on c.id=b.ORG_STRUCTURE_ID',
'        where hr_req_number =  to_char(V_R) and a.org_id=:APP_ORG_ID;',
'    else',
'         select count(1) into v_count from hr_rcm_staff_requisition a join HR_HCF_ORGSTRUCTUREDTL b on b.id=a.ORGDTL_ID  join HR_HCF_ORGSTRUCTUREHD c on c.id=b.ORG_STRUCTURE_ID',
'         where hr_req_number = v_NUMBER_PREFIX||TO_CHAR(V_R) and a.org_id=:APP_ORG_ID;',
'    end if;',
'    ',
'    if v_count = 0 then',
'        ',
'        v_unique := true;',
'        ',
'        exit;',
'        ',
'    end if;',
'    ',
'    end loop;',
'   ',
'   if v_NUMBER_PREFIX is null then ',
'    ',
'    :P2004_HR_REQ_NUMBER := V_R;',
'   else',
'    :P2004_HR_REQ_NUMBER := v_NUMBER_PREFIX||TO_CHAR(V_R);',
'    ',
'   end if;',
'   ',
'   UPDATE HR_SYS_NUMBER',
'   SET NUMBER_VALUE = V_R',
'   WHERE ORG_ID =:APP_ORG_ID',
'   AND NUMBER_NAME = ''EMP_REQ_NUM'';',
'   ',
' END IF;  ',
' ',
' exception    ',
'     when others then null;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2793417567553558618
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3215211520379555194)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of HR_RCM_STAFF_REQUISITION'
,p_attribute_02=>'HR_RCM_STAFF_REQUISITION'
,p_attribute_03=>'P2004_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P2004_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>2793419527181558620
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3215211134289555194)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3215170751734555141)
,p_internal_uid=>2793419141091558620
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3215210767699555193)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_machine_insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P2004_MACHINE_INSERT is null and :P101_MACHINE_NAME is not null then',
' :P2004_MACHINE_INSERT:=:P101_MACHINE_NAME;',
'end if;',
'',
'if :P2004_MACHINE_UPDATE is null and :P101_MACHINE_NAME is not null then',
' :P2004_MACHINE_UPDATE:=:P101_MACHINE_NAME;',
'end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,CREATE_AGAIN'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>2793418774501558619
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3215210303997555193)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_machine_update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' :P2004_MACHINE_UPDATE:=:P101_MACHINE_NAME;',
'',
' if :P2004_MACHINE_INSERT is null and :P101_MACHINE_NAME is not null then',
'    :P2004_MACHINE_INSERT:=:P101_MACHINE_NAME;',
' end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2793418310799558619
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3215209919472555193)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'auto_notify'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'     get_transaction TBLTRANSACTIONTYPE.TRANSACTION_DESCRIPTION%TYPE; ',
'   v_description tblworkflowstatus.WFL_STATUS_DESCRIPTION%TYPE;',
'begin',
'',
'select initcap(TRANSACTION_DESCRIPTION)  into get_transaction ',
'from TBLTRANSACTIONTYPE ',
'where TRANSACTION_TYPE_ID=:P2004_TRANSACTION_TYPE_ID;',
'',
'select WFL_STATUS_DESCRIPTION into v_description',
'from tblworkflowstatus',
'where WFL_STATUS_ID=:P2004_STATUS;',
'',
'  pkg_biz_rules.pop_notification',
'(',
'	get_transaction||'' for: ''||:P2004_POSITION_NAME,',
'	nvl(V(''APP_USER''),user),',
'	''ACTIVE'',',
'	current_date,	''f?p=''||:APP_ID||'':''||:APP_PAGE_ID||'':''||:APP_SESSION||''::NO::P''||:APP_PAGE_ID||''_ID:''||:P2004_ID,',
'	v_description||'' ''||get_transaction||'' Requisitions for: ''||:P2004_POSITION_NAME,',
'	:P2004_STATUS,:APP_PAGE_ID,:P2004_TRANSACTION_TYPE_ID,',
'        ''HR_RCM_STAFF_REQUISITION'',:P2004_WORK_FLOW_COMMENT,:P2004_ID);',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3215171148838555142)
,p_process_when=>'P2004_TRANSACTION_TYPE_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>2793417926274558619
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3215212394219555195)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3215169980735555140)
,p_internal_uid=>2793420401021558621
);
wwv_flow_imp.component_end;
end;
/
