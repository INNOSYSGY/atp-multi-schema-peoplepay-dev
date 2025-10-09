prompt --application/shared_components/security/authentications/application_express_accounts
begin
--   Manifest
--     AUTHENTICATION: Application Express Accounts
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>1000
,p_default_id_offset=>221683928681757931
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(4741517449279476934)
,p_name=>'Application Express Accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'procedure POST_AUTHENTICATION is',
'',
'   v_startpage varchar2(20); v_wkloc  number;  v_cyear  number;  v_nis  number;  v_tax   number; v_org_rule  number;',
'   v_orgstructure number;   v_job number;   v_grade  number;  v_pos  number;  v_pos_loc   number; v_org number;',
'   v_chk_wiz varchar2(1); v_max_id number; v_max_nisid number; v_max_orgstr number; v_max_job number; v_max_pos number;',
'   v_current_org number; v_load_home varchar2(50);',
'   ',
'begin',
'',
'begin',
'    SELECT DISPLAY_WIZARD into v_chk_wiz',
'    From Tbluser',
'    WHERE UPPER(user_name)=UPPER(:P101_USERNAME)',
'    AND DISPLAY_WIZARD=''Y'';',
'    ',
'exception',
'    when others then ',
'      v_chk_wiz :=''N'';',
'end;',
'',
'    select distinct org_id into v_current_org',
'    from vw_useraccess',
'    where rownum=1;',
'     ',
'    ',
'    select  trim(load_home) into v_load_home',
'    from tbluser',
'    where USER_NAME =:APP_USER;',
'',
'    SELECT count(1) INTO v_org',
'    FROM HR_HCF_ORGANISATION',
'    where id=v_current_org;',
'    ',
'    SELECT count(1) INTO v_wkloc',
'    FROM HR_HCF_WORKLOCATION',
'    where org_id=v_current_org;',
'    ',
'    SELECT count(1) into v_cyear',
'    FROM HR_HCF_COMPANYYEAR',
'    WHERE org_id=v_current_org;',
'    ',
'    SELECT count(1) into v_nis',
'    FROM HR_HCF_NISRATE',
'    WHERE org_id=v_current_org;',
'    ',
'    SELECT count(1) into v_tax ',
'    FROM HR_HCF_TAXRATE',
'    WHERE org_id=v_current_org;',
'',
'    SELECT count(1) into v_org_rule',
'    FROM HR_HCF_ORG_RULE',
'    where org_id=v_current_org;',
'',
'    SELECT count(1) into v_orgstructure',
'    FROM HR_HCF_ORGSTRUCTUREDTL a',
'    WHERE EXISTS(SELECT 1',
'                 FROM HR_HCF_ORGSTRUCTUREHD b',
'                 WHERE org_id=v_current_org',
'                 and a.ORG_STRUCTURE_ID=b.id);',
'                 ',
'    SELECT count(1) into v_grade',
'    FROM HR_HCF_POSITIONGRADE',
'    where org_id=v_current_org;',
'',
'    SELECT count(1), max(a.id) into v_pos, v_max_pos',
'    FROM HR_HCF_POSITION a join HR_HCF_ORGSTRUCTUREDTL b on a.orgdtl_id=b.id',
'    WHERE EXISTS(SELECT 1',
'                 FROM HR_HCF_ORGSTRUCTUREHD c',
'                 WHERE org_id=v_current_org',
'                 and b.ORG_STRUCTURE_ID=c.id);',
'    ',
'   ',
'              ',
'',
'if v_chk_wiz =''Y'' and v_pos=0 then',
'    ',
'    IF v_wkloc =0 then',
'',
'        :FSP_AFTER_LOGIN_URL := ''f?p=''||:APP_ID||'':2020:''||:APP_SESSION||''::NO::P2020_ID:''||v_current_org;',
'        ',
'    elsif v_org_rule =0  then',
'        SELECT max(id) into v_max_id',
'        FROM HR_HCF_ORG_RULE',
'        where org_id=v_current_org;        ',
'',
'        :FSP_AFTER_LOGIN_URL := ''f?p=''||:APP_ID||'':2021:''||:APP_SESSION||''::NO::P2021_ID:''||v_max_id;',
'        ',
'    elsif v_cyear =0 or v_nis=0 or v_tax=0 then',
'            SELECT max(id) into v_max_nisid',
'            FROM HR_HCF_NISRATE',
'            WHERE org_id=v_current_org;',
'        ',
'        :FSP_AFTER_LOGIN_URL := ''f?p=''||:APP_ID||'':2025:''||:APP_SESSION||''::NO::P2025_ID:''||v_max_nisid;',
'   ',
'    elsif v_orgstructure =0  then',
'           select max(id) into v_max_orgstr',
'           from hr_hcf_orgstructurehd',
'           where org_id=v_current_org;',
'        ',
'         :FSP_AFTER_LOGIN_URL := ''f?p=''||:APP_ID||'':2022:''||:APP_SESSION||''::NO::P2022_ID:''||v_max_orgstr;',
' ',
'   elsif v_job =0 or v_grade=0  then ',
'           :FSP_AFTER_LOGIN_URL := ''f?p=''||:APP_ID||'':2023:''||:APP_SESSION;',
'           ',
'   elsif v_pos = 0 or v_pos_loc =0 then',
'           :FSP_AFTER_LOGIN_URL := ''f?p=''||:APP_ID||'':2024:''||:APP_SESSION;',
'           ',
'   end if;',
' ',
'else',
'',
'           :FSP_AFTER_LOGIN_URL := ''f?p=''||:APP_ID||'':''||v_load_home||'':''||:APP_SESSION||''::NO:::'';',
'    ',
'      ',
'end if;',
'',
'end;'))
,p_invalid_session_type=>'LOGIN'
,p_post_auth_process=>'POST_AUTHENTICATION'
,p_cookie_name=>'ORA_WWV_PACKAGED_APPLICATIONS'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>41800645241615
);
wwv_flow_imp.component_end;
end;
/
