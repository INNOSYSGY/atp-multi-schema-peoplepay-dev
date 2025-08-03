prompt --application/shared_components/logic/application_computations/app_chk_notify
begin
--   Manifest
--     APPLICATION COMPUTATION: APP_CHK_NOTIFY
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.7'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(3331596839266381436)
,p_computation_sequence=>7
,p_computation_item=>'APP_CHK_NOTIFY'
,p_computation_point=>'AFTER_LOGIN'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  count(1)',
'From Tblnotificationhead A Join Tblnotificationdetail B On A.Notification_Id=B.Notification_Id',
'WHERE Exists (Select 1',
'              FROM TBLFORWARDLIST C JOIN TBLUSER D ON C.FORWARD_TO=D.USER_ID',
'              JOIN TBLWORKFLOWSTAGELIST  M ON M.STAGE_ID=C.STAGE_ID',
'              JOIN TBLWORKFLOWDTL N ON M.STAGE_ID=N.STAGE_ID',
'              JOIN APEX_APPLICATION_PAGES Q ON Q.PAGE_ID=N.WEBPAGE_ID',
'              WHERE (C.FORWORD_LIST_ID=B.FORWARD_LIST_ID OR C.FORWARD_TO=B.FORWARD_TO_USER)',
'              AND UPPER(D.USER_NAME)=UPPER(NVL(V(''APP_USER''),USER)))',
'             -- AND APPLICATION_ID=:APP_ID)',
'and UPPER(description) not like ''%SELF%SERVE%UPDAT%''        ',
'AND A.org_id=:APP_ORG_ID  ',
'AND B.NOTIFICATION_USER_STATUS in(''ACTIVE'',''OUTSTANDING'')',
'AND NOT EXISTS (SELECT 1',
'                FROM USER_TABLES K',
'                WHERE TABLE_NAME NOT IN (''TBLUSER'',''TBLUSERDETAIL'',''TBLRESPONSIBILITYORGPAGE'',''TBLRESPONSIBILITY'')',
'                AND UPPER(A.table_name)=UPPER(K.table_name)',
'                and table_name  like ''TBL%'')'))
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
