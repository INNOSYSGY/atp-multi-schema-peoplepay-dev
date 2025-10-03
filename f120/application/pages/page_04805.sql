prompt --application/pages/page_04805
begin
--   Manifest
--     PAGE: 04805
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
 p_id=>4805
,p_name=>'frmChat'
,p_alias=>'FRMCHAT'
,p_page_mode=>'MODAL'
,p_step_title=>'PeoplePay Chat'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function myfunc(){',
'                 var region =apex.region("CHATTER");',
'                 var notice_region =apex.region(''NOTICE'');',
'                 region.refresh();',
'                 notice_region.refresh();',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setInterval(function(){',
'                myfunc()',
'                }, 10000)'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* BEGIN comments/chat region styles */',
'.t-Chat .t-Chat--own .t-Comments-icon {',
'  margin-right: 0;',
'  margin-left: 12px;',
'}',
'',
'.t-Chat .t-Chat--own {',
'  flex-direction: row-reverse;',
'}',
'',
'.t-Chat .t-Chat--own .t-Comments-body {',
'  align-items: flex-end;',
'}',
'',
'.t-Chat .t-Chat--own .t-Comments-comment:after {',
'  border-left-color: rgba(130, 130, 130, 0.3);',
'  border-right-color: rgba(0,0,0,0);',
'  right: none;',
'  left: 100%;',
'}',
'/* END comments/chat region styles */'))
,p_step_template=>2121795032473542284
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'700'
,p_protection_level=>'C'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(551448130786119750)
,p_plug_name=>'Messages'
,p_region_name=>'CHATTER'
,p_region_css_classes=>'t-Chat'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#:t-MediaList--showBadges:u-colors'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_list_id=>wwv_flow_imp.id(441871668728688920)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(551292833308526602)
,p_plug_name=>'Chat Sent'
,p_parent_plug_id=>wwv_flow_imp.id(551448130786119750)
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(551490679720632676)
,p_plug_name=>'Utilties'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(551493132090632700)
,p_plug_name=>'Forward'
,p_parent_plug_id=>wwv_flow_imp.id(551490679720632676)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent5:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(551493207223632701)
,p_plug_name=>'Make Group'
,p_parent_plug_id=>wwv_flow_imp.id(551490679720632676)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent6:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(551493308669632702)
,p_plug_name=>'Delete'
,p_parent_plug_id=>wwv_flow_imp.id(551490679720632676)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent7:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(551490845627632677)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'NO')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(551494641707632715)
,p_plug_name=>'Member of Group'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT USER_NAME, GROUP_NAME, GROUP_DESCRIPTION,CREATION_DATE,CREATED_BY',
'FROM APP_GLO_CHATGROUP a join  APP_GLO_CHATGROUPMEMBERS c on a.id = c.GROUP_ID',
'where exists(select 1',
'             from APP_GLO_CHATGROUPMEMBERS b',
'             where b.GROUP_ID = a.ID',
'             and b.USER_NAME =:APP_USER )',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Member of Group'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(551495053048632719)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'RLANGFORD@INNOSYSGY.COM'
,p_internal_uid=>129703059850636145
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(554656849910754670)
,p_db_column_name=>'GROUP_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Group Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(554656898087754671)
,p_db_column_name=>'GROUP_DESCRIPTION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Group Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(554657000719754672)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Creation Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(554657115125754673)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(554657231559754674)
,p_db_column_name=>'USER_NAME'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'User Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(554663852202755601)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'385109'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USER_NAME:GROUP_NAME:GROUP_DESCRIPTION:CREATION_DATE:CREATED_BY:'
,p_break_on=>'GROUP_NAME:GROUP_DESCRIPTION:0:0:0:0'
,p_break_enabled_on=>'GROUP_NAME:GROUP_DESCRIPTION:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(560362228719509795)
,p_plug_name=>'Notice'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--info'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    v_msg varchar2(2000):=null;',
'',
'begin',
'        for I in (select distinct lower(USER_NAME) USER_NAME',
'                 from APP_GLO_CHAT a',
'                 where exists   (select 1',
'                                from APP_GLO_CHATRECIPIENTS b',
'                                where a.id = b.chat_id',
'                                and USER_NAME = :APP_USER',
'                                and comment_read= 0',
'                                )',
'                 )loop',
'',
'               v_msg := case when v_msg is null then i.USER_NAME else  '', ''||i.USER_NAME end;',
'        end loop;',
'',
'                v_msg := ''You have new messages from ''||v_msg;',
'                return v_msg;',
'end;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from APP_GLO_CHATRECIPIENTS b',
'where USER_NAME = :APP_USER',
'and comment_read= 0'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(441805533538550221)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(551292833308526602)
,p_button_name=>'INSERT_MESG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>2349107722467437027
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Insert Mesg'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-chevron-circle-right'
,p_grid_new_row=>'N'
,p_grid_column=>12
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(441807297744550223)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(551493132090632700)
,p_button_name=>'FORWARD'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Forward'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-forward'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(441808731533550225)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(551493207223632701)
,p_button_name=>'MAKE_GROUP'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Make Group'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-users-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(441810129687550226)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(551493308669632702)
,p_button_name=>'DELETE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-trash-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(441810560912550226)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(551493308669632702)
,p_button_name=>'DELETE_ALL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete All'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-box-plot-chart'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(551311291836526695)
,p_name=>'P4805_RECIPIENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(551448130786119750)
,p_prompt=>'Recipient'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT FIRST_NAME||'' ''||LAST_NAME B,  USER_NAME A',
'FROM tblUSER',
'WHERE EFFECTIVE_TO IS NULL',
'--AND USER_NAME !=:APP_USER',
'UNION',
'select group_name||'' (Group)'' a, to_char(id) a',
'FROM APP_GLO_CHATGROUP a',
'where exists (select 1',
'             from APP_GLO_CHATGROUPMEMBERS b',
'             where a.id = b.GROUP_ID ',
'             and b.user_name = :APP_USER)',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select a recipient--'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
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
 p_id=>wwv_flow_imp.id(551312258721526689)
,p_name=>'P4805_ENTRY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(551292833308526602)
,p_prompt=>'New'
,p_placeholder=>'Message'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>3
,p_grid_label_column_span=>0
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'Y',
  'character_counter', 'Y',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(551514980089632781)
,p_name=>'P4805_UTILITY_RECIPIENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(551490679720632676)
,p_prompt=>'Select Source User/s'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT FIRST_NAME||'' ''||LAST_NAME B,  USER_NAME A',
'FROM TBLUSER a',
'WHERE EFFECTIVE_TO IS NULL',
'AND exists(select 1',
'           from app_glo_chat b',
'           where b.user_name = a.user_name',
'           )',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select a recipient--'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(551519653340632810)
,p_name=>'P4805_SENT_TO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(551493132090632700)
,p_prompt=>'Recipient/s'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT FIRST_NAME||'' ''||LAST_NAME B,  USER_NAME A',
'FROM tblUSER',
'WHERE EFFECTIVE_TO IS NULL',
'AND USER_NAME !=:APP_USER',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select a recipient--'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(551519733279632811)
,p_name=>'P4805_MSG_TO_FORWARD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(551493132090632700)
,p_prompt=>'Message/s'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COMMENT_TEXT||'' (''||initcap(a.user_name)||'')'' A, a.id B       ',
'FROM APP_GLO_CHAT a join APP_GLO_CHATRECIPIENTS b on a.id =b.chat_id',
'where A.user_name in (SELECT a_field',
'                      FROM xmltable(''/root/e/text()'' passing xmltype(''<root><e>''',
'                        || REPLACE(:P4805_UTILITY_RECIPIENT,'':'',''</e><e>'')',
'                        || ''</e></root>'') columns a_field VARCHAR2(1000) path ''/'')',
'                        )',
'and b.user_name =:APP_USER                        '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select a recipient--'
,p_lov_cascade_parent_items=>'P4805_UTILITY_RECIPIENT'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(551520198358632791)
,p_name=>'P4805_GROUP_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(551493207223632701)
,p_prompt=>'Group Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(551523337114632823)
,p_name=>'P4805_GROUP_DESCRIPTION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(551493207223632701)
,p_prompt=>'Group Description'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(551526342379632821)
,p_name=>'P4805_MSG_TO_DELETE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(551493308669632702)
,p_prompt=>'Message/s'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COMMENT_TEXT||'' (''||initcap(a.user_name)||'')'' A, a.id B       ',
'FROM APP_GLO_CHAT a join APP_GLO_CHATRECIPIENTS b on a.id =b.chat_id',
'where A.user_name in (SELECT a_field',
'                      FROM xmltable(''/root/e/text()'' passing xmltype(''<root><e>''',
'                        || REPLACE(:P4805_UTILITY_RECIPIENT,'':'',''</e><e>'')',
'                        || ''</e></root>'') columns a_field VARCHAR2(1000) path ''/'')',
'                        )',
'and b.user_name =:APP_USER                        '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select a recipient--'
,p_lov_cascade_parent_items=>'P4805_UTILITY_RECIPIENT'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(441826065099550264)
,p_name=>'SAVE_MSG'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(441805533538550221)
,p_condition_element=>'P4805_ENTRY'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(441826501794550265)
,p_event_id=>wwv_flow_imp.id(441826065099550264)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_chat_id NUMBER;',
'    is_group number(1):=0;',
'',
'BEGIN',
'',
' if :P4805_RECIPIENT is not null then',
'',
'    select count(1) into is_group',
'    from app_glo_chatgroup',
'    where to_char(id) = :P4805_RECIPIENT;',
'',
'  ',
'    INSERT INTO APP_GLO_CHAT (  COMMENT_TEXT ,  USER_NAME,   COMMENT_DATE,   USER_INITIAL,   ORG_ID) ',
'    VALUES ( :P4805_ENTRY,  :APP_USER, current_date, apex_string.get_initials(:APP_USER), :APP_ORG_ID)',
'    returning id into v_chat_id;',
'',
'    if is_group = 0 then        ',
'            INSERT INTO APP_GLO_CHATRECIPIENTS ( CHAT_ID, USER_NAME)',
'            values (v_chat_id, :P4805_RECIPIENT);',
'    else',
'          INSERT INTO APP_GLO_CHATRECIPIENTS ( CHAT_ID, USER_NAME)',
'          select v_chat_id, USER_NAME',
'          from APP_GLO_CHATGROUPMEMBERS',
'          where group_id = :P4805_RECIPIENT;',
'    end if;',
'',
'    :P4805_ENTRY := NULL;',
' end if;',
'END;'))
,p_attribute_02=>'P4805_ENTRY,P4805_RECIPIENT'
,p_attribute_03=>'P4805_ENTRY'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(441827047621550265)
,p_event_id=>wwv_flow_imp.id(441826065099550264)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(551448130786119750)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(441827454182550265)
,p_name=>'refresh_chat'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4805_RECIPIENT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(441827952636550266)
,p_event_id=>wwv_flow_imp.id(441827454182550265)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(551448130786119750)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(441828437357550266)
,p_event_id=>wwv_flow_imp.id(441827454182550265)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4805_ENTRY'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(441828877476550266)
,p_name=>'PURGE_CHAT'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(441810129687550226)
,p_condition_element=>'P4805_RECIPIENT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(441829358003550267)
,p_event_id=>wwv_flow_imp.id(441828877476550266)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'        DELETE',
'        FROM APP_GLO_CHATRECIPIENTS  A',
'        WHERE EXISTS(SELECT 1',
'                    FROM APP_GLO_CHAT B',
'                    WHERE b.ID = a.CHAT_ID                 ',
'                    AND USER_NAME in (SELECT a_field',
'                                     FROM xmltable(''/root/e/text()'' passing xmltype(''<root><e>''',
'                                     || REPLACE(:P4805_UTILITY_RECIPIENT,'':'',''</e><e>'')',
'                                     || ''</e></root>'') columns a_field VARCHAR2(1000) path ''/'')                                       ',
'                                      ) ',
'                    AND b.id in (SELECT to_number(a_field)',
'                                FROM xmltable(''/root/e/text()'' passing xmltype(''<root><e>''',
'                                || REPLACE(:P4805_MSG_TO_DELETE,'':'',''</e><e>'')',
'                                || ''</e></root>'') columns a_field VARCHAR2(1000) path ''/'')',
'                                )',
'                    )',
'        and a.user_name =:APP_USER;',
'',
'        :P4805_MSG_TO_DELETE :=null;',
'END;'))
,p_attribute_02=>'P4805_UTILITY_RECIPIENT,P4805_MSG_TO_DELETE'
,p_attribute_03=>'P4805_MSG_TO_DELETE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(441829872308550267)
,p_event_id=>wwv_flow_imp.id(441828877476550266)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(441830265515550267)
,p_name=>'PURGE_CHAT_ALL'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(441810560912550226)
,p_condition_element=>'P4805_RECIPIENT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(441830710340550267)
,p_event_id=>wwv_flow_imp.id(441830265515550267)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'        DELETE',
'        FROM APP_GLO_CHAT A',
'        WHERE EXISTS(SELECT 1',
'                    FROM APP_GLO_CHATRECIPIENTS  B',
'                    WHERE a.ID = b.CHAT_ID                      ',
'                    and a.user_name =:APP_USER',
'                    )        ',
'        AND USER_NAME in (SELECT a_field',
'                         FROM xmltable(''/root/e/text()'' passing xmltype(''<root><e>''',
'                         || REPLACE(:P4805_UTILITY_RECIPIENT,'':'',''</e><e>'')',
'                         || ''</e></root>'') columns a_field VARCHAR2(1000) path ''/'')                                       ',
'                          ) ',
'        AND a.id in (SELECT to_number(a_field)',
'                    FROM xmltable(''/root/e/text()'' passing xmltype(''<root><e>''',
'                    || REPLACE(:P4805_MSG_TO_DELETE,'':'',''</e><e>'')',
'                    || ''</e></root>'') columns a_field VARCHAR2(1000) path ''/'')',
'                    );',
'                   ',
'',
'        :P4805_MSG_TO_DELETE :=null;',
'END;'))
,p_attribute_02=>'P4805_UTILITY_RECIPIENT,P4805_MSG_TO_DELETE'
,p_attribute_03=>'P4805_MSG_TO_DELETE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(441831200405550268)
,p_event_id=>wwv_flow_imp.id(441830265515550267)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(441831664959550268)
,p_name=>'show_hide_send'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4805_RECIPIENT'
,p_condition_element=>'P4805_RECIPIENT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(441832113187550268)
,p_event_id=>wwv_flow_imp.id(441831664959550268)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(441805533538550221)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(441832619486550268)
,p_event_id=>wwv_flow_imp.id(441831664959550268)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(441805533538550221)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(441833010681550269)
,p_name=>'dyn_forward'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(441807297744550223)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(441833524220550269)
,p_event_id=>wwv_flow_imp.id(441833010681550269)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'     l_msgs APEX_APPLICATION_GLOBAL.VC_ARR2;',
'     l_recipients APEX_APPLICATION_GLOBAL.VC_ARR2;',
'     v_chat_id number;',
'     ',
'BEGIN',
'    ',
'    IF :P4805_MSG_TO_FORWARD is not null and :P4805_SENT_TO is not null then',
'    ',
'      l_msgs := APEX_UTIL.STRING_TO_TABLE(:P4805_MSG_TO_FORWARD);',
'      l_recipients := APEX_UTIL.STRING_TO_TABLE(:P4805_SENT_TO);',
'      ',
'      FOR i IN 1..l_msgs.COUNT',
'      LOOP',
'              FOR j IN 1..l_recipients.COUNT',
'              LOOP',
'                INSERT INTO APP_GLO_CHAT (  COMMENT_TEXT ,  USER_NAME,   COMMENT_DATE,   USER_INITIAL,   ORG_ID) ',
'                VALUES ( l_msgs(i),  :APP_USER, current_date, apex_string.get_initials(:APP_USER), :APP_ORG_ID)',
'                returning id into v_chat_id;',
'                ',
'                INSERT INTO APP_GLO_CHATRECIPIENTS ( CHAT_ID, USER_NAME)',
'                values (v_chat_id, l_recipients(j));',
'        ',
'              end loop;',
'      END LOOP;  ',
'      ',
'        :P4805_MSG_TO_FORWARD := null;',
'        :P4805_SENT_TO := null;',
'        ',
'    end if;',
'end;'))
,p_attribute_02=>'P4805_MSG_TO_FORWARD, P4805_SENT_TO'
,p_attribute_03=>'P4805_MSG_TO_FORWARD, P4805_SENT_TO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(441821921658550259)
,p_name=>'create_group'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(441808731533550225)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(441822433749550261)
,p_event_id=>wwv_flow_imp.id(441821921658550259)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'     l_group APEX_APPLICATION_GLOBAL.VC_ARR2;  ',
'     v_group_id number;',
'     v_sqlcode varchar2(200);',
'     v_sqlerrm  varchar2(2000);',
'',
'BEGIN',
'    ',
'    IF :P4805_UTILITY_RECIPIENT is not null then',
'    ',
'      l_group := APEX_UTIL.STRING_TO_TABLE(:P4805_UTILITY_RECIPIENT);     ',
'      ',
'        INSERT INTO APP_GLO_CHATGROUP (GROUP_NAME, GROUP_DESCRIPTION)',
'        values (:P4805_GROUP_NAME, :P4805_GROUP_DESCRIPTION)',
'        returning id into v_group_id;',
'',
'      ',
'      FOR i IN 1..l_group.COUNT',
'      LOOP',
'        ',
'        INSERT INTO APP_GLO_CHATGROUPMEMBERS (GROUP_ID, USER_NAME, USER_ID)',
'        SELECT v_group_id, user_name, USER_ID',
'        FROM TBLUSER',
'        where user_name = l_group(I);',
'            ',
'      END LOOP;  ',
'',
'    begin',
'        INSERT INTO APP_GLO_CHATGROUPMEMBERS (GROUP_ID, USER_NAME, USER_ID)',
'        SELECT v_group_id, user_name, USER_ID',
'        FROM TBLUSER',
'        where user_name =:APP_USER;',
'',
'    exception',
'        when others then null;',
'    end;  ',
'    ',
'        :P4805_UTILITY_RECIPIENT := null;',
'        :P4805_GROUP_NAME := null;',
'        :P4805_GROUP_DESCRIPTION := null;',
'',
'    end if;',
' ',
' exception',
'    when others then',
'        v_sqlcode := sqlcode;',
'        v_sqlerrm := sqlerrm;        ',
'       pkg_errorLogger.insert_err(v_sqlcode ,v_sqlerrm  ,''error occurred while executing the create chat group name '' ||:P4805_GROUP_NAME ,''CREATE_GROUP DYN ACTION'');   ',
'end;'))
,p_attribute_02=>'P4805_UTILITY_RECIPIENT,P4805_GROUP_NAME,P4805_GROUP_DESCRIPTION'
,p_attribute_03=>'P4805_UTILITY_RECIPIENT,P4805_GROUP_NAME,P4805_GROUP_DESCRIPTION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(441822891916550262)
,p_name=>'show_group'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4805_UTILITY_RECIPIENT'
,p_condition_element=>'P4805_UTILITY_RECIPIENT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(441823388719550262)
,p_event_id=>wwv_flow_imp.id(441822891916550262)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(441808731533550225)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(441823858310550263)
,p_event_id=>wwv_flow_imp.id(441822891916550262)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(441808731533550225)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(441824216075550263)
,p_name=>'refresh_attachment'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4805_RECIPIENT'
,p_condition_element=>'P4805_RECIPIENT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(441825104702550264)
,p_name=>'update_seen'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4805_RECIPIENT'
,p_condition_element=>'P4805_RECIPIENT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(441825613098550264)
,p_event_id=>wwv_flow_imp.id(441825104702550264)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    update APP_GLO_CHATRECIPIENTS a',
'    set comment_read= 1',
'    where USER_NAME = :APP_USER',
'    and comment_read= 0',
'    and exists(select 1',
'          from APP_GLO_CHAT b',
'          where b.id = a.CHAT_ID',
'          and  USER_NAME = :P4805_RECIPIENT);',
'',
'end;'))
,p_attribute_02=>'P4805_RECIPIENT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(441821583441550258)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'',
'    l_files apex_t_varchar2;',
'BEGIN',
'    l_files := apex_string.split(:P4805_UPLOAD, '':'');',
'',
'    FOR i in 1..l_files.count LOOP',
'        for c1 in (select * from apex_application_temp_files where name = l_files(i)) loop',
'            begin',
'                INSERT INTO APP_GLO_CHATATTACHMENT (',
'                                                        chat_id,',
'                                                        CV_UPLOAD,',
'                                                        cv_filename,',
'                                                        cv_mimetype,',
'                                                        cv_last_update',
'                                                    ) ',
'',
'                VALUES (',
'                   :P4805_ATTACH_TO_MSG,',
'                    c1.blob_content,',
'                    c1.filename,',
'                    c1.mime_type,',
'                    c1.created_on',
'                        );',
'            exception',
'                when others then null;',
'            end;',
'        END LOOP;',
'    END LOOP;',
' ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>20029590243553684
);
wwv_flow_imp.component_end;
end;
/
