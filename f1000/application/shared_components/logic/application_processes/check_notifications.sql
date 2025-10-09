prompt --application/shared_components/logic/application_processes/check_notifications
begin
--   Manifest
--     APPLICATION PROCESS: CHECK_NOTIFICATIONS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>1000
,p_default_id_offset=>221683928681757931
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(3718017585389680143)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CHECK_NOTIFICATIONS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_notification_cnt number;',
'begin',
'   /* select floor(dbms_random.value(1, 100)) ',
'      into l_notification_cnt',
'      from dual;*/',
'',
'SELECT  count(1) --json failsafe',
'        into l_notification_cnt',
'From Tblnotificationhead A Join Tblnotificationdetail B On A.Notification_Id=B.Notification_Id',
'WHERE Exists (Select 1',
'              FROM TBLFORWARDLIST C JOIN TBLUSER D ON C.FORWARD_TO=D.USER_ID',
'              JOIN TBLWORKFLOWSTAGELIST  M ON M.STAGE_ID=C.STAGE_ID',
'              JOIN TBLWORKFLOWDTL N ON M.STAGE_ID=N.STAGE_ID',
'              JOIN APEX_APPLICATION_PAGES Q ON Q.PAGE_ID=N.WEBPAGE_ID',
'              WHERE (C.FORWORD_LIST_ID=B.FORWARD_LIST_ID OR C.FORWARD_TO=B.FORWARD_TO_USER)',
'              AND UPPER(D.USER_NAME)=UPPER(NVL(V(''APP_USER''),USER))',
'              AND APPLICATION_ID=:APP_ID)',
'AND org_id= :APP_ORG_ID',
'and UPPER(description) not like ''%SELF%SERVE%UPDAT%''                 ',
'AND B.NOTIFICATION_USER_STATUS in(''ACTIVE'',''OUTSTANDING'')',
'AND NOT EXISTS (SELECT 1',
'                FROM USER_TABLES K',
'                WHERE TABLE_NAME NOT IN (''TBLUSER'',''TBLUSERDETAIL'',''TBLRESPONSIBILITYORGPAGE'',''TBLRESPONSIBILITY'')',
'                AND UPPER(A.table_name)=UPPER(K.table_name)',
'                and table_name  like ''TBL%''); ',
'    ',
'    --returns the notification count',
'    apex_json.open_object;',
'    apex_json.write(''message'', ''Action Processed.'');',
'    ',
'    if l_notification_cnt = to_number(:PCNT_NOTE) then',
'        apex_json.write(''newNotification'', false);',
'    else',
'        :PCNT_NOTE := l_notification_cnt;',
'        apex_json.write(''newNotification'', true);',
'    end if;',
'    ',
'    apex_json.write(''notificationCount'', l_notification_cnt);',
'    apex_json.close_object;',
'   ',
'   exception',
'    when others then',
' ',
'        rollback;',
'',
'        --remove anything that was already in the htp buffer',
'        apex_json.initialize_output;',
'        ',
'        apex_json.open_object;',
'        apex_json.write(''error'', ''Error : '' || sqlerrm);',
'        apex_json.close_object;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_version_scn=>41562369908975
);
wwv_flow_imp.component_end;
end;
/
