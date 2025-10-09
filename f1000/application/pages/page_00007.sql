prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
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
 p_id=>7
,p_name=>'frmRelativeFRD'
,p_alias=>'FRMRELATIVEFRD1'
,p_page_mode=>'MODAL'
,p_step_title=>'frmRelativeFRD'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<link href="//cdnjs.cloudflare.com/ajax/libs/select2/4.0.0/css/select2.min.css" rel="stylesheet" />',
'<script src="//cdnjs.cloudflare.com/ajax/libs/select2/4.0.0/js/select2.min.js"></script>'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'))
,p_step_template=>2121795032473542284
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'950'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(895178604991816154)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'USER')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(4073171703214069339)
,p_name=>'Audit'
,p_template=>2664334895415463485
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent2:t-Region--scrollBody:margin-bottom-none'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  to_char(entry_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||entered_by entered,',
'  to_char(last_changed_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||last_changed_by last_changed,',
'  machine_insert,',
'  machine_update,',
'  apex_util.get_since(last_changed_date) updated',
'from  HR_RCM_RELATIVESFRD',
'where  id = :P7_ID'))
,p_display_when_condition=>'P7_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P7_ID'
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
 p_id=>wwv_flow_imp.id(589714365470481142)
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
 p_id=>wwv_flow_imp.id(589714697953481141)
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
 p_id=>wwv_flow_imp.id(589715176069481140)
,p_query_column_id=>3
,p_column_alias=>'MACHINE_INSERT'
,p_column_display_sequence=>30
,p_column_heading=>'Machine Insert'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(589715558878481139)
,p_query_column_id=>4
,p_column_alias=>'MACHINE_UPDATE'
,p_column_display_sequence=>40
,p_column_heading=>'Machine Update'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(589715949291481138)
,p_query_column_id=>5
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>50
,p_column_heading=>'Updated'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4073175505440069353)
,p_plug_name=>'Create/Edit Relatives'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P7_LOAD_FROM_REPORT'
,p_plug_display_when_cond2=>'0'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4083852127639867391)
,p_plug_name=>'Search Relatives'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HR_RCM_RELATIVESFRD.ID as ID,',
'    CASE when HR_RCM_RELATIVESFRD.DEPENDANT=''N'' then ''No'' else ''Yes'' end as DEPENDANT,',
'    case when HR_RCM_RELATIVESFRD.MEDICALLY_COVERED=''N'' then ''No'' else ''Yes'' end as MEDICALLY_COVERED,',
'      (select INITCAP(SURNAME || '', '' || nvl(FIRST_NAME, ''''))||'' ''||nvl(MIDDLE_NAME,'''')||'' DOB:''||to_char(dob,''DD-MON-YY'')||''- (''||SEX_CODE||',
'       '')''',
'       from hr_rcm_individual where id =HR_RCM_RELATIVESFRD.ind_id',
'              ) RELATIVE ,',
'   (SELECT  case when upper(sex_code)=''F'' then ''Ms. '' else ''Mr. '' end ||SURNAME||'', ''||NVL(FIRST_NAME,'''') FROM HR_RCM_INDIVIDUAL v WHERE ID=HR_RCM_RELATIVESFRD.related_to',
'    and exists(select 1',
'              from hr_rcm_employee k',
'              where k.ind_id=v.id',
'              and k.org_id=:APP_ORG_ID)) as Employee ,',
'    initcap(HR_RCM_RELATIVESFRD.RELATION) as RELATION,',
'     (SELECT pkg_global_fnts.fn_calcage(k.dob, current_date) Age FROM HR_RCM_INDIVIDUAL k WHERE k.ID=HR_RCM_RELATIVESFRD.ind_id) age,',
'    case when HR_RCM_RELATIVESFRD.STUDENT =''N'' then ''No'' else ''Yes'' end as STUDENT,',
'   case when HR_RCM_RELATIVESFRD.NEXT_OF_KIN=''N'' then ''No'' else ''Yes'' end as NEXT_OF_KIN,',
'    HR_RCM_RELATIVESFRD.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    HR_RCM_RELATIVESFRD.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    HR_RCM_RELATIVESFRD.ENTERED_BY as ENTERED_BY,',
'    HR_RCM_RELATIVESFRD.ENTRY_DATE as ENTRY_DATE,',
'    HR_RCM_RELATIVESFRD.MACHINE_INSERT as MACHINE_INSERT,',
'    HR_RCM_RELATIVESFRD.MACHINE_UPDATE as MACHINE_UPDATE,',
'    HR_RCM_RELATIVESFRD.tax_deductible,',
'    case when HR_RCM_RELATIVESFRD.BENEFICIARY=''N'' then ''No'' else ''Yes'' end as BENEFICIARY ,',
'    cell_phone, bank_account_no, bank_branch_id, telephone, sex_code, marital_code,dob, dod, nationality',
'from HR_RCM_RELATIVESFRD  join HR_RCM_INDIVIDUAL v on v.id=HR_RCM_RELATIVESFRD.ind_id',
'where IND_ORG_ID=:APP_ORG_ID            ',
'and (:P7_SEARCH_COMP = 1 OR HR_RCM_RELATIVESFRD.RELATED_TO = :P7_RELATED_TO)           ',
'order by RELATION  ',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P7_IND_ID'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(4083851920160867381)
,p_name=>'Search Address'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_owner=>'PPLERP'
,p_internal_uid=>3556160132137426581
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4160341174281652085)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4160340757211652085)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4160340379733652081)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4160340038496652079)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4160339604821652079)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4160339263583652079)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4160338867929652078)
,p_db_column_name=>'ID'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:1276:&SESSION.::&DEBUG.::P1276_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4160338454786652078)
,p_db_column_name=>'EMPLOYEE'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Employee'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'EMPLOYEE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4160338028996652077)
,p_db_column_name=>'DEPENDANT'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Dependant'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DEPENDANT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4160337687246652077)
,p_db_column_name=>'MEDICALLY_COVERED'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Medically Covered'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MEDICALLY_COVERED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4160337226902652076)
,p_db_column_name=>'RELATIVE'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Relative'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'RELATIVE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4160336872712652076)
,p_db_column_name=>'RELATION'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Relation'
,p_column_type=>'STRING'
,p_static_id=>'RELATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4160336478077652075)
,p_db_column_name=>'STUDENT'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Student'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'STUDENT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4160336004286652075)
,p_db_column_name=>'NEXT_OF_KIN'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Next Of Kin'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'NEXT_OF_KIN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4160335647260652074)
,p_db_column_name=>'BENEFICIARY'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Beneficiary'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'BENEFICIARY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4039707169225091347)
,p_db_column_name=>'CELL_PHONE'
,p_display_order=>43
,p_column_identifier=>'AH'
,p_column_label=>'Cell Phone'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4039707134147091346)
,p_db_column_name=>'BANK_ACCOUNT_NO'
,p_display_order=>53
,p_column_identifier=>'AI'
,p_column_label=>'Bank Account No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4039707015063091345)
,p_db_column_name=>'BANK_BRANCH_ID'
,p_display_order=>63
,p_column_identifier=>'AJ'
,p_column_label=>'Bank Branch'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854350481929385330)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4039706851201091344)
,p_db_column_name=>'TELEPHONE'
,p_display_order=>73
,p_column_identifier=>'AK'
,p_column_label=>'Telephone'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4039706794975091343)
,p_db_column_name=>'SEX_CODE'
,p_display_order=>83
,p_column_identifier=>'AL'
,p_column_label=>'Sex Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4039706712096091342)
,p_db_column_name=>'MARITAL_CODE'
,p_display_order=>93
,p_column_identifier=>'AM'
,p_column_label=>'Marital Code'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3854209715288239105)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4039706546181091341)
,p_db_column_name=>'DOB'
,p_display_order=>103
,p_column_identifier=>'AN'
,p_column_label=>'Dob'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4039706535942091340)
,p_db_column_name=>'DOD'
,p_display_order=>113
,p_column_identifier=>'AO'
,p_column_label=>'Dod'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4039706355334091339)
,p_db_column_name=>'NATIONALITY'
,p_display_order=>123
,p_column_identifier=>'AP'
,p_column_label=>'Nationality'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(895179534287816163)
,p_db_column_name=>'AGE'
,p_display_order=>133
,p_column_identifier=>'AQ'
,p_column_label=>'Age'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(895179596542816164)
,p_db_column_name=>'TAX_DEDUCTIBLE'
,p_display_order=>143
,p_column_identifier=>'AR'
,p_column_label=>'Tax Deductible'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4083850621447867378)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'444008'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'EMPLOYEE:ID:RELATIVE:RELATION:DEPENDANT:MEDICALLY_COVERED:STUDENT:NEXT_OF_KIN:BENEFICIARY:CELL_PHONE:'
,p_break_on=>'EMPLOYEE:0:0:0:0:0'
,p_break_enabled_on=>'EMPLOYEE:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4140312059700962091)
,p_plug_name=>'Quick Add Relative Bio Data'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(895178933889816157)
,p_plug_name=>'Identifiers'
,p_parent_plug_id=>wwv_flow_imp.id(4140312059700962091)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(900903083087713193)
,p_plug_name=>'Relationship'
,p_parent_plug_id=>wwv_flow_imp.id(4140312059700962091)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(589717368722481133)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4073175505440069353)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P7_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3807018998455118135)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(589717759401481132)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4073175505440069353)
,p_button_name=>'RELATIVE_BIO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Relative Bio'
,p_button_position=>'CHANGE'
,p_button_redirect_url=>'f?p=&APP_ID.:1261:&SESSION.::&DEBUG.:RP:P1261_ID:&P7_IND_ID.'
,p_button_condition=>'P7_IND_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(589718151077481131)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4073175505440069353)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create Again'
,p_button_position=>'CREATE'
,p_button_condition=>'P7_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(589718506366481130)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4073175505440069353)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P7_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(589718963993481129)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(4073175505440069353)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:7:P7_RELATED_TO:&P7_RELATED_TO.'
,p_button_condition=>'P7_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(589719383132481128)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4073175505440069353)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM HR_RCM_INDIVIDUAL a',
'WHERE VERIFIED_BY IS NULL',
'AND EXISTS(SELECT 1',
'           FROM HR_RCM_RELATIVESFRD B',
'           WHERE A.ID=B.related_to',
'           and b.id=:P7_ID)'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(3807019313075118135)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(589735120830481073)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4083852127639867391)
,p_button_name=>'RETURN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(589735501708481072)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4083852127639867391)
,p_button_name=>'INITIALISE_SEARCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Initialise Search'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(589736617326481069)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4140312059700962091)
,p_button_name=>'CREATE_BIO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Quick Create Relatives'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(589737055221481068)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4140312059700962091)
,p_button_name=>'NEW_QUICK_CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clear Quick Create'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:7::'
,p_button_condition=>'P7_SURNAME'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(589749022581481028)
,p_branch_name=>'CREATE AGAIN'
,p_branch_action=>'f?p=&APP_ID.:1276:&SESSION.::&DEBUG.:1276:P7_RELATED_TO:&P7_RELATED_TO.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(589718151077481131)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(589749408775481028)
,p_branch_name=>'delete_branch'
,p_branch_action=>'f?p=&APP_ID.:1261:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(589719383132481128)
,p_branch_sequence=>2
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(589750667658481025)
,p_branch_action=>'f?p=&APP_ID.:1276:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>3
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(589749885076481027)
,p_branch_name=>'Go To Page 1276'
,p_branch_action=>'f?p=&APP_ID.:1276:&SESSION.::&DEBUG.::P7_ID:&P7_ID_PREV.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(589750279994481026)
,p_branch_name=>'Go To Page 1276'
,p_branch_action=>'f?p=&APP_ID.:1276:&SESSION.::&DEBUG.::P7_ID:&P7_ID_NEXT.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(832385103211199167)
,p_name=>'P7_LOAD_FROM_REPORT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4140312059700962091)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(832385262478199168)
,p_name=>'P7_QUICKIND'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4140312059700962091)
,p_prompt=>'Employee'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'INDIVIDUAL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT INDIVIDUAL, ID',
'FROM VW_INDIVIDUAL A',
'WHERE  A.IND_ORG_ID = pkg_global_fnts.fn_sharereforg(:APP_ORG_ID)',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_display_when=>'P7_LOAD_FROM_REPORT'
,p_display_when2=>'1'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(895185750750816119)
,p_name=>'P7_TAX_DEDUCTIBLE'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(4073175505440069353)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tax Deductible'
,p_source=>'TAX_DEDUCTIBLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(895203496547816069)
,p_name=>'P7_RELATIVE_IMAGE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4140312059700962091)
,p_prompt=>'Relative Photo'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'display_as', 'INLINE',
  'purge_file_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(895206126239816055)
,p_name=>'P7_ID_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(895178933889816157)
,p_prompt=>'ID Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'NATIONAL_ID'
,p_lov=>'.'||wwv_flow_imp.id(3854208448189239100)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(895206288338816056)
,p_name=>'P7_ID_NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(895178933889816157)
,p_prompt=>'ID Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(895206361019816057)
,p_name=>'P7_START_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(895178933889816157)
,p_prompt=>'ID Start/Issue Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(895206448546816058)
,p_name=>'P7_IDENTIFIER_IMAGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(895178933889816157)
,p_prompt=>'Identification Image'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'display_as', 'INLINE',
  'purge_file_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(895207509057816047)
,p_name=>'P7_RELATION_ID_Q'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(900903083087713193)
,p_prompt=>'Relation'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'disabled', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(895207614283816048)
,p_name=>'P7_TAX_DEDUCTIBLE_Q'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(900903083087713193)
,p_prompt=>'Tax Deductible'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1028088222980209003)
,p_name=>'P7_MACHINE_INSERT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4073171703214069339)
,p_use_cache_before_default=>'NO'
,p_item_default=>'LOGIN_VAR'
,p_item_default_type=>'ITEM'
,p_source=>'MACHINE_INSERT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1028088385006209004)
,p_name=>'P7_MACHINE_UPDATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4073171703214069339)
,p_use_cache_before_default=>'NO'
,p_item_default=>'LOGIN_VAR'
,p_item_default_type=>'ITEM'
,p_source=>'MACHINE_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4033642289560167961)
,p_name=>'P7_CONTACT_NOS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(4140312059700962091)
,p_prompt=>'Land Lines Nos.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4033642414949167962)
,p_name=>'P7_CELL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(4140312059700962091)
,p_prompt=>'Cell Nos.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4160332236346652016)
,p_name=>'P7_ID_COUNT'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(4073175505440069353)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'class="fielddata"'
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_ai_enabled=>false
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4160332558112652017)
,p_name=>'P7_ID_PREV'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(4073175505440069353)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4160332996571652017)
,p_name=>'P7_ID_NEXT'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(4073175505440069353)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4160333374946652018)
,p_name=>'P7_BENEFICIARY'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(4073175505440069353)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Beneficiary?'
,p_source=>'BENEFICIARY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', 'N',
  'on_label', 'Yes',
  'on_value', 'Y',
  'use_defaults', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4160333793066652018)
,p_name=>'P7_NEXT_OF_KIN'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(4073175505440069353)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Next Of Kin?'
,p_source=>'NEXT_OF_KIN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', 'N',
  'on_label', 'Yes',
  'on_value', 'Y',
  'use_defaults', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4160334209990652019)
,p_name=>'P7_STUDENT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(4073175505440069353)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Student?'
,p_source=>'STUDENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', 'N',
  'on_label', 'Yes',
  'on_value', 'Y',
  'use_defaults', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4160334622676652019)
,p_name=>'P7_MEDICALLY_COVERED'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(4073175505440069353)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Medically Covered?'
,p_source=>'MEDICALLY_COVERED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', 'N',
  'on_label', 'Yes',
  'on_value', 'Y',
  'use_defaults', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4160335013845652019)
,p_name=>'P7_DEPENDANT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(4073175505440069353)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dependant?'
,p_source=>'DEPENDANT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', 'N',
  'on_label', 'Yes',
  'on_value', 'Y',
  'use_defaults', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4160335365014652020)
,p_name=>'P7_RELATION'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(4073175505440069353)
,p_use_cache_before_default=>'NO'
,p_source=>'RELATION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4160336320366652029)
,p_name=>'P7_RELATION_ID'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(4073175505440069353)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Relationship'
,p_source=>'RELATION_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Note the system generated alternative relationships. So if you change a relation be sure to locate relative and change their relationship too.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'disabled', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4160336673231652029)
,p_name=>'P7_IND_ID'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(4073175505440069353)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Relative Name'
,p_source=>'IND_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT INDIVIDUAL, ID',
'FROM VW_INDIVIDUAL_ONLY X',
'where ID !=:P7_RELATED_TO',
'and exists (select 1',
'            FROM VW_USERACCESS W',
'            where x.ind_org_id=w.org_id)',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_lov_cascade_parent_items=>'P7_RELATED_TO'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4160337107290652031)
,p_name=>'P7_RELATED_TO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(4073175505440069353)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&P1261_ID.'
,p_source=>'RELATED_TO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4160337508677652032)
,p_name=>'P7_RELATED_DATA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4073175505440069353)
,p_prompt=>'<font color="green" size="2"><b> Browse Related Records </b></font>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  DISTINCT B.PAGE_TITLE ,APEX_UTIL.PREPARE_URL(p_url =>''f?p=''||:APP_ID||'':''||WEBPAGE_ID||'':''||:APP_SESSION||''::NO::P''||WEBPAGE_ID||''_ID:''',
'||fn_getprimarykey(:P1261_ID, WEBPAGE_ID), p_checksum_type => ''SESSION'') WEBPAGE_ID',
'FROM TBLPAGELIST a JOIN APEX_APPLICATION_PAGES B ON A.WEBPAGE_ID=B.PAGE_ID',
'WHERE PARENT_PAGE= 1261---the specific parent screen',
'and webpage_id !=:app_page_id',
'and add_child_only=1',
'and workspace=apex_util.find_workspace((select apex_application.get_security_group_id from dual))'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Null--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_display_when=>'P1261_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'REDIRECT_URL')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4160337857996652032)
,p_name=>'P7_INDIVIDUAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4073175505440069353)
,p_prompt=>'Individual'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT INDIVIDUAL',
'from VW_INDIVIDUAL_only',
'where id=nvl(:P7_RELATED_TO,:P1261_ID)'))
,p_source_type=>'QUERY'
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4160338255778652033)
,p_name=>'P7_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4073175505440069353)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4161616571054032941)
,p_name=>'P7_CONTACT_NUMBERS'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(4073175505440069353)
,p_prompt=>'Contact Nos.'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'select case when CELL_PHONE is not null and  TELEPHONE is not null then CELL_PHONE||'',''||TELEPHONE  ',
'            when CELL_PHONE is not null then CELL_PHONE',
'        else TELEPHONE end   numbers',
'from HR_RCM_INDIVIDUAL',
'where id=:P7_IND_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4161616694974032942)
,p_name=>'P7_EMERGENCY_CONTACT'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(4073175505440069353)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Emergency Contact'
,p_source=>'EMERGENCY_CONTACT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', 'N',
  'on_label', 'Yes',
  'on_value', 'Y',
  'use_defaults', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4170806210352539026)
,p_name=>'P7_SEX'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(4140312059700962091)
,p_prompt=>'Sex'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SEX CODE'
,p_lov=>'.'||wwv_flow_imp.id(3854077766096010826)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4170806659707539026)
,p_name=>'P7_DOB'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(4140312059700962091)
,p_prompt=>'Dob'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4170807011215539026)
,p_name=>'P7_SURNAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(4140312059700962091)
,p_prompt=>'Surname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4170807479567539030)
,p_name=>'P7_FIRST_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(4140312059700962091)
,p_prompt=>'First Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4179851485823904940)
,p_name=>'P7_SEARCH_COMP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4083852127639867391)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(589745043920481038)
,p_validation_name=>'chk_empdt_with_reldt'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_dob_emp date; v_dob_rel date;',
'',
'begin',
'',
'if upper(:P7_relation) in (''SON'',''DAUGHTER'',''CHILD'') then',
'',
'select dob into v_dob_emp',
'from hr_rcm_individual',
'where id= :P7_RELATED_TO;',
'',
'select dob into v_dob_rel',
'from hr_rcm_individual',
'where id= :P7_IND_ID;',
'',
'IF v_dob_emp  > v_dob_rel  THEN',
'RETURN FALSE;',
'ELSE',
'return TRUE;',
'end if;',
'',
'end if;',
'',
'exception',
' when others then null;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Parents must be older than their children, please correct date of birth of parent or children.'
,p_always_execute=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(589744589033481039)
,p_validation_name=>'chk_all_quick_ref'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
' if :P7_FIRST_NAME is null or :P7_SURNAME is null or :P7_DOB is null or :P7_SEX is null then     ',
'     return FALSE;',
' else',
'     return TRUE; ',
' end if;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Kindly ensure you enter data into all fields under Quick Referee Bio Data Region.'
,p_when_button_pressed=>wwv_flow_imp.id(589736617326481069)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(589742990117481043)
,p_validation_name=>'verify_tax_age_on_quick'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_age_verify number;',
'',
'begin',
'',
'    select CHILD_TAXCREDIT_CEILING_AGE into v_age_verify',
'    from hr_hcf_org_rule',
'    where end_date is null',
'    and org_id =:APP_ORG_ID;',
'',
'    IF pkg_global_fnts.fn_calcage(:P7_DOB, CURRENT_DATE) > v_age_verify and :P7_TAX_DEDUCTIBLE_Q = 1 then',
'        return ''The current age of this relative is ''||pkg_global_fnts.fn_calcage(:P7_DOB, CURRENT_DATE)||'' however the ceiling for tax deductible is ''||v_age_verify||''.'';',
'    else',
'        return '''';',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_imp.id(589736617326481069)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(589743415504481042)
,p_validation_name=>'verify_tax_age_on_relative'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_age_verify number;',
'    v_age_relative number;',
'',
'begin',
'',
'    select CHILD_TAXCREDIT_CEILING_AGE into v_age_verify',
'    from hr_hcf_org_rule',
'    where end_date is null',
'    and org_id =:APP_ORG_ID;',
'',
'    select pkg_global_fnts.fn_calcage(DOB, CURRENT_DATE) into v_age_relative',
'    from hr_rcm_individual',
'    where id =:P7_IND_ID;',
'',
'    IF v_age_relative > v_age_verify and :P7_TAX_DEDUCTIBLE = 1 then',
'        return ''The current age of this relative is ''||v_age_relative||'' however the ceiling for tax deductible is ''||v_age_verify||''.'';',
'    else',
'        return '''';',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(589743876668481041)
,p_validation_name=>'reject_future_age'
,p_validation_sequence=>50
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    IF :P7_DOB > TRUNC(SYSDATE) THEN',
'        return ''A future date of birth is not acceptible. Change Entry now.'';',
'    else',
'        return '''';',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_imp.id(589736617326481069)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(589744261303481040)
,p_validation_name=>'reject_future_or_null_id_date'
,p_validation_sequence=>60
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    IF :P7_START_DATE > TRUNC(SYSDATE) or  :P7_START_DATE is null then',
'        return ''A blank or future Issue date is not acceptible. Change Entry now.'';',
'    else',
'        return '''';',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_imp.id(589736617326481069)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(589746503148481035)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from HR_RCM_RELATIVESFRD'
,p_attribute_02=>'HR_RCM_RELATIVESFRD'
,p_attribute_03=>'P7_ID'
,p_attribute_04=>'ID'
,p_internal_uid=>62054715125040235
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(589745328365481038)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_PAGINATION'
,p_process_name=>'Get Next or Previous Primary Key Value'
,p_attribute_02=>'HR_RCM_RELATIVESFRD'
,p_attribute_03=>'P7_ID'
,p_attribute_04=>'ID'
,p_attribute_07=>'RELATION'
,p_attribute_09=>'P7_ID_NEXT'
,p_attribute_10=>'P7_ID_PREV'
,p_attribute_13=>'P7_ID_COUNT'
,p_attribute_14=>'RELATED_TO=:P1261_ID'
,p_internal_uid=>62053540342040238
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(589748569435481030)
,p_process_sequence=>31
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'POP_INIT_SEARCH'
,p_process_sql_clob=>':P7_SEARCH_COMP :=1;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(589735501708481072)
,p_internal_uid=>62056781412040230
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(589746169009481036)
,p_process_sequence=>41
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of HR_RCM_RELATIVESFRD'
,p_attribute_02=>'HR_RCM_RELATIVESFRD'
,p_attribute_03=>'P7_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P7_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>62054380986040236
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(589747322259481034)
,p_process_sequence=>61
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'general_alternate_relationship'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   v_relation_ship varchar2(50);',
'   ',
'begin',
'',
'    select case when (select TRIM(upper(SEX_CODE)) from HR_RCM_INDIVIDUAL where id=:P1261_ID)=''M'' ',
'    and Pkg_Global_Fnts.Get_Lookup_Col(:P7_RELATION, ''VALUE_DESCRIPTION'')= upper(CUSTOM_FIELD) then upper(CUSTOM_FIELD) ',
'',
'  --  when (select TRIM(upper(SEX_CODE)) from HR_RCM_INDIVIDUAL where id=:P1261_ID)=''M'' ',
'  --  and Pkg_Global_Fnts.Get_Lookup_Col(:P7_RELATION, ''VALUE_DESCRIPTION'')= upper(CUSTOM_FIELD1) then upper(CUSTOM_FIELD1) ',
'',
'--   when (select TRIM(upper(SEX_CODE)) from HR_RCM_INDIVIDUAL where id=:P1261_ID)=''F'' ',
'--    and Pkg_Global_Fnts.Get_Lookup_Col(:P7_RELATION, ''VALUE_DESCRIPTION'')= upper(CUSTOM_FIELD) then upper(CUSTOM_FIELD) ',
'',
' --  when (select TRIM(upper(SEX_CODE)) from HR_RCM_INDIVIDUAL where id=:P1261_ID)=''F'' ',
'  --  and Pkg_Global_Fnts.Get_Lookup_Col(:P7_RELATION, ''VALUE_DESCRIPTION'')= upper(CUSTOM_FIELD1) then upper(CUSTOM_FIELD1) ',
'    else  upper(CUSTOM_FIELD1)',
'    END relation',
'    into v_relation_ship',
'    from table(pkg_global_fnts.Get_Lookup_Value (''TBLFAMILYRELATIONSHIP''))',
'    where id=:P7_RELATION_ID;',
'    ',
'    INSERT INTO HR_RCM_RELATIVESFRD(IND_ID, RELATION,  RELATED_TO, RELATION_ID,STUDENT)',
'    ',
'    select :P1261_ID, v_relation_ship, :P7_IND_ID, (select id ',
'                                                      from table(pkg_global_fnts.Get_Lookup_Value (''TBLFAMILYRELATIONSHIP''))',
'                                                      where upper(table_value)= v_relation_ship),0',
'    from table(pkg_global_fnts.Get_Lookup_Value (''TBLFAMILYRELATIONSHIP''))',
'    where id=:P7_RELATION_ID;',
'    ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,CREATE_AGAIN'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>62055534236040234
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(589746979668481035)
,p_process_sequence=>71
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set_no_kids'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'      update HR_RCM_INDIVIDUAL',
'      set no_of_children=(',
'                         select count(1) ',
'                         from HR_RCM_RELATIVESFRD',
'                         where HR_RCM_INDIVIDUAL.ID=HR_RCM_RELATIVESFRD.RELATED_TO',
'                         AND RELATED_TO=:P7_RELATED_TO',
'                         and upper(RELATION) in (''SON'',''DAUGHTER'',''CHILD'')',
'                         )',
'      WHERE ID=:P7_RELATED_TO;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,CREATE_AGAIN,SAVE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>62055191645040235
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(589748184478481032)
,p_process_sequence=>91
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ADD_BIO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' ',
'     l_files apex_t_varchar2;',
'     l_rel_image apex_t_varchar2;',
'     v_new_ind_id number(10);',
'     v_sal varchar2(10);',
'',
'BEGIN',
'',
'    l_rel_image := apex_string.split(:P7_RELATIVE_IMAGE, '':'');',
'    v_sal := case when :P7_SEX=''M'' then ''Mr.'' else ''Ms.'' end;',
'',
'',
'    if :P7_RELATIVE_IMAGE is not null then',
'            FOR i in 1..l_rel_image.count LOOP',
'                for c1 in (select * from apex_application_temp_files where name = l_rel_image(i)) loop',
'                    begin  ',
'                            INSERT INTO hr_rcm_individual (salutation, ind_org_id,surname, first_name, dob, sex_code, transaction_type_id, status, verified_by, verified_date, TELEPHONE, CELL_PHONE, photo, filename, mimetype, last_update_photo)',
'                            values(v_sal,:APP_ORG_ID,:P7_SURNAME, :P7_FIRST_NAME, :P7_DOB, :P7_SEX, 110,324, :APP_USER, SYSDATE, :P7_CONTACT_NOS, :P7_CELL, c1.blob_content, c1.filename, c1.mime_type, c1.created_on)',
'                            returning id into v_new_ind_id;',
'                            commit;',
'                    end;',
'                end loop;',
'            end loop;',
'',
'    else',
'         ',
'                            INSERT INTO hr_rcm_individual (salutation, ind_org_id,surname, first_name, dob, sex_code, transaction_type_id, status, verified_by, verified_date, TELEPHONE, CELL_PHONE)',
'                            values(v_sal,:APP_ORG_ID,:P7_SURNAME, :P7_FIRST_NAME, :P7_DOB, :P7_SEX, 110,324, :APP_USER, SYSDATE, :P7_CONTACT_NOS, :P7_CELL)',
'                            returning id into v_new_ind_id;',
'                            commit;',
'',
'    end if;',
'',
'    l_files := apex_string.split(:P7_IDENTIFIER_IMAGE, '':'');',
'',
'    if :P7_IDENTIFIER_IMAGE is not null then',
'            FOR i in 1..l_files.count LOOP',
'                for c1 in (select * from apex_application_temp_files where name = l_files(i)) loop',
'                    begin ',
'',
'                        INSERT INTO hr_rcm_natidentifier ( ind_id,  id_type, id_number, start_date,  identifier_image, FILENAME, MIMETYPE, LAST_UPDATE_PHOTO)',
'                        values (V_NEW_IND_ID, :P7_ID_TYPE, :P7_ID_NUMBER, :P7_START_DATE , c1.blob_content, c1.filename, c1.mime_type, c1.created_on);',
'                    end;',
'                end loop;',
'            end loop;',
'    ',
'    else',
'',
'          INSERT INTO hr_rcm_natidentifier ( ind_id,  id_type, id_number, start_date)',
'          values (V_NEW_IND_ID, :P7_ID_TYPE, :P7_ID_NUMBER, :P7_START_DATE);',
'',
'    end if;',
'',
'    INSERT INTO hr_rcm_relativesfrd ( ind_id, relation_id, related_to, tax_deductible)',
'    values (V_NEW_IND_ID, :P7_RELATION_ID_Q,  nvl(:P7_RELATED_TO, :P7_QUICKIND),  :P7_TAX_DEDUCTIBLE_Q);',
'    commit;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(589736617326481069)
,p_process_success_message=>'Bio data and National Identifier inserted, additional the relationship was also set.'
,p_internal_uid=>62056396455040232
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(589745704146481037)
,p_process_sequence=>101
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'276'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(589719383132481128)
,p_internal_uid=>62053916123040237
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(589747705511481033)
,p_process_sequence=>111
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(589735120830481073)
,p_internal_uid=>62055917488040233
);
wwv_flow_imp.component_end;
end;
/
