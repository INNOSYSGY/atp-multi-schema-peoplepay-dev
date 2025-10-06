prompt --application/pages/page_00133
begin
--   Manifest
--     PAGE: 00133
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>133
,p_name=>'rpt_pagehelp_per_page'
,p_page_mode=>'MODAL'
,p_step_title=>'About this Page'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3278888442163947016)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.page_help{',
'    border: 1px solid black;',
'    margin-bottom: 5px',
'}',
'',
'.w3-card-4{',
'    margin-bottom: 13px;',
'}',
'',
'.w3-card-4:hover{',
'    background-color:lightblue;',
'}',
'',
'.w3-container:hover{',
'    font-weight:bold;',
'}'))
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_overwrite_navigation_list=>'Y'
,p_page_component_map=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3167722080122853169)
,p_plug_name=>'Help for Page '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'for c1 in ',
'(',
'    select subject_matter, help_data',
'      from user_manual_online',
'     where page_id = :P133_PAGE_ID',
')',
'loop',
'',
'sys.htp.p(''<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">'');',
'sys.htp.p(''<div class="w3-card-4" style="width:100%;">'');',
'sys.htp.p(''<header class="w3-container w3-blue">'');',
'sys.htp.p(''<h4>''||c1.subject_matter||''</h4>'');',
'sys.htp.p(''</header>'');',
'sys.htp.p(''<div class="w3-container">'');',
'sys.htp.p(''<p>''||c1.help_data||''</p>'');',
'sys.htp.p(''</div>'');',
'sys.htp.p(''</div>'');',
'sys.htp.p('''');',
'sys.htp.p('''');',
'sys.htp.p('''');',
'sys.htp.p('''');',
'sys.htp.p('''');',
'sys.htp.p('''');',
'/*',
'        sys.htp.p(''<div class="page_help">'');',
'        sys.htp.p(''<strong><ul><h4>''||c1.subject_matter||''</h4></strong>'');',
'        sys.htp.p(''<li>''||c1.help_data||''</li></ul>'');',
'        sys.htp.p(''</div>'');',
'        */',
'',
'end loop;',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3167722140926853170)
,p_name=>'P133_PAGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3167722080122853169)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp.component_end;
end;
/
