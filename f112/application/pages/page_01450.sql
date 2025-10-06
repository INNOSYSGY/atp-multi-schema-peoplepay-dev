prompt --application/pages/page_01450
begin
--   Manifest
--     PAGE: 01450
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
 p_id=>1450
,p_name=>'rptEmployeeTree'
,p_step_title=>'Employee Tree'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3297886312641715634)
,p_step_template=>2979075366320325194
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3243363290376200656)
,p_plug_name=>'Search Criteria For HR Processes'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>19
,p_plug_display_point=>'REGION_POSITION_08'
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3243369682947906162)
,p_plug_name=>'Employee HR Processes'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_08'
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
'              APEX_UTIL.PREPARE_URL(p_url => ''f?p=&APP_ID.:'' || "WEBPAGE_ID" || ',
'              '':''||:APP_SESSION||',
'  ''::NO::P''||WEBPAGE_ID||''_ID:''||to_char(ID),p_checksum_type => ''SESSION'')',
'            else ''javascript:void;''',
'          end as link ',
'from table(PKG_GLOBAL_FNTS.TREE_EMP (:APP_ORG_ID, :P1450_EMPLOYMENT_CLASS, :P1450_PAYMENT_TYPE, :P1450_YEAR, :P1450_EMPLOYEE))',
'start with hrmgr is null',
'connect by prior ID =HRMGR ',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_JSTREE'
,p_ajax_items_to_submit=>'P1450_EMPLOYMENT_CLASS, P1450_PAYMENT_TYPE, P1450_YEAR, P1450_EMPLOYEE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'activate_node_link_with', 'S',
  'hierarchy_level_column', '"2"',
  'icon_css_class_column', '"4"',
  'icon_type_css_class', 'a-Icon',
  'link_column', '"7"',
  'node_label_column', '"3"',
  'node_status_column', '"1"',
  'node_value_column', '"5"',
  'static_tree_id', 'tree71088723037674595',
  'tooltip_column', '"6"',
  'tree_hierarchy', 'LEVEL',
  'tree_tooltip', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3325302194320477079)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3243369682947906162)
,p_button_name=>'EXPAND_ALL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Expand All'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:apex.widget.tree.expand_all(''tree71088723037674595'');'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3325300665548477076)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3243363290376200656)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1370:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3325301780814477078)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3243369682947906162)
,p_button_name=>'CONTRACT_ALL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Collapse All'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:apex.widget.tree.collapse_all(''tree71088723037674595'');'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325297713391477071)
,p_name=>'P1450_PAYMENT_TYPE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3243363290376200656)
,p_prompt=>'Payment Frequency'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT INITCAP(PAYMENT_TYPE) A,upper(PAYMENT_TYPE) B',
'FROM VW_USERACCESS',
'where org_id=:APP_ORG_ID',
'and EMPLOYMENT_CLASS_ID=:P1450_EMPLOYMENT_CLASS',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_lov_null_value=>'NO'
,p_lov_cascade_parent_items=>'P1450_EMPLOYMENT_CLASS'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_column=>6
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  if pkg_global_fnts.fn_selfServeUser(:APP_ORG_ID)=0 then',
'     return TRUE;',
'  ELSE',
'     RETURN FALSE;',
'END IF;',
'END;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325298109452477071)
,p_name=>'P1450_EMPLOYMENT_CLASS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3243363290376200656)
,p_prompt=>'Employment Class'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VALUE_DESCRIPTION A, ID B',
'from table(pkg_global_fnts.get_lookup_value(''TBLEMPLOYMENTCLASS'')) X',
'WHERE exists (select 1',
'             FROM VW_USERACCESS A',
'             where x.ID=a.employment_class_id',
'AND ORG_ID=:APP_ORG_ID)',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_lov_null_value=>'0'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_column=>3
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  if pkg_global_fnts.fn_selfServeUser(:APP_ORG_ID)=0 then',
'     return TRUE;',
'  ELSE',
'     RETURN FALSE;',
'END IF;',
'END;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325298982717477072)
,p_name=>'P1450_OR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3243363290376200656)
,p_prompt=>'Or'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325299347928477074)
,p_name=>'P1450_EMPLOYEE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3243363290376200656)
,p_prompt=>'Employee'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'EMPLOYEE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT EMPLOYEE||''(No.:''||EMP_COMPANY_NO||'')'' a,ID b',
'FROM VW_AVAILEMPLOYEE x',
'where  exists(select 1        ',
'     from vw_useraccess_finegrain k',
'     where NVL(k.grade_id, nvl(x.emp_grade_id,1)) = nvl(x.emp_grade_id,1)',
'     and user_name=:APP_USER)  ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325300299677477075)
,p_name=>'P1450_YEAR'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3243363290376200656)
,p_item_default=>'extract(year from current_date)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Year'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>4
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Please enter a four digit year e.g. 2014.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'max_value', '2050',
  'min_value', '2000',
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59305217441299210)
,p_name=>'refresh_employee'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1450_EMPLOYEE'
,p_condition_element=>'P1450_YEAR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59305353345299211)
,p_event_id=>wwv_flow_imp.id(59305217441299210)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'refresh_processes'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3243369682947906162)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59305465396299212)
,p_name=>'refresh_payment_type'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1450_PAYMENT_TYPE'
,p_condition_element=>'P1450_YEAR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59305567715299213)
,p_event_id=>wwv_flow_imp.id(59305465396299212)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'refresh_region'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3243369682947906162)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
