prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Our Clients'
,p_page_mode=>'MODAL'
,p_step_title=>'Our Clients'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'img:hover{',
'    background-color: #fff;',
'    box-shadow: rgba(107, 80, 245, 0.5) 0px 2px 4px -2px;',
'    border-style: solid;',
'    border-color: rgba(0, 0, 0, 0.1);',
'    border-image: initial;',
'}',
'',
'div{',
'    text-align:center;',
'}'))
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_deep_linking=>'N'
,p_rejoin_existing_sessions=>'N'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3625509352881029410)
,p_plug_name=>'Clients'
,p_region_name=>'dialog-region'
,p_region_template_options=>'#DEFAULT#:t-Form--large'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div>',
'<a href ="http://qss.gy/" target="_blank"><img src="#APP_IMAGES#queensway.png" title="QueensWay Security"></img></a>',
'<a href="http://metroguyana.com/" target="_blank"><img src="#APP_IMAGES#metro.png" title="Metro Stationary & Computer Supplies"></img></a>',
'<a target="_blank" href="http://vishnudoerga.com/"><img src="#APP_IMAGES#DBE.png" title="Doerga Business Enterprise"></img></a>',
'<a href="http://gnbsgy.org/" target="_blank"><img src="#APP_IMAGES#gnbs.png" title="Guyana National Bureau of Standards"></img></a>',
'<a href="https://www.google.com/search?q=Andrew%20Forrester%20Lumberyard%20Guyana" target = "_blank"><img src="#APP_IMAGES#a_forrester.png" style="height:100px" title="Andrew Forrester LumberYard"></img></a>',
'<a href="https://epaguyana.org/" target="_blank"><img src="#APP_IMAGES#epa_logo2.png" style="height:100px" title="Environmental Protection Agency Guyana"></img></a>',
'<a href="http://ipedgy.com/" target="_blank"><img src="#APP_IMAGES#Iped-logo.png" style="height:100px" title="Institute of Private Enterprise Development (IPED)"></img></a>',
'<a href="http://marad.gov.gy/" target="_blank"><img src="#APP_IMAGES#MARAD Logo.png" style="height:100px" title="Maritime Administration of Guyana (MARAD)"></img></a>',
'<a href="https://www.google.com/search?q=Transport%20and%20Harbours%20Department%20Guyana" target="_blank"><img src="#APP_IMAGES#coat-of-arms-of-guyana_0.png" style="height:100px" title="Transport and Harbours Department"></img></a>',
'<a href="https://www.facebook.com/BrainStreetGroup/" target="_blank"><img src="#APP_IMAGES#BSGPhoto.png" style="height:100px" title="BrainStreet"></img></a>',
'<a href="https://www.facebook.com/UniversalJanitorial.gy/" target="_blank"><img src="#APP_IMAGES#jan_logo.png" style="height:100px" title="Universal Janitorial"></img></a>',
'<a href="https://mopt.gov.gy/" target="_blank"><img src="#APP_IMAGES#mopt-logo.png" style="height:100px" title="Ministry of Public Telecommunications"></img></a>',
'<a href="https://www.pinnaclebookkeeping.com/" target="_blank"><img src="#APP_IMAGES#pinacle_logo.png" style="height:100px" title="Pinnacle Business Services"></img></a>',
'<a href="https://gcaa-gy.org/" target="_blank"><img src="#APP_IMAGES#gcaalogo.png" style="height:100px" title="Guyana Civil Aviation Authority"></img></a>',
'',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp.component_end;
end;
/
