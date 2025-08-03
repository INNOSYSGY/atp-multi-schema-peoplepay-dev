prompt --application/shared_components/plugins/dynamic_action/material_apex_discovery_open
begin
--   Manifest
--     PLUGIN: MATERIAL.APEX.DISCOVERY.OPEN
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.7'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(3240635251823335094)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'MATERIAL.APEX.DISCOVERY.OPEN'
,p_display_name=>'Material APEX - Feature Discovery - Open'
,p_category=>'EFFECT'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('DYNAMIC ACTION','MATERIAL.APEX.DISCOVERY.OPEN'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function render (',
'	p_dynamic_action in apex_plugin.t_dynamic_action',
'	, p_plugin in apex_plugin.t_plugin',
') return apex_plugin.t_dynamic_action_render_result',
'is',
'	subtype plugin_attr is varchar2(32767);',
'',
'	l_result apex_plugin.t_dynamic_action_render_result;',
'	l_tap_target_html plugin_attr;',
'begin',
'	l_tap_target_html := ''<div class=''''tap-target'''' style=''''color:'' || p_dynamic_action.attribute_01 || ''; background-color:'' || p_dynamic_action.attribute_04 || '';'''' data-target=''''" + this.affectedElements[0].id + "''''>''',
'	|| ''<div class=''''tap-target-content''''>''',
'	|| ''<h5>'' || p_dynamic_action.attribute_02 || ''</h5>''',
'	|| ''<p>'' || p_dynamic_action.attribute_03 || ''</p>''',
'	|| ''</div>''',
'	|| ''</div>'';',
'',
'	l_result.javascript_function := ''function(){ ''',
'		|| '' $(".tap-target-wrapper").remove();''',
'		|| '' $("body").append("'' || l_tap_target_html || ''"); ''',
'		|| '' $(".tap-target").tapTarget(); ''',
'		|| '' $(".tap-target").tapTarget("open"); ''',
'		|| '' }'';',
'',
'	return l_result;',
'end render;',
''))
,p_api_version=>2
,p_render_function=>'render'
,p_standard_attributes=>'BUTTON'
,p_substitute_attributes=>true
,p_reference_id=>92129785641383666
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0.0'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(3240634968173335092)
,p_plugin_id=>wwv_flow_imp.id(3240635251823335094)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>35
,p_prompt=>'Text Color'
,p_attribute_type=>'COLOR'
,p_is_required=>false
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(3240634602797335092)
,p_plugin_id=>wwv_flow_imp.id(3240635251823335094)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Title'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(3240634134665335092)
,p_plugin_id=>wwv_flow_imp.id(3240635251823335094)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Description'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(3240633829209335092)
,p_plugin_id=>wwv_flow_imp.id(3240635251823335094)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Background Color'
,p_attribute_type=>'COLOR'
,p_is_required=>false
,p_is_translatable=>false
);
end;
/
begin
wwv_flow_imp.component_end;
end;
/
