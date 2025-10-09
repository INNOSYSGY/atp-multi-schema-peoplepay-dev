prompt --application/shared_components/security/authorizations/global_viewpayslip_access
begin
--   Manifest
--     SECURITY SCHEME: GLOBAL_VIEWPAYSLIP_ACCESS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>500
,p_default_id_offset=>221402556581611694
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(554169933098857800)
,p_name=>'GLOBAL_VIEWPAYSLIP_ACCESS'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from report r',
'where  EXISTS (SELECT 1',
'              FROM TBLRESPONSIBILITY B JOIN TBLUSERDETAIL C ON B.RESPONSIBILITY_ID=C.RESPONSIBILITY_ID',
'              JOIN TBLRESPONSIBILITYORGPAGE D ON B.RESPONSIBILITY_ID=D.RESPONSIBILITY_ID',
'              JOIN TBLUSER E ON E.USER_ID=C.USER_ID',
'              WHERE r.id=D.PAGE_ID             ',
'              AND USER_NAME = :APP_USER',
'              AND CAN_VIEW = ''Y''',
'              and trunc(c.effective_from) <= trunc(current_date)',
'              and (c.effective_to is null or trunc(c.effective_to) >= trunc(current_date))',
'              and trunc(d.start_date) <= trunc(current_date)',
'              and (d.end_date is null or trunc(d.end_date) >= trunc(current_date))',
'             and trunc(b.start_date) <= trunc(current_date)',
'             and (b.end_date is null or trunc(b.end_date) >= trunc(current_date))',
'             )',
'and date_end is null',
'AND r.id  IN (6180,6244,6264,6284,5752)',
'and exists (',
'            select 1',
'            from fn_restrict_report(:APP_ORG_ID, :G_PARSING_SCHEMA) x',
'            where x.report_id = r.id',
'            )'))
,p_error_message=>'You do not have the rights to view these records. Please contact your system administrator if you believe you should have this access.'
,p_version_scn=>44971429678614
,p_caching=>'NOCACHE'
);
wwv_flow_imp.component_end;
end;
/
