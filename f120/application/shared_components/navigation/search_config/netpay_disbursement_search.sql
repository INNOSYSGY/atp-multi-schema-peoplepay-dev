prompt --application/shared_components/navigation/search_config/netpay_disbursement_search
begin
--   Manifest
--     SEARCH CONFIG: Netpay_disbursement_Search
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_search_config(
 p_id=>wwv_flow_imp.id(312396059563584805)
,p_label=>'Netpay_disbursement_Search'
,p_static_id=>'netpay_disbursement_search'
,p_search_type=>'SIMPLE'
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_query_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.id,',
'    SALUTATION|| '' ''|| nvl(A.FIRST_NAME, '''')|| '' ''||INITCAP(A.SURNAME) title,',
'   ''Net Pay Disbursement'' Subtitle,',
'    listagg(PRIORITY_SEQ|| ''. '' ||bank.organisation_name|| '' '' ||initcap(PAYMENT_MODE_DIST)||case when b.BANK_ACCOUNT_TYPE is null then '''' else '' Acc Type:'' end ||b.BANK_ACCOUNT_TYPE|| '' '' ||BANK_ACCOUNT_NO|| '' '' ||',
'       case when b.PERCENT_SPLIT = 0 then ''AMount Split '' else ''Percent Split '' end||       ',
'       case when b.AMOUNT_SPLIT= 0 then to_char(b.PERCENT_SPLIT*100)|| ''%'' else to_char(b.AMOUNT_SPLIT,''fm9999999999.99'') end || '' Dated:'' ||b.START_DATE,   ''; '')',
'    within group(',
'     order by PRIORITY_SEQ, SALUTATION|| '' ''|| nvl(A.FIRST_NAME, '''') || '' ''|| INITCAP(A.SURNAME)) as Description,',
'     ''No.''||emp_company_no badge',
'from hr_rcm_individual a join hr_rcm_employee c on a.id=c.ind_id',
'join hr_rcm_disbursement b on c.id =b.emp_id_disp',
'left outer join vw_bank bank on bank.id = b.bank_branch_id_dist',
'where ind_org_id = :APP_ORG_ID',
'and b.start_date <= current_date',
'and c.date_separated is null',
'and (b.end_date is null or b.end_date > current_date)',
'and exists (select 1',
'            from vw_useraccess ua',
'            where ua.org_id = c.org_id',
'            and ua.employment_class_id = c.employment_class_id',
'            and ua.payment_type = c.payment_type)',
'group by a.id,',
'    SALUTATION||'' ''||nvl(A.FIRST_NAME, '''')||'' ''||INITCAP(A.SURNAME) ,emp_company_no'))
,p_searchable_columns=>'TITLE:SUBTITLE:DESCRIPTION:BADGE'
,p_pk_column_name=>'ID'
,p_title_column_name=>'TITLE'
,p_subtitle_column_name=>'SUBTITLE'
,p_description_column_name=>'DESCRIPTION'
,p_badge_column_name=>'BADGE'
,p_icon_source_type=>'STATIC_CLASS'
,p_icon_css_classes=>'fa-money'
,p_version_scn=>45392674993978
);
wwv_flow_imp.component_end;
end;
/
