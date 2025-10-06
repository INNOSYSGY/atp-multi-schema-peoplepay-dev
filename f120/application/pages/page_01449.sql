prompt --application/pages/page_01449
begin
--   Manifest
--     PAGE: 01449
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>1449
,p_name=>'rptWorkflowTree'
,p_step_title=>'Display of Workflow Tree'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3603894171983398503)
,p_step_template=>2979075366320325194
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3556968801612411606)
,p_plug_name=>'Worflow Path'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>29
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when connect_by_isleaf = 1 then 0',
'            when level = 1             then 1',
'            else                           -1',
'       end as status, ',
'       level, ',
'       "LABEL" as title, ',
'      null icon, ',
'       "ID" as value, ',
'       null as tooltip',
'       ,case when hrmgr is not null then',
'              APEX_UTIL.PREPARE_URL(',
'        p_url => ''f?p=&APP_ID.:'' || "WEBPAGE_ID" || ',
'              '':''||:APP_SESSION||',
'  ''::NO::P''||WEBPAGE_ID||''_FORWORD_LIST_ID:''||to_char(ID),p_checksum_type => ''SESSION'')',
'            else ''javascript:void;''',
'          end as link ',
'from table(PKG_GLOBAL_FNTS.TREE_WORKFLOW (:P1449_WORKFLOW_NAME, :P1449_USER))',
'start with hrmgr is null',
'connect by prior ID =HRMGR ',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_JSTREE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'activate_node_link_with', 'S',
  'hierarchy_level_column', '"2"',
  'icon_css_class_column', '"4"',
  'icon_type_css_class', 'a-Icon',
  'link_column', '"7"',
  'node_label_column', '"3"',
  'node_status_column', '"1"',
  'node_value_column', '"5"',
  'static_tree_id', 'tree63539311168986928',
  'tooltip_column', '"6"',
  'tree_hierarchy', 'LEVEL',
  'tree_tooltip', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3556975671411401299)
,p_plug_name=>'Search Criteria For Workflow'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>19
,p_location=>null
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3631349874160294848)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3556968801612411606)
,p_button_name=>'CONTRACT_ALL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Collapse All'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:apex.widget.tree.collapse_all(''tree63539311168986928'');'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3631351373561294852)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3556975671411401299)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1370:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3631349521534294848)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3556968801612411606)
,p_button_name=>'EXPAND_ALL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Expand All'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:apex.widget.tree.expand_all(''tree63539311168986928'');'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3631351811837294853)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3556975671411401299)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'EDIT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3631350568936294850)
,p_name=>'P1449_USER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3556975671411401299)
,p_prompt=>'User'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select substr(user_name,1,1)||Initcap(substr(user_name,2,length(user_name))) a,user_id',
'from TBLUSER a',
'where exists (select 1',
'              from tblforwardlist b',
'              where (a.user_id=b.user_id',
'              or a.user_id=b.forward_to)',
'              and stage_id=:P1449_WORKFLOW_NAME)',
'and exists (select 1',
'            from tbluserdetail c',
'            where c.user_id=a.user_id',
'            and org_id=:APP_ORG_ID)',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All--'
,p_lov_null_value=>'-1'
,p_lov_cascade_parent_items=>'P1449_WORKFLOW_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3631351041908294851)
,p_name=>'P1449_WORKFLOW_NAME'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3556975671411401299)
,p_prompt=>'Workflow Name'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct Initcap(x.stage_name) a,stage_id',
'from APEX_APPLICATION_PAGES a join APP_MODULE b on upper(a.page_group)=b.module_name',
'--Join Tblpagelist C On upper(a.page_name)=upper(c.webpage_name)',
'join TBLWORKFLOWSTAGELIST x on x.APP_MODULE_ID=b.id',
'Where A.application_id=v(''APP_ID'')',
'--and exists (select 1',
' --          from TBLWORKFLOWSTATUS d join TBLFORWARDLIST x on x.WFL_STATUS_ID=d.WFL_STATUS_ID',
' --          JOIN TBLWORKFLOWDTL z on z.id=d.WORKFLOW_DTL_ID',
' --          where z.STAGE_ID=x.stage_id)',
'order by 1',
'',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All--'
,p_lov_null_value=>'-1'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
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
wwv_flow_imp.component_end;
end;
/
