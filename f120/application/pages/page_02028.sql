prompt --application/pages/page_02028
begin
--   Manifest
--     PAGE: 02028
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
 p_id=>2028
,p_name=>'frmwizCompleted'
,p_step_title=>'wizCompleted'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3584896301505629885)
,p_step_template=>2979075366320325194
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3613870981332198831)
,p_plug_name=>'wizregion'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayLabels'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>9
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_list_id=>wwv_flow_imp.id(3632872932832890963)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2010149141494510257
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3614952179340688825)
,p_plug_name=>'Information'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--success'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>8
,p_location=>null
,p_plug_source=>'SUCCESS! You have completed the setup of PeoplePay HRMIS, all the data is verified by default. You can begin routine processing of transactions via the various modules available to your access.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3614952743312688825)
,p_plug_name=>'HR Configuration Completed'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent2:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>11
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3631566613118805892)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3614952743312688825)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Start'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:2020:&SESSION.::&DEBUG.::P2020_ID:&APP_ORG_ID.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3631565843265805889)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3614952743312688825)
,p_button_name=>'PREVIOUS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Previous'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3631566255993805890)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3614952743312688825)
,p_button_name=>'FINISH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Finish'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3631563509920805882)
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3631566255993805890)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3631563903391805882)
,p_branch_action=>'f?p=&APP_ID.:2024:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3631565843265805889)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3631565408067805887)
,p_name=>'P2028_ITEM1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3614952743312688825)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3631564375022805883)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'verify_All'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'update HR_HCF_ORGANISATION',
'set   TRANSACTION_TYPE_ID = 110',
'    , STATUS              = 280',
'where id = :APP_ORG_ID;',
'',
'update HR_HCF_ORGSTRUCTUREHD',
'set   TRANSACTION_TYPE_ID =110	',
'    , STATUS              =276',
'where org_id=:APP_ORG_ID;',
'',
'update HR_HCF_ORGSTRUCTUREDTL',
'set   TRANSACTION_TYPE_ID =110	',
'    , STATUS              =343',
'where exists(select 1',
'             from HR_HCF_ORGSTRUCTUREHD a',
'             where a.id=HR_HCF_ORGSTRUCTUREDTL.ORG_STRUCTURE_ID',
'             and org_id=:APP_ORG_SHR_DED);',
'',
'update HR_HCF_JOB',
'set   TRANSACTION_TYPE_ID =110	',
'    , STATUS              =304',
'where org_id=:APP_ORG_SHR_DED;',
'',
'update HR_HCF_POSITIONGRADE',
'set   TRANSACTION_TYPE_ID =110	',
'    , STATUS              =300',
'where org_id=:APP_ORG_SHR_DED;',
'',
'update HR_HCF_POSITION',
'set   TRANSACTION_TYPE_ID =110	',
'    , STATUS              =296',
'    , verified_by = ''rlangford''',
'    , verified_date =current_date',
'where exists (select 1',
'              from HR_HCF_ORGSTRUCTUREHD a join HR_HCF_ORGSTRUCTUREDTL b on a.id=b.ORG_STRUCTURE_ID',
'              where b.id = HR_HCF_POSITION.ORGDTL_ID',
'              and org_id=:APP_ORG_ID);',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3631566255993805890)
,p_process_success_message=>'All data entered via this wizard has been auto verified.'
,p_internal_uid=>3209772381824809309
);
wwv_flow_imp.component_end;
end;
/
