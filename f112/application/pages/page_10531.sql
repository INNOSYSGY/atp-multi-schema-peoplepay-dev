prompt --application/pages/page_10531
begin
--   Manifest
--     PAGE: 10531
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.7'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>10531
,p_name=>'rptHRAmalgatedReport'
,p_step_title=>'HR Processes Amalgamated Report'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3297886312641715634)
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3275838895379504279)
,p_plug_name=>'HR Processes Amalgamated Report by Number of Employees per transactions'
,p_region_template_options=>'#DEFAULT#:t-Region--accent11:t-Region--scrollBody:t-Form--xlarge:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    ''Activity'' as label,',
'     to_char(''1435'') as value,',
'    ''f?p=''||:APP_ID||'':1435:''||:APP_SESSION as url',
'      ,''bottom label'' bottom_label',
'from dual',
'union all',
'select',
'    ''Appraisal'' as label,',
'     to_char(''1495'') as value,',
'    ''f?p=''||:APP_ID||'':1495:''||:APP_SESSION as url',
'      ,''bottom label'' bottom_label',
'from dual',
'union all',
'select',
'    ''Deductions'' as label,',
'     to_char(''1296'') as value,',
'    ''f?p=''||:APP_ID||'':1296:''||:APP_SESSION as url',
'      ,''bottom label'' bottom_label',
'from dual',
'union all',
'select',
'    ''Discipline'' as label,',
'     to_char(''1422'') as value,',
'    ''f?p=''||:APP_ID||'':1296:''||:APP_SESSION as url',
'      ,''bottom label'' bottom_label',
'from dual',
'union all',
'select',
'    ''Document Management'' as label,',
'     to_char(''128'') as value,',
'    ''f?p=''||:APP_ID||'':128:''||:APP_SESSION as url',
'      ,''bottom label'' bottom_label',
'from dual',
'union all',
'select',
'    ''New/Old Employees'' as label,',
'     to_char(''1280'') as value,',
'    ''f?p=''||:APP_ID||'':1280:''||:APP_SESSION as url',
'      ,''bottom label'' bottom_label',
'from dual',
'union all',
'select',
'    ''Leave'' as label,',
'     to_char(''1416'') as value,',
'    ''f?p=''||:APP_ID||'':1416:''||:APP_SESSION as url',
'      ,''bottom label'' bottom_label',
'from dual',
'union all',
'select',
'    ''Medicals'' as label,',
'     to_char(''1408'') as value,',
'    ''f?p=''||:APP_ID||'':1408:''||:APP_SESSION as url',
'      ,''bottom label'' bottom_label',
'from dual',
'union all',
'select',
'    ''Movement'' as label,',
'     to_char(''1412'') as value,',
'    ''f?p=''||:APP_ID||'':1412:''||:APP_SESSION as url',
'      ,''bottom label'' bottom_label',
'from dual',
'union all',
'select',
'    ''Payroll'' as label,',
'     to_char(''1355'') as value,',
'    ''f?p=''||:APP_ID||'':1355:''||:APP_SESSION as url',
'      ,''bottom label'' bottom_label',
'from dual',
'union all',
'select',
'    ''References'' as label,',
'     to_char(''1200'') as value,',
'    ''f?p=''||:APP_ID||'':1200:''||:APP_SESSION as url',
'      ,''bottom label'' bottom_label',
'from dual'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BADGE_LIST'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'BOTTOM_LABEL',
  'attribute_02', 'VALUE',
  'attribute_04', '&URL.',
  'attribute_05', '4',
  'attribute_07', 'BOX',
  'attribute_08', 'Y',
  'attribute_09', 'LABEL')).to_clob
);
wwv_flow_imp.component_end;
end;
/
