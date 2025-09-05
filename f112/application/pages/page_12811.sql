prompt --application/pages/page_12811
begin
--   Manifest
--     PAGE: 12811
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>12811
,p_name=>'Frequently Asked Questions'
,p_step_title=>'Frequently Asked Questions'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Scroll Results Only in Side Column */',
'.t-Body-side {',
'    display: flex;',
'    flex-direction: column;',
'    overflow: hidden;',
'}',
'.search-results {',
'    flex: 1;',
'    overflow: auto;',
'}',
'/* Format Search Region */',
'.search-region {',
'    border-bottom: 1px solid rgba(0,0,0,.1);',
'    flex-shrink: 0;',
'}',
'',
'.t-Report-cell{',
'    font-size: larger;',
'    text-align:center;}'))
,p_step_template=>2526643373347724467
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3223053314302071456)
,p_name=>'Solutions To The Issue'
,p_template=>4072358936313175081
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--accent8:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SOLUTIONS',
'  from FAQ_SOLUTIONS',
'where faq_issues_id=:P12811_ID'))
,p_display_when_condition=>'P12811_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3283115948722494309)
,p_query_column_id=>1
,p_column_alias=>'SOLUTIONS'
,p_column_display_sequence=>1
,p_column_heading=>'Solutions'
,p_column_link=>'f?p=&APP_ID.:12814:&SESSION.::&DEBUG.:RP:P12814_ID:&P12811_ID.'
,p_column_linktext=>'#SOLUTIONS#'
,p_disable_sort_column=>'N'
,p_report_column_required_role=>wwv_flow_imp.id(3279327210431677335)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3279602312166808953)
,p_plug_name=>'Frequently Asked Questions'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--hideIcon'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3279603464920808955)
,p_plug_name=>'Search'
,p_region_css_classes=>'search-region padding-md'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_02'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3279604279633808956)
,p_name=>'Master Records'
,p_template=>3371237801798025892
,p_display_sequence=>20
,p_region_css_classes=>'search-results'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'t-MediaList--showDesc:t-MediaList--stack'
,p_display_point=>'REGION_POSITION_02'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ID",',
'    null link_class,',
'    apex_page.get_url(p_items => ''P12811_ID'', p_values => "ID") link,',
'    null icon_class,',
'    null link_attr,',
'    null icon_color_class,',
'    case when nvl(:P12811_ID,''0'') = "ID"',
'      then ''is-active'' ',
'      else '' ''',
'    end list_class,',
'    substr("MODULES", 1, 50)||( case when length("MODULES") > 50 then ''...'' end ) list_title,',
'    substr("DESCRIPTION", 1, 50)||( case when length("DESCRIPTION") > 50 then ''...'' end ) list_text,',
'    null list_badge',
'from "FAQ_ISSUES" x',
'where (:P12811_SEARCH is null',
'        or upper(x."MODULES") like ''%''||upper(:P12811_SEARCH)||''%''',
'        or upper(x."DESCRIPTION") like ''%''||upper(:P12811_SEARCH)||''%''',
'    )',
'order by "MODULES"'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P12811_SEARCH'
,p_lazy_loading=>false
,p_query_row_template=>2093604263195414824
,p_query_num_rows=>1000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'<div class="u-tC">No Records Found</div>'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3279604999579808965)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3279605403220808966)
,p_query_column_id=>2
,p_column_alias=>'LINK_CLASS'
,p_column_display_sequence=>2
,p_column_heading=>'Link Class'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3279605770965808966)
,p_query_column_id=>3
,p_column_alias=>'LINK'
,p_column_display_sequence=>3
,p_column_heading=>'Link'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3279606134135808966)
,p_query_column_id=>4
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>4
,p_column_heading=>'Icon Class'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3279606596872808966)
,p_query_column_id=>5
,p_column_alias=>'LINK_ATTR'
,p_column_display_sequence=>5
,p_column_heading=>'Link Attr'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3279606989259808967)
,p_query_column_id=>6
,p_column_alias=>'ICON_COLOR_CLASS'
,p_column_display_sequence=>6
,p_column_heading=>'Icon Color Class'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3279607348211808967)
,p_query_column_id=>7
,p_column_alias=>'LIST_CLASS'
,p_column_display_sequence=>7
,p_column_heading=>'List Class'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3279607746851808967)
,p_query_column_id=>8
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>8
,p_column_heading=>'List Title'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3279608183665808967)
,p_query_column_id=>9
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>9
,p_column_heading=>'List Text'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3279608538295808968)
,p_query_column_id=>10
,p_column_alias=>'LIST_BADGE'
,p_column_display_sequence=>10
,p_column_heading=>'List Badge'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3279611925029808973)
,p_name=>'Issues That Clients Face'
,p_template=>4072358936313175081
,p_display_sequence=>10
,p_region_css_classes=>'js-master-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent6:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       MODULES,',
'       DESCRIPTION,',
'       LOCATION_OF_ISSUE,',
'       START_DATE,',
'       LAST_CHANGED_BY,',
'       LAST_DATE_CHANGED,',
'       ENTERED_BY,',
'       ENTRY_DATE',
'  from FAQ_ISSUES',
' where "ID" = :P12811_ID'))
,p_display_when_condition=>'P12811_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2100515439059797523
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No Record Selected'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3279612660504808975)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "FAQ_ISSUES"',
'where "ID" is not null',
'and "ID" = :P12811_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3279613112526808975)
,p_query_column_id=>2
,p_column_alias=>'MODULES'
,p_column_display_sequence=>2
,p_column_heading=>'Modules'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "FAQ_ISSUES"',
'where "MODULES" is not null',
'and "ID" = :P12811_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3279613444404808976)
,p_query_column_id=>3
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>3
,p_column_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "FAQ_ISSUES"',
'where "DESCRIPTION" is not null',
'and "ID" = :P12811_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3279613850838808976)
,p_query_column_id=>4
,p_column_alias=>'LOCATION_OF_ISSUE'
,p_column_display_sequence=>4
,p_column_heading=>'Location Of Issue'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "FAQ_ISSUES"',
'where "LOCATION_OF_ISSUE" is not null',
'and "ID" = :P12811_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3279614224622808976)
,p_query_column_id=>5
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "FAQ_ISSUES"',
'where "START_DATE" is not null',
'and "ID" = :P12811_ID'))
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3279614702400808976)
,p_query_column_id=>6
,p_column_alias=>'LAST_CHANGED_BY'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "FAQ_ISSUES"',
'where "LAST_CHANGED_BY" is not null',
'and "ID" = :P12811_ID'))
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3279615095006808976)
,p_query_column_id=>7
,p_column_alias=>'LAST_DATE_CHANGED'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "FAQ_ISSUES"',
'where "LAST_DATE_CHANGED" is not null',
'and "ID" = :P12811_ID'))
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3279615477487808977)
,p_query_column_id=>8
,p_column_alias=>'ENTERED_BY'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "FAQ_ISSUES"',
'where "ENTERED_BY" is not null',
'and "ID" = :P12811_ID'))
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3279615894373808977)
,p_query_column_id=>9
,p_column_alias=>'ENTRY_DATE'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "FAQ_ISSUES"',
'where "ENTRY_DATE" is not null',
'and "ID" = :P12811_ID'))
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3279622344251808984)
,p_plug_name=>'Region Display Selector'
,p_region_css_classes=>'js-detail-rds'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P12811_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'Y',
  'rds_mode', 'STANDARD',
  'remember_selection', 'NO')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3279622729186808984)
,p_name=>'Reasons Reasons Why The Issues May Occur'
,p_template=>4072358936313175081
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-detail-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent7:t-Region--scrollBody'
,p_component_template_options=>'t-Report--stretch:#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select reasons_for_issues',
'        from FAQ_REASONS',
' where "FAQ_ISSUES_ID" = :P12811_ID',
''))
,p_display_when_condition=>'P12811_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P12811_ID'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>5000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3279624820443808988)
,p_query_column_id=>1
,p_column_alias=>'REASONS_FOR_ISSUES'
,p_column_display_sequence=>1
,p_column_heading=>'Reasons For Issues'
,p_column_link=>'f?p=&APP_ID.:12812:&SESSION.::&DEBUG.:RP:P12812_ID:&P12811_ID.'
,p_column_linktext=>'#REASONS_FOR_ISSUES#'
,p_heading_alignment=>'LEFT'
,p_report_column_required_role=>wwv_flow_imp.id(3279327210431677335)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3198026010408164570)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3223053314302071456)
,p_button_name=>'POP_FAQ_SOLUTIONS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Add Faq Reasons'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:12814:&SESSION.::&DEBUG.:RP,12813::'
,p_icon_css_classes=>'fa-plus'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3279629847582808992)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3279622729186808984)
,p_button_name=>'POP_FAQ_REASONS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Add Faq Reasons'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:12813:&SESSION.::&DEBUG.:RP,12813:P12813_FAQ_ISSUES_ID:&P12811_ID.'
,p_icon_css_classes=>'fa-plus'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3279643077572809028)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3279611925029808973)
,p_button_name=>'EDIT'
,p_button_static_id=>'edit_master_btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Edit'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:12812:&SESSION.::&DEBUG.:RP,12812:P12812_ID:&P12811_ID.'
,p_icon_css_classes=>'fa-pencil-square-o'
,p_security_scheme=>wwv_flow_imp.id(3279327210431677335)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3279603139730808955)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3279602312166808953)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:12812:&SESSION.::&DEBUG.:RP,12812::'
,p_icon_css_classes=>'fa-plus'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3279603909922808956)
,p_name=>'P12811_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3279603464920808955)
,p_prompt=>'Search'
,p_placeholder=>'Search...'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:t-Form-fieldContainer--postTextBlock'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3279621933812808983)
,p_name=>'P12811_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3279611925029808973)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3279643408178809028)
,p_name=>'Edit Master Record'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3279611925029808973)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3279643972854809028)
,p_event_id=>wwv_flow_imp.id(3279643408178809028)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3279611925029808973)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3279644436618809029)
,p_event_id=>wwv_flow_imp.id(3279643408178809028)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Faq\u0020Issues\u0020updated'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3279622870869808985)
,p_name=>'Refresh on Dialog Close'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3279622729186808984)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3279630574635808994)
,p_event_id=>wwv_flow_imp.id(3279622870869808985)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3279622729186808984)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3279631068116808994)
,p_event_id=>wwv_flow_imp.id(3279622870869808985)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Faq Reasons updated'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3279643506086809028)
,p_name=>'Perform Search'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12811_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.which === apex.jQuery.ui.keyCode.ENTER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3279645264693809029)
,p_event_id=>wwv_flow_imp.id(3279643506086809028)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3279604279633808956)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3279645776387809030)
,p_event_id=>wwv_flow_imp.id(3279643506086809028)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CANCEL_EVENT'
);
wwv_flow_imp.component_end;
end;
/
