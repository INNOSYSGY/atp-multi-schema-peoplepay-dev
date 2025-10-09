prompt --application/pages/page_00189
begin
--   Manifest
--     PAGE: 00189
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>800
,p_default_id_offset=>221543258820678920
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>189
,p_name=>'testdatepocker'
,p_alias=>'TESTDATEPOCKER'
,p_step_title=>'testdatepocker'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3759462792892130812)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3765248424791442484)
,p_name=>'P189_NEW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3759462792892130812)
,p_prompt=>'New'
,p_format_mask=>'MM/DD/YYYY'
,p_display_as=>'PLUGIN_COM.PLANETAPEX.DYNAMICDATETIMEPICKER'
,p_cSize=>30
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', '1',
  'attribute_03', '0',
  'attribute_04', '6:0',
  'attribute_07', '00:00,23:59',
  'attribute_08', 'clickicon',
  'attribute_10', ':',
  'attribute_11', 'Y',
  'attribute_12', 'Bottom Left',
  'attribute_14', '3:4:5:6:7:8:9:10:11')).to_clob
);
wwv_flow_imp.component_end;
end;
/
