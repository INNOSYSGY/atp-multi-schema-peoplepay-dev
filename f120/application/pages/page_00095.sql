prompt --application/pages/page_00095
begin
--   Manifest
--     PAGE: 00095
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
 p_id=>95
,p_name=>'95_rptOrganizationalChartPositionDiagram'
,p_alias=>'95-RPTORGANIZATIONALCHARTPOSITIONDIAGRAM'
,p_step_title=>'Organizational Chart Position Diagram'
,p_html_page_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script src="https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>',
''))
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3603894171983398503)
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
'}',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function applyBackgroundColors() {',
'  var tds = document.querySelectorAll(''.google-visualization-orgchart-node td'');',
'',
'  for (var i = 0; i < tds.length; i++) {',
'    var parentTrs = tds[i].parentElement.parentElement.querySelectorAll(''tr'');',
'    for (var j = 0; j < parentTrs.length; j++) {',
'      var bgColor = getRandomColor(); // get a random color for each tr',
'      parentTrs[j].style.backgroundColor = bgColor + '' !important'';',
'    }',
'  }',
'}',
'',
'function getRandomColor() {',
'  var letters = ''0123456789ABCDEF'';',
'  var color = ''#'';',
'  for (var i = 0; i < 6; i++) {',
'    color += letters[Math.floor(Math.random() * 16)];',
'  }',
'  return color;',
'}',
''))
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
'/* .t-Region#org_char{',
'    width: 4000px;',
'} */',
'',
'#org_char_chart{',
'    width: 4000px;',
'}',
'',
'.google-visualization-orgchart-node {',
'    width: 300px;',
'}',
'',
'',
''))
,p_step_template=>2979075366320325194
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2165126670715473962)
,p_plug_name=>'Position Chart'
,p_region_template_options=>'#DEFAULT#:t-Region--accent11:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2160821353184932947)
,p_plug_name=>'PositionChart'
,p_region_name=>'org_char'
,p_parent_plug_id=>wwv_flow_imp.id(2165126670715473962)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    null link,  ',
'    to_char(p.id) key_value,  ',
unistr('    ''<div  style = " color: '' || get_color_at_index(level) || ''; width : 100%;" > ''||  ''<b>'' || replace(position_name, '''''''', ''\2019'')  '),
'    || ''</b>'' || ''<br>'' ',
'    || case when trim(dtl.unit_name) is not null then',
'        ''<span style="color: #000; font-size: 10.5px;">'' ',
unistr('         || ''('' || replace(dtl.unit_name, '''''''', ''\2019'') || '')'' '),
'         || ''</span>''',
'       else ',
'         ''<i style="color: #808080; font-size: 13px;">No Department</i>''',
'     end',
'    || ''<br>'' || ''Required: '' ',
'    || p.no_required_max || ''</div>'' display_value, ',
'    case when p.id = :P95_POSITION then null else to_char(p.report_to) end parent_key',
'FROM ',
'    hr_hcf_position p ',
'    join hr_hcf_orgstructuredtl dtl on dtl.id = p.orgdtl_id',
'    join hr_hcf_orgstructurehd oh on oh.id = dtl.org_structure_id',
'    left join (',
'        select ',
'            position_id, count(1) position_count',
'        from ',
'            hr_rcm_employee ',
'        where ',
'            date_separated is null ',
'        group by',
'            position_id) b on p.id = b.position_id',
'    left join hr_hcf_positiongrade c on P.grade_id = c.id',
'where ',
'    trunc(p.start_date) <= trunc(current_date) ',
'    and trunc(nvl(p.end_date,trunc(current_date))) >= trunc(current_date)',
'    and oh.org_id = :APP_ORG_ID',
'    and (p.no_required_max > case when :P95_FILTER = 1 then 0 else -1 end)',
'start with p.id = :P95_POSITION    ',
'cONNECT BY  PRIOR p.id = p.report_to',
'ORDER SIBLINGS BY seq_no asc;',
''))
,p_plug_source_type=>'PLUGIN_KEYMER.JOHN.GOOGLE_ORG_CHART'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'Y',
  'attribute_02', 'Y',
  'attribute_04', 'Medium')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(441339852964715311)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2165126670715473962)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1300:&SESSION.::&DEBUG.:RP,1300::'
,p_icon_css_classes=>'fa-hand-o-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(441340197779715312)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2165126670715473962)
,p_button_name=>'Tree_Structure'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight:t-Button--padLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Tree Structure'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:105:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-tree-org'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(441340625611715312)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2165126670715473962)
,p_button_name=>'Download_CHart'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Download Chart'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(441341061589715316)
,p_name=>'P95_POSITION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2165126670715473962)
,p_prompt=>'Position'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    position_name || '' ('' || pg.grade_code || '')''',
'    || ''(''',
'    || od.unit_name',
'    || '')'' a,',
'    p.id b',
'FROM',
'    hr_hcf_position       p',
'    join hr_hcf_orgstructuredtl od on p.orgdtl_id = od.id',
'    join hr_hcf_orgstructurehd oh on oh.id = od.org_structure_id',
'    join hr_hcf_positiongrade pg on pg.id = p.grade_id',
'where oh.org_id = :APP_ORG_ID',
'order by position_name',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(441341467975715317)
,p_name=>'P95_FILTER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2165126670715473962)
,p_item_default=>'2'
,p_prompt=>'Filter'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Required > 0;1,Required >= 0;2'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(441342106012715323)
,p_name=>'dy_filter_chart'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P95_POSITION,P95_FILTER'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(441342685121715325)
,p_event_id=>wwv_flow_imp.id(441342106012715323)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2160821353184932947)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(441343178663715325)
,p_event_id=>wwv_flow_imp.id(441342106012715323)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'P95_POSITION'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(441343512623715325)
,p_name=>'New_1s'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(441340625611715312)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(441344030501715326)
,p_event_id=>wwv_flow_imp.id(441343512623715325)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'downloadTableAsPNG();'
);
wwv_flow_imp.component_end;
end;
/
