prompt --application/shared_components/user_interface/lovs/p183_hr_att_timeclock_dtl_emp_id
begin
--   Manifest
--     P183_HR_ATT_TIMECLOCK_DTL_EMP_ID
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>500
,p_default_id_offset=>221402556581611694
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3772696471685007664)
,p_lov_name=>'P183_HR_ATT_TIMECLOCK_DTL_EMP_ID'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT EMPLOYEE||''(No.:''||EMP_COMPANY_NO||'')'' a,ID b',
'        FROM VW_AVAILEMPLOYEE x',
'        where  exists(select 1        ',
'             from vw_useraccess_finegrain k',
'             where NVL(k.grade_id, nvl(x.emp_grade_id,1)) = nvl(x.emp_grade_id,1)',
'             and user_name=:APP_USER)  ',
'        order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'B'
,p_display_column_name=>'A'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
