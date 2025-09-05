prompt --application/pages/page_00077
begin
--   Manifest
--     PAGE: 00077
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
 p_id=>77
,p_name=>'Data Load Results'
,p_step_title=>'Data Load Results'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* apply u-Report--dataLoad CSS class to Data Load Report and hide empty columns */',
'apex.jQuery("table.standardLook").addClass("u-Report u-Report--standardLook");',
'apex.jQuery("table.u-Report--standardLook tr:nth-child(1) td:empty").css("display", "none");',
'apex.jQuery("table.u-Report--standardLook tr th:empty").css("display", "none");',
'apex.jQuery("table.u-Report--standardLook tr th:empty").each( function (idx, elem) { apex.jQuery("table.u-Report--standardLook tr td[headers=\""+apex.jQuery(elem).attr(''id'')+"\"]").css("display", "none");});'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3218233267960293551)
,p_plug_name=>'Data Load Wizard Progress'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayLabels'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_imp.id(3200606182859885059)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2010149141494510257
,p_translate_title=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3218233573000293552)
,p_plug_name=>'Data Load Results'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width:100%;max-width:none;"'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3218235952446293553)
,p_name=>'Failed Records'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_css_classes=>'data-upload-result'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width:100%;max-width:none;" '
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select n001 as row_num,',
'       wwv_flow_lang.system_message( ''DATA_LOAD.'' || c049 ) as action,',
'       c048 as error,',
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
'   and c047 in (''FAILED'') ',
' order by seq_id'))
,p_display_when_condition=>'P77_ERROR_COUNT'
,p_display_condition_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_lazy_loading=>false
,p_query_headings=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare  ',
'    l_string varchar(32667);',
'begin',
'    l_string := wwv_flow_lang.system_message(''DATA_LOAD.SEQUENCE_ACTION'');',
'    l_string := l_string ||'':''|| wwv_flow_lang.system_message(''ERROR'');',
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
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200665769222898191)
,p_query_column_id=>1
,p_column_alias=>'ROW_NUM'
,p_column_display_sequence=>1
,p_column_heading=>'ROW_NUM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200666238490898191)
,p_query_column_id=>2
,p_column_alias=>'ACTION'
,p_column_display_sequence=>2
,p_column_heading=>'ACTION'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200666589735898192)
,p_query_column_id=>3
,p_column_alias=>'ERROR'
,p_column_display_sequence=>3
,p_column_heading=>'ERROR'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200667000336898192)
,p_query_column_id=>4
,p_column_alias=>'C001'
,p_column_display_sequence=>4
,p_column_heading=>'C001'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200667402428898193)
,p_query_column_id=>5
,p_column_alias=>'C002'
,p_column_display_sequence=>5
,p_column_heading=>'C002'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200667847063898193)
,p_query_column_id=>6
,p_column_alias=>'C003'
,p_column_display_sequence=>6
,p_column_heading=>'C003'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200668204932898194)
,p_query_column_id=>7
,p_column_alias=>'C004'
,p_column_display_sequence=>7
,p_column_heading=>'C004'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200668558997898194)
,p_query_column_id=>8
,p_column_alias=>'C005'
,p_column_display_sequence=>8
,p_column_heading=>'C005'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200669045405898195)
,p_query_column_id=>9
,p_column_alias=>'C006'
,p_column_display_sequence=>9
,p_column_heading=>'C006'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200669354739898195)
,p_query_column_id=>10
,p_column_alias=>'C007'
,p_column_display_sequence=>10
,p_column_heading=>'C007'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200669789597898196)
,p_query_column_id=>11
,p_column_alias=>'C008'
,p_column_display_sequence=>11
,p_column_heading=>'C008'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200670194939898197)
,p_query_column_id=>12
,p_column_alias=>'C009'
,p_column_display_sequence=>12
,p_column_heading=>'C009'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200670632069898197)
,p_query_column_id=>13
,p_column_alias=>'C010'
,p_column_display_sequence=>13
,p_column_heading=>'C010'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200670984059898198)
,p_query_column_id=>14
,p_column_alias=>'C011'
,p_column_display_sequence=>14
,p_column_heading=>'C011'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200671411092898198)
,p_query_column_id=>15
,p_column_alias=>'C012'
,p_column_display_sequence=>15
,p_column_heading=>'C012'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200671791024898199)
,p_query_column_id=>16
,p_column_alias=>'C013'
,p_column_display_sequence=>16
,p_column_heading=>'C013'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200672175842898199)
,p_query_column_id=>17
,p_column_alias=>'C014'
,p_column_display_sequence=>17
,p_column_heading=>'C014'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200672603640898200)
,p_query_column_id=>18
,p_column_alias=>'C015'
,p_column_display_sequence=>18
,p_column_heading=>'C015'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200673015439898200)
,p_query_column_id=>19
,p_column_alias=>'C016'
,p_column_display_sequence=>19
,p_column_heading=>'C016'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200673438266898201)
,p_query_column_id=>20
,p_column_alias=>'C017'
,p_column_display_sequence=>20
,p_column_heading=>'C017'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200673790054898201)
,p_query_column_id=>21
,p_column_alias=>'C018'
,p_column_display_sequence=>21
,p_column_heading=>'C018'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200674240448898202)
,p_query_column_id=>22
,p_column_alias=>'C019'
,p_column_display_sequence=>22
,p_column_heading=>'C019'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200674602964898202)
,p_query_column_id=>23
,p_column_alias=>'C020'
,p_column_display_sequence=>23
,p_column_heading=>'C020'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200675038596898203)
,p_query_column_id=>24
,p_column_alias=>'C021'
,p_column_display_sequence=>24
,p_column_heading=>'C021'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200675374799898203)
,p_query_column_id=>25
,p_column_alias=>'C022'
,p_column_display_sequence=>25
,p_column_heading=>'C022'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200675770956898204)
,p_query_column_id=>26
,p_column_alias=>'C023'
,p_column_display_sequence=>26
,p_column_heading=>'C023'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200676157475898204)
,p_query_column_id=>27
,p_column_alias=>'C024'
,p_column_display_sequence=>27
,p_column_heading=>'C024'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200676557569898205)
,p_query_column_id=>28
,p_column_alias=>'C025'
,p_column_display_sequence=>28
,p_column_heading=>'C025'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200676974586898205)
,p_query_column_id=>29
,p_column_alias=>'C026'
,p_column_display_sequence=>29
,p_column_heading=>'C026'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200677398949898206)
,p_query_column_id=>30
,p_column_alias=>'C027'
,p_column_display_sequence=>30
,p_column_heading=>'C027'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200677771986898207)
,p_query_column_id=>31
,p_column_alias=>'C028'
,p_column_display_sequence=>31
,p_column_heading=>'C028'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200678160495898207)
,p_query_column_id=>32
,p_column_alias=>'C029'
,p_column_display_sequence=>32
,p_column_heading=>'C029'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200678564880898208)
,p_query_column_id=>33
,p_column_alias=>'C030'
,p_column_display_sequence=>33
,p_column_heading=>'C030'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200678965514898208)
,p_query_column_id=>34
,p_column_alias=>'C031'
,p_column_display_sequence=>34
,p_column_heading=>'C031'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200679405849898209)
,p_query_column_id=>35
,p_column_alias=>'C032'
,p_column_display_sequence=>35
,p_column_heading=>'C032'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200679755941898209)
,p_query_column_id=>36
,p_column_alias=>'C033'
,p_column_display_sequence=>36
,p_column_heading=>'C033'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200680211324898210)
,p_query_column_id=>37
,p_column_alias=>'C034'
,p_column_display_sequence=>37
,p_column_heading=>'C034'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200680601842898210)
,p_query_column_id=>38
,p_column_alias=>'C035'
,p_column_display_sequence=>38
,p_column_heading=>'C035'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200680963814898211)
,p_query_column_id=>39
,p_column_alias=>'C036'
,p_column_display_sequence=>39
,p_column_heading=>'C036'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200681390233898211)
,p_query_column_id=>40
,p_column_alias=>'C037'
,p_column_display_sequence=>40
,p_column_heading=>'C037'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200681806317898212)
,p_query_column_id=>41
,p_column_alias=>'C038'
,p_column_display_sequence=>41
,p_column_heading=>'C038'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200682227125898212)
,p_query_column_id=>42
,p_column_alias=>'C040'
,p_column_display_sequence=>42
,p_column_heading=>'C040'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200682566223898213)
,p_query_column_id=>43
,p_column_alias=>'C041'
,p_column_display_sequence=>43
,p_column_heading=>'C041'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200682979101898213)
,p_query_column_id=>44
,p_column_alias=>'C042'
,p_column_display_sequence=>44
,p_column_heading=>'C042'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200683363307898214)
,p_query_column_id=>45
,p_column_alias=>'C043'
,p_column_display_sequence=>45
,p_column_heading=>'C043'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200683813664898214)
,p_query_column_id=>46
,p_column_alias=>'C044'
,p_column_display_sequence=>46
,p_column_heading=>'C044'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200684183661898215)
,p_query_column_id=>47
,p_column_alias=>'C045'
,p_column_display_sequence=>47
,p_column_heading=>'C045'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3218255751445293572)
,p_name=>'Records Changed by Another User.'
,p_template=>4072358936313175081
,p_display_sequence=>30
,p_region_css_classes=>'data-upload-result'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width:100%;max-width:none;" '
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select n001 as row_num,',
'       wwv_flow_lang.system_message( ''DATA_LOAD.'' || c049 ) as action,',
'       c048 as error,',
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
'   and c049 in (''REVIEW'') ',
' order by seq_id'))
,p_display_when_condition=>'P77_REVIEW_COUNT'
,p_display_condition_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_lazy_loading=>false
,p_query_headings=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare  ',
'    l_string varchar(32667);',
'begin',
'    l_string := wwv_flow_lang.system_message(''DATA_LOAD.SEQUENCE_ACTION'');',
'    l_string := l_string ||'':''|| wwv_flow_lang.system_message(''ERROR'');',
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
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200660484120898181)
,p_query_column_id=>1
,p_column_alias=>'ROW_NUM'
,p_column_display_sequence=>1
,p_column_heading=>'ROW_NUM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200660870630898181)
,p_query_column_id=>2
,p_column_alias=>'ACTION'
,p_column_display_sequence=>2
,p_column_heading=>'ACTION'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200661301309898182)
,p_query_column_id=>3
,p_column_alias=>'ERROR'
,p_column_display_sequence=>3
,p_column_heading=>'ERROR'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200661660782898183)
,p_query_column_id=>4
,p_column_alias=>'C001'
,p_column_display_sequence=>4
,p_column_heading=>'C001'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200662112316898183)
,p_query_column_id=>5
,p_column_alias=>'C002'
,p_column_display_sequence=>5
,p_column_heading=>'C002'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200662480883898184)
,p_query_column_id=>6
,p_column_alias=>'C003'
,p_column_display_sequence=>6
,p_column_heading=>'C003'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200644058193898151)
,p_query_column_id=>7
,p_column_alias=>'C004'
,p_column_display_sequence=>7
,p_column_heading=>'C004'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200644462950898152)
,p_query_column_id=>8
,p_column_alias=>'C005'
,p_column_display_sequence=>8
,p_column_heading=>'C005'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200644913482898153)
,p_query_column_id=>9
,p_column_alias=>'C006'
,p_column_display_sequence=>9
,p_column_heading=>'C006'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200645285240898154)
,p_query_column_id=>10
,p_column_alias=>'C007'
,p_column_display_sequence=>10
,p_column_heading=>'C007'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200645694756898154)
,p_query_column_id=>11
,p_column_alias=>'C008'
,p_column_display_sequence=>11
,p_column_heading=>'C008'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200646134411898155)
,p_query_column_id=>12
,p_column_alias=>'C009'
,p_column_display_sequence=>12
,p_column_heading=>'C009'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200646489563898156)
,p_query_column_id=>13
,p_column_alias=>'C010'
,p_column_display_sequence=>13
,p_column_heading=>'C010'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200646852355898157)
,p_query_column_id=>14
,p_column_alias=>'C011'
,p_column_display_sequence=>14
,p_column_heading=>'C011'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200647306720898157)
,p_query_column_id=>15
,p_column_alias=>'C012'
,p_column_display_sequence=>15
,p_column_heading=>'C012'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200647663515898158)
,p_query_column_id=>16
,p_column_alias=>'C013'
,p_column_display_sequence=>16
,p_column_heading=>'C013'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200648129411898159)
,p_query_column_id=>17
,p_column_alias=>'C014'
,p_column_display_sequence=>17
,p_column_heading=>'C014'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200648499908898159)
,p_query_column_id=>18
,p_column_alias=>'C015'
,p_column_display_sequence=>18
,p_column_heading=>'C015'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200648871991898160)
,p_query_column_id=>19
,p_column_alias=>'C016'
,p_column_display_sequence=>19
,p_column_heading=>'C016'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200649303952898161)
,p_query_column_id=>20
,p_column_alias=>'C017'
,p_column_display_sequence=>20
,p_column_heading=>'C017'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200649671361898161)
,p_query_column_id=>21
,p_column_alias=>'C018'
,p_column_display_sequence=>21
,p_column_heading=>'C018'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200650108069898162)
,p_query_column_id=>22
,p_column_alias=>'C019'
,p_column_display_sequence=>22
,p_column_heading=>'C019'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200650455701898163)
,p_query_column_id=>23
,p_column_alias=>'C020'
,p_column_display_sequence=>23
,p_column_heading=>'C020'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200650917869898164)
,p_query_column_id=>24
,p_column_alias=>'C021'
,p_column_display_sequence=>24
,p_column_heading=>'C021'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200651255821898164)
,p_query_column_id=>25
,p_column_alias=>'C022'
,p_column_display_sequence=>25
,p_column_heading=>'C022'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200651657803898165)
,p_query_column_id=>26
,p_column_alias=>'C023'
,p_column_display_sequence=>26
,p_column_heading=>'C023'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200652070365898166)
,p_query_column_id=>27
,p_column_alias=>'C024'
,p_column_display_sequence=>27
,p_column_heading=>'C024'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200652488142898166)
,p_query_column_id=>28
,p_column_alias=>'C025'
,p_column_display_sequence=>28
,p_column_heading=>'C025'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200652902181898167)
,p_query_column_id=>29
,p_column_alias=>'C026'
,p_column_display_sequence=>29
,p_column_heading=>'C026'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200653262253898168)
,p_query_column_id=>30
,p_column_alias=>'C027'
,p_column_display_sequence=>30
,p_column_heading=>'C027'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200653676925898169)
,p_query_column_id=>31
,p_column_alias=>'C028'
,p_column_display_sequence=>31
,p_column_heading=>'C028'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200654063113898169)
,p_query_column_id=>32
,p_column_alias=>'C029'
,p_column_display_sequence=>32
,p_column_heading=>'C029'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200654499831898170)
,p_query_column_id=>33
,p_column_alias=>'C030'
,p_column_display_sequence=>33
,p_column_heading=>'C030'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200654902966898171)
,p_query_column_id=>34
,p_column_alias=>'C031'
,p_column_display_sequence=>34
,p_column_heading=>'C031'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200655311509898171)
,p_query_column_id=>35
,p_column_alias=>'C032'
,p_column_display_sequence=>35
,p_column_heading=>'C032'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200655728783898172)
,p_query_column_id=>36
,p_column_alias=>'C033'
,p_column_display_sequence=>36
,p_column_heading=>'C033'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200656131368898173)
,p_query_column_id=>37
,p_column_alias=>'C034'
,p_column_display_sequence=>37
,p_column_heading=>'C034'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200656535344898174)
,p_query_column_id=>38
,p_column_alias=>'C035'
,p_column_display_sequence=>38
,p_column_heading=>'C035'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200656892176898174)
,p_query_column_id=>39
,p_column_alias=>'C036'
,p_column_display_sequence=>39
,p_column_heading=>'C036'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200657332948898175)
,p_query_column_id=>40
,p_column_alias=>'C037'
,p_column_display_sequence=>40
,p_column_heading=>'C037'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200657674806898176)
,p_query_column_id=>41
,p_column_alias=>'C038'
,p_column_display_sequence=>41
,p_column_heading=>'C038'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200658062980898176)
,p_query_column_id=>42
,p_column_alias=>'C040'
,p_column_display_sequence=>42
,p_column_heading=>'C040'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200658528140898177)
,p_query_column_id=>43
,p_column_alias=>'C041'
,p_column_display_sequence=>43
,p_column_heading=>'C041'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200658885094898178)
,p_query_column_id=>44
,p_column_alias=>'C042'
,p_column_display_sequence=>44
,p_column_heading=>'C042'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200659304651898179)
,p_query_column_id=>45
,p_column_alias=>'C043'
,p_column_display_sequence=>45
,p_column_heading=>'C043'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200659745463898179)
,p_query_column_id=>46
,p_column_alias=>'C044'
,p_column_display_sequence=>46
,p_column_heading=>'C044'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3200660086468898180)
,p_query_column_id=>47
,p_column_alias=>'C045'
,p_column_display_sequence=>47
,p_column_heading=>'C045'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3200663548400898186)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3218233573000293552)
,p_button_name=>'FINISH'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Finish'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1371:&SESSION.::&DEBUG.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3200663885418898186)
,p_name=>'P77_INSERT_COUNT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3218233573000293552)
,p_prompt=>'Inserted Row(s):'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_label_alignment=>'RIGHT'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3200664268294898188)
,p_name=>'P77_UPDATE_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3218233573000293552)
,p_prompt=>'Updated Row(s):'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_label_alignment=>'RIGHT'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3200664716913898189)
,p_name=>'P77_ERROR_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3218233573000293552)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Failed Row(s):'
,p_source=>'select count(*) c from apex_collections where collection_name = ''LOAD_CONTENT'' and c047 = ''FAILED'''
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_label_alignment=>'RIGHT'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3200665061298898189)
,p_name=>'P77_REVIEW_COUNT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3218233573000293552)
,p_prompt=>'To be Reviewed Row(s):'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_label_alignment=>'RIGHT'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp.component_end;
end;
/
