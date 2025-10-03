prompt --application/shared_components/user_interface/theme_style
begin
--   Manifest
--     THEME STYLE: 120
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(3561143949215137608)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_read_only=>true
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(3632343259350981958)
,p_theme_id=>42
,p_name=>'Vita (Richard)'
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_config=>'{"classes":[],"vars":{"@Nav-Exp":"240px"},"customCSS":"","useCustomLess":"N"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#3326335400009299089.css'
,p_theme_roller_read_only=>false
);
wwv_flow_imp.component_end;
end;
/
