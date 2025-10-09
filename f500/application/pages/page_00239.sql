prompt --application/pages/page_00239
begin
--   Manifest
--     PAGE: 00239
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
 p_id=>239
,p_name=>'frmSetupIntervIewQuestions'
,p_alias=>'FRMSETUPINTERVIEWQUESTIONS1'
,p_page_mode=>'MODAL'
,p_step_title=>'Generate Interview Details'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'600'
,p_dialog_width=>'850'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3871878392508232165)
,p_plug_name=>'Panel Changes (Switch/Deletions)'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4203513005505853647)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4546078290127097319)
,p_plug_name=>'Exist Panelist User'
,p_region_template_options=>'#DEFAULT#:t-Region--accent4:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct TBLUSER.user_id,  K.ID,first_name, last_name,initcap(RESPONSIBILITY_NAME)  RESPONSIBILITY_ID',
',TBLUSER.effective_from,TBLUSER.effective_to, user_name',
'FROM	 "TBLUSER" "TBLUSER" JOIN HR_RCM_EMPLOYEE K ON TBLUSER.EMPLOYEE_NO= K.ID',
' JOIN tbluserdetail b ON TBLUSER.user_id=b.user_id',
'join TBLRESPONSIBILITY x on x.RESPONSIBILITY_ID=b.RESPONSIBILITY_ID',
'where k.id in (SELECT to_number(a_field)',
'                        FROM xmltable(''/root/e/text()'' passing xmltype(''<root><e>''',
'                        || REPLACE(:P239_SELECT_PANEL_MEMBER,'':'',''</e><e>'')',
'                        || ''</e></root>'') columns a_field VARCHAR2(1000) path ''/'')',
'                        )',
'and upper(RESPONSIBILITY_NAME) like ''%INTERVIEW%'''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P239_SELECT_PANEL_MEMBER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Exist Panelist User'
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
 p_id=>wwv_flow_imp.id(4546078348695097320)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'RLANGFORD'
,p_internal_uid=>1768293888263826149
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3361174287488793956)
,p_db_column_name=>'USER_ID'
,p_display_order=>10
,p_column_identifier=>'F'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:1327:&SESSION.::&DEBUG.:1327:P1327_USER_ID:#USER_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3361174667452793956)
,p_db_column_name=>'ID'
,p_display_order=>20
,p_column_identifier=>'G'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3853988260722144141)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3361172368947793953)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>30
,p_column_identifier=>'A'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3361172668304793953)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>40
,p_column_identifier=>'B'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3361173160118793954)
,p_db_column_name=>'RESPONSIBILITY_ID'
,p_display_order=>50
,p_column_identifier=>'C'
,p_column_label=>'User Role'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3361173515972793954)
,p_db_column_name=>'EFFECTIVE_FROM'
,p_display_order=>60
,p_column_identifier=>'D'
,p_column_label=>'Effective From'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3361173874661793955)
,p_db_column_name=>'EFFECTIVE_TO'
,p_display_order=>70
,p_column_identifier=>'E'
,p_column_label=>'Effective To'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3361172022748793951)
,p_db_column_name=>'USER_NAME'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'User Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4547733244788419694)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'5833906'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:USER_ID:USER_NAME:RESPONSIBILITY_ID:FIRST_NAME:LAST_NAME:EFFECTIVE_TO:EFFECTIVE_FROM:'
,p_break_on=>'ID:0:0:0:0:0'
,p_break_enabled_on=>'ID:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5853635190489535068)
,p_plug_name=>'Generate Interviewees With Questions'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6263595539345336363)
,p_plug_name=>'Panel Selected'
,p_parent_plug_id=>wwv_flow_imp.id(5853635190489535068)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6723309337092637025)
,p_plug_name=>'Select Question Categories to ask...'
,p_parent_plug_id=>wwv_flow_imp.id(5853635190489535068)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
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
 p_id=>wwv_flow_imp.id(3361175526216793960)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4546078290127097319)
,p_button_name=>'MAKE_PANEL_USER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Make User'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3361176191410793961)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5853635190489535068)
,p_button_name=>'GENERATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add Panelist'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3361168358562793940)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3871878392508232165)
,p_button_name=>'DELETE_PANELIST'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete Panelist'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3361167884619793938)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3871878392508232165)
,p_button_name=>'SWITCH_PANELIST'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Switch Panelist'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3361168684785793940)
,p_name=>'P239_INTERVIEW_SESSION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3871878392508232165)
,p_use_cache_before_default=>'NO'
,p_prompt=>'interview Sessions'
,p_source=>'INTERVIEW_PANEL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  a.label, inv.id',
'from HR_INV_SESSION inv join VW_APPLICANTS_ALL a on a.id =inv.ind_id',
'where inv.INTERVIEW_id =:P239_INTERVIEW_ID',
'and pkg_global_fnts.status_descript(inv.status) =''KEYED'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_lov_cascade_parent_items=>'P239_INTERVIEW_ID'
,p_ajax_optimize_refresh=>'Y'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'The interview Session for each applicant. Only interviews that are keyed will be there.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3361169654767793942)
,p_name=>'P239_EXIST_PANELIST'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3871878392508232165)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Existing Panelist'
,p_source=>'INTERVIEW_PANEL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.employee||''(No.''||a.EMP_COMPANY_NO||'')'' employee, a.id',
'from vw_availemployee a join VW_EMPLOYEE b  on a.id=b.id',
'where b.Date_Separated is null ',
'and exists (select 1',
'            from HR_INV_RESPONSE_DTL c join HR_INV_SESSION inv on inv.id = c.inv_session_id',
'            where interviewer = a.id',
'            and interviewer not in (select distinct interviewer from HR_INV_RESPONSE_DTL Y where rating > 0 and y.inv_session_id = inv.id)',
'            and  INV.ID  in (SELECT to_number(a_field)',
'                                    FROM xmltable(''/root/e/text()'' passing xmltype(''<root><e>''',
'                                    || REPLACE(:P239_INTERVIEW_SESSION,'':'',''</e><e>'')',
'                                    || ''</e></root>'') columns a_field VARCHAR2(1000) path ''/'')',
'                                    )   ',
'            )'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_lov_cascade_parent_items=>'P239_INTERVIEW_SESSION'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Panelist who have not scored any of there questions can be replaced or deleted.'
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
 p_id=>wwv_flow_imp.id(3361170461622793943)
,p_name=>'P239_SWITCH_TO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3871878392508232165)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Switch To'
,p_source=>'LEAD_INTERVIEWER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.employee||''(No.''||a.EMP_COMPANY_NO||'')'' employee, a.id',
'from vw_availemployee a join VW_EMPLOYEE b  on a.id=b.id',
'where b.Date_Separated is null ',
'and b.id !=:P239_EXIST_PANELIST',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P239_EXIST_PANELIST'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_help_text=>'The new panelist that will replace the one above.'
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
 p_id=>wwv_flow_imp.id(3361176623320793962)
,p_name=>'P239_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5853635190489535068)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3361176970322793963)
,p_name=>'P239_INTERVIEW_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5853635190489535068)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3361177707432793964)
,p_name=>'P239_SELECT_PANEL_MEMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6263595539345336363)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Panel Members'
,p_source=>'INTERVIEW_PANEL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.employee||''(No.''||a.EMP_COMPANY_NO||'')'' employee, a.id',
'from vw_availemployee a join VW_EMPLOYEE b  on a.id=b.id',
'where b.Date_Separated is null ',
'order by employee'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Select to populate the panel. Check the Panel as Users tab to see how many panelist are users. Click Make Panel User button to users from the panel. User accounts will be create in format first letter of first name appended to entire surname appended'
||' to employee number. E.g Richard Langford with Employee Number 8743200 will be Rlangford8743200. All new users password will be Password@123. Note Capital ''P''.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_06', 'Y',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3361178609449793967)
,p_name=>'P239_LEAD_INTERVIEWER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(6263595539345336363)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Lead Interviewer'
,p_source=>'LEAD_INTERVIEWER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    check_existing_panalist number(5):=0;',
'',
'begin ',
'    select count(1) into check_existing_panalist',
'    from HR_INV_RESPONSE_DTL c join HR_INV_SESSION inv on inv.id = c.inv_session_id',
'    where inv.INTERVIEW_id =:P239_INTERVIEW_ID;',
'',
'if check_existing_panalist > 0 then',
'',
'return     ''select a.employee||''''(No.''''||a.EMP_COMPANY_NO||'''')'''' employee, LEAD_INTERVIEWER',
'            FROM  hr_inv_interviewdtl b join vw_availemployee a on a.id = b.LEAD_INTERVIEWER',
'            where INTERVIEW_ID =:P239_INTERVIEW_ID',
'            and rownum=1'';',
'else',
'',
'return     ',
'           ''select a.employee||''''(No.''''||a.EMP_COMPANY_NO||'''')'''' employee, a.id',
'            from vw_availemployee a join VW_EMPLOYEE b  on a.id=b.id',
'            where b.Date_Separated is null ',
'            and b.id !=nvl(:P239_EMP_ID,1)',
'            and a.id in (SELECT to_number(a_field)',
'                                    FROM xmltable(''''/root/e/text()'''' passing xmltype(''''<root><e>''''',
'                                    || REPLACE(:P239_SELECT_PANEL_MEMBER,'''':'''',''''</e><e>'''')',
'                                    || ''''</e></root>'''') columns a_field VARCHAR2(1000) path ''''/'''')',
'                                    )'';',
'end if;',
'',
'end;'))
,p_lov_cascade_parent_items=>'P239_SELECT_PANEL_MEMBER'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
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
 p_id=>wwv_flow_imp.id(3361178990381793968)
,p_name=>'P239_POSITION_CONFIG_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(6263595539345336363)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3361179699493793968)
,p_name=>'P239_FACTOR'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(6723309337092637025)
,p_prompt=>'Factor'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Initcap(QUESTION_CLASSIFICATION||'' (Questions:-''||(Select To_Char(Count(1) )',
'                                                      From Hr_Inv_jobquestion B ',
'                                                      where b.job_FACTORS_ID=a.ID)||'')'') QUESTIONS,a.id',
'From Hr_Inv_jobconfigpfactors A ',
'where job_CONFIG_ID = :P239_POSITION_CONFIG_ID',
'And A.End_Date Is Null Or  A.End_Date > current_date',
'order by 1',
'',
''))
,p_lov_cascade_parent_items=>'P239_POSITION_CONFIG_ID'
,p_ajax_items_to_submit=>'P239_POSITION_CONFIG_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>10
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_controls', 'ALL')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3361181748686793973)
,p_name=>'set_value_questions'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P239_INTERVIEW_ID'
,p_condition_element=>'P239_INTERVIEW_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3361182245985793974)
,p_event_id=>wwv_flow_imp.id(3361181748686793973)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P239_POSITION_CONFIG_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select POSITION_CONFIG_ID',
'from HR_INV_INTERVIEW b ',
'where ID= :P239_INTERVIEW_ID'))
,p_attribute_07=>'P239_INTERVIEW_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3361182567745793975)
,p_name=>'show_btn'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P239_SELECT_PANEL_MEMBER'
,p_condition_element=>'P239_SELECT_PANEL_MEMBER'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3361183099446793975)
,p_event_id=>wwv_flow_imp.id(3361182567745793975)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3361175526216793960)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3361183616436793976)
,p_event_id=>wwv_flow_imp.id(3361182567745793975)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3361175526216793960)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3361184057280793976)
,p_name=>'make_panel_user'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P239_COUNTER'
,p_condition_element=>'P239_COUNTER'
,p_triggering_condition_type=>'GREATER_THAN'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3361184487038793976)
,p_event_id=>wwv_flow_imp.id(3361184057280793976)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3361175526216793960)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3361185013472793977)
,p_event_id=>wwv_flow_imp.id(3361184057280793976)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3361175526216793960)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3361185420493793977)
,p_name=>'show_btn_quest'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P239_FACTOR'
,p_condition_element=>'P239_FACTOR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3361185918586793978)
,p_event_id=>wwv_flow_imp.id(3361185420493793977)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3361176191410793961)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3361186377324793978)
,p_event_id=>wwv_flow_imp.id(3361185420493793977)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3361176191410793961)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3361186769512793978)
,p_name=>'refrest_users'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P239_SELECT_PANEL_MEMBER'
,p_condition_element=>'P239_SELECT_PANEL_MEMBER'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3361187298634793979)
,p_event_id=>wwv_flow_imp.id(3361186769512793978)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4546078290127097319)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3361187676875793979)
,p_name=>'show_switch_btn'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P239_SWITCH_TO'
,p_condition_element=>'P239_EXIST_PANELIST'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3361188234547793980)
,p_event_id=>wwv_flow_imp.id(3361187676875793979)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3361167884619793938)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3361188750751793980)
,p_event_id=>wwv_flow_imp.id(3361187676875793979)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3361167884619793938)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3361189088673793980)
,p_name=>'show_delete'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P239_EXIST_PANELIST'
,p_condition_element=>'P239_EXIST_PANELIST'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3361189626294793981)
,p_event_id=>wwv_flow_imp.id(3361189088673793980)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3361168358562793940)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3361190146552793981)
,p_event_id=>wwv_flow_imp.id(3361189088673793980)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3361168358562793940)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3361190634630793982)
,p_event_id=>wwv_flow_imp.id(3361189088673793980)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3361167884619793938)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3361180528395793971)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'populate_interviewees_questions'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'---generate open questions for all interviewers',
'declare',
'        v_sqlcode varchar2(25); ',
'        v_sqlerrm varchar2(2000);',
'        l_selected APEX_APPLICATION_GLOBAL.VC_ARR2; V_PANEL_ID VARCHAR2(200); v_count number:=0;',
'        PQ_selected APEX_APPLICATION_GLOBAL.VC_ARR2;   V_PANEL_DETAIL VARCHAR2(1500);',
' ',
' begin       ',
'   IF :P239_FACTOR is not null and :P239_SELECT_PANEL_MEMBER is not null then         ',
'     for I in (               ',
'                select interview_session_name, a.position_config_id, b.emp_id, lead_interviewer, interview_datetime, a.org_id, a.jobopening_id, b.ind_id, applicant_type, interview_id, pkg_global_fnts.status_id(''KEYED'', 2011 , transaction_type_id) sta'
||'tus',
'                from hr_inv_interview a join hr_inv_interviewdtl b on a.id =b.interview_id',
'                where a.id= :P239_INTERVIEW_ID',
'                ) loop',
'',
'        begin',
'                INSERT INTO hr_inv_session ( transaction_type_id, status, interview_session_name, INTERVIEW_PANEL, position_config_id, emp_id, lead_interviewer, date_interviewed, org_id, jobopening_id, ind_id, applicant_type, interview_id)',
'                values (110, i.status, i.interview_session_name, :P239_SELECT_PANEL_MEMBER, i.position_config_id, i.emp_id, i.lead_interviewer, i.interview_datetime, i.org_id, i.jobopening_id, i.ind_id, i.applicant_type, i.interview_id);',
'                ',
'        exception       ',
'            when others then ',
'                v_sqlcode := sqlcode;',
'                v_sqlerrm := sqlerrm;        ',
'                PKG_BIZ_RULES.LOG_MESSAGE(V_SQLCODE ,V_SQLERRM  ,''error occured while populating interviewees for interviews.'' ,''Question Bank:-''||i.position_config_id||'' Job Opening:''||i.jobopening_id);           ',
'',
'        end;',
'    end loop;',
'',
'   commit;',
'    ',
'    --***populates the questions    ',
'     ',
'          l_selected := APEX_UTIL.STRING_TO_TABLE(:P239_FACTOR);',
'          PQ_selected := APEX_UTIL.STRING_TO_TABLE(:P239_SELECT_PANEL_MEMBER);',
'        ',
'          for W in (select id, pkg_global_fnts.status_descript(status) status from hr_inv_session where INTERVIEW_ID = :P239_INTERVIEW_ID  )loop',
'          begin',
'',
'          if w.status =''KEYED'' then',
'',
'              FOR i IN 1..l_selected.COUNT',
'              LOOP',
'                    for J in 1..PQ_selected.count loop',
'            ',
'                        PKG_GENERATORS.sp_popInvQuestions( l_selected(i), PQ_selected(j), w.id) ;            ',
'            ',
'                    END LOOP;  ',
'             end loop;',
'             ',
'          end if;    ',
'         exception',
'            when others then ',
'                    v_sqlcode := sqlcode;',
'                    v_sqlerrm := sqlerrm;        ',
'                    PKG_BIZ_RULES.LOG_MESSAGE(V_SQLCODE ,V_SQLERRM  ,''error occured while populating questions for interviewees.'' ,''POPULATE QUESTIONS'');           ',
'        end;',
'          end loop;',
'',
'',
'--***populates panel detail     ',
'        pkg_generators.sp_MaintainPanelRecord(:P239_INTERVIEW_ID);',
'      ',
'  end if;',
'             :P239_FACTOR := null;',
'             :P239_SELECT_PANEL_MEMBER  := null;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3361176191410793961)
,p_process_success_message=>'System successfully generated the interviewees and questions to be asked.'
,p_internal_uid=>2717985978616185703
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3361180114224793969)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'create_panel_users'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_user_id number;   v_sqlcode varchar2(25); V_SQLERRM varchar2(2000);',
'    PQ_selected APEX_APPLICATION_GLOBAL.VC_ARR2; v_count number(5):=0;',
'    ',
'begin',
'            PQ_selected := APEX_UTIL.STRING_TO_TABLE(:P239_SELECT_PANEL_MEMBER);',
'            ',
'        for J in 1..PQ_selected.count loop',
'            begin',
'                select max(user_id), user_id into v_count, v_user_id from tbluser where Employee_No =PQ_selected(J) group by user_id;',
'            Exception',
'                    when others then null;',
'                    v_count :=0;',
'            end;',
'',
'        if v_count =0 then',
'        ',
'            For I in (select b.id emp_id, email, emp_company_no, surname, first_name, inv.date_interviewed from hr_rcm_individual a join hr_rcm_employee b on a.id =b.ind_id',
'                         cross join (select date_interviewed from hr_inv_session w join hr_inv_interview x on x.id = w.INTERVIEW_ID where x.id= :P239_INTERVIEW_ID) Inv',
'                         where b.id = PQ_selected(J)',
'                         and email is not null',
'                         and not exists (select 1',
'                                         from tbluser',
'                                         where tbluser.Employee_No = b.id )',
'                     ) loop',
'            ',
'                 ',
'            begin',
'                INSERT INTO tbluser ( Employee_No, user_name, email, can_forward,  forward_default_only, effective_from, ',
'                                   first_name,  last_name,  authentication_scheme, load_home, password)',
'                values(i.emp_id, i.email, i.email, ''Y'', ''Y'',  trunc(i.date_interviewed),  i.first_name, i.surname, ''SHA256'', 1, ''Password@123'')',
'                returning user_ID into v_user_id;',
'            ',
'                ',
'                if sql%rowcount > 0 then',
'                ',
'                   INSERT INTO tbluserdetail (responsibility_id, effective_from, user_id, remarks, org_id)',
'                   select responsibility_id,  trunc(i.date_interviewed) , v_user_id, ''User account auto created by ''||:APP_USER||'' for the Online Interviewer.'', :APP_ORG_ID',
'                   from tblresponsibility',
'                   where responsibility_name =''ONLINE INTERVIEWER'';',
'                    ',
'                end if;',
'            Exception',
'                when others then',
'                    v_sqlcode := sqlcode;',
'                    v_sqlerrm := sqlerrm;        ',
'                    pkg_biz_rules.log_message(v_sqlcode ,v_sqlerrm  ,''error occured while executing make Interviewer'' ,''make_Interview_user'', null);           ',
'',
'            end;',
'        end loop;',
'        else',
'            begin',
'                  INSERT INTO tbluserdetail (responsibility_id, effective_from, user_id, remarks, org_id)',
'                  select responsibility_id,  trunc(current_date) , v_user_id, ''User account auto created by ''||:APP_USER||'' for the Online Interviewer.'', :APP_ORG_ID',
'                   from tblresponsibility',
'                   where responsibility_name =''ONLINE INTERVIEWER'';',
'            ',
'             Exception',
'                when others then',
'                    v_sqlcode := sqlcode;',
'                    v_sqlerrm := sqlerrm;        ',
'                    pkg_biz_rules.log_message(v_sqlcode ,v_sqlerrm  ,''error occured while adding Online Interviewer role already existsed'' ,''make_Interview_user'', null);           ',
'            end;',
'        end if;',
'    end loop;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3361175526216793960)
,p_process_success_message=>'Interviewe user account has been created with user name being the email address of the panalist with Password:- Password@123'
,p_internal_uid=>2717985564445185701
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3361180950175793972)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'delete_panelist'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    ',
' begin',
'    for I in (select c.id    ',
'            from HR_INV_RESPONSE_DTL c join HR_INV_SESSION inv on inv.id = c.inv_session_id',
'            where interviewer = :P239_EXIST_PANELIST',
'            and pkg_global_fnts.status_descript(inv.status) =''KEYED'' ',
'            and INTERVIEW_ID = :P239_INTERVIEW_ID',
'            AND INV.ID  in (SELECT to_number(a_field)',
'                                    FROM xmltable(''/root/e/text()'' passing xmltype(''<root><e>''',
'                                    || REPLACE(:P239_INTERVIEW_SESSION,'':'',''</e><e>'')',
'                                    || ''</e></root>'') columns a_field VARCHAR2(1000) path ''/'')',
'                                    )            ',
'            ',
'            ) loop',
'',
'            delete',
'            from HR_INV_RESPONSE_DTL',
'            where id = i.id;',
'    end loop;',
'',
'     pkg_generators.sp_MaintainPanelRecord(:P239_INTERVIEW_ID);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3361168358562793940)
,p_internal_uid=>2717986400396185704
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3361181262203793972)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Switch_panelist'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    ',
' begin',
'    for I in (select c.id    ',
'            from HR_INV_RESPONSE_DTL c join HR_INV_SESSION inv on inv.id = c.inv_session_id',
'            where interviewer = :P239_EXIST_PANELIST',
'            and pkg_global_fnts.status_descript(inv.status) =''KEYED'' ',
'            and INTERVIEW_ID = :P239_INTERVIEW_ID',
'            AND INV.ID  in (SELECT to_number(a_field)',
'                                    FROM xmltable(''/root/e/text()'' passing xmltype(''<root><e>''',
'                                    || REPLACE(:P239_INTERVIEW_SESSION,'':'',''</e><e>'')',
'                                    || ''</e></root>'') columns a_field VARCHAR2(1000) path ''/'')',
'                                    )            ',
'            ',
'            ) loop',
'',
'            update HR_INV_RESPONSE_DTL',
'            set interviewer = :P239_SWITCH_TO',
'            where id = i.id;',
'    end loop;',
'',
'     pkg_generators.sp_MaintainPanelRecord(:P239_INTERVIEW_ID);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3361167884619793938)
,p_internal_uid=>2717986712424185704
);
wwv_flow_imp.component_end;
end;
/
