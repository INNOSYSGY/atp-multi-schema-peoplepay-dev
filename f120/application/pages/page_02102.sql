prompt --application/pages/page_02102
begin
--   Manifest
--     PAGE: 02102
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
 p_id=>2102
,p_name=>'rptWhatsNew'
,p_step_title=>'Whats New'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'body {',
'    background-color: #dff0ff;',
'}',
'',
'/*',
'.t-Region--carousel .a-Region-carouselItems {',
'    overflow: hidden;',
'    text-align: center;',
'}*/',
'',
'.t-Region--carousel .a-Region-carouselItems {',
'',
'    background-color: aquamarine;',
'}',
'',
'.t-Region--carousel .a-Region-carouselNav {',
'    margin: 30px 8px 0 8px;',
'}',
'',
'.t-HeroRegion-col--content {',
'    text-align: center;',
'    width: 100%;',
'}'))
,p_step_template=>2979075366320325194
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3492354221476484993)
,p_plug_name=>'What''s New Slider'
,p_region_template_options=>'#DEFAULT#:js-cycle10s:t-Region--carouselSlide:t-Region--removeHeader js-removeLandmark:t-Region--hiddenOverflow'
,p_plug_template=>2867287278109674555
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3492354379695484994)
,p_plug_name=>'Organisational Chart'
,p_parent_plug_id=>wwv_flow_imp.id(3492354221476484993)
,p_icon_css_classes=>'fa-gantt-chart'
,p_region_template_options=>'#DEFAULT#::t-HeroRegion--hideIcon::::::::::'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'There are now three new ways to see view the organisational chart and and a deparment''s iew to help you browse the detials of the departments'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3492354593574484996)
,p_plug_name=>'Shift Management'
,p_parent_plug_id=>wwv_flow_imp.id(3492354221476484993)
,p_icon_css_classes=>'fa-rotate-right'
,p_region_template_options=>'#DEFAULT#::t-HeroRegion--hideIcon::::::::::'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'Shift are now easier to manage and assign. With new features such as the Shift Location Rules and Shift Roster'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3492355715578485008)
,p_plug_name=>'New Movemnt UI'
,p_parent_plug_id=>wwv_flow_imp.id(3492354221476484993)
,p_icon_css_classes=>'fa-folder-pointer'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--hideIcon'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>'It is easier to view and navigate around the movement screen and a lot more functionality is added to this module'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3492355812054485009)
,p_plug_name=>'Employee Creation'
,p_parent_plug_id=>wwv_flow_imp.id(3492354221476484993)
,p_icon_css_classes=>'fa-user-man'
,p_region_template_options=>'#DEFAULT#::t-HeroRegion--hideIcon::::::::::'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'Creating an employee is easier than it use ot be, with just a few simple steps, generation makes everything easy'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3492355936712485010)
,p_plug_name=>'Leave Management'
,p_parent_plug_id=>wwv_flow_imp.id(3492354221476484993)
,p_icon_css_classes=>'fa-leaf'
,p_region_template_options=>'#DEFAULT#::t-HeroRegion--hideIcon::::::::::'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'Leave is now more detailed with features such as leave track and adjustments to the leave request screen'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3492354634507484997)
,p_plug_name=>'What''s New in PeoplePay HRMIS'
,p_icon_css_classes=>'fa-emoji-big-eyes-smile'
,p_region_template_options=>'#DEFAULT#::t-HeroRegion--hideIcon::::::::::'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3609257373292498929)
,p_plug_name=>'Whats New for PeoplePay HRMIS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    id, ',
'    FEATURE_NAME card_title, ',
'    DATE_WHATSNEW  card_text , ',
'    WHATSNEW card_body, ',
'    substr(FEATURE_NAME,1,1) card_initials,',
'    apex_util.prepare_url(''f?p=''||:APP_ID||'':2101:''||:APP_SESSION||''::::P2101_ID:''||id) card_link--,',
'from APP_APU_WHATSNEW',
'where DATE_WHATSNEW <= trunc(current_date)',
'and (DATE_CLOSE is null or DATE_CLOSE >= trunc(current_date))',
'order by DATE_WHATSNEW DESC',
'  '))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(368736323525223656)
,p_region_id=>wwv_flow_imp.id(3609257373292498929)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'CARD_TITLE'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CARD_BODY'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(368736486098223657)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3609257373292498929)
,p_button_name=>'SETUP_WHATS_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Setup Whats New'
,p_button_redirect_url=>'f?p=&APP_ID.:2101:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
);
wwv_flow_imp.component_end;
end;
/
