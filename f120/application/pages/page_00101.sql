prompt --application/pages/page_00101
begin
--   Manifest
--     PAGE: 00101
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
 p_id=>101
,p_name=>'login Page'
,p_alias=>'LOGIN'
,p_step_title=>'login Page'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*$(".custom-icon").wrap("<a href=\"http://gplinc.net/\"></a>");*/',
'',
'/*--on click direct to new page--*/',
'  $(".custom-icon").on("click",function(){',
'         window.open(''http://Innosysgy.com'',''_blank'');',
'     });',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.appIcon.custom {',
'background-position: -192px -192px;',
'margin: 0 auto;',
'}',
'',
'',
'.custom-icon {',
'    display: inline-block;',
'    width: 280px;',
'    height: 114px;',
'    /*background-image: url("#WORKSPACE_IMAGES#PeoplePay logo.png");*/',
'    background-image: url("#APP_IMAGES#Peoplepaynew.png"); ',
'    background-color: white;',
'    background-position: center;',
'    background-repeat: no-repeat;',
'    background-size:contain;',
'    vertical-align: middle;',
'    margin-left: auto; /*35%*/',
'    /*border: none;',
'    -webkit-border-radius: 4px;',
'    -moz-border-radius: 4px;',
'    border-radius: 4px;',
'    -webkit-box-shadow: 0 0 1px rgba(0,0,0,0.75) inset;',
'    -moz-box-shadow: 0 0 1px rgba(0,0,0,0.75) inset;',
'    box-shadow: 0 0 1px rgba(0,0,0,0.75) inset;',
'    margin-right: 8px;*/',
'}',
'',
'.t-Login-header {text-align:center;padding:0}',
'',
'',
'.t-Login-region {',
'    position: relative;',
'  width: 410px;',
'  margin: 0 auto;',
'  background: rgba(130,130,130,0);',
'  padding: 20px 22px;',
'  border: 1px solid;',
'  border-top-color: rgba(255,255,255,.4);',
'  border-left-color: rgba(255,255,255,.4);',
'  border-bottom-color: rgba(60,60,60,.4);',
'}',
'',
'body{',
'    background-image: url("#WORKSPACE_IMAGES#HR_Strategic_Planning_cover.jpg");',
'    background-size:  cover;',
'}',
'',
'@media screen and (max-width: 992px) {',
'    body.t-PageBody--login {',
'        background-image: url("#WORKSPACE_IMAGES#HR_Strategic_Planning_cover.jpg");',
'        background-size: cover;',
'    }',
'  /* body {',
'    background-image: url("#WORKSPACE_IMAGES#HR_Strategic_Planning_cover.jpg");',
'    background-size:  cover;',
'  } */',
'}',
'@media screen and (max-width: 600px) {',
'    body.t-PageBody--login {',
'        background-image: url("#WORKSPACE_IMAGES#HR_Strategic_Planning_cover.jpg");',
'        background-size: cover;',
'    }',
'  /* body {',
'   background-image: url("#WORKSPACE_IMAGES#HR_Strategic_Planning_cover.jpg");',
'   background-size:  cover; */',
'  /* } */',
'}',
'',
'.label{',
'    color: white;',
'    font-size: 16px;',
'    background: rgb(253,66,29);',
'    background: -moz-linear-gradient(36deg, rgba(253,66,29,0.9920343137254902) 0%, rgba(180,58,163,1) 45%, rgba(69,180,252,1) 100%);',
'    background: -webkit-linear-gradient(36deg, rgba(253,66,29,0.9920343137254902) 0%, rgba(180,58,163,1) 45%, rgba(69,180,252,1) 100%);',
'    background: linear-gradient(36deg, rgba(253,66,29,0.9920343137254902) 0%, rgba(180,58,163,1) 45%, rgba(69,180,252,1) 100%);',
'    filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#fd421d",endColorstr="#45b4fc",GradientType=1);',
'    border-radius:6px;',
'    padding: 2px 2px;',
'    box-shadow: 5px 5px 5px 5px;',
'}',
'',
'.title {',
'        color:  purple;',
'        font-family: calibri;',
'        font-size: 2.5rem;',
'        font-weight: bold;',
'}',
'',
'body.t-PageBody--login.apex-side-nav.apex-icons-fontapex.apex-theme-redwood-light {',
'    background-image: url("https://static.oracle.com/cdn/apex/21.1.0/themes/theme_42/1.6/images/rw/textures/texture-23.png");',
'    background-size: contain !important;',
'    background-position: center !important;',
'    background-color: rgb(134, 207, 181);',
'}',
'',
'.t-Login-region{background-color:#ffffff;}',
''))
,p_step_template=>2101157952850466385
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6251681219766264247)
,p_plug_name=>'Body'
,p_region_css_classes=>'animated fadeInUp'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7286642533597008168)
,p_plug_name=>'<span class = "title">Enterprise HRMIS  v9.0 </span>'
,p_region_name=>'custom'
,p_parent_plug_id=>wwv_flow_imp.id(6251681219766264247)
,p_icon_css_classes=>'custom-icon '
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_plug_template=>2674157997338192145
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4600977322456277862)
,p_plug_name=>'spacer'
,p_parent_plug_id=>wwv_flow_imp.id(7286642533597008168)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6253806321853125739)
,p_plug_name=>'Reset Password'
,p_parent_plug_id=>wwv_flow_imp.id(7286642533597008168)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(421965361531928651)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(7286642533597008168)
,p_button_name=>'RESET'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reset'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P101_RESET'
,p_button_condition2=>'1'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(421965821473928651)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(7286642533597008168)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P101_RESET'
,p_button_condition2=>'1'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(421966181269928651)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(7286642533597008168)
,p_button_name=>'SEND_MFA_CODE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Send MFA Code'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-code'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(421970739451928647)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6253806321853125739)
,p_button_name=>'LOGIN_TROUBLE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--stretch'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'<font color="purple"><b>Trouble Logging In? </b></font>'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P101_RESET'
,p_button_condition2=>'1'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(421966612109928650)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7286642533597008168)
,p_button_name=>'LOGIN'
,p_button_static_id=>'LOGIN_BTN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Click to Log In'
,p_button_position=>'NEXT'
,p_button_condition=>'P101_RESET'
,p_button_condition2=>'1'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1831148178829860794)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7286642533597008168)
,p_prompt=>'Username'
,p_placeholder=>'username'
,p_post_element_text=>'<span class="t-Login-iconValidation a-Icon icon-check"></span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>100
,p_display_when=>'P101_RESET'
,p_display_when2=>'1'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1831148570490860793)
,p_name=>'P101_USERNAME_RESET'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7286642533597008168)
,p_item_default=>'P101_USERNAME'
,p_item_default_type=>'ITEM'
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when=>'P101_RESET'
,p_display_when2=>'1'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1831149038472860792)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7286642533597008168)
,p_prompt=>'Password'
,p_placeholder=>'password'
,p_post_element_text=>'<span class="t-Login-iconValidation a-Icon icon-check"></span>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>64
,p_cMaxlength=>100
,p_display_when=>'P101_RESET'
,p_display_when2=>'1'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_restricted_characters=>'WEB_SAFE'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1831149415368860791)
,p_name=>'P101_CHOOSE_ENV'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(7286642533597008168)
,p_prompt=>'Choose Environment'
,p_post_element_text=>'<span class="t-Login-iconValidation a-Icon icon-check"></span>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  organisation_name a, schema b',
'from apex_workspace_schemas SCH JOIN sys_multi_schema MULTI ON SCH.schema = MULTI.schema_name',
'where exists (select 1',
'              from vw_multischemaUser curuser',
'              where sch.schema = curuser.application_schema_name',
'              and (effective_to is null or effective_to > trunc(current_date))',
'              and trim(UPPER(user_name)) = UPPER(nvl(:P101_USERNAME, :P101_USERNAME_RESET))',
'              )',
'order by 1'))
,p_lov_cascade_parent_items=>'P101_USERNAME,P101_USERNAME_RESET'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-building-o'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_restricted_characters=>'WEB_SAFE'
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
 p_id=>wwv_flow_imp.id(1831149808533860791)
,p_name=>'P101_MFA_TEST'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(7286642533597008168)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1831150225836860790)
,p_name=>'P101_CODE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(7286642533597008168)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1831150625157860790)
,p_name=>'P101_MFA_CODE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(7286642533597008168)
,p_prompt=>'Multi-Factor Authentication'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<b style="color:red">HELP:</b><br>',
'<p style="text-align: left">Multi-factor Authentication (MFA) is an authentication method that requires the user to provide two or more verification factors to gain access to a resource. You are <b style="color:red">required</b> to enter your MFA cod'
||'e before logging in. The code is sent via your e-mail by clicking on the <b style="color:black;">Send MFA Code</b> button.<p>'))
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1831151499859860789)
,p_name=>'P101_RESET'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(7286642533597008168)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(421971825571928647)
,p_validation_name=>'chk_pwd_expiry'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'        v_Password_Duration tbluser.Password_Duration%type;   ',
'        v_due_date          tbluser.password_last_change%type; ',
'        v_change_on_login   tbluser.change_on_logon%type;',
'        v_Schema            varchar2(50);',
'        v_user              varchar2(200);',
'',
'begin',
'        begin',
'         ',
'            v_Schema := :P101_CHOOSE_ENV;',
'            v_user := :P101_USERNAME;',
'',
'            select nvl(Password_Duration,0) Password_Duration, password_last_change + nvl(Password_Duration,0) Password_Duration, change_on_logon',
'            into v_Password_Duration, v_due_date, v_change_on_login ',
'            from tbluser ',
'            where UPPER(USER_NAME) =upper(v_user);',
'',
'        exception',
'            when others then null;',
'              v_Password_Duration    :=0;',
'              v_change_on_login     :=''N'';         ',
'        end;',
'',
'        if v_Password_Duration > 0 or v_change_on_login =''Y'' then',
'            if trunc(current_date) > v_due_date or v_change_on_login =''Y'' then ',
'                return ''You password has expired click trouble Logging In reset your password. Retrieve new password from your email.'';',
'            end if;',
'        else',
'                return '''';',
'        end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_imp.id(421966612109928650)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(421972161063928646)
,p_validation_name=>'chk_blank_mfa'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'        v_count pls_integer:=0;     ',
'        v_Schema            varchar2(50);',
'        v_user              varchar2(200);',
'',
'begin        ',
'         ',
'        v_Schema := :P101_CHOOSE_ENV;',
'        v_user := :P101_USERNAME;',
'',
'        select count(1) into v_count',
'        from tbluser b',
'        where UPPER(USER_NAME) =upper(v_user)',
'        and mfa_type = ''CODE'';',
'',
'    if v_count > 0 and :P101_MFA_CODE IS NULL then   ',
'        return ''You must enter Multi Factor Authentication code for user ''||:P101_USERNAME ||'' before proceed to login. Click the send MFA Code before logging In!'';',
'    else',
'        return '''';',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_imp.id(421966612109928650)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(421971400062928647)
,p_validation_name=>'chk_MFA_expiry'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'        v_count number:=0;      v_expiry date;',
'        v_Schema                varchar2(50);',
'        v_user                  varchar2(200);',
'        v_testcounter           number:=0; ',
'      ',
'',
'begin        ',
'         ',
'        v_Schema := :P101_CHOOSE_ENV;',
'        v_user := trim(:P101_USERNAME);',
'',
'    ',
'        select count(1) into v_testcounter',
'        from tbluser b ',
'        where upper(user_name) = upper(v_user)',
'        and mfa_type =''CODE'';',
'',
'',
'    select count(1) into v_count',
'    from tbluser b join app_sec_user_access_code a on b.user_id =a.userid',
'    where UPPER(USER_NAME) =upper(v_user)',
'    and mfa_type = ''CODE'';',
'',
'',
'        select MAX(EXPIRY) into v_expiry',
'        from app_sec_user_access_code a',
'        where exists (  select 1',
'                        from tbluser b',
'                        where b.user_id = a.userid',
'                        and user_name= upper(v_user)',
'                      );',
'',
'        if v_testcounter > 0 then',
'            if v_count = 0 and :P101_MFA_CODE is not null or (current_date > v_expiry and :P101_MFA_CODE is not null ) then ',
'                return ''Your MFA has expired, please click the Send MFA Code for a new Code.'';',
'            else',
'                return '''';',
'            end if;',
'        else',
'                return '''';',
'       end if;',
'      ',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_imp.id(421966612109928650)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(421972599777928646)
,p_validation_name=>'accept_reject_login'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_count pls_integer:=0;  V_STORE_MFA_CODE pls_integer:=0; v_count_active pls_integer:=0; ',
' ',
'    v_Schema            varchar2(50);',
'    v_user              varchar2(200);',
'    v_MFA_CODE          varchar2(50);',
'',
'begin        ',
'         ',
'    v_Schema := :P101_CHOOSE_ENV;',
'    v_user := :P101_USERNAME;',
'    v_MFA_CODE := upper(trim(:P101_MFA_CODE));',
'',
'    --check to see if user is in MFA mode',
'    select count(1) into v_count_active',
'    from tbluser b',
'    where UPPER(USER_NAME) =upper(trim(v_user))',
'    and mfa_type = ''CODE'';',
'',
'  ',
'  --checks to see if MFA code exist',
'    select count(1) into v_count',
'    from tbluser b join app_sec_user_access_code a on b.user_id =a.userid',
'    where UPPER(USER_NAME) =upper(trim(:pv_user))',
'    AND to_char(ACCESS_CODE)  = v_MFA_CODE',
'    and mfa_type = ''CODE'';',
'',
' if v_count_active > 0 then',
'',
'        if v_count > 0 and v_MFA_CODE is not null then',
'             return TRUE;',
'        else',
'            return FALSE;      ',
'        end if;     ',
'else',
'    return TRUE;',
'end if;',
'',
' end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The Code provided doesn''t match the one sent in your email or it has expired.'
,p_when_button_pressed=>wwv_flow_imp.id(421966612109928650)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(421975737156928644)
,p_name=>'Reset'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(421970739451928647)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(421976192681928644)
,p_event_id=>wwv_flow_imp.id(421975737156928644)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P101_USERNAME_RESET'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'SELECT :P101_USERNAME FROM DUAL'
,p_attribute_07=>'P101_USERNAME'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(421976679423928643)
,p_event_id=>wwv_flow_imp.id(421975737156928644)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P101_RESET'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'1'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(421977182312928643)
,p_event_id=>wwv_flow_imp.id(421975737156928644)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(421977610295928643)
,p_name=>'Reset_Account'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(421965361531928651)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(421978092319928643)
,p_event_id=>wwv_flow_imp.id(421977610295928643)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_email varchar2(200);',
'v_user_id number;',
'v_new_password varchar(20);',
'v_name varchar(500);',
'v_msg_body varchar(500);',
'v_update_stm varchar2(300);',
'v_get_userdtl_stm varchar2(300);',
'',
'',
'begin ',
'',
'    begin',
'',
'      select user_id, email, FIRST_NAME||'' ''||LAST_NAME  into  v_user_id, v_email, v_name',
'      from  tbluser ',
'      where upper(USER_NAME)= upper(:P101_USERNAME_RESET);',
'',
'     exception',
'         when others then',
'             v_email:=null;',
'    end;',
'',
'',
'if v_email is not null then',
'    ',
'    v_new_password:=DBMS_RANDOM.string(''x'',10);',
'',
'    update tbluser',
'    set password= v_new_password,',
'     change_on_logon=''N''',
'    where user_id= v_user_id;',
'',
'  commit;',
'',
'  ',
'  v_msg_body:=''Dear ''||v_name||''<br><p>Please note that your PeoplePay''''s password has changed.</p><p>Your new password is:</p><b>''||v_new_password||''</b><p>For security reasons, we recommend that you change your password the next time you log into t'
||'he system.</p><p>We wish you have a nice day on behalf of the Peoplepay team.</p>'';',
'',
'  pkg_email.send_mail(',
'                  p_to=>v_email,',
'                  p_cc=>NULL,',
'                  p_bcc=>NULL,',
'                  p_from=>''apps@innosysgy.com'',',
'                  p_subject=> ''PeoplePay Account Reset'',',
'                  p_html_msg=>v_msg_body,',
'                  p_text_msg=>null,',
'                 p_attachment_id=>null',
'                 );   ',
'',
'',
'end if;',
'end;'))
,p_attribute_02=>'P101_USERNAME_RESET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(421978580420928642)
,p_event_id=>wwv_flow_imp.id(421977610295928643)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P101_RESET'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'0'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(421979123278928642)
,p_event_id=>wwv_flow_imp.id(421977610295928643)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P101_CODE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'1'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(421979626752928642)
,p_event_id=>wwv_flow_imp.id(421977610295928643)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(421980042224928642)
,p_name=>'New'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(421965821473928651)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(421980504250928642)
,p_event_id=>wwv_flow_imp.id(421980042224928642)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P101_RESET'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'0'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(421981012300928641)
,p_event_id=>wwv_flow_imp.id(421980042224928642)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P101_CODE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'0'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(421981488634928641)
,p_event_id=>wwv_flow_imp.id(421980042224928642)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(421981937014928641)
,p_name=>'send mfa code'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(421966181269928651)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(421982408414928641)
,p_event_id=>wwv_flow_imp.id(421981937014928641)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_user_id number; ',
'    V_MFA_expiry number; ',
'    v_access_cde varchar2(200); ',
'    v_send_email varchar2(200);',
'    v_email varchar2(200); ',
'    v_first_name varchar2(200); ',
'    V_mfa_delivery_method varchar2(20); ',
'    v_body varchar2(2000);',
'    v_subject varchar2(500);',
'    v_to varchar2(100);',
'    v_msg_body varchar(500);',
'    v_user Varchar2(200);',
'    v_Schema Varchar2(100);',
'',
'begin',
'     begin ',
'         v_user := :P101_USERNAME;',
'         v_Schema := :P101_CHOOSE_ENV;',
'',
'        select user_id, mfa_duration_mins, email, first_name, trim(MFA_DELIVERY_METHOD) into v_user_id, V_MFA_expiry, v_email, v_first_name, V_mfa_delivery_method                  ',
'        from tbluser',
'        where UPPER(TRIM(user_name)) = UPPER(TRIM(v_user));',
'',
'      exception',
'         when others then null;',
'      end;   ',
'',
'       begin ',
'            pkg_security.MFA_GET_USER_ACCESS_CODE(v_user_id, V_MFA_expiry);',
'       end;',
'',
'     ',
'     begin ',
'             SELECT ACCESS_CODE into v_send_email',
'             FROM app_sec_user_access_code',
'             WHERE USERID = v_user_id',
'             AND ROWNUM <=1; ',
'',
'     exception ',
'        when others then null; ',
'     end;      ',
'',
'',
'    v_msg_body:=''Dear ''|| v_first_name ||'', <br> You are attempting to sign into PeoplePay HRMIS. Here is your MFA authentication code which will expire in <b>''||V_MFA_expiry||'' </b>minutes: <br><br><b>'' ||v_send_email||'' </b><br><br>Regards,<br>Peop'
||'lepay HRMIS'';',
'',
'',
'    if  V_mfa_delivery_method=''EMAIL'' and v_email is not null then',
'       ',
'           pkg_email.send_mail(',
'                      p_to=>v_email,',
'                      p_cc=>NULL,',
'                      p_bcc=>NULL,',
'                      p_from=>''apps@innosysgy.com'',',
'                      p_subject=> ''MFA Code'',',
'                     p_html_msg=>v_msg_body,',
'                     p_text_msg=>null,',
'                     p_attachment_id=>null',
'                     );   ',
'',
'    end if;  ',
'',
'   ',
'exception    ',
'    when others then null;    ',
'end;',
''))
,p_attribute_02=>'P101_USERNAME,P101_CHOOSE_ENV'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(421982884747928640)
,p_event_id=>wwv_flow_imp.id(421981937014928641)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Authentication code was sent to your email.'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(421983316928928640)
,p_name=>'show_mfa_field'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P101_MFA_TEST'
,p_condition_element=>'P101_MFA_TEST'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(421983762303928640)
,p_event_id=>wwv_flow_imp.id(421983316928928640)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P101_MFA_CODE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(421984299918928640)
,p_event_id=>wwv_flow_imp.id(421983316928928640)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P101_MFA_CODE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(421984675501928640)
,p_name=>'show_send_code_btn'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P101_MFA_TEST'
,p_condition_element=>'P101_MFA_TEST'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(421985202511928639)
,p_event_id=>wwv_flow_imp.id(421984675501928640)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(421966181269928651)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(421985748928928639)
,p_event_id=>wwv_flow_imp.id(421984675501928640)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(421966181269928651)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(421986064090928639)
,p_name=>'show_mfa_attr'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P101_CHOOSE_ENV'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(421986606393928639)
,p_event_id=>wwv_flow_imp.id(421986064090928639)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P101_MFA_TEST'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'    v_string varchar2(250);',
'    v_Schema varchar2(100);',
'    v_user varchar2(100);',
'    v_mfa_test number:=0;',
'',
'begin',
'    ',
'    v_Schema := :P101_CHOOSE_ENV;',
'    v_user   := :P101_USERNAME;',
'',
'  if :P101_CHOOSE_ENV is not null then',
'',
'    select count(1)  into v_mfa_test',
'    from tbluser ',
'    where UPPER(USER_NAME) = upper(v_user) ',
'    AND MFA_TYPE IN (''CODE'', ''PERSONAL_QUESTION'');',
'',
'    return v_mfa_test;',
'  else',
'    return 0;',
'  end if;',
'',
'end;'))
,p_attribute_07=>'P101_USERNAME,P101_CHOOSE_ENV,P101_MFA_TEST'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(421987035696928639)
,p_name=>'show_mfa_attr_tb'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(421970739451928647)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(421987487073928638)
,p_event_id=>wwv_flow_imp.id(421987035696928639)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P101_MFA_TEST'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(1)',
'from tbluser',
'where UPPER(USER_NAME) =UPPER(:P101_USERNAME)',
'AND MFA_TYPE IN (''CODE'', ''PERSONAL_QUESTION'')'))
,p_attribute_07=>'P101_USERNAME'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(421974064651928645)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>115966205310245776
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(421974545001928645)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin    ',
'',
'    apex_custom_auth.login(',
'        p_uname       => :P101_USERNAME,',
'        p_password    => :P101_PASSWORD,',
'        p_session_id  => v(''APP_SESSION''),',
'        p_app_page    => :APP_ID||'':1'');',
'',
'     :G_PARSING_SCHEMA := :P101_CHOOSE_ENV;',
'       ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(421966612109928650)
,p_internal_uid=>115966685660245776
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(421972860495928646)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'refresh_globals'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    ---refresh global variables due to multi schema logins',
'declare',
'',
'    v_stmt varchar2(4000);',
'',
'begin',
'',
'    v_stmt :=',
'   ''begin ''',
'    ||',
'    ''<%schema%>.rpc_settings.set_globals (p_target_schema => :1, p_user => :2);''',
'    ||',
'    '' :3 := <%schema%>.rpc_settings.get_value (''''SHORT_NAME'''');''',
'    ||',
'    '' :4 := <%schema%>.rpc_settings.get_value (''''ORG_ID'''');''',
'    ||',
'    '' :5 := <%schema%>.rpc_settings.get_value (''''PARENT_ORG_ID'''');''',
'    ||',
'    '' :6 := <%schema%>.rpc_settings.get_value (''''COUNTRY'''');''',
'    ||',
'     '' :7 := <%schema%>.rpc_settings.get_value (''''CHK_NOTIFY'''');''',
'    ||',
'     '' :8 := <%schema%>.rpc_settings.get_value (''''HOME'''');''',
'    ||',
'     '' :9 := <%schema%>.rpc_settings.get_value (''''MODULE_ID'''');''',
'    ||',
'     '' :10 := <%schema%>.rpc_settings.get_value (''''MY_POSTING_ONLY'''');''',
'    ||',
'     '' :11 := <%schema%>.rpc_settings.get_value (''''USER_ID'''');''',
'    ||',
'     '' :12 := <%schema%>.rpc_settings.get_value (''''ORG_STRUCTURE_ID'''');''',
'    ||',
'     '' :13 := <%schema%>.rpc_settings.get_value (''''MASTER_ORG_ID'''');''',
'    ||',
'    '' end;'';',
'    v_stmt := replace (v_stmt, ''<%schema%>'', :P101_CHOOSE_ENV);',
'    ',
'    execute immediate v_stmt',
'        using :P101_CHOOSE_ENV, :P101_USERNAME,',
'         out :APP_ORG_NAME, out :APP_ORG_ID, out :APP_ORG_SHR_DED, out :APP_COUNTRY,',
'         out :APP_CHK_NOTIFY, out :APP_HOME, out :APP_MODULE_ID	, out :APP_MY_POSTING_ONLY,',
'         out :APP_USER_ID, out :APP_ORG_STRUCTURE_ID, out :MASTER_ORG_ID',
'         ;',
'',
'    --    pkg_errorlogger.debug_log(''Refresh globals'', ''APP_ORG_NAME'',null ,:APP_ORG_NAME,  :P101_CHOOSE_ENV);',
'     --   pkg_errorlogger.debug_log(''Refresh globals'', ''APP_ORG_ID'',:APP_ORG_ID ,null,  :P101_CHOOSE_ENV);',
'-- exception   ',
'--    when others then null;     ',
'',
'    pkg_errorlogger.debug_log(''Refresh globals'', ''APP_ORG_NAME'',null ,:APP_ORG_NAME,  :P101_CHOOSE_ENV);',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(421966612109928650)
,p_internal_uid=>115965001154245777
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(421975316975928644)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'audit_login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  Insert Into tblloginuserlog (App_User, Login_Date_Time, Session_Id, From_Client, APPLICATION_ID)',
'  values(v(''APP_USER''),current_timestamp,:APP_SESSION,SYS_CONTEXT(''USERENV'',''TERMINAL''), v(''APP_ID''));',
'',
'   delete ',
'   from tblloginuserlog',
'   where upper(App_User)=''NOBODY'';',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(421966612109928650)
,p_internal_uid=>115967457634245775
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(421973274192928645)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(421965821473928651)
,p_internal_uid=>115965414851245776
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(421973696406928645)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>115965837065245776
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(421974939033928645)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reset Password'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'v_reset boolean:=false;',
'begin',
'for i in (select * from tbluser where upper(reset_code) = upper(:p101_code)) loop',
'    pkg_security.p_reset_password (i.user_name,''password'');    ',
'    v_reset :=true;',
'    :p101_username:=i.user_name;',
'    :p101_password:=''password'';',
'end loop;',
'',
'if v_reset = false then',
'',
'alert (''Reset Code is Invalid, Please Retry the Password Reset.'');',
'end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Your password has been reset.'
,p_internal_uid=>115967079692245776
);
wwv_flow_imp.component_end;
end;
/
