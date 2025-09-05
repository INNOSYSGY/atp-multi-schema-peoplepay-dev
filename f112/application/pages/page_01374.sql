prompt --application/pages/page_01374
begin
--   Manifest
--     PAGE: 01374
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
 p_id=>1374
,p_name=>'Data Validation'
,p_step_title=>'Data Validation'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3297885947246709907)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3212140410395071392)
,p_name=>'Data Validation'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:100%;max-width:none;" '
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select n001 as row_num,',
'       c049 as action,',
'       c001, c002, c003,',
'       c004, c005, c006,',
'       c007, c008, c009,',
'       c010, c011, c012,',
'       c013, c014, c015,',
'       c016, c017, c018,',
'       c019, c020, c021,',
'       c022, c023, c024,',
'       c025, c026, c027,',
'       c028, c029, c030,',
'       c031, c032, c033,',
'       c034, c035, c036,',
'       c037, c038, c040,',
'       c041, c042, c043,',
'       c044, c045',
'  from apex_collections',
' where collection_name = ''LOAD_CONTENT''',
'   and c049 in (''INSERT'',''UPDATE'', ''FAILED'')',
' order by seq_id'))
,p_lazy_loading=>false
,p_query_headings=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare  ',
'    l_string varchar(32667);',
'begin',
'    l_string := wwv_flow_lang.system_message(''DATA_LOAD.SEQUENCE_ACTION'');',
'    for l_heading in ( select c005 as label',
'                         from apex_collections',
'                        where collection_name = ''LOAD_COL_HEAD''',
'                        order by seq_id )',
'    loop',
'        l_string := l_string || '':'' || l_heading.label;',
'    end loop;',
'    return l_string;',
'end;'))
,p_query_headings_type=>'FUNCTION_BODY_RETURNING_COLON_DELIMITED_LIST'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301852748629940627)
,p_query_column_id=>1
,p_column_alias=>'ROW_NUM'
,p_column_display_sequence=>1
,p_column_heading=>'ROW_NUM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301852364197940626)
,p_query_column_id=>2
,p_column_alias=>'ACTION'
,p_column_display_sequence=>2
,p_column_heading=>'ACTION'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301851975752940626)
,p_query_column_id=>3
,p_column_alias=>'C001'
,p_column_display_sequence=>3
,p_column_heading=>'C001'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301851537522940625)
,p_query_column_id=>4
,p_column_alias=>'C002'
,p_column_display_sequence=>4
,p_column_heading=>'C002'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301851158979940625)
,p_query_column_id=>5
,p_column_alias=>'C003'
,p_column_display_sequence=>5
,p_column_heading=>'C003'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301850720683940624)
,p_query_column_id=>6
,p_column_alias=>'C004'
,p_column_display_sequence=>6
,p_column_heading=>'C004'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301850328401940624)
,p_query_column_id=>7
,p_column_alias=>'C005'
,p_column_display_sequence=>7
,p_column_heading=>'C005'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301849995410940623)
,p_query_column_id=>8
,p_column_alias=>'C006'
,p_column_display_sequence=>8
,p_column_heading=>'C006'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301849546410940623)
,p_query_column_id=>9
,p_column_alias=>'C007'
,p_column_display_sequence=>9
,p_column_heading=>'C007'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301849131256940622)
,p_query_column_id=>10
,p_column_alias=>'C008'
,p_column_display_sequence=>10
,p_column_heading=>'C008'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301848712365940622)
,p_query_column_id=>11
,p_column_alias=>'C009'
,p_column_display_sequence=>11
,p_column_heading=>'C009'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301848369075940620)
,p_query_column_id=>12
,p_column_alias=>'C010'
,p_column_display_sequence=>12
,p_column_heading=>'C010'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301847908646940620)
,p_query_column_id=>13
,p_column_alias=>'C011'
,p_column_display_sequence=>13
,p_column_heading=>'C011'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301847541760940620)
,p_query_column_id=>14
,p_column_alias=>'C012'
,p_column_display_sequence=>14
,p_column_heading=>'C012'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301847148766940619)
,p_query_column_id=>15
,p_column_alias=>'C013'
,p_column_display_sequence=>15
,p_column_heading=>'C013'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301846774437940619)
,p_query_column_id=>16
,p_column_alias=>'C014'
,p_column_display_sequence=>16
,p_column_heading=>'C014'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301846312315940619)
,p_query_column_id=>17
,p_column_alias=>'C015'
,p_column_display_sequence=>17
,p_column_heading=>'C015'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301845954609940619)
,p_query_column_id=>18
,p_column_alias=>'C016'
,p_column_display_sequence=>18
,p_column_heading=>'C016'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301845579822940617)
,p_query_column_id=>19
,p_column_alias=>'C017'
,p_column_display_sequence=>19
,p_column_heading=>'C017'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301845171245940617)
,p_query_column_id=>20
,p_column_alias=>'C018'
,p_column_display_sequence=>20
,p_column_heading=>'C018'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301844727042940616)
,p_query_column_id=>21
,p_column_alias=>'C019'
,p_column_display_sequence=>21
,p_column_heading=>'C019'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301844382326940614)
,p_query_column_id=>22
,p_column_alias=>'C020'
,p_column_display_sequence=>22
,p_column_heading=>'C020'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301843976594940613)
,p_query_column_id=>23
,p_column_alias=>'C021'
,p_column_display_sequence=>23
,p_column_heading=>'C021'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301843530606940611)
,p_query_column_id=>24
,p_column_alias=>'C022'
,p_column_display_sequence=>24
,p_column_heading=>'C022'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301843125391940611)
,p_query_column_id=>25
,p_column_alias=>'C023'
,p_column_display_sequence=>25
,p_column_heading=>'C023'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301842766641940611)
,p_query_column_id=>26
,p_column_alias=>'C024'
,p_column_display_sequence=>26
,p_column_heading=>'C024'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301842395064940610)
,p_query_column_id=>27
,p_column_alias=>'C025'
,p_column_display_sequence=>27
,p_column_heading=>'C025'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301841937736940610)
,p_query_column_id=>28
,p_column_alias=>'C026'
,p_column_display_sequence=>28
,p_column_heading=>'C026'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301841507032940609)
,p_query_column_id=>29
,p_column_alias=>'C027'
,p_column_display_sequence=>29
,p_column_heading=>'C027'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301841199783940609)
,p_query_column_id=>30
,p_column_alias=>'C028'
,p_column_display_sequence=>30
,p_column_heading=>'C028'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301840757738940608)
,p_query_column_id=>31
,p_column_alias=>'C029'
,p_column_display_sequence=>31
,p_column_heading=>'C029'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301840337356940608)
,p_query_column_id=>32
,p_column_alias=>'C030'
,p_column_display_sequence=>32
,p_column_heading=>'C030'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301839920315940607)
,p_query_column_id=>33
,p_column_alias=>'C031'
,p_column_display_sequence=>33
,p_column_heading=>'C031'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301839566058940607)
,p_query_column_id=>34
,p_column_alias=>'C032'
,p_column_display_sequence=>34
,p_column_heading=>'C032'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301839170878940606)
,p_query_column_id=>35
,p_column_alias=>'C033'
,p_column_display_sequence=>35
,p_column_heading=>'C033'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301838805539940606)
,p_query_column_id=>36
,p_column_alias=>'C034'
,p_column_display_sequence=>36
,p_column_heading=>'C034'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301838398137940605)
,p_query_column_id=>37
,p_column_alias=>'C035'
,p_column_display_sequence=>37
,p_column_heading=>'C035'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301837961207940605)
,p_query_column_id=>38
,p_column_alias=>'C036'
,p_column_display_sequence=>38
,p_column_heading=>'C036'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301837589378940604)
,p_query_column_id=>39
,p_column_alias=>'C037'
,p_column_display_sequence=>39
,p_column_heading=>'C037'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301837202355940604)
,p_query_column_id=>40
,p_column_alias=>'C038'
,p_column_display_sequence=>40
,p_column_heading=>'C038'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301836802709940603)
,p_query_column_id=>41
,p_column_alias=>'C040'
,p_column_display_sequence=>41
,p_column_heading=>'C040'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301836323777940603)
,p_query_column_id=>42
,p_column_alias=>'C041'
,p_column_display_sequence=>42
,p_column_heading=>'C041'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301835953708940602)
,p_query_column_id=>43
,p_column_alias=>'C042'
,p_column_display_sequence=>43
,p_column_heading=>'C042'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301835567687940602)
,p_query_column_id=>44
,p_column_alias=>'C043'
,p_column_display_sequence=>44
,p_column_heading=>'C043'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301835139283940602)
,p_query_column_id=>45
,p_column_alias=>'C044'
,p_column_display_sequence=>45
,p_column_heading=>'C044'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301834756157940602)
,p_query_column_id=>46
,p_column_alias=>'C045'
,p_column_display_sequence=>46
,p_column_heading=>'C045'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3212140534168071393)
,p_plug_name=>'Data Load Process Train'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayLabels'
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_list_id=>wwv_flow_imp.id(3301876706392013520)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2010149141494510257
,p_translate_title=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3301833517024940600)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3212140410395071392)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'< Previous'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1373:&SESSION.::&DEBUG.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3301834393200940601)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3212140410395071392)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3301833958964940601)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3212140410395071392)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Load Data'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3301832699366940599)
,p_branch_action=>'f?p=&APP_ID.:1375:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3301833958964940601)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3301833164020940599)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_LOAD_UPLOADED_DATA'
,p_process_name=>'Prepare Uploaded Data'
,p_attribute_01=>wwv_flow_imp.id(3257130263574435536)
,p_attribute_02=>'P1375_INSERT_COUNT'
,p_attribute_03=>'P1375_UPDATE_COUNT'
,p_attribute_04=>'P1375_ERROR_COUNT'
,p_attribute_05=>'P1375_REVIEW_COUNT'
,p_process_error_message=>'Data Loading Failed'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3301833958964940601)
,p_internal_uid=>3186049030164626894
);
wwv_flow_imp.component_end;
end;
/
