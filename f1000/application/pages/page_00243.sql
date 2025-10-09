prompt --application/pages/page_00243
begin
--   Manifest
--     PAGE: 00243
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>1000
,p_default_id_offset=>221683928681757931
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>243
,p_name=>'rptAttendanceFlow'
,p_alias=>'RPTATTENDANCEFLOW'
,p_step_title=>'Attendance Flow'
,p_html_page_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3825577735270150707)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.content{',
'       background-image: url("#WORKSPACE_IMAGES#attendance_flow.png");',
'       background-size:  contain;',
'       max-width: 100%;',
'       max-height: 100%;',
'       ',
'       ',
'       }'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3807018089076118135)
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5436514114512360200)
,p_plug_name=>'x'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'#WORKSPACE_IMAGES#attendance_flow.png'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>'<img style="width:100%; height:100%" src="#APP_FILES#attendance_flow.png">'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp.component_end;
end;
/
