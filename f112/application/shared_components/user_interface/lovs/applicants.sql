prompt --application/shared_components/user_interface/lovs/applicants
begin
--   Manifest
--     APPLICANTS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.7'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3326669105585944543)
,p_lov_name=>'APPLICANTS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT to_char(INDIVIDUAL)||'' Int-Applicant '' label, id',
'from VW_INDIVIDUAL_only x',
'where IND_ORG_ID=:APP_ORG_ID',
'union',
'select to_char(surname||'', ''|| FIRST_NAME||'' DOB: ''||dob||'' ''||SEX_CODE||'':-''||MARITAL_CODE)||''  Ext-Applicant '' label, id',
'from HR_APL_INDIVIDUAL a',
'where exists (select 1 ',
'              from HR_APL_INDSECURITY B',
'              where  B.APPLICANT_ID = A.ID',
'              AND ORG_ID=:APP_ORG_ID)  ',
'and not exists(select 1',
'               from HR_RCM_INDIVIDUAL w',
'               where w.ext_applicant_id = a.id',
'               )',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'ID'
,p_display_column_name=>'LABEL'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
