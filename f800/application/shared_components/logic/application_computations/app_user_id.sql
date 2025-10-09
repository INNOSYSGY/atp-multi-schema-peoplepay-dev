prompt --application/shared_components/logic/application_computations/app_user_id
begin
--   Manifest
--     APPLICATION COMPUTATION: APP_USER_ID
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>800
,p_default_id_offset=>221543258820678920
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(3554826313794200849)
,p_computation_sequence=>6
,p_computation_item=>'APP_USER_ID'
,p_computation_point=>'AFTER_LOGIN'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select user_id',
'from tbluser',
'where user_name=:APP_USER'))
,p_computation_error_message=>'System didn''t find an user ID.	'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
