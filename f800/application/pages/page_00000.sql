prompt --application/pages/page_00000
begin
--   Manifest
--     PAGE: 00000
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>800
,p_default_id_offset=>221543258820678920
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
 p_id=>wwv_flow_imp.id(3825250955681129258)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(352002101058877053)
,p_plug_name=>'Help Widget'
,p_region_name=>'HELP_WIDGET_REGION'
,p_parent_plug_id=>wwv_flow_imp.id(3825250955681129258)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>50
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_page_name VARCHAR2(4000);  ',
'    l_count NUMBER := 0;  -- count of help rows',
'BEGIN',
'    -- Get the page name first',
'    BEGIN',
'        SELECT page_name INTO v_page_name',
'          FROM UTL_APP_PAGE_HELP',
'         WHERE application_id = :APP_ID',
'           AND page_id = :P0_CURRENT_PAGE',
'           AND ROWNUM = 1; ',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            v_page_name := ''Help Content'';',
'    END;',
'',
'    -- Inject floating button + popup container + styles',
'    htp.p(''',
'    <style>',
'      /* Popup container */',
'      #helpWidgetContent {',
'        display: none;',
'        position: fixed;',
'        bottom: 80px;',
'        right: 20px;',
'        width: 95%;',
'        max-width: 700px;',
'        max-height: 500px;',
'        overflow-y: auto;',
'        background-color: #ffffff;',
'        border: 2px solid #2196F3;',
'        border-radius: 6px;',
'        padding: 15px;',
'        z-index: 9999;',
'        box-shadow: 0 4px 8px rgba(0,0,0,0.2);',
'        scroll-behavior: smooth;',
'      }',
'',
'      /* Close button pinned top-right */',
'      #helpWidgetContent .closeBtn {',
'        position: absolute;',
'        top: 5px;',
'        right: 10px;',
'        font-size: 22px;',
'        font-weight: bold;',
'        cursor: pointer;',
'        color: #2196F3;',
'        z-index: 10;',
'      }',
'',
'      #helpWidgetContent h3 {',
'        font-size: 18px;',
'        margin: 0 40px 10px 0; /* leave space for close button */',
'        word-break: break-word; /* allow wrapping */',
'      }',
'',
'      .helpCardContainer {',
'        display: flex;',
'        flex-direction: column;',
'        gap: 15px;',
'        padding: 0;',
'      }',
'',
'      .helpCard {',
'        width: 100%;',
'        border: 2px solid #2196F3;',
'        border-radius: 6px;',
'        background-color: #ffffff;',
'        padding: 10px;',
'        box-sizing: border-box;',
'        cursor: pointer;',
'        overflow: hidden;',
'        max-height: 80px; /* collapsed height */',
'        transition: max-height 0.5s ease, background-color 0.5s ease, transform 0.3s ease;',
'      }',
'',
'      .helpCard.expanded {',
'        max-height: 1000px; /* expanded height */',
'        background-color: #f0f8ff;',
'        transform: scale(1.02);',
'      }',
'',
'      /* Floating widget button */',
'      #helpWidget {',
'        position: fixed;',
'        bottom: 20px;',
'        right: 20px;',
'        width: 40px;',
'        height: 40px;',
'        color: white;',
'        border-radius: 50%;',
'        display: flex;',
'        justify-content: center;',
'        align-items: center;',
'        font-size: 18px;',
'        cursor: pointer;',
'        z-index: 9999;',
'',
'        /* Pulsing animation */',
'        animation: pulse 2.5s infinite;',
'        background-color: #025f9c; /* fallback color */',
'      }',
'',
'      @keyframes pulse {',
'        0%   { transform: scale(1);   box-shadow: 0 0 0 0 rgba(33,150,243,0.6); background-color: #8E010E; }',
'        33%  { transform: scale(1.1); box-shadow: 0 0 0 20px rgba(33,150,243,0); background-color: #018196; }',
'        66%  { transform: scale(1.1); box-shadow: 0 0 0 20px rgba(33,150,243,0); background-color: #430D59; }',
'        100% { transform: scale(1);   box-shadow: 0 0 0 0 rgba(33,150,243,0); background-color: #8E010E; }',
'      }',
'',
'      /* Tooltip hint */',
'      #helpWidget::after {',
'        content: "Need help?";',
'        position: absolute;',
'        right: 60px;',
'        background: #2196F3;',
'        color: #fff;',
'        padding: 6px 10px;',
'        border-radius: 6px;',
'        white-space: nowrap;',
'        opacity: 0;',
'        transform: translateY(5px);',
'        pointer-events: none;',
'        transition: opacity 0.3s ease, transform 0.3s ease;',
'        font-size: 12px;',
'      }',
'',
'      #helpWidget:hover::after {',
'        opacity: 1;',
'        transform: translateY(0);',
'      }',
'',
'      /* --- DARK MODE (scoped only to the widget) --- */',
'      #helpWidgetContent.dark-mode {',
'        background-color: #1e1e1e;',
'        border-color: #666;',
'        color: #f5f5f5;',
'      }',
'',
'      #helpWidgetContent.dark-mode h3 {',
'        background-color: #2a2a2a;',
'        border-bottom: 2px solid #666;',
'        color: #f5f5f5;',
'      }',
'',
'      #helpWidgetContent.dark-mode .helpCard {',
'        background-color: #2a2a2a;',
'        border: 2px solid #555;',
'        color: #ddd;',
'      }',
'',
'      #helpWidgetContent.dark-mode .helpCard.expanded {',
'        background-color: #333;',
'      }',
'    </style>',
'',
'    <div id="helpWidget" style="font-size: 18px;">?</div>',
'    <div id="helpWidgetContent">',
'      <span class="closeBtn">&times;</span>',
unistr('      <h3 style="font-size:18px; display:flex; justify-content: space-between; flex-wrap: wrap; align-items: center;">'' || v_page_name|| ''<span id="darkModeToggle" style="cursor:pointer; font-size:18px;">Dark Mode\D83C\DF19</span></h3>'),
'      <div class="helpCardContainer">',
'    '');',
'',
'    -- Loop over help content and render cards',
'    FOR c1 IN (',
'        SELECT DBMS_LOB.SUBSTR(help_HTML, 4000, 1) AS help_HTML',
'          FROM UTL_APP_PAGE_HELP',
'         WHERE application_id = :APP_ID',
'           AND page_id = :P0_CURRENT_PAGE',
'           AND help_HTML IS NOT NULL',
'    ) LOOP',
'        l_count := l_count + 1;',
'        htp.p(''<div class="helpCard" title="Click to expand">'' || c1.help_HTML || ''</div>'');',
'    END LOOP;',
'',
'    -- If no help rows, show fallback card inside container',
'    IF l_count = 0 THEN',
'        htp.p(''<div class="helpCard" title="Click to expand" style="color:red; max-height: none;">No help content found for this page.</div>'');',
'    END IF;',
'',
'    htp.p(''',
'      </div> <!-- end helpCardContainer -->',
'    </div> <!-- end helpWidgetContent -->',
'',
'    <script>',
'      setTimeout(function(){',
'        apex.jQuery(function($){',
'          // Animated Toggle popup visibility',
'          $("#helpWidget").off("click").on("click", function() {',
'            if($("#helpWidgetContent").is(":visible")) {',
'                $("#helpWidgetContent").slideUp(300);',
'                $(this).text("?");  // change back to ?',
'            } else {',
'                $("#helpWidgetContent").slideDown(300);',
'                $(this).text("X");  // change back to X',
'            }',
'          });',
'',
'          // Close popup',
'          $("#helpWidgetContent").off("click", ".closeBtn").on("click", ".closeBtn", function(){',
'            $(this).parent().slideUp(300);',
'          });',
'',
'          // Expand / collapse cards one at a time',
'          $(".helpCardContainer").off("click", ".helpCard").on("click", ".helpCard", function() {',
'            $(".helpCard").not(this).removeClass("expanded");',
'            $(this).toggleClass("expanded");',
'          });',
'',
'          // Keyboard navigation',
'          var cards = $(".helpCard");',
'          var currentIndex = 0;',
'          $(document).on("keydown", function(e){',
'            if($("#helpWidgetContent").is(":visible")){',
'              if(e.key === "ArrowDown"){',
'                currentIndex = (currentIndex + 1) % cards.length;',
'                $(cards[currentIndex])[0].scrollIntoView({behavior: "smooth", block: "center"});',
'              } else if(e.key === "ArrowUp"){',
'                currentIndex = (currentIndex - 1 + cards.length) % cards.length;',
'                $(cards[currentIndex])[0].scrollIntoView({behavior: "smooth", block: "center"});',
'              } else if(e.key === "Enter"){',
'                $(".helpCard").not(cards[currentIndex]).removeClass("expanded");',
'                $(cards[currentIndex]).toggleClass("expanded");',
'              }',
'            }',
'          });',
'',
'          // Dark mode toggle',
'          $("#helpWidgetContent").off("click", "#darkModeToggle").on("click", "#darkModeToggle", function(){',
'            $("#helpWidgetContent").toggleClass("dark-mode");',
unistr('            $(this).text($("#helpWidgetContent").hasClass("dark-mode") ? "Light Mode\2600\FE0F" : "Dark Mode\D83C\DF19");'),
'          });',
'        });',
'      }, 600);',
'    </script>',
'    '');',
'END;',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(352002392600877056)
,p_name=>'P0_CURRENT_PAGE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3825250955681129258)
,p_use_cache_before_default=>'NO'
,p_source=>':APP_PAGE_ID'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3808427174931820073)
,p_name=>'P0_HOMEPAGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3825250955681129258)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3819799923181941686)
,p_name=>'P0_IMG_SRC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3825250955681129258)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3825250886912129257)
,p_name=>'P0_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3825250955681129258)
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
 p_id=>wwv_flow_imp.id(3828139641590429087)
,p_name=>'Set IG-SaveBtn Color'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3828139533351429086)
,p_event_id=>wwv_flow_imp.id(3828139641590429087)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("div.a-Toolbar > div.a-Toolbar-groupContainer.a-Toolbar-groupContainer--start > div:nth-child(5) > button.a-Button--hot").removeClass("a-Button--hot").addClass("t-Button--success");',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3819799752438941685)
,p_name=>'Set Org Logo Img'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3819799654051941684)
,p_event_id=>wwv_flow_imp.id(3819799752438941685)
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
 p_id=>wwv_flow_imp.id(3819799569174941683)
,p_event_id=>wwv_flow_imp.id(3819799752438941685)
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
 p_id=>wwv_flow_imp.id(3819795433895941642)
,p_name=>'Set Img before Dropzone2'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3819795417199941641)
,p_event_id=>wwv_flow_imp.id(3819795433895941642)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(".dz-message > span").wrap(''<div class="test"></div>'').before(''<img src="#APP_IMAGES#visual-search-drop.svg" alt="Upload-Files"></img><br>'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3808427078297820072)
,p_name=>'Set HomePage'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3808426750355820069)
,p_event_id=>wwv_flow_imp.id(3808427078297820072)
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
 p_id=>wwv_flow_imp.id(3808426969273820071)
,p_event_id=>wwv_flow_imp.id(3808427078297820072)
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
 p_id=>wwv_flow_imp.id(3702517417440124045)
,p_name=>'dy_Check_for_Notifications'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3702517492523124046)
,p_event_id=>wwv_flow_imp.id(3702517417440124045)
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(352002203050877054)
,p_name=>'page_help'
,p_event_sequence=>60
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#helpWidget'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(352002272226877055)
,p_event_id=>wwv_flow_imp.id(352002203050877054)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var popup = $(''#helpWidgetContent'');',
'var container = $(''#helpCardsContainer'');',
'',
'if (popup.is('':visible'')) {',
'    popup.hide();',
'} else {',
'    apex.server.process(',
'        "GET_PAGE_HELP", ',
'        { ',
'            x01: $v("APP_ID"),           // app id',
'            x02: $v("P0_CURRENT_PAGE")   // page id',
'        },',
'        {',
'            dataType: "html",  // very important, since PL/SQL returns HTML',
'            success: function(data){',
'                container.html(data);',
'                popup.show();',
'            },',
'            error: function(jqXHR, textStatus, errorThrown){',
'                container.html("<p style=''color:red;''>Error loading help content: " + errorThrown + "</p>");',
'                popup.show();',
'            }',
'        }',
'    );',
'}',
'',
'// Close button',
'popup.find(''.closeBtn'').off(''click'').on(''click'', function(){',
'    popup.hide();',
'});'))
);
wwv_flow_imp.component_end;
end;
/
