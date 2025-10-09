prompt --application/pages/page_04806
begin
--   Manifest
--     PAGE: 04806
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>500
,p_default_id_offset=>221402556581611694
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>4806
,p_name=>'frmChatNew'
,p_alias=>'FRMCHATNEW'
,p_page_mode=>'MODAL'
,p_step_title=>'Chat'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function myfunc(){',
'                 var region =apex.region("CHATTER");',
'                 var notice_region =apex.region(''NOTICE'');',
'                 region.refresh();',
'                 notice_region.refresh();',
'}',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setInterval(function(){',
'                myfunc()',
'                }, 10*1000)'))
,p_step_template=>2121795032473542284
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'650'
,p_dialog_width=>'500'
,p_protection_level=>'C'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(836795525930364882)
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
 p_id=>wwv_flow_imp.id(836797978300364906)
,p_plug_name=>'Forward'
,p_parent_plug_id=>wwv_flow_imp.id(836795525930364882)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent5:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(836798053433364907)
,p_plug_name=>'Make Group'
,p_parent_plug_id=>wwv_flow_imp.id(836795525930364882)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent6:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(836798154879364908)
,p_plug_name=>'Delete'
,p_parent_plug_id=>wwv_flow_imp.id(836795525930364882)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent7:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(836799487917364921)
,p_plug_name=>'Member of Group'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(836799899258364925)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'RLANGFORD@INNOSYSGY.COM'
,p_internal_uid=>193605349478756657
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(839961696120486876)
,p_db_column_name=>'GROUP_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Group Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(839961744297486877)
,p_db_column_name=>'GROUP_DESCRIPTION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Group Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(839961846929486878)
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
 p_id=>wwv_flow_imp.id(839961961335486879)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(839962077769486880)
,p_db_column_name=>'USER_NAME'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'User Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(839968698412487807)
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
 p_id=>wwv_flow_imp.id(839964135252486901)
,p_plug_name=>'Attachments'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent7:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(839963067946486890)
,p_plug_name=>'attachments'
,p_parent_plug_id=>wwv_flow_imp.id(839964135252486901)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>60
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'ID,',
'          dbms_lob.getlength(cv_upload)    image',
'  ',
'  from APP_GLO_CHATATTACHMENT',
'  where chat_id=nvl(:P4806_ATTACH_TO_MSG,-8754)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P4806_ATTACH_TO_MSG'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'attachments'
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
 p_id=>wwv_flow_imp.id(965750247418693415)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'RICHARDL@INNOSYSGY.COM'
,p_internal_uid=>322555697639085147
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(967241720957369477)
,p_db_column_name=>'IMAGE'
,p_display_order=>70
,p_column_identifier=>'H'
,p_column_label=>'Images'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'IMAGE:APP_GLO_CHATATTACHMENT:CV_UPLOAD:ID::::::::'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(970213251379746476)
,p_db_column_name=>'ID'
,p_display_order=>80
,p_column_identifier=>'I'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(967235130530142703)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1657774'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'IMAGE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(845667074929242001)
,p_plug_name=>'Recipient'
,p_region_name=>'NOTICE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    v_msg varchar2(2000):=null; ',
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
'                if v_msg is not null then',
'                      v_msg := ''You have new messages from ''||v_msg;',
'                       return v_msg;',
'                else',
'                       return '''';',
'                end if;',
'end;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_ajax_items_to_submit=>'P4806_RECIPIENT,P4806_ENTRY'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(836795691837364883)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(845667074929242001)
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'NO')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(967244131384369501)
,p_plug_name=>'Messages'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>9
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(836597679518258808)
,p_plug_name=>'Chat Sent'
,p_parent_plug_id=>wwv_flow_imp.id(967244131384369501)
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(836752976995851956)
,p_name=>'Messages'
,p_region_name=>'CHATTER'
,p_parent_plug_id=>wwv_flow_imp.id(967244131384369501)
,p_template=>4072358936313175081
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#:t-Comments--chat:t-Comments--iconsRounded'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if is_chatgroup(:P4806_RECIPIENT,:APP_ORG_ID ) = 0 then',
'RETURN',
'        ''Select *',
'         from ( SELECT',
'                    a.ID,     ',
'                    a.user_name,           ',
'                    apex_util.get_since(COMMENT_DATE) COMMENT_DATE,                ',
'                     COMMENT_TEXT,   ',
'                     substr(c.first_name,1,1) ||substr(c.last_name,1,1) user_icon,                ',
'                    reply_sort_id,',
'                    ''''Edit'''' ATTRIBUTE_1,',
'                    ''''Reply'''' ATTRIBUTE_2,',
'                    null ATTRIBUTE_3,',
'                    null ATTRIBUTE_4,',
'                   null ICON_MODIFIER,',
'                   comment_modified,',
'                   null actions',
'                FROM APP_GLO_CHAT a join APP_GLO_CHATRECIPIENTS b on a.id =b.chat_id',
'                join tbluser c on a.user_name = c.user_name',
'                where a.user_name = TO_CHAR(:P4806_RECIPIENT)',
'                and b.user_name =:APP_USER     ',
'                and group_msg=0          ',
'                union all',
'                SELECT',
'                    a.ID,  ',
'                      a.user_name,               ',
'                    apex_util.get_since(COMMENT_DATE) COMMENT_DATE,               ',
'                  COMMENT_TEXT,   ',
'                     substr(c.first_name,1,1) ||substr(c.last_name,1,1) user_icon,                ',
'                    reply_sort_id,',
'                     ''''Edit'''' ATTRIBUTE_1,',
'                    ''''Reply'''' ATTRIBUTE_2,',
'                    null ATTRIBUTE_3,',
'                    null ATTRIBUTE_4,',
'                     null ICON_MODIFIER,',
'                     comment_modified,',
'                     null actions',
'                FROM APP_GLO_CHAT a join APP_GLO_CHATRECIPIENTS b on a.id =b.chat_id',
'                join tbluser c on a.user_name = c.user_name',
'                where B.user_name = TO_CHAR(:P4806_RECIPIENT)',
'                AND A.USER_NAME = :APP_USER',
'                and group_msg=0',
'            )',
'       order by comment_modified'';',
' ELSE',
'  RETURN  ''SELECT',
'            a.ID,            ',
'              a.user_name,     ',
'                    apex_util.get_since(COMMENT_DATE) COMMENT_DATE,                  ',
'                  COMMENT_TEXT,   ',
'                     substr(c.first_name,1,1) ||substr(c.last_name,1,1) user_icon,                ',
'                    reply_sort_id,',
'                     ''''Edit'''' ATTRIBUTE_1,',
'                    ''''Reply'''' ATTRIBUTE_2,',
'                    null ATTRIBUTE_3,',
'                    null ATTRIBUTE_4,',
'                     null ICON_MODIFIER,',
'                     null actions',
'        FROM APP_GLO_CHAT a join APP_GLO_CHATRECIPIENTS b on a.id =b.chat_id',
'        join tbluser c on a.user_name = c.user_name',
'        where exists (select 1',
'                      from app_glo_chatgroup w join app_glo_chatgroupmembers X on w.id = x.group_id',
'                      where x.user_name = b.user_name',
'                      and TO_CHAR(w.id) =  :P4806_RECIPIENT',
'                      and x.user_name = :APP_USER',
'                      )',
'        and group_msg=1                      ',
'        ORDER BY comment_modified'';',
'END IF;',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P4806_RECIPIENT'
,p_lazy_loading=>true
,p_query_row_template=>2613168815517880001
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>4
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(675490105672057674)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_column_heading=>'Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(675490192788057675)
,p_query_column_id=>2
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'User Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(675490333319057676)
,p_query_column_id=>3
,p_column_alias=>'COMMENT_DATE'
,p_column_display_sequence=>30
,p_column_heading=>'Comment Date'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(675490389349057677)
,p_query_column_id=>4
,p_column_alias=>'COMMENT_TEXT'
,p_column_display_sequence=>40
,p_column_heading=>'Comment Text'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(675491097383057684)
,p_query_column_id=>5
,p_column_alias=>'USER_ICON'
,p_column_display_sequence=>110
,p_column_heading=>'User Icon'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(675490598309057679)
,p_query_column_id=>6
,p_column_alias=>'REPLY_SORT_ID'
,p_column_display_sequence=>60
,p_column_heading=>'Reply Sort Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(675490692489057680)
,p_query_column_id=>7
,p_column_alias=>'ATTRIBUTE_1'
,p_column_display_sequence=>70
,p_column_heading=>'  Edit'
,p_column_link=>'f?p=&APP_ID.:4806:&SESSION.::&DEBUG.::P4806_CHAT_ID,P4806_LOCK_MSG,P4806_ENTRY:#ID#,0,#COMMENT_TEXT#'
,p_column_linktext=>'  Edit'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(675490780898057681)
,p_query_column_id=>8
,p_column_alias=>'ATTRIBUTE_2'
,p_column_display_sequence=>80
,p_column_heading=>' Reply'
,p_column_link=>'f?p=&APP_ID.:4806:&SESSION.::&DEBUG.::P4806_CHAT_ID,P4806_LOCK_MSG,P4806_ENTRY:#ID#,1,#COMMENT_TEXT#'
,p_column_linktext=>' Reply'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(675490937932057682)
,p_query_column_id=>9
,p_column_alias=>'ATTRIBUTE_3'
,p_column_display_sequence=>90
,p_column_heading=>'Attribute 3'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(675490956521057683)
,p_query_column_id=>10
,p_column_alias=>'ATTRIBUTE_4'
,p_column_display_sequence=>100
,p_column_heading=>'Attribute 4'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(675491373532057687)
,p_query_column_id=>11
,p_column_alias=>'ICON_MODIFIER'
,p_column_display_sequence=>120
,p_column_heading=>'Icon Modifier'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(675491481156057688)
,p_query_column_id=>12
,p_column_alias=>'COMMENT_MODIFIED'
,p_column_display_sequence=>130
,p_column_heading=>'Comment Modified'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(675491566816057689)
,p_query_column_id=>13
,p_column_alias=>'ACTIONS'
,p_column_display_sequence=>140
,p_column_heading=>'Actions'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(677532424865783810)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(836597679518258808)
,p_button_name=>'INSERT_MESG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>2349107722467437027
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Send Mesg'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-chevron-circle-right'
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(677532791401783810)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(836597679518258808)
,p_button_name=>'RESET'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>2349107722467437027
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reset'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P4806_LOCK_MSG'
,p_button_condition2=>'1'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-undo-alt'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(677521132697783783)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(836797978300364906)
,p_button_name=>'FORWARD'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--small'
,p_button_template_id=>2349107722467437027
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Forward'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-forward'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(677521539553783784)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(836797978300364906)
,p_button_name=>'REFRESH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Refresh'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(677522943986783789)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(836798053433364907)
,p_button_name=>'MAKE_GROUP'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--small'
,p_button_template_id=>2349107722467437027
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Make Group'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-users-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(677524647378783791)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(836798154879364908)
,p_button_name=>'DELETE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--small'
,p_button_template_id=>2349107722467437027
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-trash-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(677527828373783804)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(839964135252486901)
,p_button_name=>'UPLOAD_IMG'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--small:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Upload Img'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_icon_css_classes=>'fa-upload'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(677528175871783804)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(839964135252486901)
,p_button_name=>'DELETE_IMG'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Delete Img'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from APP_GLO_CHATATTACHMENT ',
'where RECIPIENT =  :P4806_RECIPIENT',
'and CHAT_ID= to_number(:P4806_ATTACH_TO_MSG)'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-trash-o'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(836619809717258920)
,p_name=>'P4806_RECIPIENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(845667074929242001)
,p_prompt=>'Recipient'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT FIRST_NAME||'' ''||LAST_NAME||'' (''||lower(user_name)||'')'' B, USER_NAME A',
'FROM tbluser y',
'WHERE EFFECTIVE_TO IS NULL',
'and exists (select 1',
'            from tbluserdetail x',
'            where y.user_id =x.user_id',
'             and x.application_schema_name =:G_PARSING_SCHEMA',
'            and org_id =:APP_ORG_ID )',
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
 p_id=>wwv_flow_imp.id(836623288539258912)
,p_name=>'P4806_ENTRY'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(836597679518258808)
,p_use_cache_before_default=>'NO'
,p_placeholder=>'Message'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cHeight=>2
,p_grid_label_column_span=>0
,p_read_only_when=>'P4806_LOCK_MSG'
,p_read_only_when2=>'1'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'Y',
  'character_counter', 'Y',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(836801878360364975)
,p_name=>'P4806_SENT_TO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(836797978300364906)
,p_prompt=>'Recipient/s'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT FIRST_NAME||'' ''||LAST_NAME B,  USER_NAME A',
'FROM tbluser',
'WHERE EFFECTIVE_TO IS NULL',
'AND USER_NAME !=:APP_USER',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select a recipients--'
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_06', 'Y',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(836801958299364976)
,p_name=>'P4806_MSG_TO_FORWARD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(836797978300364906)
,p_prompt=>'Message/s'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COMMENT_TEXT||'' (''||initcap(a.user_name)||'')'' A, COMMENT_TEXT||'' (''||initcap(a.user_name)||'')'' B       ',
'FROM APP_GLO_CHAT a join APP_GLO_CHATRECIPIENTS b on a.id =b.chat_id',
'where a.user_name =:APP_USER    ',
'and b.user_name =:P4806_RECIPIENT                   '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select a messages--'
,p_lov_cascade_parent_items=>'P4806_RECIPIENT'
,p_ajax_optimize_refresh=>'Y'
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_06', 'Y',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(836802389556364960)
,p_name=>'P4806_GROUP_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(836798053433364907)
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
 p_id=>wwv_flow_imp.id(836805528312364992)
,p_name=>'P4806_GROUP_DESCRIPTION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(836798053433364907)
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
 p_id=>wwv_flow_imp.id(836808478381364989)
,p_name=>'P4806_MSG_TO_DELETE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(836798154879364908)
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COMMENT_TEXT||'' (''||initcap(a.user_name)||'')'' A, a.id B       ',
'FROM APP_GLO_CHAT a join APP_GLO_CHATRECIPIENTS b on a.id =b.chat_id',
'where A.user_name in (SELECT a_field',
'                      FROM xmltable(''/root/e/text()'' passing xmltype(''<root><e>''',
'                        || REPLACE(:P4806_RECIPIENT,'':'',''</e><e>'')',
'                        || ''</e></root>'') columns a_field VARCHAR2(1000) path ''/'')',
'                        )',
'and b.user_name =:APP_USER          ',
'union',
'SELECT COMMENT_TEXT||'' (''||initcap(a.user_name)||'')'' A, a.id B       ',
'FROM APP_GLO_CHAT a join APP_GLO_CHATRECIPIENTS b on a.id =b.chat_id',
'where A.user_name =:APP_USER',
'and b.user_name in (SELECT a_field',
'                      FROM xmltable(''/root/e/text()'' passing xmltype(''<root><e>''',
'                        || REPLACE(:P4806_RECIPIENT,'':'',''</e><e>'')',
'                        || ''</e></root>'') columns a_field VARCHAR2(1000) path ''/'')',
'                        )       ',
'and comment_read=0            '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select a message--'
,p_lov_cascade_parent_items=>'P4806_RECIPIENT'
,p_ajax_optimize_refresh=>'Y'
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_06', 'Y',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(839981151778487001)
,p_name=>'P4806_ATTACH_TO_MSG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(839964135252486901)
,p_item_default=>'null'
,p_prompt=>'Attach To Msg'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if is_chatgroup(:P4806_RECIPIENT,:APP_ORG_ID ) = 0 then',
'RETURN',
'        ''SELECT comment_text,   b',
'        FROM (SELECt a.comment_text,   to_char(a.ID) b',
'                FROM APP_GLO_CHAT a join APP_GLO_CHATRECIPIENTS b on a.id =b.chat_id',
'                join TBLUSER c on a.user_name = c.user_name',
'                where a.user_name = TO_CHAR(:P4806_RECIPIENT)',
'                and b.user_name =:APP_USER',
'                union',
'                SELECT a.comment_text,    to_char(a.ID) b',
'                FROM APP_GLO_CHAT a join APP_GLO_CHATRECIPIENTS b on a.id =b.chat_id',
'                join TBLUSER c on a.user_name = c.user_name',
'                where B.user_name = TO_CHAR(:P4806_RECIPIENT)',
'                AND A.USER_NAME = :APP_USER',
'                )',
'        ORDER BY B DESC'';',
' ELSE',
'  RETURN  ''SELECT a.comment_text,   to_char(a.ID) b',
'        FROM APP_GLO_CHAT a join APP_GLO_CHATRECIPIENTS b on a.id =b.chat_id',
'        join TBLUSER c on a.user_name = c.user_name',
'        where exists (select 1',
'                      from app_glo_chatgroup w join app_glo_chatgroupmembers X on w.id = x.group_id',
'                      where x.user_name = b.user_name',
'                      and TO_CHAR(w.id) =  :P4806_RECIPIENT',
'                      and x.user_name = :APP_USER',
'                      )',
'        ORDER BY A.ID DESC'';',
'END IF;',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select a message--'
,p_lov_cascade_parent_items=>'P4806_RECIPIENT'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
 p_id=>wwv_flow_imp.id(967259265321369582)
,p_name=>'P4806_UPLOAD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(839964135252486901)
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'Y',
  'display_as', 'INLINE',
  'purge_file_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(968808151939476090)
,p_name=>'P4806_UTILITY_RECIPIENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(836798053433364907)
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT FIRST_NAME||'' ''||LAST_NAME||'' (''||initcap(user_name)||'')'' B,  USER_NAME A',
'FROM TBLUSER',
'WHERE EFFECTIVE_TO IS NULL',
'UNION',
'select group_name||'' (Group)'' a, to_char(id) a',
'FROM APP_GLO_CHATGROUP a',
'where exists (select 1',
'             from APP_GLO_CHATGROUPMEMBERS b',
'             where a.id = b.GROUP_ID ',
'             and b.user_name = :APP_USER)',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_06', 'Y',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(970239840293746590)
,p_name=>'P4806_REPLY'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(836597679518258808)
,p_use_cache_before_default=>'NO'
,p_placeholder=>'Reply'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>2
,p_grid_label_column_span=>0
,p_display_when=>'P4806_LOCK_MSG'
,p_display_when2=>'1'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'Y',
  'character_counter', 'Y',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(970240173893746593)
,p_name=>'P4806_CHAT_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(836597679518258808)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(970240272163746594)
,p_name=>'P4806_LOCK_MSG'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(836597679518258808)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(970241943265746611)
,p_name=>'P4806_ERROR_FLAG'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(836597679518258808)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(677558441181783863)
,p_name=>'SAVE_MSG'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(677532424865783810)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677558868451783863)
,p_event_id=>wwv_flow_imp.id(677558441181783863)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Execute Initial'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_chat_id NUMBER;       msg_age pls_integer:=0; ',
'    v_msg_push varchar2(2000):=null;',
'    is_group number(1):=0; v_user_name varchar2(300);',
'',
'BEGIN',
'',
'if :P4806_RECIPIENT is not null and :P4806_ERROR_FLAG =''N'' then',
'',
'    select count(1) into is_group',
'    from app_glo_chatgroup',
'    where to_char(id) = :P4806_RECIPIENT;',
'',
'IF :P4806_CHAT_ID IS NULL then',
'  ',
'    INSERT INTO APP_GLO_CHAT (  COMMENT_TEXT ,  USER_NAME,   COMMENT_DATE,   USER_INITIAL,   ORG_ID) ',
'    VALUES ( :P4806_ENTRY,  :APP_USER, current_date, apex_string.get_initials(:APP_USER), :APP_ORG_ID)',
'    returning id into v_chat_id;',
'',
'    if is_group = 0 then        ',
'            INSERT INTO APP_GLO_CHATRECIPIENTS ( CHAT_ID, USER_NAME)',
'            values (v_chat_id, :P4806_RECIPIENT);',
'    else',
'          INSERT INTO APP_GLO_CHATRECIPIENTS ( CHAT_ID, USER_NAME, group_msg)',
'          select v_chat_id, USER_NAME, 1',
'          from APP_GLO_CHATGROUPMEMBERS',
'          where group_id = :P4806_RECIPIENT;',
'    end if;',
'',
'else',
'    select (current_date - COMMENT_DATE)*1440, user_name into msg_age, v_user_name',
'    from APP_GLO_CHAT ',
'    where id= :P4806_CHAT_ID;',
'',
'',
'    if  msg_age > get_attribute(''MAX_EDIT_CHAT_TIME'',:APP_ORG_ID) then',
'         raise_application_error(-20013,''You are not allowed to change messages older than 15 mins or messages not sent by you.'');',
'    else',
'         if TRIM(UPPER(v_user_name)) =  TRIM(UPPER(:APP_USER)) then',
'',
'                 update APP_GLO_CHAT',
'                 set COMMENT_TEXT =:P4806_ENTRY||'' Edited ''||to_char(current_date,''DD-MON-YYYY HH:MIPM'')',
'                 where id = :P4806_CHAT_ID;',
'                 :P4806_CHAT_ID :=null;',
'          else',
'                 raise_application_error(-20013,''Cannot make changes to '' || v_user_name|| '' messages!'');',
'               ',
'         end if;',
'    end if;',
'end if;',
'',
'    :P4806_ENTRY := NULL;   ',
' end if;',
'END;'))
,p_attribute_02=>'P4806_ENTRY, P4806_ERROR_FLAG,P4806_RECIPIENT,P4806_CHAT_ID'
,p_attribute_03=>'P4806_ENTRY,P4806_CHAT_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P4806_LOCK_MSG'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677559350519783864)
,p_event_id=>wwv_flow_imp.id(677558441181783863)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'execute a Reply'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'     is_group number(1):=0; ',
'',
'',
'BEGIN',
'    ',
'    if :P4806_REPLY is not null  and :P4806_ERROR_FLAG =''N'' then',
'      ',
'        merge into APP_GLO_CHAT',
'        using (select id, COMMENT_TEXT ,  USER_NAME,   COMMENT_DATE,   USER_INITIAL,   ORG_ID',
'               from APP_GLO_CHAT',
'               where id = :P4806_CHAT_ID) source_qry',
'        on (APP_GLO_CHAT.id = source_qry.id )',
'        when matched then',
'            update ',
'            set COMMENT_TEXT = COMMENT_TEXT||'' ''||  lower(:APP_USER)||'' Replied *''||:P4806_REPLY ||''* on: ''||TO_CHAR(CURRENT_DATE,''DD-MON-YYYY HH:MIAM'') ,',
'                reply_sort_id = (select max(id)+1 from APP_GLO_CHAT where user_name =:APP_USER)',
'        when not matched then',
'            INSERT  (  COMMENT_TEXT ,  USER_NAME,   COMMENT_DATE,   USER_INITIAL,   ORG_ID) ',
'            VALUES ( :P4806_ENTRY,  :APP_USER, current_date, apex_string.get_initials(:APP_USER), :APP_ORG_ID);',
'',
'        update APP_GLO_CHATRECIPIENTS a',
'        set comment_read= 0',
'        where USER_NAME = :APP_USER',
'        and chat_id = to_number(:P4806_CHAT_ID);',
'',
'        commit;                ',
'     end if;',
'',
'        ',
'                :P4806_LOCK_MSG:=0;   ',
'                :P4806_REPLY :=NULL;',
'END;'))
,p_attribute_02=>'P4806_ENTRY,P4806_ERROR_FLAG,P4806_CHAT_ID,P4806_REPLY'
,p_attribute_03=>'P4806_LOCK_MSG,P4806_REPLY'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P4806_LOCK_MSG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677559920556783864)
,p_event_id=>wwv_flow_imp.id(677558441181783863)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(836752976995851956)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677560364629783864)
,p_event_id=>wwv_flow_imp.id(677558441181783863)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4806_ENTRY'
,p_attribute_01=>'N'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P4806_ENTRY'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(677560829784783865)
,p_name=>'refresh_chat'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4806_RECIPIENT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677561288903783865)
,p_event_id=>wwv_flow_imp.id(677560829784783865)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(836752976995851956)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677561782775783865)
,p_event_id=>wwv_flow_imp.id(677560829784783865)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4806_ENTRY'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(677541414273783848)
,p_name=>'PURGE_CHAT'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(677524647378783791)
,p_condition_element=>'P4806_RECIPIENT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677541896284783851)
,p_event_id=>wwv_flow_imp.id(677541414273783848)
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
'                    AND USER_NAME = :APP_USER',
'                    AND b.id in (SELECT to_number(a_field)',
'                                FROM xmltable(''/root/e/text()'' passing xmltype(''<root><e>''',
'                                || REPLACE(:P4806_MSG_TO_DELETE,'':'',''</e><e>'')',
'                                || ''</e></root>'') columns a_field VARCHAR2(1000) path ''/'')',
'                                )',
'                    and comment_read=0',
'                    );',
'',
'        DELETE',
'        FROM APP_GLO_CHATRECIPIENTS  A',
'        WHERE EXISTS(SELECT 1',
'                    FROM APP_GLO_CHAT B',
'                    WHERE b.ID = a.CHAT_ID              ',
'                    AND b.id in (SELECT to_number(a_field)',
'                                FROM xmltable(''/root/e/text()'' passing xmltype(''<root><e>''',
'                                || REPLACE(:P4806_MSG_TO_DELETE,'':'',''</e><e>'')',
'                                || ''</e></root>'') columns a_field VARCHAR2(1000) path ''/'')',
'                                )',
'                     and comment_read=0',
'        AND A.USER_NAME = :APP_USER                                ',
'                    );',
'',
'        :P4806_MSG_TO_DELETE :=null;',
'END;'))
,p_attribute_02=>'P4806_MSG_TO_DELETE'
,p_attribute_03=>'P4806_MSG_TO_DELETE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677542351308783852)
,p_event_id=>wwv_flow_imp.id(677541414273783848)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(677542789999783852)
,p_name=>'show_hide_send'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4806_RECIPIENT'
,p_condition_element=>'P4806_RECIPIENT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677543257206783853)
,p_event_id=>wwv_flow_imp.id(677542789999783852)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(677532424865783810)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677543754270783853)
,p_event_id=>wwv_flow_imp.id(677542789999783852)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(677532424865783810)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(677544176240783854)
,p_name=>'dyn_forward'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(677521132697783783)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677544728584783854)
,p_event_id=>wwv_flow_imp.id(677544176240783854)
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
'    IF :P4806_MSG_TO_FORWARD is not null and :P4806_SENT_TO is not null then',
'    ',
'      l_msgs := APEX_UTIL.STRING_TO_TABLE(:P4806_MSG_TO_FORWARD);',
'      l_recipients := APEX_UTIL.STRING_TO_TABLE(:P4806_SENT_TO);',
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
'        :P4806_MSG_TO_FORWARD := null;',
'        :P4806_SENT_TO := null;',
'        ',
'    end if;',
'end;'))
,p_attribute_02=>'P4806_MSG_TO_FORWARD, P4806_SENT_TO'
,p_attribute_03=>'P4806_MSG_TO_FORWARD, P4806_SENT_TO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(677545095807783855)
,p_name=>'create_group'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(677522943986783789)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677545577271783855)
,p_event_id=>wwv_flow_imp.id(677545095807783855)
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
'    IF :P4806_RECIPIENT is not null then',
'    ',
'      l_group := APEX_UTIL.STRING_TO_TABLE(:P4806_UTILITY_RECIPIENT);     ',
'      ',
'        INSERT INTO APP_GLO_CHATGROUP (GROUP_NAME, GROUP_DESCRIPTION)',
'        values (:P4806_GROUP_NAME, :P4806_GROUP_DESCRIPTION)',
'        returning id into v_group_id;',
'',
'      ',
'      FOR i IN 1..l_group.COUNT',
'      LOOP',
'        ',
'        INSERT INTO APP_GLO_CHATGROUPMEMBERS (GROUP_ID, USER_NAME, USER_ID)',
'        SELECT v_group_id, user_name, user_ID',
'        FROM tbluser',
'        where user_name = l_group(I);',
'            ',
'      END LOOP;  ',
'',
'    begin',
'        INSERT INTO APP_GLO_CHATGROUPMEMBERS (GROUP_ID, USER_NAME, USER_ID)',
'        SELECT v_group_id, user_name, user_ID',
'        FROM tbluser',
'        where user_name =:APP_USER;',
'',
'    exception',
'        when others then null;',
'    end;  ',
'    ',
'        :P4806_UTILITY_RECIPIENT := null;',
'        :P4806_GROUP_NAME := null;',
'        :P4806_GROUP_DESCRIPTION := null;',
'',
'    end if;',
' ',
' exception',
'    when others then',
'        v_sqlcode := sqlcode;',
'        v_sqlerrm := sqlerrm;        ',
'       pkg_errorLogger.insert_err(v_sqlcode ,v_sqlerrm  ,''error occurred while executing the create chat group name '' ||:P4806_GROUP_NAME ,''CREATE_GROUP DYN ACTION'');   ',
'end;'))
,p_attribute_02=>'P4806_GROUP_NAME,P4806_GROUP_DESCRIPTION'
,p_attribute_03=>'P4806_GROUP_NAME,P4806_GROUP_DESCRIPTION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(677546038758783855)
,p_name=>'show_group'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4806_UTILITY_RECIPIENT'
,p_condition_element=>'P4806_UTILITY_RECIPIENT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677546489656783855)
,p_event_id=>wwv_flow_imp.id(677546038758783855)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(677522943986783789)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677546983212783856)
,p_event_id=>wwv_flow_imp.id(677546038758783855)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(677522943986783789)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(677547352964783856)
,p_name=>'refresh_attachment'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4806_RECIPIENT'
,p_condition_element=>'P4806_RECIPIENT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677547910764783857)
,p_event_id=>wwv_flow_imp.id(677547352964783856)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(839963067946486890)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(677548296528783857)
,p_name=>'update_seen'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4806_RECIPIENT'
,p_condition_element=>'P4806_RECIPIENT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677548825342783858)
,p_event_id=>wwv_flow_imp.id(677548296528783857)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    update APP_GLO_CHATRECIPIENTS a',
'    set comment_read= 1',
'    where USER_NAME = to_char(:APP_USER)',
'    and comment_read= 0',
'    and exists(select 1',
'          from APP_GLO_CHAT b',
'          where b.id = a.CHAT_ID',
'          and  USER_NAME = to_char(:P4806_RECIPIENT));',
'',
'    :CHAT_ICON_STATUS:= ''fa-comments'';',
'    -- update APP_GLO_CHATRECIPIENTS a',
'    -- set comment_read= 1',
'    -- where USER_NAME = :APP_USER',
'    -- and comment_read= 0',
'    -- AND  exists (select 1',
'    --                   from app_glo_chatgroup w join app_glo_chatgroupmembers X on w.id = x.group_id',
'    --                   where x.user_name = A.user_name',
'    --                   and TO_CHAR(w.id) =  :P4806_RECIPIENT',
'    --                   and x.user_name = :APP_USER',
'    --                   )',
'    --     and group_msg=1;',
'',
'end;'))
,p_attribute_02=>'P4806_RECIPIENT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(677550079164783859)
,p_name=>'refresh_image'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4806_ATTACH_TO_MSG'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677550553585783859)
,p_event_id=>wwv_flow_imp.id(677550079164783859)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(839963067946486890)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(677551042202783859)
,p_name=>'set_focus_entry'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4806_RECIPIENT'
,p_condition_element=>'P4806_RECIPIENT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677551493993783859)
,p_event_id=>wwv_flow_imp.id(677551042202783859)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4806_ENTRY'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(677551949663783859)
,p_name=>'show_upload_btn'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4806_UPLOAD'
,p_condition_element=>'P4806_UPLOAD'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677552418962783860)
,p_event_id=>wwv_flow_imp.id(677551949663783859)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(677527828373783804)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677552850568783860)
,p_event_id=>wwv_flow_imp.id(677551949663783859)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(677527828373783804)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(677554183931783861)
,p_name=>'delete_chat'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4806_MSG_TO_DELETE'
,p_condition_element=>'P4806_MSG_TO_DELETE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677554693692783861)
,p_event_id=>wwv_flow_imp.id(677554183931783861)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(677524647378783791)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677555217351783861)
,p_event_id=>wwv_flow_imp.id(677554183931783861)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(677524647378783791)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(677555645443783862)
,p_name=>'show_forward'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4806_SENT_TO'
,p_condition_element=>'P4806_SENT_TO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677556051363783862)
,p_event_id=>wwv_flow_imp.id(677555645443783862)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(677521132697783783)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677556562838783862)
,p_event_id=>wwv_flow_imp.id(677555645443783862)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(677521132697783783)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(677556985231783862)
,p_name=>'show_upload'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4806_ATTACH_TO_MSG'
,p_condition_element=>'P4806_ATTACH_TO_MSG'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677557474583783863)
,p_event_id=>wwv_flow_imp.id(677556985231783862)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4806_UPLOAD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677557984286783863)
,p_event_id=>wwv_flow_imp.id(677556985231783862)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4806_UPLOAD'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(677539995503783846)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'load attachment'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'',
'    l_files apex_t_varchar2;',
'BEGIN',
'    l_files := apex_string.split(:P4806_UPLOAD, '':'');',
'',
'    FOR i in 1..l_files.count LOOP',
'        for c1 in (select * from apex_application_temp_files where name = l_files(i)) loop',
'            begin',
'                INSERT INTO APP_GLO_CHATATTACHMENT (',
'                                                        chat_id,',
'                                                        CV_UPLOAD,',
'                                                        cv_filename,',
'                                                        cv_mimetype,',
'                                                        cv_last_update,',
'                                                        RECIPIENT,',
'                                                        chat_img_base64',
'                                                    ) ',
'',
'                VALUES (',
'                   TO_NUMBER(:P4806_ATTACH_TO_MSG),',
'                    c1.blob_content,',
'                    c1.filename,',
'                    c1.mime_type,',
'                    c1.created_on,',
'                    :P4806_RECIPIENT,',
'                    fn_base64encode( in_blob =>  c1.blob_content )',
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
,p_process_when_button_id=>wwv_flow_imp.id(677527828373783804)
,p_internal_uid=>34345445724175578
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(677538331284783841)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_EXECUTION_CHAIN'
,p_process_name=>'background_push'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'IGNORE'
,p_attribute_09=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>34343781505175573
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(677540362236783846)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'reset_msg_form'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    :P4806_LOCK_MSG:=0;',
'    :P4806_ENTRY := NULL;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(677532791401783810)
,p_internal_uid=>34345812457175578
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(677538744584783842)
,p_process_sequence=>10
,p_parent_process_id=>wwv_flow_imp.id(677538331284783841)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'send_push_notifications_chats'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FOR I IN (SELECT ''You have ''|| count (1) || '' new messages from '' ||lower( a.USER_NAME) v_msg_push, upper(b.USER_NAME) recipient',
'              FROM APP_GLO_CHAT a join APP_GLO_CHATRECIPIENTS b on a.id = b.chat_id  ',
'              where comment_read = 0',
'              AND push_sent = 0',
'              AND a.user_name = :APP_USER',
'              AND B.USER_NAME = :P4806_RECIPIENT',
'              and exists (select 1',
'                          from apex_appl_push_subscriptions sub',
'                          where trim(upper(sub.user_name)) = trim(upper(B.USER_NAME))',
'                          )',
'              GROUP BY a.USER_NAME, b.USER_NAME        ',
'              ) LOOP',
'',
'   ',
'',
'    IF i.v_msg_push IS NOT NULL THEN',
'        ',
'        apex_pwa.send_push_notification(',
'            p_application_id => :APP_ID,',
'            p_user_name      =>  I.recipient,',
'            p_title          => ''PeoplePay v10 Chat'',',
'            p_body           => i.v_msg_push',
'        );',
'',
'        UPDATE APP_GLO_CHATRECIPIENTS',
'        SET push_sent = 1',
'        WHERE upper(USER_NAME) = I.recipient',
'          AND push_sent = 0;',
'',
'    END IF;',
' END LOOP;',
'END;',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_imp.id(677532424865783810)
,p_internal_uid=>34344194805175574
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(677539059753783842)
,p_process_sequence=>50
,p_parent_process_id=>wwv_flow_imp.id(677538331284783841)
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'API'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_BACKGROUND_PROCESS'
,p_attribute_04=>'GET_CURRENT_EXECUTION'
,p_internal_uid=>34344509974175574
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(677539565879783845)
,p_page_process_id=>wwv_flow_imp.id(677539059753783842)
,p_page_id=>4806
,p_direction=>'OUT'
,p_data_type=>'apex_background_process.t_execution'
,p_display_sequence=>10
);
wwv_flow_imp.component_end;
end;
/
