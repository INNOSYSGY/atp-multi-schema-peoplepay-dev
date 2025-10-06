prompt --application/shared_components/plugins/region_type/keymer_john_google_org_chart
begin
--   Manifest
--     PLUGIN: KEYMER.JOHN.GOOGLE_ORG_CHART
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(135338946046032473)
,p_plugin_type=>'REGION TYPE'
,p_name=>'KEYMER.JOHN.GOOGLE_ORG_CHART'
,p_display_name=>'Google Organization Chart'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','KEYMER.JOHN.GOOGLE_ORG_CHART'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function f_render (',
'  p_region              in apex_plugin.t_region,',
'  p_plugin              in apex_plugin.t_plugin,',
'  p_is_printer_friendly in boolean )',
'return apex_plugin.t_region_render_result',
'is',
'  l_region_id  varchar2(50) := nvl(p_region.static_id,''R'' || to_char(p_region.id,''fm99999999999999999999'')) || ''_chart'';',
'  l_data       apex_plugin_util.t_column_value_list2;',
'  l_chart_opts varchar2(32000);',
'  l_bg_color varchar2(100) := ''["red", "green", "blue"]'';',
'  l_b_color varchar2(255);',
'  l_num_levels number(5);',
'   ',
'',
'begin',
'  l_data := apex_plugin_util.get_data2(p_sql_statement  => p_region.source,',
'                                    p_min_columns    => 4,',
'                                    p_max_columns    => 4,',
'                                    p_component_name => p_region.name);',
'    ',
'  ',
'  if l_data(1).value_list.count = 0 then',
'    htp.p(nvl(p_region.no_data_found_message,''no data found''));',
'    return null;',
'  end if;',
'  ',
'  l_chart_opts := ''{'';',
'  l_chart_opts := l_chart_opts || ''allowCollapse:'' || case when p_region.attribute_01 = ''Y'' then ''true'' else ''false'' end || '', '';',
'  l_chart_opts := l_chart_opts || ''allowHtml:'' || case when p_region.attribute_02 = ''Y'' then ''true'' else ''false'' end || '', '';',
'  l_chart_opts := l_chart_opts || ''compactRows:'' || ''false'';',
'  ',
'  if p_region.attribute_03 is not null then',
'    l_chart_opts := l_chart_opts || '', nodeClass:'''''' ||  p_region.attribute_03 || '''''','';',
'  end if;',
'  ',
'  l_chart_opts := l_chart_opts || '', size:'''''' || lower(p_region.attribute_04) || '''''''';',
'  ',
'  if p_region.attribute_05 is not null then',
'    l_chart_opts := l_chart_opts || '', selectedNodeClass:'''''' ||  p_region.attribute_05 || '''''''';',
'  end if;',
'  ',
'',
'',
'  htp.p(htf.div(cattributes=>''id="''||l_region_id|| ''"'')||''</div>'');',
'',
'  htp.p(',
'    q''[ <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>',
'    <script type="text/javascript">',
'    google.charts.load(''current'', {packages:["orgchart"]});',
'    google.charts.setOnLoadCallback(drawChart);',
'',
'    function drawChart() {',
'    var data = new google.visualization.DataTable();',
'    data.addColumn(''string'', ''Name'');',
'    data.addColumn(''string'', ''Manager'');',
'    data.addColumn(''string'', ''ToolTip'');',
'    ',
'    data.addRows([',
'  ]'');',
'  ',
'',
' ',
'',
'  for i in 1 .. l_data(1).value_list.count loop',
'    htp.p(''['' ',
'          || ''{v:'''''' ',
'          || l_data(2).value_list(i).varchar2_value ',
'          || '''''', f:''''''',
'          || case when l_data(1).value_list(i).varchar2_value is not null then ',
'               htf.anchor(curl=>l_data(1).value_list(i).varchar2_value, ctext=>l_data(3).value_list(i).varchar2_value)',
'             else l_data(3).value_list(i).varchar2_value end',
'          || ''''''},''',
'          || '''''''' || l_data(4).value_list(i).varchar2_value || '''''',''',
'          || ''''''''''''',
'          || '']''',
'          || case when i < l_data(1).value_list.count then '','' end',
'    );',
'',
'',
'  end loop;',
'',
'      ',
'      ',
'',
'-- for (let i = 0; i < 10; i++) {',
'--             data.setRowProperty(i, ''style'', ''background-color:#00FF00 !important;background-image:none'');',
'--                     }',
'',
'',
'  htp.p(',
'    q''[',
'      ]);',
'       ',
'      var chart = new google.visualization.OrgChart(document.getElementById('']'' || l_region_id || q''[''));',
'',
'',
'    ',
'      chart.draw(data, ]'' || l_chart_opts || q''[});',
'',
'',
'',
' ',
'',
'}',
'    </script>',
'  ]'');',
'  ',
'  return null;',
'end;'))
,p_api_version=>1
,p_render_function=>'f_render'
,p_standard_attributes=>'SOURCE_SQL:NO_DATA_FOUND_MESSAGE'
,p_substitute_attributes=>true
,p_reference_id=>1645032582301862362
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Render an organization style chart using the Google Charts API. Accepts a SQL statement as the region source with the following mandatory columns.',
'1) Link - A URL to link the node to. Use Null for none. Ensure you prepare the URL if session state protection is enabled.',
'2) Child Key - The key to use for this node. This can be numeric or text.',
'3) Child Display Value - The text to display. You may use HTML if you have chosen this option.',
'4) Parent Key - The key of this nodes parent.'))
,p_version_identifier=>'1.0'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(135339243660032477)
,p_plugin_id=>wwv_flow_imp.id(135338946046032473)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'attribute_01'
,p_prompt=>'Allow Collapse'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(135339641249032478)
,p_plugin_id=>wwv_flow_imp.id(135338946046032473)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'attribute_02'
,p_prompt=>'Allow HTML'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(135340062928032479)
,p_plugin_id=>wwv_flow_imp.id(135338946046032473)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'attribute_03'
,p_prompt=>'Node Class'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>30
,p_max_length=>100
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(135340435524032479)
,p_plugin_id=>wwv_flow_imp.id(135338946046032473)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'attribute_04'
,p_prompt=>'Size'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_default_value=>'Medium'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(135340863278032479)
,p_plugin_attribute_id=>wwv_flow_imp.id(135340435524032479)
,p_display_sequence=>10
,p_display_value=>'Small'
,p_return_value=>'Small'
,p_is_quick_pick=>true
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(135341346994032480)
,p_plugin_attribute_id=>wwv_flow_imp.id(135340435524032479)
,p_display_sequence=>20
,p_display_value=>'Medium'
,p_return_value=>'Medium'
,p_is_quick_pick=>true
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(135341858293032480)
,p_plugin_attribute_id=>wwv_flow_imp.id(135340435524032479)
,p_display_sequence=>30
,p_display_value=>'Large'
,p_return_value=>'LArge'
,p_is_quick_pick=>true
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(135342424316032480)
,p_plugin_id=>wwv_flow_imp.id(135338946046032473)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'attribute_05'
,p_prompt=>'Selected Node Class'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_std_attribute(
 p_id=>wwv_flow_imp.id(135343043759032486)
,p_plugin_id=>wwv_flow_imp.id(135338946046032473)
,p_name=>'SOURCE_SQL'
,p_sql_min_column_count=>4
,p_sql_max_column_count=>4
,p_depending_on_has_to_exist=>true
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select null link, ''1'' key_value, ''Value'' display_value, '''' parent_key',
'from dual;'))
,p_help_text=>'Enter a SQL Query to return the hierarchy'
);
end;
/
begin
wwv_flow_imp.component_end;
end;
/
