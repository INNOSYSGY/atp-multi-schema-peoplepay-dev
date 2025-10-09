prompt --application/pages/page_00105
begin
--   Manifest
--     PAGE: 00105
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
 p_id=>105
,p_name=>'rptOrganizationalTreePositionStructure'
,p_page_mode=>'MODAL'
,p_step_title=>'Tree Position Structure'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-TreeView-label{',
'    font-size: medium;',
'}',
''))
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3759834568990110131)
,p_plug_name=>'Position Tree Structure'
,p_region_template_options=>'#DEFAULT#:t-Region--accent12:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when connect_by_isleaf = 1 then 0',
'            when level = 1             then 1',
'            else                           -1',
'       end as status, ',
'       level, ',
'       to_char(level)||'': ''||POSITION_NAME||''....N:''||to_char(nvl(Number_of_positions,0))||'' R:''||to_char(nvl(Required_number,0))||'' F:''||to_char(nvl(Filled_amount,0)) as title, ',
'       null as icon, ',
'       wu.ID as value, ',
'       null as tooltip,',
'       (select apex_page.get_url(p_page=> 106, p_items => ''P106_ID'', p_values => "ID")',
'           from DUAL) as link  ',
'from ',
'(',
'select',
'p.report_to_tech',
',p.position_name',
',p.id',
',o.org_structure_id',
',count(p.id) as Number_of_positions',
',sum(p.no_required_min) as Required_number',
',sum(p.no_filled) as Filled_amount',
'from (select * from hr_hcf_orgstructuredtl ',
'      where trunc(start_date) <= trunc(current_date) ',
'      and trunc(nvl(end_date,trunc(current_date))) >= trunc(current_date)',
'     ) o',
'left join hr_hcf_position p on o.id = p.orgdtl_id ',
'group by p.id, p.position_name,p.report_to_tech ,o.org_structure_id',
') wu',
'JOIN hr_hcf_orgstructurehd Y on Y.id = wu.org_structure_id ',
'where y.org_id = :APP_ORG_ID',
'start with report_to_tech is null',
'connect by prior wu.ID = report_to_tech',
'order siblings by position_name'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_JSTREE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'activate_node_link_with', 'S',
  'default_icon_css_class', 'icon-tree-folder',
  'hierarchy_level_column', 'LEVEL',
  'icon_css_class_column', 'ICON',
  'icon_type_css_class', 'a-Icon',
  'node_label_column', 'TITLE',
  'node_status_column', 'STATUS',
  'node_value_column', 'VALUE',
  'tree_hierarchy', 'LEVEL',
  'tree_tooltip', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3765010367893782606)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3697851075955449270)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3759834568990110131)
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
 p_id=>wwv_flow_imp.id(3697850758182449269)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3759834568990110131)
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
 p_id=>wwv_flow_imp.id(3697850352596449269)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3759834568990110131)
,p_button_name=>'BROWSE_JOBS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Browse By Jobs'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:106:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-server-search'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3697851844508449274)
,p_name=>'P105_NEW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3765010367893782606)
,p_prompt=>'New'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select org_structure_name||'' AT ''|| date_started, id',
'from hr_hcf_orgstructurehd a',
'where exists (select 1',
'            from VW_USERACCESS x',
'            where x.org_id=a.org_id)',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3697848990902449261)
,p_name=>'EXPAND_ALL'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3697850758182449269)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3697848477340449261)
,p_event_id=>wwv_flow_imp.id(3697848990902449261)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_TREE_EXPAND'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3759834568990110131)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3697849937935449262)
,p_name=>'CONTRACT_ALL'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3697851075955449270)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3697849446334449261)
,p_event_id=>wwv_flow_imp.id(3697849937935449262)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_TREE_COLLAPSE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3759834568990110131)
);
wwv_flow_imp.component_end;
end;
/
