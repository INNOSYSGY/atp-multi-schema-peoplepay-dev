prompt --application/pages/page_01456
begin
--   Manifest
--     PAGE: 01456
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
 p_id=>1456
,p_name=>'rptOrganizationalChartDiagram'
,p_alias=>'RPTORGANIZATIONALCHARTDIAGRAM'
,p_step_title=>'Organizational Chart Diagram'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3603894171983398503)
,p_html_page_header=>'<script src="https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>'
,p_javascript_file_urls=>'#APP_IMAGES#js/html2canvas.min.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function downloadTableAsPNG() {',
'  const tableDiv = document.getElementById(''org_char_chart'');',
'',
'  const dpi = 500;',
'  const canvasWidth = tableDiv.offsetWidth;',
'  const canvasHeight = tableDiv.offsetHeight;',
'  const canvas = document.createElement(''canvas'');',
'  canvas.width = dpi * canvasWidth / 96;',
'  canvas.height = dpi * canvasHeight / 96;',
'  canvas.style.width = `${canvasWidth}px`;',
'  canvas.style.height = `${canvasHeight}px`;',
'  const context = canvas.getContext(''2d'');',
'  context.scale(dpi/96,dpi/96);',
'',
'  // Use html2canvas to render the div as a canvas',
'  html2canvas(tableDiv, {canvas: canvas}).then(function(canvas) {',
'    // Convert the canvas to a data URL',
'    const dataURL = canvas.toDataURL(''image/png'');',
'',
'    // Create a temporary link element',
'    const link = document.createElement(''a'');',
'    link.download = ''OrgChart.png'';',
'    link.href = dataURL;',
'',
'    document.body.appendChild(link);',
'    link.click();',
'    document.body.removeChild(link);',
'  });',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'@media print {',
'  body * {',
'    visibility: hidden;',
'  }',
'  #org_char_chart, #org_char_chart * {',
'    visibility: visible;',
'  }',
'  #org_char_chart {',
'    position: absolute;',
'    left: 0;',
'    top: 0;',
'  }',
'}',
'',
'',
'',
'/* .t-Region#org_char{',
'    width: 4000px;',
'} */',
'',
'/* #org_char_chart{',
'    width: 4000px;',
'}',
'',
'.google-visualization-orgchart-node {',
'    width: 300px;',
'} */'))
,p_step_template=>2979075366320325194
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(567502381956801771)
,p_plug_name=>'Organisation Chart'
,p_region_name=>'chart'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1361968486444453470)
,p_plug_name=>'OrganisationChart'
,p_region_name=>'org_char'
,p_parent_plug_id=>wwv_flow_imp.id(567502381956801771)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    null link, ',
'    to_char(dtl.id) key_value, ',
unistr('    ''<div  style = " color: '' || get_color_at_index(level) ||''";> <b>'' || replace(dtl.unit_name, '''''''', ''\2019'') || ''</b> </div>'' display_value, '),
'    case when dtl.id = :P1456_DEPARTMENTS then null else to_char(dtl.unit_parent) end parent_key',
'FROM',
'    hr_hcf_orgstructuredtl dtl ',
'    JOIN hr_hcf_orgstructurehd oh ON oh.id = dtl.org_structure_id',
'WHERE ',
'    trunc(dtl.start_date) <= trunc(current_date) ',
'    AND trunc(nvl(dtl.end_date, trunc(current_date))) >= trunc(current_date)',
'    AND oh.org_id = :APP_ORG_ID',
'START WITH dtl.id = :P1456_DEPARTMENTS ',
'CONNECT BY PRIOR dtl.id = dtl.unit_parent ',
'ORDER SIBLINGS BY unit_level, dtl.id, dtl.unit_parent DESC;'))
,p_plug_source_type=>'PLUGIN_KEYMER.JOHN.GOOGLE_ORG_CHART'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'Y',
  'attribute_02', 'Y',
  'attribute_04', 'Medium')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(441355289607783492)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(567502381956801771)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:&P1456_RETURN_PAGE.:&SESSION.::&DEBUG.:RP,::'
,p_icon_css_classes=>'fa-hand-o-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(441355598094783492)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(567502381956801771)
,p_button_name=>'Tree_Structure'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight:t-Button--padLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Tree Structure'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1457:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-tree-org'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(441356400992783493)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(567502381956801771)
,p_button_name=>'Download_CHart'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Download Chart'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(441356837660783495)
,p_name=>'P1456_ORG_STRUCTURE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(567502381956801771)
,p_prompt=>'Organisational Structure'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select org_structure_name osn, id',
'from hr_hcf_orgstructurehd ohd',
'where ohd.org_id = :APP_ORG_ID '))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(441357259393783495)
,p_name=>'P1456_DEPARTMENTS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(567502381956801771)
,p_prompt=>'Departments'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(level)||'': ''||UNIT_NAME||''....N:''||to_char(nvl(Number_of_positions,0))||'' F:''||to_char(nvl(Filled_amount,0)) as title,',
'       wu.ID',
'from',
'(',
'select',
'od.id',
',od.unit_name',
',od.unit_parent',
',od.org_structure_id',
',count(p.id) as Number_of_positions',
',sum(nvl(p.no_filled,0)) as Filled_amount',
'from (select * from hr_hcf_orgstructuredtl',
'      where trunc(start_date) <= trunc(current_date)',
'      and trunc(nvl(end_date,trunc(current_date))) >= trunc(current_date)',
'     ) od',
'left join hr_hcf_position p on od.id = p.orgdtl_id',
'group by od.id, od.unit_name,od.unit_parent,od.org_structure_id',
') wu',
'JOIN hr_hcf_orgstructurehd oh on oh.id = wu.org_structure_id',
'where oh.org_id = :APP_ORG_ID',
'and wu.org_structure_id = :P1456_ORG_STRUCTURE',
'start with UNIT_PARENT is null',
'connect by prior wu.ID = UNIT_PARENT',
'order siblings by UNIT_NAME'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1456_ORG_STRUCTURE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_column=>6
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
 p_id=>wwv_flow_imp.id(441357649774783496)
,p_name=>'P1456_RETURN_PAGE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(567502381956801771)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(441358306999783497)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1456_DEPARTMENTS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(441358851095783497)
,p_event_id=>wwv_flow_imp.id(441358306999783497)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1361968486444453470)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(441359334805783498)
,p_event_id=>wwv_flow_imp.id(441358306999783497)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'P1456_DEPARTMENTS'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(441359725259783498)
,p_name=>'New_1s'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(441356400992783493)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(441360210294783499)
,p_event_id=>wwv_flow_imp.id(441359725259783498)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'downloadTableAsPNG();'
);
wwv_flow_imp.component_end;
end;
/
