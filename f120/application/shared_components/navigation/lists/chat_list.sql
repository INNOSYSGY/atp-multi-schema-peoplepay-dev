prompt --application/shared_components/navigation/lists/chat_list
begin
--   Manifest
--     LIST: chat_list
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(441871668728688920)
,p_name=>'chat_list'
,p_list_type=>'FUNCTION_RETURNING_SQL_QUERY'
,p_list_language=>'PLSQL'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if pkg_global_fnts.is_chatgroup(:P4805_RECIPIENT,:APP_ORG_ID ) = 0 then',
'RETURN',
'        ''SELECT',
'            a.ID,',
'            a.USER_NAME||'''' ''''||apex_util.get_since(COMMENT_DATE)  list_title,               ',
'            COMMENT_TEXT list_text,   ',
'            '''' '''' list_class,',
'            null link, ',
'            null link_attr,',
'            null icon_color_class,',
'            substr(c.first_name,1,1) ||substr(c.last_name,1,1)  icon_class',
'        FROM APP_GLO_CHAT a join APP_GLO_CHATRECIPIENTS b on a.id =b.chat_id',
'        join tbluser c on a.user_name = c.user_name',
'        where a.user_name = TO_CHAR(:P4805_RECIPIENT)',
'        and b.user_name =:APP_USER',
'        union',
'        SELECT',
'           a.ID,',
'            a.USER_NAME||'''' ''''||apex_util.get_since(COMMENT_DATE)  list_title,               ',
'            COMMENT_TEXT list_text,   ',
'            '''' '''' list_class,',
'            null link, ',
'           null link_attr,',
'            null icon_color_class,',
'            substr(c.first_name,1,1) ||substr(c.last_name,1,1)  icon_class',
'        FROM APP_GLO_CHAT a join APP_GLO_CHATRECIPIENTS b on a.id =b.chat_id',
'        join tbluser c on a.user_name = c.user_name',
'        where B.user_name = TO_CHAR(:P4805_RECIPIENT)',
'        AND A.USER_NAME = :APP_USER'';',
' ELSE',
'  RETURN  ''SELECT',
'           a.ID,',
'            a.USER_NAME||'''' ''''||apex_util.get_since(COMMENT_DATE)  list_title,               ',
'            COMMENT_TEXT list_text,   ',
'            '''' '''' list_class,',
'            null link, ',
'            null link_attr,',
'            null icon_color_class,',
'            substr(c.first_name,1,1) ||substr(c.last_name,1,1)  icon_class',
'        FROM APP_GLO_CHAT a join APP_GLO_CHATRECIPIENTS b on a.id =b.chat_id',
'        join tbluser c on a.user_name = c.user_name',
'        where exists (select 1',
'                      from app_glo_chatgroup w join app_glo_chatgroupmembers X on w.id = x.group_id',
'                      where x.user_name = b.user_name',
'                      and TO_CHAR(w.id) =  :P4805_RECIPIENT',
'                      and x.user_name = :APP_USER',
'                      )',
'        ORDER BY ID'';',
'END IF;',
''))
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
