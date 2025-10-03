prompt --application/pages/page_09000
begin
--   Manifest
--     PAGE: 09000
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
 p_id=>9000
,p_name=>'rptIndividualFacet'
,p_alias=>'RPTINDIVIDUALFACET'
,p_step_title=>'Search Individual Files'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(349753148093613622)
,p_step_template=>2526643373347724467
,p_page_template_options=>'#DEFAULT#:js-pageStickyMobileHeader'
,p_required_role=>wwv_flow_imp.id(3585334160394360204)
,p_protection_level=>'C'
,p_page_component_map=>'22'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2054058354347269045)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10766773638420877516)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2054058929621269047)
,p_plug_name=>'Search Results'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sex_code, w.id Edit, salutation||'' ''||SURNAME||'', ''||FIRST_NAME title,',
'    '' (Age:''|| to_number(PKG_GLOBAL_FNTS.fn_calcage(nvl(DOB,current_date -4/24),current_date -4/24))||'' ''||sex_code||'')''',
'    ||'' Cell:-''||CELL_PHONE|| case when WORK_PHONE is not null then '',''||WORK_PHONE else '''' end badge,',
'   w.id IND_ID, V.ID EMP_ID,',
'    to_number(PKG_GLOBAL_FNTS.fn_calcage(nvl(DOB,current_date),current_date)) AGE ,',
'    photo,',
'     initcap(lot||'' ''||street||'' ''||village_ward||'' ''||town||'' ''||region||'' ''||county||'' ''||country) Address,',
'     REGION,',
'     county,',
'    (select  nvl(max(address.id),0) from hr_rcm_address address where address.ind_id=w.id)  max_address_id,',
'     UPPER(country) country,',
'    (select  max(qual.id) from HR_RCM_QUALIFICATION qual where qual.ind_id=w.id)  max_qual_id,',
'     (SELECT ',
'    LISTAGG(Q_LEVEL||'' ''||subject_course, ''; '') WITHIN GROUP (ORDER BY Q_WEIGHT desc) label_value',
'    FROM HR_RCM_QUALIFICATION q',
'    where q.ind_id = w.id',
'    and rownum<=3) quali,',
'    (select  max(emphist.id) from HR_RCM_EMPHISTORY emphist where emphist.ind_id=w.id)  max_emphistory_id,',
'      (SELECT ',
'    LISTAGG(position_held||'' at ''||ORGANISATION||'' From ''||FROM_DATE, ''; '') WITHIN GROUP (ORDER BY FROM_DATE desc) label_value',
'    FROM HR_RCM_EMPHISTORY q',
'    where q.ind_id = w.id',
'    and rownum<=3)  last_Employer,',
'    a.village_ward,',
'    (select  nvl(max(NatID.id),0) from hr_rcm_natidentifier NatID where NatID.ind_id=w.id)  max_national_id,',
'    (SELECT ',
'    LISTAGG(id_type||'':-''||id_number, ''; '') WITHIN GROUP (ORDER BY issue_date desc) label_value',
'    FROM hr_rcm_natidentifier q',
'    where q.ind_id = w.id',
'    and rownum<=3) natident,',
'    (select  nvl(max(hobby.id),0) from hr_rcm_hobby hobby where hobby.ind_id=w.id)  max_hobby_id,',
'    (SELECT ',
'    LISTAGG(hobbies||'' ''||location||''(''||how_frequent_involve||'')'', ''; '') WITHIN GROUP (ORDER BY date_started desc) label_value',
'    FROM hr_rcm_hobby q',
'    where q.ind_id = w.id',
'    and rownum<=3)  hobby,',
'    (select  max(relfrd.id) from HR_RCM_RELATIVESFRD relfrd where relfrd.RELATED_TO = w.id)  max_relfrd_id,',
'    (SELECT ',
'    LISTAGG(''Relative: ''||first_name||'' ''||surname||'' (''||initcap(relation)||'')'', '''') WITHIN GROUP (ORDER BY relation desc) label_value',
'    FROM HR_RCM_RELATIVESFRD  q join hr_rcm_individual rel on rel.id = q.ind_id',
'    where q.RELATED_TO = w.id',
'    and rownum<=3) relative,',
'    (select  max(reff.id) from HR_RCM_REFERENCE reff where reff.REFEREE_FOR = w.id)  max_reff_id,',
'     (SELECT ',
'    LISTAGG(''''||first_name||'' ''||surname||'' Dated: ''||ref_date, '''') WITHIN GROUP (ORDER BY ref_date desc) label_value',
'    FROM HR_RCM_REFERENCE  q join hr_rcm_individual rel on rel.id = q.ind_id',
'    where q.REFEREE_FOR = w.id',
'    and rownum<=3) refree',
'    from  hr_rcm_individual w  left outer join HR_RCM_EMPLOYEE V on w.id=v.ind_id',
'    left outer join (SELECT lot, STREET, VILLAGE_WARD, TOWN, REGION, COUNTY, COUNTRY, ind_id',
'                    FROM (',
'                        SELECT lot, STREET, VILLAGE_WARD, TOWN, REGION, COUNTY, COUNTRY, ind_id,       ',
'                            ROW_NUMBER() OVER (PARTITION BY ind_id ORDER BY start_date DESC) AS rn',
'                        FROM hr_rcm_address        ',
'                    ) a',
'                    WHERE a.rn <= 1',
'                    ORDER BY a.ind_id, a.rn) a on w.id = a.ind_id',
'    WHERE w.ind_ORG_ID in (:APP_ORG_SHR_DED,:APP_ORG_ID)',
'    and (separated_status is null',
'    or date_separated is null)  ',
'  order by EMP_COMPANY_NO, surname'))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>true
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(426288999842056145)
,p_region_id=>wwv_flow_imp.id(2054058929621269047)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'TITLE'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'ADDRESS'
,p_body_adv_formatting=>true
,p_body_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<em style="text-align:center;font-size:13px"><b>Qualifications:</b> &QUALI.</em><br><br>',
'<em style="text-align:center;font-size:13px"><b>Last Worked: </b>&LAST_EMPLOYER.</em><br>',
'<em style="text-align:center;font-size:13px"><b>Nat Identifiers: </b>&NATIDENT.</em><br>',
'<em style="text-align:center;font-size:13px"><b>Hobby: </b>&HOBBY.</em><br>',
'<em style="text-align:center;font-size:13px"><b>Relative: </b>&RELATIVE.</em><br>',
'<em style="text-align:center;font-size:13px"><b>Refree: </b>&REFREE.</em><br>'))
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'BLOB'
,p_icon_blob_column_name=>'PHOTO'
,p_icon_position=>'START'
,p_badge_column_name=>'BADGE'
,p_media_adv_formatting=>false
,p_pk1_column_name=>'IND_ID'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(426290121394056142)
,p_card_id=>wwv_flow_imp.id(426288999842056145)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:1261:&SESSION.::&DEBUG.:1261:P1261_ID,P1261_NAVIGATOR,GLOBAL_IND:&IND_ID.,9000,&IND_ID.'
,p_link_attributes=>'title="View Detailed Information for &TITLE."'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(426290671804056142)
,p_card_id=>wwv_flow_imp.id(426288999842056145)
,p_action_type=>'BUTTON'
,p_position=>'SECONDARY'
,p_display_sequence=>20
,p_label=>'Address'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:1270:&SESSION.::&DEBUG.:1270:P1270_IND_ID,P1270_ID,P1270_RETURN_PAGE_ID,GLOBAL_IND:&IND_ID.,&MAX_ADDRESS_ID.,9000,&IND_ID.'
,p_link_attributes=>'title="Manage Address" style="background-color: #4CAF50; padding: 10px; border-radius: 5px; color: white; "class="fa fa-home"'
,p_button_display_type=>'ICON'
,p_icon_css_classes=>'fa-home'
,p_is_hot=>false
,p_condition_type=>'EXISTS'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from hr_rcm_address',
'where ind_id = :IND_ID'))
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(426291339191056141)
,p_card_id=>wwv_flow_imp.id(426288999842056145)
,p_action_type=>'BUTTON'
,p_position=>'SECONDARY'
,p_display_sequence=>40
,p_label=>'Nat ID'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:1271:&SESSION.::&DEBUG.:1271:P1271_ID,P1271_IND_ID,P1271_RETURN_PAGE_ID,GLOBAL_IND:&MAX_NATIONAL_ID.,&IND_ID.,1278,&IND_ID.'
,p_link_attributes=>'title="Manage National Identifiers" style="background-color: #0080ff; padding: 10px; border-radius: 5px; color: white; " class="fa fa-home"'
,p_button_display_type=>'ICON'
,p_icon_css_classes=>'fa-address-card-o'
,p_is_hot=>false
,p_condition_type=>'EXISTS'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from hr_rcm_natidentifier',
'where ind_id = :IND_ID'))
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(426291945527056140)
,p_card_id=>wwv_flow_imp.id(426288999842056145)
,p_action_type=>'BUTTON'
,p_position=>'SECONDARY'
,p_display_sequence=>50
,p_label=>'Quali'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:1272:&SESSION.::&DEBUG.:1272:P1272_RETURN_PAGE_ID,P1272_IND_ID,P1272_ID,GLOBAL_IND:1278,&IND_ID.,&MAX_QUAL_ID.,&IND_ID.'
,p_link_attributes=>'title="Manage Qualifications" style="background-color: #C44601; padding: 10px; border-radius: 5px; color: white; " class="fa fa-home"'
,p_button_display_type=>'ICON'
,p_icon_css_classes=>'fa-user-graduate'
,p_is_hot=>false
,p_condition_type=>'EXISTS'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from HR_RCM_QUALIFICATION',
'where ind_id = :IND_ID'))
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(426292470430056139)
,p_card_id=>wwv_flow_imp.id(426288999842056145)
,p_action_type=>'BUTTON'
,p_position=>'SECONDARY'
,p_display_sequence=>60
,p_label=>'EmpHist'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:1273:&SESSION.::&DEBUG.:1273:P1273_ID,P1273_IND_ID,P1273_RETURN_PAGE_ID,GLOBAL_IND:&MAX_EMPHISTORY_ID.,&IND_ID.,1278,&IND_ID.'
,p_link_attributes=>'title="Manage Employee History" style="background-color: #ff3239; padding: 10px; border-radius: 5px; color: white; " class="fa fa-home"'
,p_button_display_type=>'ICON'
,p_icon_css_classes=>'fa-network-triangle'
,p_is_hot=>false
,p_condition_type=>'EXISTS'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from HR_RCM_EMPHISTORY',
'where ind_id = :IND_ID'))
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(426289463431056143)
,p_card_id=>wwv_flow_imp.id(426288999842056145)
,p_action_type=>'BUTTON'
,p_position=>'SECONDARY'
,p_display_sequence=>70
,p_label=>'Reference'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:1275:&SESSION.::&DEBUG.:1275:P1275_IND_ID,P1275_RETURN_PAGE_ID,P1275_ID,GLOBAL_IND:&IND_ID.,1278,&MAX_REFF_ID.,&IND_ID.'
,p_link_attributes=>'title="Manage References" style="background-color: #ffce3d; padding: 10px; border-radius: 5px; color: white; " class="fa fa-home"'
,p_button_display_type=>'ICON'
,p_icon_css_classes=>'fa-clipboard-bookmark'
,p_is_hot=>false
,p_condition_type=>'EXISTS'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from HR_RCM_REFERENCE',
'where ind_id = :IND_ID'))
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(426293079290056139)
,p_card_id=>wwv_flow_imp.id(426288999842056145)
,p_action_type=>'BUTTON'
,p_position=>'SECONDARY'
,p_display_sequence=>80
,p_label=>'Hobbies'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:1274:&SESSION.::&DEBUG.:1274:P1274_IND_ID,GLOBAL_IND,P1274_ID:&IND_ID.,&IND_ID.,&MAX_HOBBY_ID.'
,p_link_attributes=>'title="Manage Hobbies" title="Manage References" style="background-color: #00d0e2; padding: 10px; border-radius: 5px; color: white; " class="fa fa-home"'
,p_button_display_type=>'ICON'
,p_icon_css_classes=>'fa-bicycle'
,p_is_hot=>false
,p_condition_type=>'EXISTS'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from HR_RCM_HOBBY',
'where ind_id = :IND_ID'))
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(426293702967056138)
,p_card_id=>wwv_flow_imp.id(426288999842056145)
,p_action_type=>'BUTTON'
,p_position=>'SECONDARY'
,p_display_sequence=>90
,p_label=>'Relative'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:1276:&SESSION.::&DEBUG.:1276:P1276_ID,P1276_RELATED_TO,GLOBAL_IND:&MAX_RELFRD_ID.,&IND_ID.,&IND_ID.'
,p_link_attributes=>'title="Manage Relatives" title="Manage References" style="background-color: #ff28fb; padding: 10px; border-radius: 5px; color: white; " class="fa fa-home"'
,p_button_display_type=>'ICON'
,p_icon_css_classes=>'fa-user-heart'
,p_is_hot=>false
,p_condition_type=>'EXISTS'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from HR_RCM_RELATIVESFRD',
'where RELATED_TO = :IND_ID'))
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(426294309139056138)
,p_card_id=>wwv_flow_imp.id(426288999842056145)
,p_action_type=>'BUTTON'
,p_position=>'SECONDARY'
,p_display_sequence=>100
,p_label=>'Create Employee'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:109:&SESSION.::&DEBUG.:109::'
,p_link_attributes=>'title="Add Employee" title="Add Employee" style="background-color: #ff28fb; padding: 10px; border-radius: 5px; color: white; " class="fa fa-file-user"'
,p_button_display_type=>'ICON'
,p_icon_css_classes=>'fa-file-user'
,p_is_hot=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2054059081698269047)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(2054058929621269047)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'batch_facet_search', 'N',
  'compact_numbers_threshold', '10000',
  'current_facets_selector', '#active_facets',
  'display_chart_for_top_n_values', '10',
  'show_charts', 'Y',
  'show_current_facets', 'E',
  'show_total_row_count', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2054059800697269049)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'<div id="active_facets"></div>'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(426287854750056152)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2054058354347269045)
,p_button_name=>'iNDIVIDUALS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1260:&SESSION.::&DEBUG.:1260:P1280_NAVIGATOR:9000'
,p_icon_css_classes=>'fa-users'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(426288217135056151)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2054058354347269045)
,p_button_name=>'NEW_INDIVIDUALS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1261:&SESSION.::&DEBUG.:1261:P1281_NAVIGATOR:9000'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(426297773751056133)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2054059800697269049)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:9000:&SESSION.::&DEBUG.:RR,1278::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2026945548825411672)
,p_name=>'P9000_COUNTRY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2054059081698269047)
,p_prompt=>'Country'
,p_source=>'COUNTRY'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2026945663536411673)
,p_name=>'P9000_SEX'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2054059081698269047)
,p_prompt=>'Sex'
,p_source=>'SEX_CODE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'SEX CODE'
,p_lov=>'.'||wwv_flow_imp.id(3632393837414252895)||'.'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2026945794762411674)
,p_name=>'P9000_AGE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2054059081698269047)
,p_prompt=>'Age'
,p_source=>'AGE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_lov=>'STATIC:<=21;|21,22-30;22|30,31-40;31|40,41-50;41|50,51-60;51|60,>=61;61|'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'manual_entry', 'N',
  'select_multiple', 'N')).to_clob
,p_fc_show_label=>true
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2054067582647269019)
,p_name=>'P9000_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2054059081698269047)
,p_prompt=>'Search'
,p_source=>'TITLE,ADDRESS,REGION,COUNTY,COUNTRY,QUALI,LAST_EMPLOYER,VILLAGE_WARD,CARD_CONTENTS'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2054207979660379125)
,p_name=>'P9000_CONSTITUENCY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2054059081698269047)
,p_prompt=>'Constituency'
,p_source=>'VILLAGE_WARD'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2054208108888379126)
,p_name=>'P9000_COUNTY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2054059081698269047)
,p_prompt=>'County'
,p_source=>'COUNTY'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2054208169986379127)
,p_name=>'P9000_REGION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2054059081698269047)
,p_prompt=>'Region'
,p_source=>'REGION'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp.component_end;
end;
/
