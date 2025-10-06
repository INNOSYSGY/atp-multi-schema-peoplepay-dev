prompt --application/pages/page_11002
begin
--   Manifest
--     PAGE: 11002
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
 p_id=>11002
,p_name=>'Data / Table Mapping'
,p_step_title=>'Data / Table Mapping'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3322979943250300599)
,p_inline_css=>'.rc-content-main {height: 400px; overflow: auto !important;}'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'06'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3323009322683251115)
,p_plug_name=>'Data Load Wizard Progress'
,p_region_template_options=>'t-Region--accent3:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayLabels'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_imp.id(3322988278153251095)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2010149141494510257
,p_translate_title=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3323009630029251115)
,p_plug_name=>'Data / Table Mapping'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_region_attributes=>'style="width:100%;max-width:none;"'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_source_type=>'NATIVE_DATA_UPLOAD_COLUMN_MAPPING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'data_load_def_id', wwv_flow_imp.id(3322988051872251094))).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3323010864398251115)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3323009630029251115)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3323010576657251115)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3323009630029251115)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:11001:&SESSION.::&DEBUG.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3323010027394251115)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3323009630029251115)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3323011689899251116)
,p_branch_action=>'f?p=&APP_ID.:11003:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3323010864398251115)
,p_branch_sequence=>10
,p_branch_condition_type=>'FUNCTION_BODY'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'                   begin',
'                            for c1 in (select skip_validation',
'                                      from apex_appl_load_tables',
'                                      where name = ''frmLoadWorkOrder'' and application_id = apex_application.g_flow_id )',
'                            loop',
'                                if c1.skip_validation = ''N'' then return true;',
'                                else return false;',
'                                end if;',
'                            end loop;',
'                        end;'))
,p_branch_condition_text=>'PLSQL'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3323012171014251116)
,p_branch_action=>'f?p=&APP_ID.:11004:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3323010864398251115)
,p_branch_sequence=>20
,p_branch_condition_type=>'FUNCTION_BODY'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'                   begin',
'                            for c1 in (select skip_validation',
'                                      from apex_appl_load_tables',
'                                      where name = ''frmLoadWorkOrder'' and application_id = apex_application.g_flow_id )',
'                            loop',
'                                if c1.skip_validation = ''Y'' then return true;',
'                                else return false;',
'                                end if;',
'                            end loop;',
'                        end;'))
,p_branch_condition_text=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3323011308876251116)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PREPARE_UPLOADED_DATA'
,p_process_name=>'Prepare Uploaded Data'
,p_attribute_01=>wwv_flow_imp.id(3322988051872251094)
,p_attribute_02=>'P11004_INSERT_COUNT'
,p_attribute_03=>'P11004_UPDATE_COUNT'
,p_attribute_04=>'P11004_ERROR_COUNT'
,p_attribute_05=>'P11004_REVIEW_COUNT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3323010864398251115)
,p_internal_uid=>3207227175019937411
);
wwv_flow_imp.component_end;
end;
/
