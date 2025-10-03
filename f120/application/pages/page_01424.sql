prompt --application/pages/page_01424
begin
--   Manifest
--     PAGE: 01424
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
 p_id=>1424
,p_name=>'frmOffenceHistoryEmp'
,p_step_title=>'Create/Edit Employee Offence Details'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3603893479523389715)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'img {',
'    border-radius: 50%;',
'}'))
,p_step_template=>2526646919027767344
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3585334160394360204)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3538415192671606522)
,p_plug_name=>'Second Section'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
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
 p_id=>wwv_flow_imp.id(3538415401329609025)
,p_plug_name=>'First Section'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
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
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3538422106221746259)
,p_name=>'Audit'
,p_template=>2664334895415463485
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  to_char(entry_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||entered_by entered,',
'  to_char(last_changed_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||last_changed_by last_changed,',
'  to_char(verified_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||verified_by verified,',
'  machine_insert,',
'  machine_update,',
'  apex_util.get_since(last_changed_date) updated',
'from  HR_GRI_DISCIPLINEEMP',
'where  id = :P1424_ID'))
,p_display_when_condition=>'P1424_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1424_ID'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(365313851347982086)
,p_query_column_id=>1
,p_column_alias=>'ENTERED'
,p_column_display_sequence=>10
,p_column_heading=>'Entered'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(365313890549982087)
,p_query_column_id=>2
,p_column_alias=>'LAST_CHANGED'
,p_column_display_sequence=>20
,p_column_heading=>'Last Changed'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(365314014793982088)
,p_query_column_id=>3
,p_column_alias=>'VERIFIED'
,p_column_display_sequence=>30
,p_column_heading=>'Verified'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(365314095110982089)
,p_query_column_id=>4
,p_column_alias=>'MACHINE_INSERT'
,p_column_display_sequence=>40
,p_column_heading=>'Machine Insert'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(365314187797982090)
,p_query_column_id=>5
,p_column_alias=>'MACHINE_UPDATE'
,p_column_display_sequence=>50
,p_column_heading=>'Machine Update'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(365314333628982091)
,p_query_column_id=>6
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>60
,p_column_heading=>'Updated'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3538429388229847603)
,p_plug_name=>'Create/Edit Employee Offence History Details'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3633896972104135237)
,p_plug_name=>'Buttons Container'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3574988934693072367)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3961978642629028636)
,p_plug_name=>'Photograph'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3763625189585052549)
,p_plug_name=>'<b> Bio Data </b>'
,p_parent_plug_id=>wwv_flow_imp.id(3961978642629028636)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'',
'   Cursor c_Emp Is',
'     select 1 order_num, ''Age:'' label, to_char(PKG_GLOBAL_FNTS.fn_calcage(dob,current_date))||'' (''||dob||'')''  label_value',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1424_EMP_ID',
'       union',
'     select 2 order_num, ''Years Service:'' label, to_char(PKG_GLOBAL_FNTS.fn_calcage(date_employed,nvl(date_separated,current_date)) )||'' (''||date_employed||'')''  label_value',
'     from hr_rcm_employee b ',
'     where b.id=:P1424_EMP_ID',
'       union',
'    select 3 order_num, ''Position:'' label, to_char(c.a) label_value',
'    from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id ',
'    join vw_position_full c on c.b=b.position_id',
'    where b.id=:P1424_EMP_ID',
'       union',
'      select 4 order_num, ''Address:'' label,  pkg_global_fnts.fn_Address(''HOME'', a.id, ''FULL'',TRUNC(current_date)) label_value  ',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1424_EMP_ID',
'         union',
'     select 5 order_num, ''Cell:'' label,   to_char(cell_phone) label_value',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1424_EMP_ID',
'         union',
'     select 6 order_num, ''Email:'' label,   to_char(email) label_value    ',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1424_EMP_ID',
'         union',
'     select 7 order_num, ''Marital Status:'' label,   to_char(marital_code) label_value    ',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1424_EMP_ID',
'          union',
'     select 8 order_num, ''No. of Kids:'' label,   to_char(no_of_children) label_value    ',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1424_EMP_ID',
'         union',
'     select 9 order_num, ''Nationality:'' label,   to_char(nationality) label_value',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1424_EMP_ID',
'       union',
'     select 10 order_num, ''Past Employer:'' label,    max(pkg_global_fnts.fn_getlastemployer (a.id, extract(year from current_date))) label_value',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1424_EMP_ID',
'            union',
'     select 11 order_num, ''National IDs:'' label,   ',
'    (SELECT ',
'    LISTAGG(ID_TYPE||'':-''||ID_NUMBER, ''; '') WITHIN GROUP (ORDER BY issue_date desc) label_value',
'    FROM hr_rcm_natidentifier',
'    where ind_id=a.id',
'    and end_date is null',
'    ) label_value',
'    from hr_rcm_individual a join hr_rcm_employee emp on a.id = emp.ind_id',
'    where emp.id=:P1424_EMP_ID',
'    union',
'    select 12 order_num, ''Work Stints:'' label,  to_char(count(1))label_value',
'    from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'    where b.id=:P1424_EMP_ID',
'     union',
'    select 13 order_num, ''Gender:'' label,  case when sex_code=''M'' then ''Male'' ',
'                                                when sex_code=''F'' then ''Female''',
'                                                when sex_code=''C'' then ''Common''',
'                                                else ''Neuter''       end label_value',
'    from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'    where b.id=:P1424_EMP_ID',
'    union',
'    select 14 order_num, ''Contact Numbers:'' label,   ',
'    (SELECT ',
'    LISTAGG(initcap(relation)||'': ''||cell_phone, ''; '') WITHIN GROUP (ORDER BY ind_id desc) label_value',
'    FROM HR_RCM_RELATIVESFRD rel join hr_rcm_individual ind on ind.id =related_to',
'    where ind_id=a.id',
'    and cell_phone is not null',
'    ) label_value',
'    from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'    where b.id=:P1424_EMP_ID',
'    union',
'    select 15 order_num, ''High Qualification:'' label,   ',
'    (SELECT ',
'    LISTAGG(Q_LEVEL, ''; '') WITHIN GROUP (ORDER BY Q_WEIGHT desc) label_value',
'    FROM HR_RCM_QUALIFICATION',
'    where ind_id=a.id',
'    and rownum=1)label_value',
'    from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'    where b.id=:P1424_EMP_ID',
'     order by order_num ;',
'    ',
'     ',
'',
'Begin  ',
'   ',
'   for a in c_Emp loop',
'    sys.htp.p(''<b>'' || a.label || ''</b>'' );',
'    sys.htp.p( a.label_value ) ;',
'     sys.htp.p(''<p>''||''''||''</p>'');',
'   end loop;',
'    ',
'End;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3619118740093316554)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3763625189585052549)
,p_button_name=>'VIEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'View'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:RP,1281:P1281_ID,P1281_NAVIGATOR:&P1424_EMP_ID.,1424'
,p_security_scheme=>wwv_flow_imp.id(3585334160394360204)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3630313703525589583)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3633896972104135237)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1423:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3630313345577589582)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3633896972104135237)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>'P1424_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335384393360204)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3630312916768589581)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3633896972104135237)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1424_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335069773360204)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3630312532997589581)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3633896972104135237)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1424_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3630312129057589580)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3633896972104135237)
,p_button_name=>'GET_PREVIOUS_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Previous'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_PREVIOUS_ID'')'
,p_button_condition=>'P1424_ID_PREV'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3630311722623589580)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(3633896972104135237)
,p_button_name=>'GET_NEXT_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Next'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_NEXT_ID'')'
,p_button_condition=>'P1424_ID_NEXT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3630311282381589578)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(3633896972104135237)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create Again'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1424_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3630310947498589578)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(3633896972104135237)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1424:&SESSION.::&DEBUG.:1424:P1424_OFFENCE_ID,P1424_OFFENCE_DATE:&P1424_OFFENCE_ID.,&P1424_OFFENCE_DATE.'
,p_button_condition=>'P1424_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3630310498351589578)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(3633896972104135237)
,p_button_name=>'ADD_FILE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Attach File'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1424_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3630285183781589530)
,p_branch_name=>'CREATE_AGAIN'
,p_branch_action=>'f?p=&APP_ID.:1424:&SESSION.::&DEBUG.:1424:P1424_OFFENCE_DATE:&P1424_OFFENCE_DATE.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3630311282381589578)
,p_branch_sequence=>2
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3630285645262589532)
,p_branch_name=>'delete_branch'
,p_branch_action=>'f?p=&APP_ID.:1423:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3630313345577589582)
,p_branch_sequence=>3
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3630287608960589532)
,p_branch_name=>'doc_man'
,p_branch_action=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:129:P129_MODULE,P129_FORM_NAME,P129_TABLE_KEY,P129_MEDIA_EMP_ID,P129_RETURN_VALUE:5,FRMOFFENCEHISTORYEMP,&P1424_ID.,&P1424_EMP_ID.,1424'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3630310498351589578)
,p_branch_sequence=>10
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Id',
'From Media_Head',
'Where Form_Id=:APP_PAGE_ID',
'and TABLE_KEY=:P1424_ID'))
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3630287174586589532)
,p_branch_name=>'doc_man_view'
,p_branch_action=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:129:P129_ID,P129_RETURN_VALUE:&P1424_DOC_EXIST.,1424'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3630310498351589578)
,p_branch_sequence=>21
,p_branch_condition_type=>'EXISTS'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Id',
'From Media_Head',
'Where Form_Id=:APP_PAGE_ID',
'and TABLE_KEY=:P1424_ID'))
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3630286833159589532)
,p_branch_action=>'f?p=&APP_ID.:1424:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>31
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3630286064388589532)
,p_branch_action=>'f?p=&APP_ID.:1424:&SESSION.::&DEBUG.::P1424_ID:&P1424_ID_PREV.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3630312129057589580)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3630286395051589532)
,p_branch_action=>'f?p=&APP_ID.:1424:&SESSION.::&DEBUG.::P1424_ID:&P1424_ID_NEXT.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3630311722623589580)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3483191052481410118)
,p_name=>'P1424_OFFENCE_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3538429388229847603)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select offence_date',
'from hr_gri_disciplineemp a join hr_gri_discipline b on b.id = a.discipline_id',
'where a.ID = :P1424_ID'))
,p_item_default_type=>'SQL_QUERY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select offence_date',
'from hr_gri_disciplineemp a join hr_gri_discipline b on b.id = a.discipline_id',
'where a.ID = :P1424_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3484282889521609326)
,p_name=>'P1424_ORG_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3538429388229847603)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_ORG_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3484282949751609327)
,p_name=>'P1424_EMPLOYMENT_CLASS_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3538429388229847603)
,p_use_cache_before_default=>'NO'
,p_source=>'EMPLOYMENT_CLASS_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3484283152406609329)
,p_name=>'P1424_PAYMENT_TYPE_HIST'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3538429388229847603)
,p_use_cache_before_default=>'NO'
,p_source=>'PAYMENT_TYPE_HIST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3484283407863609332)
,p_name=>'P1424_PAYMENT_TYPE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3538429388229847603)
,p_use_cache_before_default=>'NO'
,p_source=>'PAYMENT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3542475799269840794)
,p_name=>'P1424_PAY_STATUS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3538415192671606522)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pay Status'
,p_source=>'PAY_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3543810358248083944)
,p_name=>'P1424_EXPENSE_CODE_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3538415192671606522)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Expense Code'
,p_source=>'EXPENSE_CODE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select description, id',
'        from pa_pcf_deductioncode v',
'        where org_id=:APP_ORG_SHR_DED',
'        order by 1;',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3543818705716457117)
,p_name=>'P1424_EARNINGS_PERIOD_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3538415192671606522)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Earnings Period'
,p_source=>'EARNINGS_PERIOD_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P1424_ID IS NULL THEN',
'return ',
'        ''select earn_description,id',
'        from VW_EARNNOTPAID a',
'        where exists (select 1',
'                      from hr_rcm_employee x',
'                      where x.org_id=a.org_id',
'                      and x.employment_class_id=a.employment_class_id',
'                      and x.payment_type=a.payment_type',
'                      and x.compute_gross = a.compute_gross',
'                      and x.id = :P1424_EMP_ID',
'                      )'';',
'',
'else',
'',
'return ',
'        ''select earn_description,id',
'        from VW_EARNALL a',
'        where exists (select 1',
'                      from hr_rcm_employee x',
'                      where x.org_id=a.org_id',
'                      and x.employment_class_id=a.employment_class_id',
'                      and x.payment_type=a.payment_type',
'                       and x.compute_gross = a.compute_gross',
'                      and x.id = :P1424_EMP_ID',
'                      )'';',
'',
'end if;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_lov_cascade_parent_items=>'P1417_ID,P1424_EMP_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3543819021450459705)
,p_name=>'P1424_AFFECT_SALARY'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3538415192671606522)
,p_use_cache_before_default=>'NO'
,p_item_default=>'NONE'
,p_prompt=>'Affect Salary'
,p_source=>'AFFECT_SALARY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:DEDUCTION;DEDUCTION,NONE;NONE'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3543819275097463360)
,p_name=>'P1424_DISCIPLINE_VALUE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3538415192671606522)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Dollar Value'
,p_format_mask=>'FML999G999G999G999G990'
,p_source=>'DISCIPLINE_VALUE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3572273605789224166)
,p_name=>'P1424_PHOTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3961978642629028636)
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_tag_css_classes=>'img'
,p_tag_attributes=>'style="width:100%" onchange="htmldb_item_change(this)"'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'SQL',
  'sql_statement', wwv_flow_string.join(wwv_flow_t_varchar2(
    'SELECT PHOTO',
    'FROM HR_RCM_INDIVIDUAL a join hr_rcm_employee b on a.id=b.ind_id',
    'where exists (select 1',
    '              from hr_gri_disciplineemp C ',
    '              where  C.EMP_ID=B.ID',
    '              and c.id=:P1424_ID)')))).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3624648067460237779)
,p_name=>'P1424_COMENT_SWITCH'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3538415192671606522)
,p_item_default=>'0'
,p_prompt=>'Add Workflow Notes'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3624648369627239780)
,p_name=>'P1424_WORK_FLOW_COMMENT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3538415192671606522)
,p_prompt=>'<font color="purple" size="2"><b>  Work Flow Notes</b> </font>'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>2000
,p_cHeight=>1
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'Y',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630294231056589543)
,p_name=>'P1424_OFFENCE_ID_H'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3538429388229847603)
,p_use_cache_before_default=>'NO'
,p_item_default=>'P1424_OFFENCE_ID'
,p_item_default_type=>'ITEM'
,p_source=>'&P1424_OFFENCE_ID.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630297665022589559)
,p_name=>'P1424_ID_COUNT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3538415192671606522)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630298004755589559)
,p_name=>'P1424_REPORT_DETAILS_OF_SENTEN'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3538415192671606522)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Report Details Of Sentence'
,p_source=>'REPORT_DETAILS_OF_SENTENSE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'blob_last_updated_column', 'LAST_UPDATE_SENTENCE_DTL',
  'character_set_column', 'REPORT_DETAILS_OF_SENTENSE',
  'content_disposition', 'attachment',
  'display_as', 'INLINE',
  'display_download_link', 'Y',
  'filename_column', 'FILENAME',
  'mime_type_column', 'MIMETYPE',
  'storage_type', 'DB_COLUMN')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630298381464589559)
,p_name=>'P1424_REMARKS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3538415192671606522)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Remarks'
,p_source=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>55
,p_cMaxlength=>2000
,p_cHeight=>5
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630298790844589559)
,p_name=>'P1424_DETAILS_OF_SENTENSE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3538415192671606522)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Details Of Sentence'
,p_source=>'DETAILS_OF_SENTENSE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>55
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630299564706589560)
,p_name=>'P1424_ID_PREV'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3538415401329609025)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630299919099589562)
,p_name=>'P1424_ID_NEXT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3538415401329609025)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630300357890589562)
,p_name=>'P1424_STATUS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3538415401329609025)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Wfl_Status_Description,Wfl_Status_Id',
'from TBLWORKFLOWSTATUS a Join Tblworkflowdtl D On D.Id=A.Workflow_Dtl_Id',
'where exists (select 1',
'              from TBLWORKFLOWSTAGELIST B join TBLWORKFLOWDTL C on B.STAGE_ID=C.STAGE_ID',
'              Where A.Workflow_Dtl_Id=C.Id)  ',
'And Webpage_Id=:App_Page_Id      ',
'and TRANSACTION_TYPE_ID=:P1424_TRANSACTION_TYPE',
'AND upper(Wfl_Status_Description) NOT LIKE DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%APP%'',''test'') ',
'AND upper(Wfl_Status_Description) not like DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%DISAPP%'',''test'') ',
'order by sequence'))
,p_lov_cascade_parent_items=>'P1424_TRANSACTION_TYPE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630300678286589563)
,p_name=>'P1424_TRANSACTION_TYPE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3538415401329609025)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Transaction Type'
,p_source=>'TRANSACTION_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PAGE_TRANSACTION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(TRANSACTION_DESCRIPTION) a ,TRANSACTION_TYPE_ID',
'from TBLTRANSACTIONTYPE a',
'where exists (select 1',
'              from TBLWORKFLOWSTATUS B join TBLWORKFLOWDTL c on c.id=b.WORKFLOW_DTL_ID',
'              where a.TRANSACTION_TYPE_ID=B.TRANSACTION_TYPE_ID',
'              and WEBPAGE_ID=:APP_PAGE_ID)',
'AND trunc(a.START_DATE) <= trunc(current_date)',
'AND (TRUNC(a.END_DATE) IS NULL OR TRUNC(a.END_DATE) >= TRUNC(current_date))',
'order by priority'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630301156485589563)
,p_name=>'P1424_ACTION_END_DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3538415401329609025)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Action End Date'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'ACTION_END_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>20
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630301530927589564)
,p_name=>'P1424_ACTION_START_DATE'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3538415401329609025)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Action Start Date'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'ACTION_START_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>20
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630301903799589564)
,p_name=>'P1424_ACTION_TAKEN_ID'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3538415401329609025)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Action Taken'
,p_source=>'ACTION_TAKEN_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P1424_ID IS NULL THEN',
'RETURN ',
'''select OFFENCE_CLASS||'''' ''''||ACTION_DESCRIPTION ACTION,ID',
'from HR_GRI_DISCIPLINARYACTION d',
'WHERE trunc(START_DATE) <= trunc(current_date)',
'AND (TRUNC(END_DATE) IS NULL OR TRUNC(END_DATE) >= TRUNC(current_date))',
'AND OFFENCE_ID=:P1424_OFFENCE_ID_H',
'and exists (select 1',
'            from HR_GRI_OFFENCE o',
'            where o.id =d.OFFENCE_ID',
'            and org_id=:APP_ORG_SHR_DED)'';',
'',
'ELSE',
'RETURN ',
'''select OFFENCE_CLASS||'''' ''''||ACTION_DESCRIPTION ACTION,ID',
'from HR_GRI_DISCIPLINARYACTION D',
'WHERE  exists (select 1',
'            from HR_GRI_OFFENCE o',
'            where o.id =d.OFFENCE_ID',
'            and org_id=:APP_ORG_SHR_DED)',
'AND OFFENCE_ID=:P1424_OFFENCE_ID_H'';',
'',
'END IF;'))
,p_lov_cascade_parent_items=>'P1424_OFFENCE_ID_H'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630302334805589565)
,p_name=>'P1424_EMP_ID'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3538415401329609025)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Employee'
,p_source=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1424_ID is null and :P1423_RETURN_VALUE =1281 then',
'   return',
'    ''select EMPLOYEE||''''(no.:''''||EMP_COMPANY_NO||'''')'''' a, id B',
'    from VW_EMPLOYEEALL X',
'    where x.id = :P1281_ID'';',
'',
'else',
'',
'return',
'  ''select EMPLOYEE||''''(no.:''''||EMP_COMPANY_NO||'''')'''' a, id B',
'from VW_EMPLOYEEALL X',
'where org_id = :APP_ORG_ID',
'AND exists(select 1',
'          from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''''1'''') = decode(w.user_name, null, ''''1'''', :APP_USER))',
'          where  t.id=x.ORGDTL_ID',
'          and X.ORGDTL_ID=decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, X.ORGDTL_ID, w.org_structure_id)         ',
'          )'';',
'',
'end if;',
'	'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_lov_cascade_parent_items=>'P1424_DATE_DISCIPLINED'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(3630302729835589565)
,p_name=>'P1424_DATE_DISCIPLINED'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3538415401329609025)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date Disciplined'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'DATE_DISCIPLINED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>20
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630303107664589566)
,p_name=>'P1424_EMP_OFFENCE_END'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3538415401329609025)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Employee Offence End'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'EMP_OFFENCE_END'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>20
,p_cMaxlength=>255
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630303481719589566)
,p_name=>'P1424_EMP_OFFENCE_START'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3538415401329609025)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Employee Offence Start'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'EMP_OFFENCE_START'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>20
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630303927779589568)
,p_name=>'P1424_DISCIPLINARIAN_EMP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3538415401329609025)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Employee Disciplinarian'
,p_source=>'DISCIPLINARIAN_EMP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct initcap(Surname || '', '' || nvl(First_Name, '''')) ||'' ''||nvl(Middle_Name,'''') ||''(No.:''||EMP_COMPANY_NO||'')(''||PKG_GLOBAL_FNTS.Get_Lookup_Col(employment_class_id, ''TABLE_VALUE'' )||',
'case when DATE_SEPARATED is null then '' Active'' else '' Separated'' end|| '')'' a,x.ID b',
'from table(pkg_global_fnts.get_availemployee(TO_DATE(:P1424_EMP_OFFENCE_START, ''DD-MON-YYYY HH:MI PM''))) x join hr_rcm_individual z on z.id=x.av_ind_id',
'where exists(select 1        ',
'             from vw_useraccess_finegrain k',
'             where NVL(k.grade_id, nvl(x.emp_grade_id,1)) = nvl(x.emp_grade_id,1)',
'             and user_name=:APP_USER)  ',
'and to_char(to_date(:P1424_EMP_OFFENCE_START, ''DD-MON-YYYY HH:MIPM''),''DD-MON-YYYY'') > date_employed',
'and pkg_global_fnts.get_lookup_col(Employment_Class_ID,''TABLE_VALUE'')  !=''PEN''      ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1424_EMP_OFFENCE_END'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(3630304582289589568)
,p_name=>'P1424_DOC_EXIST'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(3538422106221746259)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Id',
'From Media_Head',
'Where Form_Id=:APP_PAGE_ID',
'and TABLE_KEY=:P1424_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630306309720589571)
,p_name=>'P1424_VERIFIED_BY'
,p_item_sequence=>141
,p_item_plug_id=>wwv_flow_imp.id(3538422106221746259)
,p_use_cache_before_default=>'NO'
,p_source=>'VERIFIED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630308613042589574)
,p_name=>'P1424_DISCIPLINARIAN'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3538429388229847603)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISCIPLINARIAN',
'FROM HR_GRI_DISCIPLINE',
'WHERE ID=:P1424_DISCIPLINE_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630308993592589574)
,p_name=>'P1424_OFFENCE_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3538429388229847603)
,p_use_cache_before_default=>'NO'
,p_item_default=>'P1424_OFFENCE_ID_H'
,p_item_default_type=>'ITEM'
,p_source=>'OFFENCE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630309437197589575)
,p_name=>'P1424_DISCIPLINE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3538429388229847603)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&P1423_ID.'
,p_source=>'DISCIPLINE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630309770944589577)
,p_name=>'P1424_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3538429388229847603)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3630293277426589541)
,p_validation_name=>'chk_offence_vs_date_disp'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'if TO_DATE(:P1424_DATE_DISCIPLINED,''DD-MON-YYYY HH:MIPM'') < TO_DATE(:P1424_OFFENCE_DATE,''DD-MON-YYYY HH:MIPM'') then',
'return false;',
'else',
'return true;',
'end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Incorrect date discipline, when compared to overall offence date please change now.'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3630292886293589541)
,p_validation_name=>'chk_action_vs_date_disp'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'if to_date(:P1424_ACTION_START_DATE,''DD-MON-YYYY HH:MIPM'') < to_date(:P1424_DATE_DISCIPLINED,''DD-MON-YYYY HH:MIPM'') then',
'return false;',
'else',
'return true;',
'end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Incorrect action taken date, when compared to discipline date please change now.'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3630292489655589541)
,p_validation_name=>'chk_Empoffence_vs_ActionDate'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'if to_date(:P1424_EMP_OFFENCE_START,''DD-MON-YYYY HH:MIPM'') > to_date(:P1424_ACTION_START_DATE,''DD-MON-YYYY HH:MIPM'') then',
'return false;',
'else',
'return true;',
'end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Incorrect employee offence date, when compared to discipline action date please change now.'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3630292126936589541)
,p_validation_name=>'enf_workflow_seq'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF pkg_global_fnts.fn_enforce_wfl_seq(:P1424_TRANSACTION_TYPE_ID, :APP_PAGE_ID, :P1424_ID, :P1424_STATUS) =FALSE THEN',
'  RETURN FALSE;',
'ELSE',
'  RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The work flow sequence is set to enforce mode, select the next status value in sequence as it appear in the LOV.'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3630293724901589542)
,p_validation_name=>'chk_emp_vs_disciplinarian'
,p_validation_sequence=>41
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P1424_DISCIPLINARIAN = :P1424_EMP_ID THEN',
'  RETURN FALSE;',
'ELSE',
'  RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'This employee is the disciplinarian, entry unacceptable.'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3630291669597589539)
,p_validation_name=>'chk_dates'
,p_validation_sequence=>50
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'IF TO_DATE(:P1211_END_DATE,''DD-MON-YYYY HH:MIPM'') < TO_DATE(:P1211_START_DATE,''DD-MON-YYYY HH:MIPM'') THEN',
'RETURN FALSE;',
'ELSE',
'return TRUE;',
'end if;',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The end date cannot be less than the start date!'
,p_always_execute=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3630288579417589534)
,p_name=>'SET_OFFENCE'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1424_OFFENCE_ID'
,p_condition_element=>'P1424_OFFENCE_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3630288068197589533)
,p_event_id=>wwv_flow_imp.id(3630288579417589534)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1424_OFFENCE_ID_H'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P1424_OFFENCE_ID'
,p_attribute_07=>'P1424_OFFENCE_ID,P1424_OFFENCE_ID_H'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3624648573032241315)
,p_name=>'show_comments'
,p_event_sequence=>20
,p_condition_element=>'P1424_COMENT_SWITCH'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3624648974177241316)
,p_event_id=>wwv_flow_imp.id(3624648573032241315)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1424_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3624649470123241316)
,p_event_id=>wwv_flow_imp.id(3624648573032241315)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1424_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3624649901499245842)
,p_name=>'show_comment'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1424_COMENT_SWITCH'
,p_condition_element=>'P1424_COMENT_SWITCH'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3624650257057245842)
,p_event_id=>wwv_flow_imp.id(3624649901499245842)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1424_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3624650838354245842)
,p_event_id=>wwv_flow_imp.id(3624649901499245842)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1424_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3484283329303609331)
,p_name=>'SET_PAYMENT_TYPE'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1424_EMP_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3484283246031609330)
,p_event_id=>wwv_flow_imp.id(3484283329303609331)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1424_PAYMENT_TYPE,P1424_EMPLOYMENT_CLASS_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PAYMENT_TYPE, EMPLOYMENT_CLASS_ID',
'FROM HR_RCM_EMPLOYEE ',
'WHERE ID = :P1424_EMP_ID'))
,p_attribute_07=>'P1424_EMP_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3484283079482609328)
,p_event_id=>wwv_flow_imp.id(3484283329303609331)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1424_PAYMENT_TYPE_HIST'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PAYMENT_TYPE ',
'FROM HR_RCM_EMPLOYEE ',
'WHERE ID = :P1424_EMP_ID'))
,p_attribute_07=>'P1424_EMP_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3544175574146292051)
,p_name=>'set_dis_value1'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1424_ACTION_END_DATE'
,p_condition_element=>'P1424_ACTION_START_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3544175466234292050)
,p_event_id=>wwv_flow_imp.id(3544175574146292051)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1424_DISCIPLINE_VALUE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select abs(to_date(:P1424_ACTION_END_DATE, ''DD-MON-YYYY HH:MIPM'') - to_date(:P1424_ACTION_START_DATE, ''DD-MON-YYYY HH:MIPM'')) * ',
' pkg_global_fnts.fn_daily(:P1424_EMP_ID, TO_DATE(:P1424_ACTION_END_DATE,''DD-MON-YYYY HH:MIPM''), TO_DATE(:P1424_ACTION_END_DATE,''DD-MON-YYYY HH:MIPM'') ) a',
'FROM DUAL'))
,p_attribute_07=>'P1424_ACTION_START_DATE,P1424_ACTION_END_DATE,P1424_EMP_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3544175434298292049)
,p_name=>'set_dis_value'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1424_ACTION_START_DATE'
,p_condition_element=>'P1424_ACTION_END_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3544175308529292048)
,p_event_id=>wwv_flow_imp.id(3544175434298292049)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1424_DISCIPLINE_VALUE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select abs(to_date(:P1424_ACTION_END_DATE,''DD-MON-YYYY HH:MIPM'') - to_date(:P1424_ACTION_START_DATE,''DD-MON-YYYY HH:MIPM'')) * ',
'  pkg_global_fnts.fn_daily(:P1424_EMP_ID, TO_DATE(:P1424_ACTION_END_DATE,''DD-MON-YYYY HH:MIPM''), TO_DATE(:P1424_ACTION_END_DATE,''DD-MON-YYYY HH:MIPM'') ) a',
'FROM DUAL'))
,p_attribute_07=>'P1424_ACTION_START_DATE,P1424_ACTION_END_DATE,P1424_EMP_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3558552065319983953)
,p_name=>'pop_offence'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3630310947498589578)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3558551925907983952)
,p_event_id=>wwv_flow_imp.id(3558552065319983953)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1424_EMP_OFFENCE_START'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select :P1424_OFFENCE_DATE ',
'FROM DUAL'))
,p_attribute_07=>'P1424_OFFENCE_DATE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3630290614329589538)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from HR_GRI_DISCIPLINEEMP'
,p_attribute_02=>'HR_GRI_DISCIPLINEEMP'
,p_attribute_03=>'P1424_ID'
,p_attribute_04=>'ID'
,p_attribute_08=>wwv_flow_string.join(wwv_flow_t_varchar2(
'EXISTS (SELECT 1',
'        FROM VW_USERACCESS A ',
'        where A.PAYMENT_TYPE=HR_GRI_DISCIPLINEEMP.PAYMENT_TYPE ',
'        AND A.EMPLOYMENT_CLASS_ID=HR_GRI_DISCIPLINEEMP.EMPLOYMENT_CLASS_ID AND',
'        A.ORG_ID=HR_GRI_DISCIPLINEEMP.ORG_ID)'))
,p_attribute_15=>'D'
,p_process_error_message=>'You don''t have the access rights to view this employee file. Contact your system administrator if you believe access should be granted to you.'
,p_internal_uid=>3208498621131592964
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3630289390925589536)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_PAGINATION'
,p_process_name=>'Get Next or Previous Primary Key Value'
,p_attribute_02=>'HR_GRI_DISCIPLINEEMP'
,p_attribute_03=>'P1424_ID'
,p_attribute_04=>'ID'
,p_attribute_07=>'DATE_DISCIPLINED'
,p_attribute_09=>'P1424_ID_NEXT'
,p_attribute_10=>'P1424_ID_PREV'
,p_attribute_13=>'P1424_ID_COUNT'
,p_attribute_14=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DISCIPLINE_ID=:P1424_DISCIPLINE_ID',
'AND  exists ( ',
'              select 1',
'              FROM VW_USERACCESS w ',
'              where HR_GRI_DISCIPLINEEMP.org_id=w.org_id',
'              and HR_GRI_DISCIPLINEEMP.employment_class_id=w.employment_class_id',
'              AND UPPER(HR_GRI_DISCIPLINEEMP.PAYMENT_TYPE)=UPPER(w.PAYMENT_TYPE)              ',
'              )'))
,p_internal_uid=>3208497397727592962
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3630291377370589539)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_machine_insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P1424_MACHINE_INSERT is null and :P101_MACHINE_NAME is not null then',
' :P1424_MACHINE_INSERT:=:P101_MACHINE_NAME;',
'end if;',
'',
'if :P1424_MACHINE_UPDATE is null and :P101_MACHINE_NAME is not null then',
' :P1424_MACHINE_UPDATE:=:P101_MACHINE_NAME;',
'end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,CREATE_AGAIN'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>3208499384172592965
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3630291011703589539)
,p_process_sequence=>21
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_machine_update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' :P1424_MACHINE_UPDATE:=:P101_MACHINE_NAME;',
'',
' if :P1424_MACHINE_INSERT is null and :P101_MACHINE_NAME is not null then',
'    :P1424_MACHINE_INSERT:=:P101_MACHINE_NAME;',
' end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3630312916768589581)
,p_internal_uid=>3208499018505592965
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3630290248606589538)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of HR_GRI_DISCIPLINEEMP'
,p_attribute_02=>'HR_GRI_DISCIPLINEEMP'
,p_attribute_03=>'P1424_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P1424_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>3208498255408592964
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3630289789326589537)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3630313345577589582)
,p_internal_uid=>3208497796128592963
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3630289064389589535)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'auto_notify'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'     get_transaction TBLTRANSACTIONTYPE.TRANSACTION_DESCRIPTION%TYPE; ',
'   v_description tblworkflowstatus.WFL_STATUS_DESCRIPTION%TYPE;',
'begin',
'',
'select initcap(TRANSACTION_DESCRIPTION)  into get_transaction ',
'from TBLTRANSACTIONTYPE ',
'where TRANSACTION_TYPE_ID=:P1424_TRANSACTION_TYPE;',
'',
'select WFL_STATUS_DESCRIPTION into v_description',
'from tblworkflowstatus',
'where WFL_STATUS_ID=:P1424_STATUS;',
'',
'  pkg_biz_rules.pop_notification',
'(',
'	get_transaction||'' for: Employee Disciplinary Actions'',',
'	nvl(V(''APP_USER''),user),',
'	''ACTIVE'',',
'	current_date,',
'	''f?p=''||:APP_ID||'':''||:APP_PAGE_ID||'':''||:APP_SESSION||''::NO::P''||:APP_PAGE_ID||''_ID:''||:P1424_ID,',
'	v_description||'' ''||get_transaction||'' for: ''||''Positions'',',
'	:P1424_STATUS,:APP_PAGE_ID,:P1424_TRANSACTION_TYPE_ID,',
'        ''HR_GRI_DISCIPLINEEMP'',:P1424_WORK_FLOW_COMMENT,:P1424_ID);',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3630312916768589581)
,p_internal_uid=>3208497071191592961
);
wwv_flow_imp.component_end;
end;
/
