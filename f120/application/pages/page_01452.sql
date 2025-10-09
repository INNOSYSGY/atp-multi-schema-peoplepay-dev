prompt --application/pages/page_01452
begin
--   Manifest
--     PAGE: 01452
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
 p_id=>1452
,p_name=>'rptAuditConfiguration'
,p_step_title=>'Listing Self Serve Configuration'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3806721070126816462)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3807158850583545770)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3779802424252775629)
,p_plug_name=>'Listing of Self Serve & Audit Trail Tables'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select AUDIT_TABLE_REPO.ID as ID,',
'    AUDIT_TABLE_REPO.TABLE_NAME as TABLE_NAME,',
'    AUDIT_TABLE_REPO.AUDIT_TABLE as AUDIT_TABLE,',
'    AUDIT_TABLE_REPO.CREATED_BY as CREATED_BY,',
'    AUDIT_TABLE_REPO.CREATION_DATE as CREATION_DATE,',
'    AUDIT_TABLE_REPO.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    AUDIT_TABLE_REPO.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    AUDIT_TABLE_REPO.START_AUDIT as START_AUDIT,',
'    AUDIT_TABLE_REPO.END_AUDIT as END_AUDIT,',
'    AUDIT_TABLE_REPO.REMARKS as REMARKS ',
' from AUDIT_TABLE_REPO AUDIT_TABLE_REPO',
' WHERE AUDIT_TABLE_REPO.ORG_ID =:APP_ORG_ID'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3779802223786775628)
,p_name=>'Listing of Audit Tables'
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
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1451:&SESSION.::&DEBUG.::P1451_ID,P1451_RETURN_KEY:#ID#,1452'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'PPLERP'
,p_internal_uid=>94861632549397507
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854054518195689244)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854054129847689242)
,p_db_column_name=>'TABLE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Table Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TABLE_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854053671597689242)
,p_db_column_name=>'AUDIT_TABLE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Audit Table'
,p_column_type=>'STRING'
,p_static_id=>'AUDIT_TABLE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854053281471689241)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CREATED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854052880802689241)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Creation Date'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_static_id=>'CREATION_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854052498177689240)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854052089660689240)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854051719651689239)
,p_db_column_name=>'START_AUDIT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Start Audit'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'START_AUDIT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854051283317689238)
,p_db_column_name=>'END_AUDIT'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'End Audit'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'END_AUDIT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854050910281689236)
,p_db_column_name=>'REMARKS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REMARKS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3779801118378775623)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'206133'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'TABLE_NAME:START_AUDIT:END_AUDIT:REMARKS:CREATED_BY:CREATION_DATE:LAST_CHANGED_BY:LAST_CHANGED_DATE:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3854049829519689230)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3779802424252775629)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:199:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3854050208383689233)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3779802424252775629)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1451:&SESSION.::&DEBUG.:1451:P1451_RETURN_KEY:1452'
,p_security_scheme=>wwv_flow_imp.id(3807160206270545771)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3811265824017192032)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3779802424252775629)
,p_button_name=>'GENERATE_SELF'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate Tables'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3811265901874192033)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GENERATE_TABLES'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'     v_id number;',
'begin',
'    for I in ',
'            (',
'                select  rownum, table_name,  ''N'' audit_table, trunc(current_date),  :APP_ORG_ID org_id',
'                from user_tables',
'                where (table_name like ''HR%''',
'                or table_name like ''PA%''',
'                or table_name like ''MEDIA%'')',
'                AND table_name NOT like ''%APL%'') loop',
'      ',
'       begin     ',
'           ',
'            INSERT INTO audit_table_repo ( table_name, audit_table, start_audit,  org_id)',
'            values (i.table_name, i.audit_table, trunc(current_date), i.org_id)',
'            returning ID into v_id;',
'            ',
'            for J in (                     ',
'                        SELECT table_name, column_name field_name, ''N'' audit_field, ''N'' self_serve_field,  REPLACE(DISPLAY_AS_FORM,''NATIVE_'','''') DISPLAY_AS_FORM',
'                        ,CASE WHEN REPLACE(DISPLAY_AS_FORM,''NATIVE_'','''') IN (''TEXT_FIELD'',''TEXTAREA'') then ''VARCHAR2(''||MAX_WIDTH||'')''',
'                            WHEN REPLACE(DISPLAY_AS_FORM,''NATIVE_'','''') =''NUMBER_FIELD'' then ''NUMBER(''||MAX_WIDTH||'')''',
'                            WHEN REPLACE(DISPLAY_AS_FORM,''NATIVE_'','''') =''DATE_PICKER'' then ''DATE''',
'                            ELSE ',
'                            ''BLOB'' END DATA_TYPE, LABEL',
'                        FROM APEX_UI_DEFAULTS_COLUMNS    ',
'                        where  column_name not in (''LAST_MODIFIED_BY'',''DATE_LAST_MODIFIED'',''ENTRY_DATE'', ''ENTERED_BY'', ''LAST_CHANGED_BY'', ''LAST_CHANGED_DATE'', ''CREATION_DATE''',
'                        ,''CREATED_BY'', ''ID'', ''MACHINE_INSERT'', ''MACHINE_UPDATE'',''ORG_ID'',''VERIFIED_BY'', ''VERIFIED_DATE'',''APPROVED_BY'',''APPROVED_DATE'', ''TRANSACTION_TYPE_ID'',''STATUS'',',
'                        ''EMP_ID'',''IND_ID'')',
'                        AND table_name = i.table_name ',
'                        ) loop',
'            ',
'            begin',
'',
'            ',
'                     insert into audit_field_repo(table_name, field_name, audit_field, table_id, self_serve_field,ITEM_TYPE, DATA_TYPE,FIELD_LABEL)',
'                     values (j.table_name, j.field_name, j.audit_field, v_id, j.self_serve_field, J.DISPLAY_AS_FORM, J.DATA_TYPE ,J.LABEL);',
'             ',
'            exception',
'                when others then null;',
'            end;',
'        ',
'            end loop;',
'           ',
'        exception',
'            when others then null;',
'        end;',
'        ',
'    end loop;',
'    ',
'    commit;',
'end;  ',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3811265824017192032)
,p_internal_uid=>3167649218487009893
);
wwv_flow_imp.component_end;
end;
/
