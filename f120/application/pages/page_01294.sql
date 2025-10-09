prompt --application/pages/page_01294
begin
--   Manifest
--     PAGE: 01294
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>221824690189185566
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>1294
,p_name=>'frmOrganisationHd'
,p_step_title=>'Create/Edit Organisation Structure Head'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3825718090717574415)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(670461135599027253)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988598328610063082)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3740881601673517951)
,p_plug_name=>'Organisation Structure Layout'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HR_HCF_ORGSTRUCTUREDTL.ID as ID, DEF_WORK_LOCATION_ID, HR_HCF_ORGSTRUCTUREDTL.ID as PKEY,',
'    HR_HCF_ORGSTRUCTUREDTL.ORG_STRUCTURE_NAME as ORG_STRUCTURE_NAME,',
'    HR_HCF_ORGSTRUCTUREDTL.ORG_STRUCTURE_ID as ORG_STRUCTURE_ID,',
'    HR_HCF_ORGSTRUCTUREDTL.CLASSIFICATION as CLASSIFICATION,',
'    upper(HR_HCF_ORGSTRUCTUREDTL.UNIT_CODE) as UNIT_CODE,',
'    HR_HCF_ORGSTRUCTUREDTL.UNIT_NAME as UNIT_NAME,',
'    HR_HCF_ORGSTRUCTUREDTL.UNIT_PARENT as UNIT_PARENT,',
'    HR_HCF_ORGSTRUCTUREDTL.UNIT_LEVEL as UNIT_LEVEL,',
'    HR_HCF_ORGSTRUCTUREDTL.START_DATE as START_DATE,',
'    HR_HCF_ORGSTRUCTUREDTL.END_DATE as END_DATE,',
'    HR_HCF_ORGSTRUCTUREDTL.REMARKS as REMARKS,',
'    HR_HCF_ORGSTRUCTUREDTL.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    HR_HCF_ORGSTRUCTUREDTL.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    HR_HCF_ORGSTRUCTUREDTL.VERIFIED_BY as VERIFIED_BY,',
'    HR_HCF_ORGSTRUCTUREDTL.VERIFIED_DATE as VERIFIED_DATE,',
'    HR_HCF_ORGSTRUCTUREDTL.MACHINE_INSERT as MACHINE_INSERT,',
'    HR_HCF_ORGSTRUCTUREDTL.MACHINE_UPDATE as MACHINE_UPDATE,',
'    HR_HCF_ORGSTRUCTUREDTL.ENTERED_BY as ENTERED_BY,',
'    HR_HCF_ORGSTRUCTUREDTL.ENTRY_DATE as ENTRY_DATE,',
'    HR_HCF_ORGSTRUCTUREDTL.TRANSACTION_TYPE_ID as TRANSACTION_TYPE_ID, ',
'    HR_HCF_ORGSTRUCTUREDTL.COA_CODE as COA_CODE',
' from HR_HCF_ORGSTRUCTUREDTL HR_HCF_ORGSTRUCTUREDTL join HR_HCF_ORGSTRUCTUREHD b on HR_HCF_ORGSTRUCTUREDTL.ORG_STRUCTURE_ID=b.id',
'where  HR_HCF_ORGSTRUCTUREDTL.ORG_STRUCTURE_ID=:P1294_ID',
'and org_id= :APP_ORG_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P1294_ID'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3740881485122517898)
,p_name=>'Organisation Structure Layout'
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
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1295:&SESSION.::&DEBUG.::P1295_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(3786173683335186899)
,p_owner=>'PUR_INV'
,p_internal_uid=>133782371213655237
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831175661958337727)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'EDIT'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
,p_security_scheme=>wwv_flow_imp.id(3786141303309120303)
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831175320657337727)
,p_db_column_name=>'ORG_STRUCTURE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'ORG STRUCTURE NAME'
,p_column_type=>'STRING'
,p_static_id=>'ORG_STRUCTURE_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831174872370337724)
,p_db_column_name=>'ORG_STRUCTURE_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'ORG_STRUCTURE_ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ORG_STRUCTURE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831173285579337722)
,p_db_column_name=>'UNIT_PARENT'
,p_display_order=>4
,p_column_identifier=>'G'
,p_column_label=>'UNIT PARENT'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'UNIT_PARENT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854186040177426439)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831174548753337724)
,p_db_column_name=>'CLASSIFICATION'
,p_display_order=>5
,p_column_identifier=>'D'
,p_column_label=>'CLASSIFICATION'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'CLASSIFICATION'
,p_rpt_named_lov=>wwv_flow_imp.id(3854313634827558974)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831174080594337724)
,p_db_column_name=>'UNIT_CODE'
,p_display_order=>6
,p_column_identifier=>'E'
,p_column_label=>'UNIT CODE'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'UNIT_CODE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831173744047337722)
,p_db_column_name=>'UNIT_NAME'
,p_display_order=>7
,p_column_identifier=>'F'
,p_column_label=>'UNIT NAME'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'UNIT_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831172911243337722)
,p_db_column_name=>'UNIT_LEVEL'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'UNIT LEVEL'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'UNIT_LEVEL'
,p_rpt_named_lov=>wwv_flow_imp.id(3854192228864426448)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831172548938337722)
,p_db_column_name=>'START_DATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'START DATE'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'START_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831172137264337720)
,p_db_column_name=>'END_DATE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'END_DATE'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'END_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831171720901337720)
,p_db_column_name=>'REMARKS'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'REMARKS'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REMARKS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831171296417337720)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'LAST_CHANGED_BY'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831170867249337720)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'LAST_CHANGED_DATE'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831170528904337719)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'VERIFIED_BY'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831170059627337718)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'VERIFIED_DATE'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831169694082337718)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'MACHINE_INSERT'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831169263844337717)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'MACHINE_UPDATE'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831168907660337717)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'ENTERED_BY'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831168550186337716)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'ENTRY_DATE'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831168096836337713)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'TRANSACTION_TYPE_ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'TRANSACTION_TYPE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3849433309878032667)
,p_db_column_name=>'COA_CODE'
,p_display_order=>30
,p_column_identifier=>'V'
,p_column_label=>'CHART OF ACCOUNTS CODE'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3762868384100635224)
,p_db_column_name=>'DEF_WORK_LOCATION_ID'
,p_display_order=>40
,p_column_identifier=>'W'
,p_column_label=>'Def Work Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3832306590004952406)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3857855526901067430)
,p_db_column_name=>'PKEY'
,p_display_order=>50
,p_column_identifier=>'X'
,p_column_label=>'Pkey'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3740879200634517672)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'434961'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'CLASSIFICATION:UNIT_NAME:UNIT_PARENT:START_DATE:END_DATE:DEF_WORK_LOCATION_ID:COA_CODE:'
,p_sort_column_1=>'UNIT_NAME'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'COA_CODE'
,p_sort_direction_2=>'ASC'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(675361162365098162)
,p_report_id=>wwv_flow_imp.id(3740879200634517672)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'END_DATE'
,p_operator=>'is null'
,p_condition_sql=>'"END_DATE" is null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3743608605708463897)
,p_name=>'Audit Record Verified By: &P1294_VERIFIED_BY.'
,p_template=>2664334895415463485
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
' to_char(entry_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||entered_by entered,',
' to_char(last_changed_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||last_changed_by last_changed,',
' to_char(verified_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||verified_by verified,',
' machine_insert,',
' machine_update,',
' apex_util.get_since(last_changed_date) updated',
'from HR_HCF_ORGSTRUCTUREHD',
'where id = :P1294_ID',
''))
,p_display_when_condition=>':P1294_ID is not null'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1294_ID'
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
 p_id=>wwv_flow_imp.id(684853462292770954)
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
 p_id=>wwv_flow_imp.id(684853522194770955)
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
 p_id=>wwv_flow_imp.id(684853635067770956)
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
 p_id=>wwv_flow_imp.id(684853715853770957)
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
 p_id=>wwv_flow_imp.id(684853856295770958)
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
 p_id=>wwv_flow_imp.id(684853920306770959)
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
 p_id=>wwv_flow_imp.id(3743814500107918451)
,p_plug_name=>'Create/Edit Organisation Structure Head'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3807101975058297209)
,p_plug_name=>'Generator'
,p_parent_plug_id=>wwv_flow_imp.id(3743814500107918451)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3831166561280337711)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(3743814500107918451)
,p_button_name=>'GENERATE_STRUCTURE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_security_scheme=>wwv_flow_imp.id(3807159470688545770)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3831166160101337710)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3743814500107918451)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1293:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3831231882836448829)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3740881601673517951)
,p_button_name=>'RETURN_ORGSTRUCTURE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1293:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3831167275954337711)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3740881601673517951)
,p_button_name=>'CREATE_LAYOUT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1295:&SESSION.::&DEBUG.:1295::'
,p_button_condition=>'P1294_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3807160206270545771)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3831165838081337708)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3743814500107918451)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1294_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3807160206270545771)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3831165425302337708)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(3743814500107918451)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create Again'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1294_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3807160206270545771)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3831164961391337707)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(3743814500107918451)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1294:&SESSION.::&DEBUG.:1294::'
,p_button_condition=>'P1294_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3807160206270545771)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3850804064222299383)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(3743814500107918451)
,p_button_name=>'CHART'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Chart'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1456:&SESSION.::&DEBUG.:RP::'
,p_button_condition=>'P1295_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-user-chart'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3831164596566337707)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(3743814500107918451)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1294_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3807159759962545770)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3831164245106337706)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3743814500107918451)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>':P1294_ID is not null and :P1294_VERIFIED_BY IS NULL'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(3807160074582545770)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3831151425342337687)
,p_branch_name=>'CREATE AGAIN'
,p_branch_action=>'f?p=&APP_ID.:1294:&SESSION.::&DEBUG.:1294::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3831165425302337708)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3831151761386337688)
,p_branch_name=>'delete_branch'
,p_branch_action=>'f?p=&APP_ID.:1293:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3831164245106337706)
,p_branch_sequence=>2
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3850807492166314553)
,p_branch_name=>'Branch_Chart'
,p_branch_action=>'f?p=&APP_ID.:1455:&SESSION.::&DEBUG.:1455::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3850804064222299383)
,p_branch_sequence=>12
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3831152177249337688)
,p_branch_name=>'Go To Page 1294'
,p_branch_action=>'f?p=&APP_ID.:1294:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>22
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3831159459665337698)
,p_name=>'P1294_TO_ORG'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3807101975058297209)
,p_prompt=>'To Org'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ORG_STRUCTURE_NAME||'' Started: ''||DATE_STARTED a, a.id',
'from HR_HCF_ORGSTRUCTUREHD a join HR_HCF_ORGANISATION b on a.org_id=b.id',
'where org_id= :APP_ORG_ID',
'AND a.id != :P1294_FROM_ORG'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3831159933032337700)
,p_name=>'P1294_FROM_ORG'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3807101975058297209)
,p_prompt=>'From Org'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ORG_STRUCTURE_NAME||'' Started: ''||DATE_STARTED a, a.id',
'from HR_HCF_ORGSTRUCTUREHD a join HR_HCF_ORGANISATION b on a.org_id=b.id',
'where org_id= :APP_ORG_ID'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3831160648241337703)
,p_name=>'P1294_STATUS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3743814500107918451)
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
'and upper(Wfl_Status_Description) not like DECODE(:P1294_ID, NULL,''%VERI%'',''%test%'') ',
'And Webpage_Id=:App_Page_Id      ',
'and TRANSACTION_TYPE_ID=:P1294_TRANSACTION_TYPE_ID',
'order by sequence'))
,p_lov_cascade_parent_items=>'P1294_TRANSACTION_TYPE_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3831161039517337703)
,p_name=>'P1294_TRANSACTION_TYPE_ID'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3743814500107918451)
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
,p_lov_null_text=>'--Null--'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3831161450240337704)
,p_name=>'P1294_REMARKS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3743814500107918451)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Remarks'
,p_source=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>120
,p_cMaxlength=>400
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3831161775419337704)
,p_name=>'P1294_VERSION_ID'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3743814500107918451)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Version ID'
,p_source=>'VERSION_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>5
,p_cMaxlength=>4
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3831162255465337704)
,p_name=>'P1294_DATE_ENDED'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3743814500107918451)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date Ended'
,p_source=>'DATE_ENDED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>20
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
 p_id=>wwv_flow_imp.id(3831162594793337704)
,p_name=>'P1294_DATE_STARTED'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3743814500107918451)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date Started'
,p_source=>'DATE_STARTED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>20
,p_cMaxlength=>255
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(3831162983056337706)
,p_name=>'P1294_ORG_STRUCTURE_NAME'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3743814500107918451)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Organisation Structure'
,p_source=>'ORG_STRUCTURE_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>200
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3831163417832337706)
,p_name=>'P1294_ORG_ID'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3743814500107918451)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Organisation'
,p_source=>'ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SOFTWARE_USER'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select organisation_name,id',
'from vw_organisation X',
'where organisation_type=''SOFTWARE USER''',
'and x.ID=:APP_ORG_ID',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3831163830401337706)
,p_name=>'P1294_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3743814500107918451)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3831176424302337730)
,p_name=>'P1294_MACHINE_UPDATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(3743608605708463897)
,p_use_cache_before_default=>'NO'
,p_item_default=>'LOGIN_VAR'
,p_item_default_type=>'ITEM'
,p_source=>'MACHINE_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3831176810791337730)
,p_name=>'P1294_MACHINE_INSERT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3743608605708463897)
,p_use_cache_before_default=>'NO'
,p_item_default=>'LOGIN_VAR'
,p_item_default_type=>'ITEM'
,p_source=>'MACHINE_INSERT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3831177225404337731)
,p_name=>'P1294_VERIFIED_BY'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3743608605708463897)
,p_use_cache_before_default=>'NO'
,p_source=>'VERIFIED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3831158973764337697)
,p_validation_name=>'reject_verification_unverification'
,p_validation_sequence=>9
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if pkg_global_fnts.chk_verifier(:APP_USER ,:APP_PAGE_ID )=0 and pkg_global_fnts.status_descript(:P1294_STATUS) like ''%VER%'' then',
'return FALSE;',
'ELSE',
' RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You are not a verifier, actual disallowed.'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3831158633242337697)
,p_validation_name=>'chk_dates'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'IF TO_DATE(:P1294_DATE_ENDED) < TO_DATE(:P1294_DATE_STARTED) THEN',
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
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3709993604708191385)
,p_validation_name=>'reject_unverification'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_old_status number;',
'',
'begin',
'    ',
'    select count(1) into v_old_status',
'    from hr_hcf_lookup',
'    where id = :P1294_ID',
'    and verified_by is not null;',
'',
'    if pkg_global_fnts.chk_verifier(:APP_USER, :APP_PAGE_ID) =0 and v_old_status > 0 and  pkg_global_fnts.status_descript(:P1294_STATUS) not like ''VER%'' then',
'        return FALSE;',
'    else',
'         return TRUE;',
'    end if;',
'exception',
'    when others then null;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You are not a verifier, action disallowed since the record is verified.'
,p_when_button_pressed=>wwv_flow_imp.id(3831164596566337707)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3831153713024337690)
,p_name=>'visible_invisible'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1294_TO_ORG'
,p_condition_element=>'P1294_TO_ORG'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3831153233904337688)
,p_event_id=>wwv_flow_imp.id(3831153713024337690)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3831166561280337711)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3831152744818337688)
,p_event_id=>wwv_flow_imp.id(3831153713024337690)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3831166561280337711)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3831155553090337693)
,p_name=>'Refresh - Create'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3787086007192184562)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3831154965904337691)
,p_event_id=>wwv_flow_imp.id(3831155553090337693)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3740881601673517951)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3831154560273337691)
,p_name=>'Refresh - Edit'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3740881601673517951)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3831154064048337690)
,p_event_id=>wwv_flow_imp.id(3831154560273337691)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3740881601673517951)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3831157459763337697)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from HR_HCF_ORGSTRUCTUREHD'
,p_attribute_02=>'HR_HCF_ORGSTRUCTUREHD'
,p_attribute_03=>'P1294_ID'
,p_attribute_04=>'ID'
,p_attribute_08=>'ORG_ID=:APP_ORG_ID'
,p_internal_uid=>3187540776376155557
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3831157939591337697)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_machine_insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P1294_MACHINE_INSERT is null and V(''LOGIN_VAR'') is not null then',
' :P1294_MACHINE_INSERT:=V(''LOGIN_VAR'');',
'end if;',
'',
'if :P1294_MACHINE_UPDATE is null and V(''LOGIN_VAR'') is not null then',
' :P1294_MACHINE_UPDATE:=V(''LOGIN_VAR'');',
'end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,CREATE_AGAIN'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>3187541256204155557
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3831155947261337695)
,p_process_sequence=>21
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_machine_update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' :P1294_MACHINE_UPDATE:=V(''LOGIN_VAR'');',
'',
' if :P1294_MACHINE_INSERT is null and V(''LOGIN_VAR'') is not null then',
'    :P1294_MACHINE_INSERT:=V(''LOGIN_VAR'');',
' end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3831164596566337707)
,p_internal_uid=>3187539263874155555
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3831157090643337696)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of HR_HCF_ORGSTRUCTUREHD'
,p_attribute_02=>'HR_HCF_ORGSTRUCTUREHD'
,p_attribute_03=>'P1294_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P1294_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>3187540407256155556
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3831156672056337696)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3831164245106337706)
,p_internal_uid=>3187539988669155556
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3831156288375337695)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'auto_notify'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   get_transaction TBLTRANSACTIONTYPE.TRANSACTION_DESCRIPTION%TYPE; ',
'   v_description tblworkflowstatus.WFL_STATUS_DESCRIPTION%TYPE;',
'begin',
'',
'select initcap(TRANSACTION_DESCRIPTION)  into get_transaction ',
'from TBLTRANSACTIONTYPE ',
'where TRANSACTION_TYPE_ID=:P1294_TRANSACTION_TYPE_ID;',
'',
'select WFL_STATUS_DESCRIPTION into v_description',
'from tblworkflowstatus',
'where WFL_STATUS_ID=:P1294_STATUS;',
'',
'  pkg_biz_rules.pop_notification',
'(',
'	get_transaction||'' for: ''||:P1294_ORG_STRUCTURE_NAME,',
'	nvl(V(''APP_USER''),user),',
'	''ACTIVE'',',
'	current_date,	''f?p=''||:APP_ID||'':''||:APP_PAGE_ID||'':''||:APP_SESSION||''::NO::P''||:APP_PAGE_ID||''_ID:''||:P1294_ID,',
'	v_description||'' ''||get_transaction||'' for: ''||''Organisation Structure'',',
'	:P1294_STATUS,:APP_PAGE_ID,:P1294_TRANSACTION_TYPE_ID,',
'        ''HR_HCF_ORGSTRUCTUREHD'');',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3831164596566337707)
,p_internal_uid=>3187539604988155555
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3831158274588337697)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'generate_structure'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   PKG_GENERATORS.gen_org_structure(:P1294_FROM_ORG, :P1294_TO_ORG, :P1294_DATE_STARTED);  ',
'  :P1294_FROM_ORG:=null;',
'  :P1294_TO_ORG:=null;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3831166561280337711)
,p_process_success_message=>'Successfully generated Organisation structure.'
,p_internal_uid=>3187541591201155557
);
wwv_flow_imp.component_end;
end;
/
