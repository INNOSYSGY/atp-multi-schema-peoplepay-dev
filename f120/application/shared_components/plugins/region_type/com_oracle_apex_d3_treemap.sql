prompt --application/shared_components/plugins/region_type/com_oracle_apex_d3_treemap
begin
--   Manifest
--     PLUGIN: COM.ORACLE.APEX.D3.TREEMAP
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(5355198073994379040)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.ORACLE.APEX.D3.TREEMAP'
,p_display_name=>'D3 Treemap Chart'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.ORACLE.APEX.D3.TREEMAP'),'#IMAGE_PREFIX#plugins/com.oracle.apex.d3.treemapchart/1.0/')
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/d3/3.5.5/d3.min.js',
'#IMAGE_PREFIX#plugins/com.oracle.apex.d3/d3.oracle.js',
'#IMAGE_PREFIX#plugins/com.oracle.apex.d3/oracle.jql.js',
'#IMAGE_PREFIX#plugins/com.oracle.apex.d3.tooltip/d3.oracle.tooltip.js',
'#IMAGE_PREFIX#plugins/com.oracle.apex.d3.ary/d3.oracle.ary.js',
'#PLUGIN_FILES#com.oracle.apex.d3.treemapchart.js'))
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#plugins/com.oracle.apex.d3.tooltip/d3.oracle.tooltip.css',
'#IMAGE_PREFIX#plugins/com.oracle.apex.d3.ary/d3.oracle.ary.css',
'#PLUGIN_FILES#d3.oracle.treemapchart.css'))
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function ora_d3_treemap_ajax (  p_region in apex_plugin.t_region,',
'                                 p_plugin in apex_plugin.t_plugin )',
'                        return apex_plugin.t_region_ajax_result is',
'    c_label_col     constant varchar2(255) := p_region.attribute_12;',
'    c_value_col     constant varchar2(255) := p_region.attribute_13;',
'    c_pk_col        constant varchar2(255) := p_region.attribute_14;',
'    c_parent_col    constant varchar2(255) := p_region.attribute_15;',
'    c_group_col     constant varchar2(255) := p_region.attribute_16;',
'    c_link_col      constant varchar2(255) := p_region.attribute_17;',
'    c_tooltip_col   constant varchar2(255) := p_region.attribute_20;',
'    c_link_target   constant varchar2(255) := p_region.attribute_24;',
'',
'    l_label_col_no      pls_integer;',
'    l_value_col_no      pls_integer;',
'    l_pk_col_no         pls_integer;',
'    l_parent_col_no     pls_integer;',
'    l_group_col_no      pls_integer;',
'    l_link_col_no       pls_integer;',
'    l_tooltip_col_no    pls_integer;',
'',
'    l_label  varchar2(4000);',
'    l_value  number;',
'    l_pk     varchar2(4000);',
'    l_parent varchar2(4000);',
'    l_group  varchar2(4000);',
'    l_link   varchar2(4000);',
'    l_desc   varchar2(4000);',
'    l_tooltip   varchar2(4000);',
'',
'    l_num_rows          pls_integer := p_region.fetched_rows;',
'    l_count             pls_integer := 0;',
'    l_column_value_list apex_plugin_util.t_column_value_list2;',
'    l_region_source     varchar2(32767) := p_region.source;',
'begin',
'    -- get the data to be displayed',
'    l_column_value_list := apex_plugin_util.get_data2 (',
'                               p_sql_statement  => l_region_source,',
'                               p_min_columns    => 4,',
'                               p_max_columns    => null,',
'                               p_component_name => p_region.name,',
'                               p_max_rows       => null );',
'',
'    -- Get the actual column number for the fields we want.',
'    l_label_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Label Column'',',
'                        p_column_alias      => c_label_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => true,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'    l_value_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Value Column'',',
'                        p_column_alias      => c_value_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => true,',
'                        p_data_type         => apex_plugin_util.c_data_type_number',
'                    );',
'    l_pk_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Primary Key Column'',',
'                        p_column_alias      => c_pk_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => true,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'    l_parent_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Parent Key Column'',',
'                        p_column_alias      => c_parent_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'    l_group_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Color Group Column'',',
'                        p_column_alias      => c_group_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => true,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'    l_tooltip_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Tooltip Column'',',
'                        p_column_alias      => c_tooltip_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    -- Loop through the data',
'    apex_json.open_object;',
'    apex_json.open_array(''row'');',
'    for l_row_num in 1..l_column_value_list(1).value_list.count loop',
'        if l_count < nvl(l_num_rows,l_count) then',
'            l_count := l_count+1;',
'',
'            begin',
'                -- Assign the column values of the current row',
'                -- into session state',
'                apex_plugin_util.set_component_values (',
'                    p_column_value_list => l_column_value_list,',
'                    p_row_num           => l_row_num );',
'',
'                apex_json.open_object;',
'',
'                l_label  := apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_label_col_no).data_type,',
'                                p_value     => l_column_value_list(l_label_col_no).value_list(l_row_num) );',
'                l_value  := l_column_value_list(l_value_col_no).value_list(l_row_num).number_value;',
'                l_pk     := apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_pk_col_no).data_type,',
'                                p_value     => l_column_value_list(l_pk_col_no).value_list(l_row_num) );',
'                l_group  := apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_group_col_no).data_type,',
'                                p_value     => l_column_value_list(l_group_col_no).value_list(l_row_num) );',
'',
'                if l_parent_col_no is not null then',
'                   l_parent := apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_parent_col_no).data_type,',
'                                p_value     => l_column_value_list(l_parent_col_no).value_list(l_row_num) );',
'                end if;',
'',
'                -- Emit the optional columns if provided',
'',
'                -- Link Target, optional',
'                if c_link_target is not null then',
'                    l_link := apex_util.prepare_url (',
'                        apex_plugin_util.replace_substitutions (',
'                            p_value  => c_link_target,',
'                            p_escape => false ) );',
'                end if;',
'',
'                -- Tooltip, optional',
'                if l_tooltip_col_no is not null then',
'                    l_tooltip := apex_plugin_util.get_value_as_varchar2 (',
'                        p_data_type => l_column_value_list(l_tooltip_col_no).data_type,',
'                        p_value     => l_column_value_list(l_tooltip_col_no).value_list(l_row_num) );',
'                end if;',
'',
'                -- Emit the required columns',
'                apex_json.write(''ID'',        l_pk);',
'                apex_json.write(''LABEL'',     l_label);',
'                apex_json.write(''COLORVALUE'',l_group);',
'                apex_json.write(''SIZEVALUE'', l_value);',
'                apex_json.write(''PARENT_ID'', l_parent);',
'                apex_json.write(''LINK'', l_link);',
'                apex_json.write(''TOOLTIP'',l_tooltip);',
'',
'                apex_json.close_object;',
'',
'                apex_plugin_util.clear_component_values;',
'            exception when others then',
'                apex_plugin_util.clear_component_values;',
'                raise;',
'            end;',
'        end if;',
'    end loop;',
'    apex_json.close_all;',
'',
'    return null;',
'  end ora_d3_treemap_ajax; ',
'',
' function ora_d3_treemap_render (',
'      p_region              in apex_plugin.t_region,',
'      p_plugin              in apex_plugin.t_plugin,',
'      p_is_printer_friendly in boolean ',
'  ) return apex_plugin.t_region_render_result is ',
'',
'    --Advanced Configuration',
'    l_adv_conf         apex_application_page_regions.attribute_25%type := p_region.attribute_25;',
'',
'    --Color Scheme',
'    l_colors           apex_application_page_regions.attribute_02%type := p_region.attribute_02;',
'    l_colors_fg        apex_application_page_regions.attribute_02%type;',
'',
'     --Dimensions',
'    c_min_height            constant number         := nvl(p_region.attribute_21, 100);',
'    c_max_height            constant number         := nvl(p_region.attribute_22, 500);',
'',
'    --Aspect Ratios',
'    c_min_ar                constant number         := apex_plugin_util.get_attribute_as_number(p_plugin.attribute_01, ''Min Aspect Ratio'');',
'    c_max_ar                constant number         := apex_plugin_util.get_attribute_as_number(p_plugin.attribute_02, ''Max Aspect Ratio'');',
'    l_formatted_min_ar      varchar2(200);',
'    l_formatted_max_ar      varchar2(200);',
'',
'    -- Legend',
'    c_show_legend           constant boolean        := p_region.attribute_23 is not null;',
'    c_legend_position       constant varchar2(200)  := p_region.attribute_23;',
'    ',
'     -- Tooltip configuration',
'    c_show_tooltip          constant boolean        := p_region.attribute_19 is not null;',
'    c_series_tooltip        constant boolean        := instr('':'' || p_region.attribute_19 || '':'', '':SERIES:'') > 0;',
'    c_custom_tooltip        constant boolean        := instr('':'' || p_region.attribute_19 || '':'', '':CUSTOM:'') > 0;',
'    c_value_tooltip         constant boolean        := instr('':'' || p_region.attribute_19 || '':'', '':VALUE:'') > 0;',
'',
'  begin',
'',
'    -- Formatting to fix add_attribute bug.',
'    if c_min_ar > -1 and c_min_ar < 1 and c_min_ar <> 0 then',
'        l_formatted_min_ar := (case when c_min_ar < 0 then ''-'' else '''' end) || ''0'' || to_char(abs(c_min_ar));',
'    else',
'        l_formatted_min_ar := to_char(c_min_ar);',
'    end if;',
'    if c_max_ar > -1 and c_max_ar < 1 and c_max_ar <> 0 then',
'        l_formatted_max_ar := (case when c_max_ar < 0 then ''-'' else '''' end) || ''0'' || to_char(abs(c_max_ar));',
'    else',
'        l_formatted_max_ar := to_char(c_max_ar);',
'    end if;',
'',
'    -- Color scheme',
'    IF l_colors = ''MODERN'' THEN',
'        l_colors    := ''#FF3B30:#FF9500:#FFCC00:#4CD964:#34AADC:#007AFF:#5856D6:#FF2D55:#8E8E93:#C7C7CC'';',
'        l_colors_fg := ''#000000:#000000:#000000:#000000:#000000:#000000:#FFFFFF:#000000:#000000:#000000'';',
'    ELSIF l_colors = ''MODERN2'' THEN',
'        l_colors    := ''#1ABC9C:#2ECC71:#4AA3DF:#9B59B6:#3D566E:#F1C40F:#E67E22:#E74C3C'';',
'        l_colors_fg := ''#000000:#000000:#000000:#FFFFFF:#FFFFFF:#000000:#000000:#000000'';',
'    ELSIF l_colors = ''SOLAR'' THEN',
'        l_colors    := ''#B58900:#CB4B16:#DC322F:#D33682:#6C71C4:#268BD2:#2AA198:#859900'';',
'        l_colors_fg := ''#000000:#FFFFFF:#FFFFFF:#FFFFFF:#000000:#000000:#000000:#000000'';',
'    ELSIF l_colors = ''METRO'' then',
'        l_colors    := ''#E61400:#19A2DE:#319A31:#EF9608:#8CBE29:#A500FF:#00AAAD:#FF0094:#9C5100:#E671B5'';',
'        l_colors_fg := ''#FFFFFF:#000000:#000000:#000000:#000000:#FFFFFF:#000000:#000000:#FFFFFF:#000000'';',
'    ELSE',
'        l_colors    := null;',
'        l_colors_fg := null;',
'    END IF;',
'',
'    sys.htp.p(',
'        ''<div class="a-D3TreemapChart" id="'' || apex_plugin_util.escape(p_region.static_id, true) || ''_region">'' ||',
'            ''<div class="a-D3TreemapChart-container" id="'' || apex_plugin_util.escape(p_region.static_id, true) ||''_chart"></div>'' ||',
'        ''</div>'');',
'    apex_javascript.add_onload_code (',
'      ''com_oracle_apex_d3_treemap_start(''',
'        ||apex_javascript.add_value(p_region.static_id, true)',
'        ||apex_javascript.add_value(apex_plugin.get_ajax_identifier, true)',
'        ||apex_javascript.add_value(l_colors, true)',
'        ||apex_javascript.add_value(l_colors_fg, true)',
'        ||apex_javascript.add_value(l_adv_conf, true)',
'        ||apex_javascript.add_value(l_formatted_min_ar, true)',
'        ||apex_javascript.add_value(l_formatted_min_ar, true)',
'        ||apex_javascript.add_value(c_min_height, true)',
'        ||apex_javascript.add_value(c_max_height, true)',
'        ||apex_javascript.add_value(apex_plugin_util.page_item_names_to_jquery(p_region.ajax_items_to_submit))',
'        ||apex_javascript.add_value(c_show_tooltip, true) ',
'        ||apex_javascript.add_value(c_series_tooltip, true) ',
'        ||apex_javascript.add_value(c_custom_tooltip, true)',
'        ||apex_javascript.add_value(c_value_tooltip, true)',
'        ||apex_javascript.add_value(c_show_legend, true) ',
'        ||apex_javascript.add_value(c_legend_position, false)',
'        ||'');''',
'    );',
'    return null;',
'  end ora_d3_treemap_render;'))
,p_api_version=>1
,p_render_function=>'ora_d3_treemap_render'
,p_ajax_function=>'ora_d3_treemap_ajax'
,p_standard_attributes=>'SOURCE_SQL:AJAX_ITEMS_TO_SUBMIT:FETCHED_ROWS:ESCAPE_OUTPUT'
,p_substitute_attributes=>false
,p_version_scn=>1
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'	This plugin provides a&nbsp;<em>Treemap Chart</em> based on the <a href="http://www.d3js.org" target="_blank">D3js</a> framework. Treemap charts allow to visualize two values by area sizes and colors and provide a good overview on data distribution.'
||' This plugin is based on the <a href="http://bl.ocks.org/mbostock/4063582">treemap chart example</a>&nbsp;by the D3js author Mike Bostock.</p>',
'<p>',
'	Plugin features:</p>',
'<ul>',
'	<li>',
'		Generate a Treemap Chart based on the SQL query in the Region source',
'		<ul>',
'			<li>',
'				The data hierarchy (columns ID and PARENT_ID) is being detected automatically; if PARENT_ID is<br />',
'				missing or if it contains nonexistent values, the nodes are being considered as root nodes.</li>',
'			<li>',
'				Plugin honors the&nbsp;<em>Page Items to Submit&nbsp;</em>attribute</li>',
'			<li>',
'				Plugin honors the&nbsp;<em>Escape Special Characters&nbsp;</em>attribute (this applies to the &quot;Infobox&quot; which is displayed on Mouseover)</li>',
'		</ul>',
'	</li>',
'	<li>',
'		The Plugin is AJAX aware',
'		<ul>',
'			<li>',
'				Honors the&nbsp;<em>apexrefresh</em> event - you can refresh the chart with a Dynamic Action</li>',
'			<li>',
'				The Plugin provides an&nbsp;<em>Auto Refresh&nbsp;</em>mode</li>',
'			<li>',
'				Plugin posts events to the APEX Dynamic Action Framework. So you can create dynamic Actions (e.g. to refresh other APEX components) based on the following plugin events.',
'				<ul>',
'					<li>',
'						Mouseover</li>',
'					<li>',
'						Mouseout</li>',
'					<li>',
'						Mouse Click</li>',
'					<li>',
'						Chart initialized<br />',
'						&nbsp;</li>',
'				</ul>',
'			</li>',
'		</ul>',
'	</li>',
'	<li>',
'		CSS and responsive Features',
'		<ul>',
'			<li>',
'				The plugin is responsive and changes its size according to the device&#39;s display size</li>',
'			<li>',
'				All components (Areas, Infoboxes, highlighted areas) can be augmented with own CSS classes</li>',
'		</ul>',
'	</li>',
'</ul>'))
,p_version_identifier=>'5.0.2'
,p_about_url=>'http://apex.oracle.com/plugins'
,p_files_version=>6
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(3402476896779717943)
,p_plugin_id=>wwv_flow_imp.id(5355198073994379040)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>1
,p_display_sequence=>510
,p_static_id=>'attribute_01'
,p_prompt=>'Minimum Aspect Ratio'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'1.33'
,p_display_length=>5
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Enter the minimum aspect ratio that charts use to recommend a height. A minimum aspect ratio of 1.333 means that the chart''s width should be no less than 1.333 times its height. </p>',
'<p>Note: This setting can be overridden by the ''Min Height'' setting on the region.</p>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(3402477306925717943)
,p_plugin_id=>wwv_flow_imp.id(5355198073994379040)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>2
,p_display_sequence=>520
,p_static_id=>'attribute_02'
,p_prompt=>'Maximum Aspect Ratio'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'3'
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Enter the maximum aspect ratio that charts use to recommend a height. A maximum aspect ratio of 3 means that the chart''s width should be no greater than 3 times its height. </p>',
'<p>Note: This setting can be overridden by the ''Maximum Height'' setting on the region.</p>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(3402477671950717943)
,p_plugin_id=>wwv_flow_imp.id(5355198073994379040)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>100
,p_static_id=>'attribute_02'
,p_prompt=>'Color Scheme'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Theme Default'
,p_help_text=>'<p>Select the color scheme used to render the chart.</p>'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(3402478086817717944)
,p_plugin_attribute_id=>wwv_flow_imp.id(3402477671950717943)
,p_display_sequence=>60
,p_display_value=>'Modern'
,p_return_value=>'MODERN'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(3402478589565717945)
,p_plugin_attribute_id=>wwv_flow_imp.id(3402477671950717943)
,p_display_sequence=>70
,p_display_value=>'Modern 2'
,p_return_value=>'MODERN2'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(3402479066043717945)
,p_plugin_attribute_id=>wwv_flow_imp.id(3402477671950717943)
,p_display_sequence=>80
,p_display_value=>'Solar'
,p_return_value=>'SOLAR'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(3402479539568717945)
,p_plugin_attribute_id=>wwv_flow_imp.id(3402477671950717943)
,p_display_sequence=>90
,p_display_value=>'Metro'
,p_return_value=>'METRO'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(3402480059483717946)
,p_plugin_id=>wwv_flow_imp.id(5355198073994379040)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>10
,p_static_id=>'attribute_12'
,p_prompt=>'Label Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the labels for the chart.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(3402480468710717946)
,p_plugin_id=>wwv_flow_imp.id(5355198073994379040)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>20
,p_static_id=>'attribute_13'
,p_prompt=>'Value Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'NUMBER'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the labels for the chart.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(3402480871217717946)
,p_plugin_id=>wwv_flow_imp.id(5355198073994379040)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>40
,p_static_id=>'attribute_14'
,p_prompt=>'Primary Key Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the primary key values for the chart. The primary key and parent key columns are used to define the hierarchy for the chart.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(3402481321442717947)
,p_plugin_id=>wwv_flow_imp.id(5355198073994379040)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>50
,p_static_id=>'attribute_15'
,p_prompt=>'Parent Key Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the parent key values for the chart. The primary key and parent key columns are used to define the hierarchy for the chart.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(3402481712901717947)
,p_plugin_id=>wwv_flow_imp.id(5355198073994379040)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>16
,p_display_sequence=>60
,p_static_id=>'attribute_16'
,p_prompt=>'Color Group Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the color group values for the chart.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(3402482115639717947)
,p_plugin_id=>wwv_flow_imp.id(5355198073994379040)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>19
,p_display_sequence=>70
,p_static_id=>'attribute_19'
,p_prompt=>'Tooltips'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>false
,p_is_common=>false
,p_show_in_wizard=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Check which attributes are shown on the tooltip for each data point. The ''Custom column'' option allows you to specify text for each individual data point as an additional column in the region SQL Query.</p>',
'<p>Note: Leave all options unchecked to disable the tooltip.</p>'))
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(3402482437329717947)
,p_plugin_attribute_id=>wwv_flow_imp.id(3402482115639717947)
,p_display_sequence=>10
,p_display_value=>'Show series name'
,p_return_value=>'SERIES'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(3402482942705717948)
,p_plugin_attribute_id=>wwv_flow_imp.id(3402482115639717947)
,p_display_sequence=>20
,p_display_value=>'Custom column'
,p_return_value=>'CUSTOM'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(3402483439740717948)
,p_plugin_attribute_id=>wwv_flow_imp.id(3402482115639717947)
,p_display_sequence=>30
,p_display_value=>'Show Value'
,p_return_value=>'VALUE'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(3402483944694717948)
,p_plugin_id=>wwv_flow_imp.id(5355198073994379040)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>20
,p_display_sequence=>80
,p_static_id=>'attribute_20'
,p_prompt=>'Tooltip Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(3402482115639717947)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'SERIES:CUSTOM:VALUE,SERIES:CUSTOM,CUSTOM:VALUE,CUSTOM'
,p_help_text=>'Select the column from the region SQL Query that holds the tooltip values for the chart.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(3402484328360717949)
,p_plugin_id=>wwv_flow_imp.id(5355198073994379040)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>21
,p_display_sequence=>110
,p_static_id=>'attribute_21'
,p_prompt=>'Minimum Height'
,p_attribute_type=>'INTEGER'
,p_is_required=>false
,p_is_common=>false
,p_show_in_wizard=>false
,p_display_length=>5
,p_max_length=>5
,p_unit=>'px'
,p_is_translatable=>false
,p_help_text=>'Enter the minimum height, in pixels, of the chart. Chart width will adapt to the size of the region.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(3402484746731717949)
,p_plugin_id=>wwv_flow_imp.id(5355198073994379040)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>22
,p_display_sequence=>120
,p_static_id=>'attribute_22'
,p_prompt=>'Maximum Height'
,p_attribute_type=>'INTEGER'
,p_is_required=>false
,p_is_common=>false
,p_show_in_wizard=>false
,p_display_length=>5
,p_max_length=>5
,p_unit=>'px'
,p_is_translatable=>false
,p_help_text=>'Enter the maximum height, in pixels, of the chart. Chart width will adapt to the size of the region.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(3402485169803717949)
,p_plugin_id=>wwv_flow_imp.id(5355198073994379040)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>23
,p_display_sequence=>90
,p_static_id=>'attribute_23'
,p_prompt=>'Legend'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'No Legend'
,p_help_text=>'Select where the legend is displayed on the chart.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(3402485541660717949)
,p_plugin_attribute_id=>wwv_flow_imp.id(3402485169803717949)
,p_display_sequence=>10
,p_display_value=>'Above Chart'
,p_return_value=>'TOP'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(3402486035571717950)
,p_plugin_attribute_id=>wwv_flow_imp.id(3402485169803717949)
,p_display_sequence=>20
,p_display_value=>'Below Chart'
,p_return_value=>'BOTTOM'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(3402486564696717950)
,p_plugin_id=>wwv_flow_imp.id(5355198073994379040)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>24
,p_display_sequence=>30
,p_static_id=>'attribute_24'
,p_prompt=>'Link Target'
,p_attribute_type=>'LINK'
,p_is_required=>false
,p_is_translatable=>false
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Example 1: URL to navigate to page 10 and set P10_EMPNO to the EMPNO value of the clicked entry.',
'<pre>f?p=&amp;APP_ID.:10:&amp;APP_SESSION.::&amp;DEBUG.:RP,10:P10_EMPNO:&amp;EMPNO.</pre>',
'</p>',
'<p>Example 2: Display the EMPNO value of the clicked entry in a JavaScript alert',
'<pre>javascript:alert(''current empno: &amp;EMPNO.'');</pre>',
'</p>'))
,p_help_text=>'<p>Enter a target page to be called when the user clicks a chart entry.</p>'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(3402486959245717950)
,p_plugin_id=>wwv_flow_imp.id(5355198073994379040)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>25
,p_display_sequence=>130
,p_static_id=>'attribute_25'
,p_prompt=>'Configuration JSON'
,p_attribute_type=>'TEXTAREA'
,p_is_required=>true
,p_default_value=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'"trdur":                       500,',
'"opacity_normal":              "0.8",',
'"opacity_highlight":           "1.0"',
'}'))
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This JSON contains some custom attributes for the chart plugin:',
'-"trdur": Is the transition duration of the effects of the chart in milliseconds. ',
'-"opacity_normal": The regular opacity of the nodes.',
'-"opacity_highlight": The opacity when the node is hovered.'))
);
wwv_flow_imp_shared.create_plugin_std_attribute(
 p_id=>wwv_flow_imp.id(4090132702932071634)
,p_plugin_id=>wwv_flow_imp.id(5355198073994379040)
,p_name=>'SOURCE_SQL'
,p_sql_min_column_count=>4
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>You can provide either a SQL query or a PL/SQL block returning a SQL query. For a PL/SQL block, make sure that the very first word is either "begin" or "declare" and place comments afterwards.',
'</p>',
'<h1>SQL Example</h1>',
'<pre>',
'select',
'  empno as ID,              --required',
'  job   as COLORVALUE,      --required',
'  sal   as SIZEVALUE,       --required',
'  mgr   as PARENT_ID,       --optional',
'  ename as LABEL,           --required',
'  null  as LINK,            --optional',
'  dname  as INFOSTRING       --optional',
'from emp e',
',    dept d',
'where e.deptno = d.deptno',
'</pre>',
''))
);
wwv_flow_imp_shared.create_plugin_event(
 p_id=>wwv_flow_imp.id(3402489369313717953)
,p_plugin_id=>wwv_flow_imp.id(5355198073994379040)
,p_name=>'com_oracle_apex_d3_click'
,p_display_name=>'D3Chart_MouseClick'
);
wwv_flow_imp_shared.create_plugin_event(
 p_id=>wwv_flow_imp.id(3402489759202717953)
,p_plugin_id=>wwv_flow_imp.id(5355198073994379040)
,p_name=>'com_oracle_apex_d3_initialized'
,p_display_name=>'D3Chart_Initialized'
);
wwv_flow_imp_shared.create_plugin_event(
 p_id=>wwv_flow_imp.id(3402490195529717953)
,p_plugin_id=>wwv_flow_imp.id(5355198073994379040)
,p_name=>'com_oracle_apex_d3_mouseout'
,p_display_name=>'D3Chart_MouseOut'
);
wwv_flow_imp_shared.create_plugin_event(
 p_id=>wwv_flow_imp.id(3402490557639717953)
,p_plugin_id=>wwv_flow_imp.id(5355198073994379040)
,p_name=>'com_oracle_apex_d3_mouseover'
,p_display_name=>'D3Chart_MouseOver'
);
end;
/
begin
wwv_flow_imp.component_end;
end;
/
