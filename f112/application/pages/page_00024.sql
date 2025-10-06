prompt --application/pages/page_00024
begin
--   Manifest
--     PAGE: 00024
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>24
,p_name=>'frmUploadMedia'
,p_alias=>'FRMUPLOADMEDIA'
,p_page_mode=>'MODAL'
,p_step_title=>'Upload Multiple Files'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3297885827832708678)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>2121795032473542284
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4289188453002242078)
,p_plug_name=>'Buttons Container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4325373279692539350)
,p_plug_name=>'Upload Multiple Files'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'MEDIA_DETAIL'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2879866509041118802)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4289188453002242078)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Upload'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2879866938631118803)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(4289188453002242078)
,p_button_name=>'RETURN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2879870463798118811)
,p_branch_name=>'RESET_ID'
,p_branch_action=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:RP:P24_MEDIA_HD_ID:&P24_MEDIA_HD_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(2879866509041118802)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2879867600977118804)
,p_name=>'P24_FILE_DATA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4325373279692539350)
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_inline_help_text=>'<p style="color:red"><b>When uploading files, aim to keep the file names distinct for each document record they are attached to. </b></p>'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'Y',
  'display_as', 'DROPZONE_INLINE',
  'purge_file_at', 'REQUEST',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2879868009061118805)
,p_name=>'P24_MEDIA_HD_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4325373279692539350)
,p_item_source_plug_id=>wwv_flow_imp.id(4325373279692539350)
,p_use_cache_before_default=>'NO'
,p_source=>'MEDIA_HD_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2879868434717118805)
,p_name=>'P24_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(4325373279692539350)
,p_item_source_plug_id=>wwv_flow_imp.id(4325373279692539350)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2879869643003118810)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(4325373279692539350)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Fetch Row from MEDIA_DETAIL'
,p_internal_uid=>2764085509146805105
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2879869958712118811)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(4325373279692539350)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process Row of MEDIA_DETAIL'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>2764085824855805106
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2879869212827118810)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2879866938631118803)
,p_internal_uid=>2764085078970805105
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2879868806140118809)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert_file'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' ',
'--   CURSOR l_cur_files IS',
'--     SELECT c001    AS filename,',
'--            c002    AS mime_type,',
'--            d001    AS date_created,',
'--            n001    AS file_id,',
'--            blob001 AS file_content',
'--       FROM apex_collections',
'--      WHERE collection_name = ''DROPZONE_UPLOAD'';',
'',
'    l_files apex_t_varchar2;',
'BEGIN',
'    l_files := apex_string.split(:P24_FILE_DATA, '':'');',
'',
'    FOR i in 1..l_files.count LOOP',
'        for c1 in (select * from apex_application_temp_files where name = l_files(i)) loop',
'            begin',
'                INSERT INTO media_detail (',
'                    FILE_NAME,',
'                    FILE_MIME,',
'                    FILE_DATE_UPLOADED,',
'                    FILE_DATA,',
'                    MEDIA_HD_ID',
'                ) ',
'                VALUES (',
'                    c1.filename,',
'                    c1.mime_type,',
'                    c1.created_on,',
'                    c1.blob_content,',
'                    :P24_MEDIA_HD_ID',
'                        );',
'            exception',
'                when others then null;',
'            end;',
'        END LOOP;',
'    END LOOP;',
'',
'    DELETE FROM ',
'        MEDIA_DETAIL ',
'    WHERE ',
'        MEDIA_HD_ID = :P24_MEDIA_HD_ID ',
'        AND FILE_DATA IS NULL',
'        AND FILE_NAME IS NULL',
'        AND FILE_MIME IS NULL',
'        AND FILE_DATE_UPLOADED IS NULL;',
' ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2879866509041118802)
,p_process_success_message=>'Files uploaded.'
,p_internal_uid=>2764084672283805104
);
wwv_flow_imp.component_end;
end;
/
