prompt --application/pages/page_00107
begin
--   Manifest
--     PAGE: 00107
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
 p_id=>107
,p_name=>'rptClientDirectorySearch'
,p_step_title=>'Client Directory Search'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3825577329210146780)
,p_step_template=>2526643373347724467
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3807018089076118135)
,p_protection_level=>'C'
,p_page_component_map=>'22'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3696771989593341707)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(3696772060687341707)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'batch_facet_search', 'N',
  'show_charts', 'N',
  'show_current_facets', 'N',
  'show_total_row_count', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3696772060687341707)
,p_plug_name=>'Search Results'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc:t-CardsRegion--styleB'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    id  CARD_LINK,',
'    business_name CARD_TITLE,',
'    business_name,',
'    ''fa-address-book-o'' CARD_ICON,',
'    short_name ,',
'    start_date,',
'    referring_staff,',
'    remarks,',
'    lot ||'' ''||street||'' ''||village_ward||'' ''||town||'' ''||region||'' ''||county||'' ''||country||'' Tel: ''||telephone_nos CARD_SUBTITLE,',
'    last_changed_by,',
'    last_changed_date,',
'    entered_by,',
'    entry_date,',
'    company_email,',
'    CASE WHEN country is null THEN ''no country listed'' ELSE country end client_country,',
'    CASE WHEN website is null THEN ''no website listed'' ELSE website end client_website,',
'    telephone_nos,',
'    org_id,',
'    business_activity ||chr(13) ||''; Other Data:''||',
'    (select LISTAGG(contact_first_name, '', '') WITHIN GROUP (ORDER BY contact_first_name) from dir_clientsdtl Y where X.id = Y.DIRECTORY_ID) ||'' ''||',
'    (select LISTAGG(contact_last_name, '', '') WITHIN GROUP (ORDER BY contact_last_name) from dir_clientsdtl Y where X.id = Y.DIRECTORY_ID)  ||'' ''||',
'    (select LISTAGG(cell_numbers, '', '') WITHIN GROUP (ORDER BY cell_numbers) from dir_clientsdtl Y where X.id = Y.DIRECTORY_ID)   ||'' ''||',
'    (select LISTAGG(land_lines, '', '') WITHIN GROUP (ORDER BY land_lines) from dir_clientsdtl Y where X.id = Y.DIRECTORY_ID)  CARD_TEXT,',
'    business_activity,',
'    website CARD_SUBTEXT,',
'    (select LISTAGG(contact_first_name, '', '') WITHIN GROUP (ORDER BY contact_first_name) from dir_clientsdtl Y where X.id = Y.DIRECTORY_ID) contact_first_name,',
'    (select LISTAGG(contact_last_name, '', '') WITHIN GROUP (ORDER BY contact_last_name) from dir_clientsdtl Y where X.id = Y.DIRECTORY_ID) contact_last_name,',
'    (select LISTAGG(position, '', '') WITHIN GROUP (ORDER BY position) from dir_clientsdtl Y where X.id = Y.DIRECTORY_ID)  position,',
'    (select LISTAGG(employee_email, '', '') WITHIN GROUP (ORDER BY employee_email) from dir_clientsdtl Y where X.id = Y.DIRECTORY_ID)  employee_email,',
'    (select LISTAGG(cell_numbers, '', '') WITHIN GROUP (ORDER BY cell_numbers) from dir_clientsdtl Y where X.id = Y.DIRECTORY_ID)  cell_numbers,',
'    (select LISTAGG(land_lines, '', '') WITHIN GROUP (ORDER BY land_lines) from dir_clientsdtl Y where X.id = Y.DIRECTORY_ID)  land_lines,',
'    (select LISTAGG(location_address, '', '') WITHIN GROUP (ORDER BY location_address) from dir_clientsdtl Y where X.id = Y.DIRECTORY_ID) location_address     ',
'FROM  dir_clients X',
'where org_id = :APP_ORG_SHR_DED',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(548137121240769088)
,p_region_id=>wwv_flow_imp.id(3696772060687341707)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>true
,p_title_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="text-align: center; font-weight: bold;">',
'  &CARD_TITLE.',
'</div>',
''))
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'CARD_SUBTEXT'
,p_body_adv_formatting=>true
,p_body_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p style="text-align: center; font-size: 13px; line-height: 1.6; background-color: #e0f7fa; color: #000000; padding: 6px 12px; border-radius: 8px;">',
'  <b>Business Activity: </b> &BUSINESS_ACTIVITY.<br>',
'</p>',
'',
'<div style="text-align: center; font-size: 13px; line-height: 1.6;">',
' <p><b>Short Name:</b> &SHORT_NAME.</p>',
'  <p><b>Company Email:</b> &COMPANY_EMAIL.</p>',
'  <p><b>Telephone:</b> &TELEPHONE_NOS.</p>',
'',
'  <p><b>Start Date:</b>',
'  <span style="background-color: #e0f7fa; color: #00796b; padding: 4px 10px; border-radius: 12px; font-weight: bold;">',
'    &START_DATE.',
'  </span>',
'</p>',
'</div>',
'',
'',
'',
'',
''))
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_pk1_column_name=>'CARD_LINK'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(548137207357769089)
,p_card_id=>wwv_flow_imp.id(548137121240769088)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:104:&SESSION.::&DEBUG.:104:P104_ID,P104_RETURN:&CARD_LINK.,107'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(548243570630162910)
,p_card_id=>wwv_flow_imp.id(548137121240769088)
,p_action_type=>'BUTTON'
,p_position=>'SECONDARY'
,p_display_sequence=>20
,p_label=>'Country'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:104:&SESSION.::&DEBUG.:104:P104_ID:&CARD_LINK.'
,p_link_attributes=>'title="&CLIENT_COUNTRY." style="background-color: #4CAF50; padding: 10px; border-radius: 5px; color: white; "class="fa fa-marker"'
,p_button_display_type=>'ICON'
,p_icon_css_classes=>'fa-map-marker'
,p_is_hot=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(548243718372162911)
,p_card_id=>wwv_flow_imp.id(548137121240769088)
,p_action_type=>'BUTTON'
,p_position=>'SECONDARY'
,p_display_sequence=>30
,p_label=>'Website'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:103:&SESSION.::&DEBUG.:::'
,p_link_attributes=>'title="&CLIENT_WEBSITE." style="background-color: #0080ff; padding: 10px; border-radius: 5px; color: white;"  class="fa fa-credit-card"  '
,p_button_display_type=>'ICON'
,p_icon_css_classes=>'fa-credit-card'
,p_is_hot=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23674137689172156020)
,p_plug_name=>'Client Directory Search'
,p_icon_css_classes=>'app-customer-tracker'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  t varchar2(4000) := null;',
'begin',
'',
'  if t is null or t = ''&nbsp;'' or t = ''Preference does not exist'' then',
'     sys.htp.p(''<p>Find, Filter and Organise Contacts.</p>'');',
'  else',
'     sys.htp.p(''<p>''||apex_escape.html(t)||''</p>'');',
'  end if;',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'N',
  'attribute_02', 'HTML',
  'attribute_03', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23674138053408156023)
,p_plug_name=>'Search_top'
,p_parent_plug_id=>wwv_flow_imp.id(23674137689172156020)
,p_region_css_classes=>'t-Form--search'
,p_region_template_options=>'#DEFAULT#:#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>170
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3697294100961503039)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(23674138053408156023)
,p_button_name=>'New'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_is_hot=>'Y'
,p_button_image_alt=>'New'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:103:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-contacts'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3696755556937311768)
,p_name=>'P107_ENTRY_SCREEN'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(23674138053408156023)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when emP_hist_change=0 then 1281 else 51 end a',
'from hr_hcf_org_rule',
'where org_id = :APP_ORG_ID',
'and start_date < trunc(current_date)',
'and (end_date > trunc(current_date) or end_date is null)'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3696756394829311768)
,p_name=>'P107_EMP_GOTO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(23674138053408156023)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select decode(:EMP_HIST_FLAG,0,1281, 51)',
'from dual'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3696771467828341707)
,p_name=>'P107_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3696771989593341707)
,p_prompt=>'Search'
,p_source=>'BUSINESS_NAME,SHORT_NAME,REMARKS,LOT,STREET,VILLAGE_WARD,TOWN,REGION,COUNTY,COUNTRY,LAST_CHANGED_BY,ENTERED_BY,COMPANY_EMAIL,TELEPHONE_NOS,BUSINESS_ACTIVITY,WEBSITE,CONTACT_FIRST_NAME,CONTACT_LAST_NAME,POSITION,EMPLOYEE_EMAIL,CELL_NUMBERS,LAND_LINES,'
||'LOCATION_ADDRESS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'input_field', 'FACET',
  'search_type', 'ROW')).to_clob
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_filter_values=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
);
wwv_flow_imp.component_end;
end;
/
