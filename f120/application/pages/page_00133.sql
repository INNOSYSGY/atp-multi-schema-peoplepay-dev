prompt --application/pages/page_00133
begin
--   Manifest
--     PAGE: 00133
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>221824690189185566
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>133
,p_name=>'rpt_pagehelp_per_page'
,p_page_mode=>'MODAL'
,p_step_title=>'About this Page'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3806720991694815451)
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
 p_id=>wwv_flow_imp.id(3695554629653721604)
,p_plug_name=>'Help for Page '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_page_name VARCHAR2(4000);  ',
'BEGIN',
'  -- Get the page name first',
'  BEGIN',
'    SELECT page_name',
'      INTO v_page_name',
'    FROM UTL_APP_PAGE_HELP',
'    WHERE application_id = :APP_ID',
'      AND page_id = :P133_PAGE_ID',
'      AND ROWNUM = 1; ',
'  EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'      v_page_name := ''Help Content'';',
'  END;',
'',
'  htp.p(''<h2 style="margin-bottom: 20px;">'' || v_page_name || ''</h2>'');',
'',
'  -- Start container for 4-column flex layout',
'  htp.p(''<div style="display: flex; flex-wrap: wrap; gap: 20px;">'');',
'',
'  -- Loop over help content',
'  FOR c1 IN (',
'    SELECT DBMS_LOB.SUBSTR(help_HTML, 4000, 1) AS help_HTML',
'    FROM UTL_APP_PAGE_HELP',
'    WHERE application_id = :APP_ID',
'      AND page_id = :P133_PAGE_ID',
'      AND help_HTML IS NOT NULL',
'  )',
'  LOOP',
'    -- Each card takes 25% width (4 per row)',
'    htp.p(''<div style="flex: 0 0 23%; border: 2px solid #2196F3; border-radius: 6px; background-color: #ffffff; color: #000000;">'');',
'',
'    -- Card content only (no page name header)',
'    htp.p(''<div style="padding: 15px;">'');',
'    htp.p(c1.help_HTML);',
'    htp.p(''</div>'');',
'',
'    htp.p(''</div>''); ',
'  END LOOP;',
'',
'  htp.p(''</div>''); ',
'',
'  -- Fallback if no data was returned',
'  IF SQL%ROWCOUNT = 0 THEN',
'    htp.p(''<div style="color: red;">No help content found for this page.</div>'');',
'  END IF;',
'END;',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3695554690457721605)
,p_name=>'P133_PAGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3695554629653721604)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp.component_end;
end;
/
