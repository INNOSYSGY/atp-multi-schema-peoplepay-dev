prompt --application/shared_components/legacy_data_loads/hr_att_timeclock_upload_003
begin
--   Manifest
--     HR_ATT_TIMECLOCK_UPLOAD
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>221824690189185566
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_load_table(
 p_id=>wwv_flow_imp.id(3728704587572668202)
,p_name=>'GPLTIMECLOCK'
,p_owner=>'#OWNER#'
,p_table_name=>'HR_ATT_TIMECLOCK_UPLOAD'
,p_unique_column_1=>'ID'
,p_is_uk1_case_sensitive=>'N'
,p_is_uk2_case_sensitive=>'N'
,p_is_uk3_case_sensitive=>'N'
,p_skip_validation=>'N'
);
wwv_flow_imp.component_end;
end;
/
