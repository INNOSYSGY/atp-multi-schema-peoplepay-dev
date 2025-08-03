prompt --application/pages/page_00000
begin
--   Manifest
--     PAGE: 00000
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.7'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page - Desktop'
,p_step_title=>'Global Page - Desktop'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3297699837518767469)
,p_plug_name=>'Global Region'
,p_region_name=>'global-body'
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_footer=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'/*Colors*/',
'',
'.white-bg {',
'	background-color: white',
'}',
'',
'',
'/*Select2*/',
'',
'.select2-container .select2-selection--single {',
'	height: 24px!important',
'}',
'',
'.select2-container--default .select2-selection--single {',
'	border-radius: 2px!important;',
'	background-color: #f9f9f9!important;',
'	border: 1px solid #dfdfdf!important',
'}',
'',
'.select2-container--default .select2-selection--single:hover {',
'	background-color: #fff!important',
'}',
'',
'.select2-container--default .select2-selection--single:focus {',
'	background-color: #fff!important;',
'	border-color: #0572ce!important',
'}',
'',
'.select2-container--default .select2-selection--single .select2-selection__arrow {',
'	height: 22px!important',
'}',
'',
'.select2-container--default .select2-selection--single .select2-selection__rendered {',
'	padding-left: 3px!important;',
'	line-height: 22px!important;',
'	font-size: 1.2rem!important',
'}',
'',
'.select2-container--default .select2-selection--single .select2-selection__clear {',
'	position: absolute!important;',
'	top: 1px!important;',
'	right: 22px!important;',
'	height: 22px!important;',
'	width: 20px!important;',
'	text-align: center!important;',
'	font-size: 1.5rem!important',
'}',
'',
'.select2-container--default .select2-selection--single .select2-selection__clear:hover {',
'	color: red;',
'	background: #ff000020;',
'	border-radius: 50%',
'}',
'',
'',
'/*RegionCenter*/',
'',
'div.center-region-title>div.t-Region-header>div.t-Region-headerItems.t-Region-headerItems--title {',
'	text-align: center',
'}',
'',
'',
'/*StrongText*/',
'',
'.strong-text {',
'	padding: 5px;',
'	background-color: #fceaea;',
'	color: #404040;',
'	border-radius: 2px;',
'	border: 1px solid rgba(0, 0, 0, .1);',
'	box-shadow: 0 2px 4px -2px rgba(0, 0, 0, .075);',
'	text-align: center',
'}',
'',
'',
'/*Modal small breadcrumbs*/',
'',
'.t-Dialog-header .t-Breadcrumb-item:last-child {',
'	display: inline-block',
'}',
'',
'.t-Dialog-header .t-BreadcrumbRegion--useBreadcrumbTitle .t-Breadcrumb-item:last-child .t-Breadcrumb-label {',
'	overflow: visible;',
'	display: inline-block',
'}',
'',
'.t-Dialog-header .t-BreadcrumbRegion--useBreadcrumbTitle .t-Breadcrumb-item:last-child,',
'.t-BreadcrumbRegion-titleText {',
'	margin: 0;',
'	display: inline-block;',
'	font-size: 1.2rem;',
'	line-height: 1.5;',
'	text-overflow: clip;',
'	overflow: visible',
'}',
'',
'',
'/*Org Img*/',
'',
'.org-img {',
'	width: auto!important;',
'	background-color: #ffffff00',
'}',
'',
'.org-logo {',
'	height: 100%',
'}',
'',
'',
'/*D3 Treechart*/',
'',
'#d3_treechart_D3CTreemapTop>svg {',
'	width: 100%',
'}',
'',
'',
'/*count*/.counter{',
'    background: rgb(51, 102, 184);',
'    padding-left: 0.5rem;',
'    padding-right: 0.5rem;',
'    font-size: 1.2rem;',
'    margin: 2px;',
'    padding-top: 0.1rem;',
'    color: #fff;',
'    padding-bottom: 0.1rem;',
'    border-radius: 2px;',
'}',
'/**/',
'</style>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3280876056769458284)
,p_name=>'P0_HOMEPAGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3297699837518767469)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3292248805019579897)
,p_name=>'P0_IMG_SRC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3297699837518767469)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3297699768749767468)
,p_name=>'P0_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3297699837518767469)
,p_placeholder=>'Search'
,p_display_as=>'PLUGIN_SI.ABAKUS.SEARCHNAVIGATIONMENU'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'S',
  'attribute_02', 'fa-search',
  'attribute_03', wwv_flow_string.join(wwv_flow_t_varchar2(
    '{"MenuOpen":false,   ',
    ' "MenuClickOpenClose":true, ',
    ' "SaveSS":true,',
    ' "ShortcutSaveSS":false,',
    ' "ShrtCaseSensitive":true,',
    ' "OnSearchShowChildren": true,',
    ' "UseFocus":true,',
    ' "Shortcuts" : []',
    '}')),
  'attribute_04', wwv_flow_string.join(wwv_flow_t_varchar2(
    '.t-TreeNav .a-TreeView-node--topLevel ul .a-TreeView-content .fa {',
    '   vertical-align: top;',
    '   width: 32px; ',
    '   height: 10px !important;',
    '   line-height: 10px !important;',
    '   text-align: center;',
    '   transition: width .2s ease;',
    '}',
    '/* Search results setting */',
    '.a-TreeView-label strong {',
    '    font-weight:bold; ',
    '    color:black;',
    '    background-color:#ffef9a;',
    '}',
    '/* Input field style setting */',
    '.srch_nav input {',
    '    color:black;',
    '    background-color:#f1f6fa;',
    '    border-color:#ededed;',
    '}',
    '/* Input field on hover setting */',
    '.srch_nav input:focus {',
    '    border-color:#ff7052;',
    '}')))).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3300588523428067298)
,p_name=>'Set IG-SaveBtn Color'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3300588415189067297)
,p_event_id=>wwv_flow_imp.id(3300588523428067298)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("div.a-Toolbar > div.a-Toolbar-groupContainer.a-Toolbar-groupContainer--start > div:nth-child(5) > button.a-Button--hot").removeClass("a-Button--hot").addClass("t-Button--success");',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3292248634276579896)
,p_name=>'Set Org Logo Img'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3292248535889579895)
,p_event_id=>wwv_flow_imp.id(3292248634276579896)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P0_IMG_SRC'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'return apex_util.prepare_url(''f?p=''||:APP_ID||'':inline:''||:APP_SESSION||''::NO::FILE_ID,FILE_TYPE:''||:APP_ORG_ID||'',ORGANISATION'');'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3292248451012579894)
,p_event_id=>wwv_flow_imp.id(3292248634276579896)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var img = document.getElementById("P0_IMG_SRC"),',
'	string = "<img src=" + img.value + '' class="org-logo animated rollIn"></img>'';',
'$(".org-img").html(string);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3292244315733579853)
,p_name=>'Set Img before Dropzone2'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3292244299037579852)
,p_event_id=>wwv_flow_imp.id(3292244315733579853)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(".dz-message > span").wrap(''<div class="test"></div>'').before(''<img src="#APP_IMAGES#visual-search-drop.svg" alt="Upload-Files"></img><br>'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3280875960135458283)
,p_name=>'Set HomePage'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3280875632193458280)
,p_event_id=>wwv_flow_imp.id(3280875960135458283)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P0_HOMEPAGE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select apex_util.prepare_url(''f?p=''||:APP_ID||'':''||',
'    trim(nvl(load_home,''1''))',
'       ||'':''||:APP_SESSION||''::NO:::'') url',
'from tbluser',
'where upper(user_name) = upper(:APP_USER)'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3280875851111458282)
,p_event_id=>wwv_flow_imp.id(3280875960135458283)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var collection = document.getElementsByClassName("t-Header-logo-link"),',
'	homepage = document.getElementById("P0_HOMEPAGE");',
'for (i in collection) collection[i].href = homepage.value;',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3174966299277762256)
,p_name=>'dy_Check_for_Notifications'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3174966374360762257)
,p_event_id=>wwv_flow_imp.id(3174966299277762256)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(function () {',
'//please read the comments when editing this function',
'    //created by: Mohamed Khan',
'    //created date: 21st Apr, 2020',
'    //purpose: to check for workflow notificiations and refresh the notification region and count without refreshing page',
'var g_navNotifiactionCountSelector = ''.app-navBar--notificationCount'',',
'    g_notificationInterval         = 2000; // 2 seconds',
'',
'function updateNavNotificationCount(pNotificationCount) {',
'   $(g_navNotifiactionCountSelector).find(''.t-Button-badge'').text(pNotificationCount);',
'}',
'',
'function getNotificationCount() {',
'    var result = apex.server.process( "CHECK_NOTIFICATIONS", {',
'    } );',
'',
'    result.done( function( data ) {',
'        apex.debug.log(''Refreshing Notification Count'');',
'        if (data.newNotification) {',
'            updateNavNotificationCount(data.notificationCount);',
'        }',
'    } ).fail(function( jqXHR, textStatus, errorThrown ) {',
'        // handle error',
'    } ).always( function() {',
'        // code that needs to run for both success and failure cases',
'    } );',
'}',
'',
'// call the on demand process using the defined interval',
'setInterval(function(){ getNotificationCount();}, g_notificationInterval);',
'    ',
'})();'))
);
wwv_flow_imp.component_end;
end;
/
