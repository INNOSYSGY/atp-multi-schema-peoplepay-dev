prompt --application/pages/page_00186
begin
--   Manifest
--     PAGE: 00186
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>186
,p_name=>'frmswapshift'
,p_alias=>'FRMSWAPSHIFT'
,p_step_title=>'Create/Edit Swap Shifts'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3603893806588392776)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3585334160394360204)
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3555779448065762166)
,p_plug_name=>'<strong>Accepting</strong> Swap, Change or Drop'
,p_region_template_options=>'#DEFAULT#:t-Region--accent11:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>52
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3555779592554762167)
,p_name=>'Audit'
,p_template=>2664334895415463485
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
' ',
'  to_char(entry_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||entered_by entered,',
' ',
'  to_char(last_changed_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||last_changed_by last_changed,',
' ',
'--   to_char(verified_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||verified_by verified,',
' ',
'--   machine_insert,',
' ',
'--   machine_update,',
' ',
'  apex_util.get_since(last_changed_date) updated',
' ',
'from',
' ',
'  HR_ATT_SWAP_SHIFT',
' ',
'where',
' ',
'id=:p186_id'))
,p_display_when_condition=>'P186_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
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
 p_id=>wwv_flow_imp.id(306260350129777696)
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
 p_id=>wwv_flow_imp.id(306260499513777697)
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
 p_id=>wwv_flow_imp.id(306260935188777701)
,p_query_column_id=>3
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>60
,p_column_heading=>'Updated'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3560180467460124647)
,p_plug_name=>'<strong>Giving up</strong> for Swap, Change or Drop'
,p_region_template_options=>'#DEFAULT#:t-Region--accent5:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>32
,p_query_type=>'TABLE'
,p_query_table=>'HR_ATT_SWAP_SHIFT'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3560189885779124724)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3560217047613161508)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10766773638420877516)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3626798236947239673)
,p_plug_name=>'Filter'
,p_region_template_options=>'#DEFAULT#:t-Region--accent4:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3641856067677119170)
,p_name=>'Approval History'
,p_template=>2664334895415463485
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rownum "No.", EMPLOYEE,POSITION,ACTION,DATE_OF_ACTION,created_by user_name',
'from tblapprovalhistory',
'where table_name=''HR_ATT_SWAP_SHIFT''',
'and table_name_key=:P186_ID'))
,p_display_when_condition=>'P186_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P186_ID'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No Approvals as yet'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3356511889914288399)
,p_query_column_id=>1
,p_column_alias=>'No.'
,p_column_display_sequence=>1
,p_column_heading=>'No.'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3356512313119288400)
,p_query_column_id=>2
,p_column_alias=>'EMPLOYEE'
,p_column_display_sequence=>2
,p_column_heading=>'EMPLOYEE'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3356512722534288400)
,p_query_column_id=>3
,p_column_alias=>'POSITION'
,p_column_display_sequence=>3
,p_column_heading=>'POSITION'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3356513144918288401)
,p_query_column_id=>4
,p_column_alias=>'ACTION'
,p_column_display_sequence=>4
,p_column_heading=>'ACTION'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3356513545730288401)
,p_query_column_id=>5
,p_column_alias=>'DATE_OF_ACTION'
,p_column_display_sequence=>5
,p_column_heading=>'DATE_OF_ACTION'
,p_column_format=>'DD-MON-YYYY HH:MIPM'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3356513928328288401)
,p_query_column_id=>6
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>6
,p_column_heading=>'USER_NAME'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3356488430537288371)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3560217047613161508)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:182:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-hand-o-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3356488838575288371)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3560217047613161508)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>'P186_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-trash'
,p_security_scheme=>wwv_flow_imp.id(3585335384393360204)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3356489215860288372)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3560217047613161508)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P186_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-save'
,p_security_scheme=>wwv_flow_imp.id(3585335069773360204)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3356489591458288372)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3560217047613161508)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P186_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus-square'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3356490032428288372)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3560217047613161508)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Create Again'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P186_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus-square'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3356490398650288373)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(3560217047613161508)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:186:&SESSION.::&DEBUG.:::'
,p_button_condition=>'P186_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-plus-square'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3356490769230288373)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(3560217047613161508)
,p_button_name=>'EXECUTE_SWAP'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Execute Swap'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from ',
'hr_att_swap_shift',
'where upper(swap_type)=''SWAP''',
'and pkg_global_fnts.status_descript(:P186_STATUS) like ''APPROV%''',
'and approved_by is not null and approved_date is not null',
'and id = :P186_ID'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-arrows-alt'
,p_security_scheme=>wwv_flow_imp.id(3585334780499360204)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3356491264963288373)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(3560217047613161508)
,p_button_name=>'UNDO_SWAP'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Undo Swap'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-arrows-alt'
,p_security_scheme=>wwv_flow_imp.id(3585334780499360204)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3356491599538288374)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(3560217047613161508)
,p_button_name=>'EXECUTE_DROP'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Execute Drop'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from ',
'hr_att_swap_shift',
'where upper(swap_type)=''DROP''',
'and pkg_global_fnts.status_descript(:P186_STATUS) like ''APPROV%''',
'and approved_by is not null and approved_date is not null',
'and id = :P186_ID'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-arrows-alt'
,p_security_scheme=>wwv_flow_imp.id(3585334780499360204)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3356491966732288374)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(3560217047613161508)
,p_button_name=>'UNDO_DROP'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Undo Drop'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-arrows-alt'
,p_security_scheme=>wwv_flow_imp.id(3585334780499360204)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3356492430637288374)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(3560217047613161508)
,p_button_name=>'EXECUTE_CHANGE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Execute Change'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from ',
'hr_att_swap_shift',
'where upper(swap_type)=''CHNG''',
'and pkg_global_fnts.status_descript(:P186_STATUS) like ''APPROV%''',
'and approved_by is not null and approved_date is not null',
'and id = :P186_ID'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-arrows-alt'
,p_security_scheme=>wwv_flow_imp.id(3585334780499360204)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3356492866525288375)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(3560217047613161508)
,p_button_name=>'UNDO_CHANGE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Undo Change'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-arrows-alt'
,p_security_scheme=>wwv_flow_imp.id(3585334780499360204)
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3356526957616288414)
,p_branch_name=>'create'
,p_branch_action=>'f?p=&APP_ID.:186:&SESSION.::&DEBUG.::P186_ID:&P186_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3356489591458288372)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3356527270360288414)
,p_branch_name=>'save'
,p_branch_action=>'f?p=&APP_ID.:186:&SESSION.::&DEBUG.::P186_ID:&P186_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3356489215860288372)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3356527747714288414)
,p_branch_name=>'delete'
,p_branch_action=>'f?p=&APP_ID.:182:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3356488838575288371)
,p_branch_sequence=>30
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3356528145503288414)
,p_branch_name=>'create_again'
,p_branch_action=>'f?p=&APP_ID.:186:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3356490032428288372)
,p_branch_sequence=>40
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3356529273287288415)
,p_branch_name=>'drop'
,p_branch_action=>'f?p=&APP_ID.:186:&SESSION.::&DEBUG.::P186_ID:&P186_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3356491599538288374)
,p_branch_sequence=>50
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3356528883396288415)
,p_branch_name=>'change'
,p_branch_action=>'f?p=&APP_ID.:186:&SESSION.::&DEBUG.::P186_ID:&P186_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3356492430637288374)
,p_branch_sequence=>60
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3356528477881288415)
,p_branch_name=>'swap'
,p_branch_action=>'f?p=&APP_ID.:186:&SESSION.::&DEBUG.::P186_ID:&P186_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3356490769230288373)
,p_branch_sequence=>70
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3356485055803288362)
,p_name=>'P186_SWAP_TYPES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(3626798236947239673)
,p_item_source_plug_id=>wwv_flow_imp.id(3560180467460124647)
,p_prompt=>'Swap Types'
,p_source=>'SWAP_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Drop Shift;DROP,Change Shift;CHNG,Swap Shift;SWAP'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Option--'
,p_cHeight=>1
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3356485462300288363)
,p_name=>'P186_TRANSATION_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3626798236947239673)
,p_item_source_plug_id=>wwv_flow_imp.id(3560180467460124647)
,p_prompt=>'Transaction Type '
,p_source=>'TRANSATION_TYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
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
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3356485800041288363)
,p_name=>'P186_STATUS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3626798236947239673)
,p_item_source_plug_id=>wwv_flow_imp.id(3560180467460124647)
,p_item_default=>'2011'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Wfl_Status_Description,Wfl_Status_Id',
'from TBLWORKFLOWSTATUS a Join Tblworkflowdtl D On D.Id=A.Workflow_Dtl_Id',
'where exists (select 1',
'              from TBLWORKFLOWSTAGELIST B join TBLWORKFLOWDTL C on B.STAGE_ID=C.STAGE_ID',
'              Where A.Workflow_Dtl_Id=C.Id)  ',
'and upper(Wfl_Status_Description) not like DECODE(:P186_ID, NULL,''%VER%'',''test'') ',
'And Webpage_Id=:App_Page_Id      ',
'and TRANSACTION_TYPE_ID=:P186_TRANSATION_TYPE_ID',
'-- AND upper(Wfl_Status_Description) NOT LIKE DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%APP%'',''test'') ',
'-- AND upper(Wfl_Status_Description) not like DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%DISAPP%'',''test'') ',
'order by sequence'))
,p_lov_cascade_parent_items=>'P186_TRANSATION_TYPE_ID'
,p_ajax_items_to_submit=>'P186_TRANSATION_TYPE_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3356486195777288364)
,p_name=>'P186_SHOW_REMARKS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3626798236947239673)
,p_prompt=>'Show Remarks'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
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
 p_id=>wwv_flow_imp.id(3356486516922288364)
,p_name=>'P186_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3626798236947239673)
,p_item_source_plug_id=>wwv_flow_imp.id(3560180467460124647)
,p_prompt=>'Remarks'
,p_source=>'REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>40
,p_cMaxlength=>2500
,p_cHeight=>3
,p_field_template=>3031561666792084173
,p_item_template_options=>'t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3356496230832288378)
,p_name=>'P186_WORK_DATE_SOURCE'
,p_source_data_type=>'DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3560180467460124647)
,p_item_source_plug_id=>wwv_flow_imp.id(3560180467460124647)
,p_prompt=>'Work Date Source'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'WORK_DATE_SOURCE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>255
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'Which day would you like to swap, change or drop?'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3356497163662288379)
,p_name=>'P186_EMPLOYEE_SOURCE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3560180467460124647)
,p_item_source_plug_id=>wwv_flow_imp.id(3560180467460124647)
,p_prompt=>'Employee Source'
,p_source=>'EMPLOYEE_SOURCE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct b.full_name, a.emp_id',
'from hr_att_empcalendar_hd a ',
'join hr_rcm_employee b on a.emp_id=b.id',
'where b.org_id = :APP_ORG_ID',
'and to_date(a.work_date)= to_date(:P186_WORK_DATE_SOURCE) '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Source Employee--'
,p_lov_cascade_parent_items=>'P186_WORK_DATE_SOURCE'
,p_ajax_items_to_submit=>'P186_WORK_DATE_SOURCE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_help_text=>'Who is the person requesting the swap, change or drop?'
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
 p_id=>wwv_flow_imp.id(3356498052547288380)
,p_name=>'P186_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3560180467460124647)
,p_item_source_plug_id=>wwv_flow_imp.id(3560180467460124647)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3356498406177288381)
,p_name=>'P186_SHIFT_SOURCE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3560180467460124647)
,p_item_source_plug_id=>wwv_flow_imp.id(3560180467460124647)
,p_prompt=>'Shift Source'
,p_source=>'SHIFT_SOURCE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(start_time,''HH:MI PM'')||''--''||to_char(end_time,''HH:MI PM'')  as descpt, a.assigned_shift as shift_id',
'from hr_att_empcalendar_hd a join hr_att_shift b on a.assigned_shift = b.id',
'where b.org_id=:APP_ORG_ID',
'and a.emp_id = :P186_EMPLOYEE_SOURCE',
'and to_date(a.work_date) = to_date(:P186_WORK_DATE_SOURCE)'))
,p_lov_cascade_parent_items=>'P186_EMPLOYEE_SOURCE,P186_WORK_DATE_SOURCE'
,p_ajax_items_to_submit=>'P186_EMPLOYEE_SOURCE,P186_WORK_DATE_SOURCE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>'What is the shift they have for this day?'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3356499299187288382)
,p_name=>'P186_ORG_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3560180467460124647)
,p_item_source_plug_id=>wwv_flow_imp.id(3560180467460124647)
,p_source=>'ORG_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3356508048998288392)
,p_name=>'P186_WORK_DATE_DESTINATION'
,p_source_data_type=>'DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3555779448065762166)
,p_item_source_plug_id=>wwv_flow_imp.id(3560180467460124647)
,p_prompt=>'Work Date Destination'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'WORK_DATE_DESTINATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>255
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ol>',
'<li>Which day will be swapped?</li>',
'<li>Which they will the change occur? or </li>',
'<li>Which day is the drop occur?</li>',
'</ol>'))
,p_inline_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Which day will be swapped?',
'Which they will the change occur? or ',
'Which day is the drop occur?'))
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3356508947145288393)
,p_name=>'P186_EMPLOYEE_DESTINATION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3555779448065762166)
,p_item_source_plug_id=>wwv_flow_imp.id(3560180467460124647)
,p_prompt=>'Employee Destination'
,p_source=>'EMPLOYEE_DESTINATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct b.full_name, a.emp_id',
'from hr_att_empcalendar_hd a ',
'join hr_rcm_employee b on a.emp_id=b.id',
'where b.org_id = :APP_ORG_ID',
'and to_date(a.work_date)= to_date(:P186_WORK_DATE_DESTINATION)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Destination Employee--'
,p_lov_cascade_parent_items=>'P186_WORK_DATE_DESTINATION'
,p_ajax_items_to_submit=>'P186_WORK_DATE_DESTINATION'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_help_text=>'Who is the person that is affected by the swap, change or drop?'
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
 p_id=>wwv_flow_imp.id(3356509789005288394)
,p_name=>'P186_SHIFT_DESTINATION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3555779448065762166)
,p_item_source_plug_id=>wwv_flow_imp.id(3560180467460124647)
,p_prompt=>'Shift Destination'
,p_source=>'SHIFT_DESTINATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P186_SWAP_TYPES = ''SWAP'' then',
'',
'return ''select ',
'                to_char(b.start_time,''''HH:MI PM'''')||''''--''''||to_char(b.end_time,''''HH:MI PM'''')  as descpt, ',
'                a.assigned_shift as shift_id',
'from ',
'    hr_att_empcalendar_hd a ',
'join ',
'    hr_att_shift b on a.assigned_shift = b.id',
'where   ',
'        b.org_id=:APP_ORG_ID',
'        and a.emp_id = :P186_EMPLOYEE_DESTINATION',
'        and to_date(a.work_date) = to_date(:P186_WORK_DATE_DESTINATION)'';',
'        ',
'elsif :P186_SWAP_TYPES = ''CHNG'' then',
'return ''select to_char(f.start_time,''''HH:MI PM'''')||''''--''''||to_char(f.end_time,''''HH:MI PM'''') SHIFT,f.id',
'        from HR_ATT_SHIFT f',
'        where f.org_id= :APP_ORG_ID'';',
'',
'',
'elsif :P186_SWAP_TYPES = ''DROP'' then',
'return ''select t.shift_code shift,t.id',
'from hr_att_shift t',
'where t.shift_code = ''''OFFDAYN''''',
'and t.org_id= :app_org_id',
'order by 1'';',
'',
'',
'else return ''SELECT NULL as a, NULL as b FROM DUAL'';',
'end if;',
'',
''))
,p_lov_cascade_parent_items=>'P186_SWAP_TYPES,P186_EMPLOYEE_DESTINATION,P186_WORK_DATE_DESTINATION'
,p_ajax_items_to_submit=>'P186_SWAP_TYPES,P186_EMPLOYEE_DESTINATION,P186_WORK_DATE_DESTINATION'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>'What is the shift they are changing to for this day? If they are dropping then it is a day off shift'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3356515449723288403)
,p_validation_name=>'SWAP DROP'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P186_SWAP_TYPES = ''DROP''',
'THEN IF :P186_WORK_DATE_SOURCE=:P186_WORK_DATE_DESTINATION and :P186_EMPLOYEE_SOURCE=:P186_EMPLOYEE_DESTINATION',
'      THEN RETURN TRUE;',
'      ELSE RETURN FALSE;',
'      END IF;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'When dropping a shift, they day you are giving up must be the day you are accepting the day off also the employee names must be the same'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_imp.id(3356491599538288374)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3356514977721288403)
,p_validation_name=>'SWAP CHANGE'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P186_SWAP_TYPES = ''CHNG''',
'THEN IF :P186_WORK_DATE_SOURCE=:P186_WORK_DATE_DESTINATION and :P186_EMPLOYEE_SOURCE=:P186_EMPLOYEE_DESTINATION',
'      THEN RETURN TRUE;',
'      ELSE RETURN FALSE;',
'      END IF;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'When changing a shift, you must change the shift for the same day and the employees must the same'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_imp.id(3356492430637288374)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3356517281095288405)
,p_name=>'refresh_status'
,p_event_sequence=>10
,p_condition_element=>'P186_STATUS'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3356517793268288406)
,p_event_id=>wwv_flow_imp.id(3356517281095288405)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P186_STATUS'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3356518197981288406)
,p_name=>'hide/show remarks'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P186_SHOW_REMARKS'
,p_condition_element=>'P186_SHOW_REMARKS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3356518687138288406)
,p_event_id=>wwv_flow_imp.id(3356518197981288406)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P186_REMARKS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3356519238069288407)
,p_event_id=>wwv_flow_imp.id(3356518197981288406)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P186_REMARKS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3356519657867288407)
,p_name=>'show/hide execute change'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P186_SWAP_TYPES'
,p_condition_element=>'P186_SWAP_TYPES'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'CHNG'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3356520116325288408)
,p_event_id=>wwv_flow_imp.id(3356519657867288407)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3356492430637288374)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3356520596683288408)
,p_event_id=>wwv_flow_imp.id(3356519657867288407)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3356492430637288374)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3356521163553288409)
,p_event_id=>wwv_flow_imp.id(3356519657867288407)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3356491599538288374)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3356521598988288409)
,p_event_id=>wwv_flow_imp.id(3356519657867288407)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3356490769230288373)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3356522029033288409)
,p_name=>'show/hide execute drop'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P186_SWAP_TYPES'
,p_condition_element=>'P186_SWAP_TYPES'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'DROP'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3356522507462288410)
,p_event_id=>wwv_flow_imp.id(3356522029033288409)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3356491599538288374)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3356523023771288410)
,p_event_id=>wwv_flow_imp.id(3356522029033288409)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3356492430637288374)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3356523538815288411)
,p_event_id=>wwv_flow_imp.id(3356522029033288409)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3356491599538288374)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3356523986836288411)
,p_event_id=>wwv_flow_imp.id(3356522029033288409)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3356490769230288373)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3356524393028288411)
,p_name=>'show/hide execute swap'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P186_SWAP_TYPES'
,p_condition_element=>'P186_SWAP_TYPES'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'SWAP'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3356524884617288412)
,p_event_id=>wwv_flow_imp.id(3356524393028288411)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3356490769230288373)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3356525436963288412)
,p_event_id=>wwv_flow_imp.id(3356524393028288411)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3356492430637288374)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3356525877725288413)
,p_event_id=>wwv_flow_imp.id(3356524393028288411)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3356491599538288374)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3356526420876288413)
,p_event_id=>wwv_flow_imp.id(3356524393028288411)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3356490769230288373)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3356502834672288386)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3560180467460124647)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form frmswapshift'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2934710841474291812
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3356515728090288403)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'auto_notify'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   get_transaction TBLTRANSACTIONTYPE.TRANSACTION_DESCRIPTION%TYPE; ',
'   v_description tblworkflowstatus.WFL_STATUS_DESCRIPTION%TYPE;',
'   v_LEAVE_TYPE varchar2(100);',
'   ',
'begin',
'',
'    select initcap(TRANSACTION_DESCRIPTION)  into get_transaction ',
'    from TBLTRANSACTIONTYPE ',
'    where TRANSACTION_TYPE_ID=:P186_TRANSATION_TYPE_ID;',
'',
'    select WFL_STATUS_DESCRIPTION into v_description',
'    from tblworkflowstatus',
'    where WFL_STATUS_ID=:P186_STATUS;',
'',
'    -- SELECT UPPER(B.TABLE_VALUE) into  v_LEAVE_TYPE',
'    -- From Hr_Rcm_Employee C Join   Hr_Rcm_Empleaveentitle A On C.Id=A.Emp_Id',
'    -- join hr_hcf_lookup b on a.leave_type_id=b.id',
'    -- Where a.id = :P1417_EMPLVENT_ID;',
'',
'',
'--   pkg_biz_rules.pop_notification',
'-- (',
'-- 	get_transaction||'' for: ''||nvl(:P1417_LEAVE_TYPE,v_LEAVE_TYPE),',
'-- 	nvl(V(''APP_USER''),user),',
'-- 	''ACTIVE'',',
'-- 	current_date,	''f?p=''||:APP_ID||'':''||:APP_PAGE_ID||'':''||:APP_SESSION||''::NO::P''||:APP_PAGE_ID||''_ID:''||:P1417_ID,',
'-- 	v_description||'' ''||get_transaction||'' for: ''||''Leave History'',',
'-- 	:P1417_STATUS,:APP_PAGE_ID,:P1417_TRANSACTION_TYPE_ID,',
'--         ''HR_LV_LEAVEHISTORY'',:P1417_WORK_FLOW_COMMENT, :P1417_ID);',
'',
'--NVL(V(''APP_USER''),user)',
'',
' if pkg_global_fnts.status_descript(:P186_STATUS) like ''APPROV%'' then    ',
'      pkg_global_fnts.approve_record(:APP_USER, ''HR_ATT_SWAP_SHIFT'',''ID'', :P186_ID);',
'',
'  elsif pkg_global_fnts.status_descript(:P186_STATUS) like ''DISAPPROV%'' then',
'',
'      pkg_global_fnts.disapprove_record(:APP_USER, ''HR_ATT_SWAP_SHIFT'', ''ID'', :P186_ID);       ',
' end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3356489215860288372)
,p_process_when=>'P186_TRANSATION_TYPE_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>2934723734892291829
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3356516903281288405)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SHIFT_DROP'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_sh float;',
'l_lh float;',
'l_llh number;',
'l_sid number;',
'begin',
'',
'select shift_hours, lunch_hour, less_lunch_hour, id ',
'into l_sh, l_lh, l_llh, l_sid',
'from hr_att_shift',
'where id = :P186_SHIFT_DESTINATION;',
'',
'if pkg_global_fnts.status_descript(:P186_STATUS) like ''APPROV%'' and :P186_SWAP_TYPES = ''DROP''',
'then update hr_att_empcalendar_hd',
'        set assigned_shift = l_sid, lunch_hour = l_lh,',
'            less_lunch_hour = l_llh, ASSIGN_SHIFT_HOURS=l_sh',
'        where to_date(work_date)=to_date(:P186_WORK_DATE_DESTINATION)',
'        and emp_id = :P186_EMPLOYEE_DESTINATION;',
'',
'    update hr_att_swap_shift',
'        set status = 2064',
'    where id = :P186_ID',
'    and org_id = :APP_ORG_ID;',
'else',
'RAISE_APPLICATION_ERROR(-20011,''Record might not be approved for shift drop'');',
'end if;',
'',
'commit;',
'end;',
'         '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Shift drop has failed!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3356491599538288374)
,p_process_success_message=>'Shift drop had been successfully executed!'
,p_internal_uid=>2934724910083291831
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3356516483723288404)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SHIFT_CHANGE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_sh float;',
'l_lh float;',
'l_llh number;',
'l_sid number;',
'begin',
'',
'select shift_hours, lunch_hour, less_lunch_hour, id ',
'into l_sh, l_lh, l_llh, l_sid',
'from hr_att_shift',
'where id = :P186_SHIFT_DESTINATION;',
'',
'if pkg_global_fnts.status_descript(:P186_STATUS) like ''APPROV%'' and :P186_SWAP_TYPES = ''CHNG''',
'then update hr_att_empcalendar_hd',
'        set assigned_shift = l_sid, lunch_hour = l_lh,',
'            less_lunch_hour = l_llh, ASSIGN_SHIFT_HOURS=l_sh',
'        where to_date(work_date)=to_date(:P186_WORK_DATE_DESTINATION)',
'        and emp_id = :P186_EMPLOYEE_DESTINATION;',
'',
'        ',
'    update hr_att_swap_shift',
'        set status = 2064',
'    where id = :P186_ID',
'    and org_id = :APP_ORG_ID;',
'else',
'RAISE_APPLICATION_ERROR(-20011,''Record might not be approved for shift change'');',
'end if;',
'',
'commit;',
'end;',
'         '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Shift change has failed!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3356492430637288374)
,p_process_success_message=>'Shift change had been successfully executed!'
,p_internal_uid=>2934724490525291830
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3356516107570288404)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SHIFT_SWAP'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_sh float;',
'l_lh float;',
'l_llh number;',
'l_sid number;',
'begin',
'',
'if pkg_global_fnts.status_descript(:P175_STATUS) like ''APPROVE%''',
'    then ',
'    begin',
'--updating the source  ',
'        select shift_hours, lunch_hour, less_lunch_hour, id ',
'        into l_sh, l_lh, l_llh, l_sid',
'        from hr_att_shift',
'        where id = :P186_SHIFT_DESTINATION;',
'',
'        update hr_att_empcalendar_hd',
'        set assigned_shift = l_sid, ',
'            lunch_hour = l_lh,',
'            less_lunch_hour = l_llh, ',
'            ASSIGN_SHIFT_HOURS=l_sh',
'        where to_date(work_date)=to_date(:P186_WORK_DATE_SOURCE)',
'        and emp_id = :P186_EMPLOYEE_SOURCE;',
'    ',
'--updating the destination',
'        select shift_hours, lunch_hour, less_lunch_hour, id ',
'        into l_sh, l_lh, l_llh, l_sid',
'        from hr_att_shift',
'        where id = :P186_SHIFT_SOURCE;',
'',
'        update hr_att_empcalendar_hd',
'        set assigned_shift = l_sid, ',
'            lunch_hour = l_lh,',
'            less_lunch_hour = l_llh, ',
'            ASSIGN_SHIFT_HOURS=l_sh',
'        where to_date(work_date)=to_date(:P186_WORK_DATE_DESTINATION)',
'        and emp_id = :P186_EMPLOYEE_DESTINATION;',
'',
'            ',
'        update hr_att_swap_shift',
'            set status = 2064',
'        where id = :P186_ID',
'        and org_id = :APP_ORG_ID;',
'',
'',
'    exception',
'    when others then',
'        RAISE_APPLICATION_ERROR(-20011,''Record might not be approved for shift swap'');',
'    end;',
'    commit;',
'end if;',
'',
'commit;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Shift swap has failed!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3356490769230288373)
,p_process_success_message=>'Shift swap had been successfully executed!'
,p_internal_uid=>2934724114372291830
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3356502406950288386)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(3560180467460124647)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form frmswapshift'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2934710413752291812
);
wwv_flow_imp.component_end;
end;
/
