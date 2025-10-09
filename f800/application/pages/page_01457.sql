prompt --application/pages/page_01457
begin
--   Manifest
--     PAGE: 01457
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
 p_id=>1457
,p_name=>'rptOrganizationalTreeStructure'
,p_page_mode=>'MODAL'
,p_step_title=>'DEPARTMENT TREE STRUCTURE'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3825437430804077423)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-TreeView-label{',
'    font-size: medium;',
'}',
''))
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3759149353039235364)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3764325151942907839)
,p_plug_name=>'Department Tree Structure'
,p_region_template_options=>'#DEFAULT#:t-Region--accent12:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when connect_by_isleaf = 1 then 0',
'            when level = 1             then 1',
'            else                           -1',
'       end as status, ',
'       level, ',
'       to_char(level)||'': ''||od.UNIT_NAME||'' (''||od.classification||'')''||''   ....J:''||to_char(nvl(od.Number_of_positions,0))||'' A:''||to_char(nvl(od.Required_number,0))||'' F:''||to_char(nvl(od.Filled_amount,0)||''   COA:''||nvl(od.coa_code,'''')) as title,'
||' ',
'       null as icon, ',
'       od.ID as value, ',
'       null as tooltip, ',
'       (select apex_page.get_url(p_page=> 1458, p_items => ''P1458_ID'', p_values => "ID")',
'           from DUAL) as link  ',
'from ',
'(',
'select',
'o.id',
',oc.value_description classification',
',o.unit_name',
',o.unit_parent',
',o.org_structure_id',
',o.coa_code',
',count(p.id) as Number_of_positions',
',sum(p.no_required_max) as Required_number',
',sum(p.no_filled) as Filled_amount',
'from (select * from hr_hcf_orgstructuredtl ',
'      where trunc(start_date) <= trunc(current_date) ',
'      and trunc(nvl(end_date,trunc(current_date))) >= trunc(current_date)',
'     ) o',
'left join hr_hcf_position p on o.id = p.orgdtl_id ',
'left join (select * from hr_hcf_lookup where table_name = ''TBLORGSTRUCTCLASS'') oc on o.classification = oc.id',
'group by o.id, oc.value_description,o.unit_name,o.unit_parent,o.org_structure_id,o.coa_code',
') od',
'JOIN hr_hcf_orgstructurehd oh on oh.id = od.org_structure_id ',
'where oh.org_id = :APP_ORG_ID',
'and oh.id = :P1457_ORG_STRUCTURE',
'start with od.UNIT_parent IS NULL',
'connect by prior od.ID = od.UNIT_PARENT',
'order siblings by od.UNIT_NAME'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_JSTREE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'activate_node_link_with', 'S',
  'default_icon_css_class', 'icon-tree-folder',
  'hierarchy_level_column', 'LEVEL',
  'icon_css_class_column', 'ICON',
  'icon_type_css_class', 'a-Icon',
  'link_column', 'LINK',
  'node_label_column', 'TITLE',
  'node_status_column', 'STATUS',
  'node_value_column', 'VALUE',
  'tree_hierarchy', 'LEVEL',
  'tree_tooltip', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3725427710799567705)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3764325151942907839)
,p_button_name=>'CONTRACT_ALL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Collapse All'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-minus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3725428074588567707)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3764325151942907839)
,p_button_name=>'EXPAND_ALL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Expand All'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3725428567617567707)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3764325151942907839)
,p_button_name=>'Browse_departments'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Browse By Departments'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1458:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-server-search'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3711799917647008117)
,p_name=>'P1457_ORG_STRUCTURE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3759149353039235364)
,p_prompt=>'Org Structure'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select org_structure_name osn, id',
'from hr_hcf_orgstructurehd ohd',
'where ohd.org_id = :APP_ORG_ID'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_help_text=>'Select the Organisation Chart to show the associated tree(hierarchical) view of its work units. Against each department, the following information is shown. J - number of distinct jobs established in the department as poitions. A - Summary of Authori'
||'sed Amount for all  positions. F - Filled Amount for all positions. COA - Chart of Accounts code for the Department. '
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3725428949130567738)
,p_name=>'CONTRACT_ALL'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3725427710799567705)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3725429457562567745)
,p_event_id=>wwv_flow_imp.id(3725428949130567738)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_TREE_COLLAPSE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3764325151942907839)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3725429838076567747)
,p_name=>'EXPAND_ALL'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3725428074588567707)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3725430329187567747)
,p_event_id=>wwv_flow_imp.id(3725429838076567747)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_TREE_EXPAND'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3764325151942907839)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3708783552292234054)
,p_name=>'New'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1457_ORG_STRUCTURE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3708783433606234053)
,p_event_id=>wwv_flow_imp.id(3708783552292234054)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp.component_end;
end;
/
