prompt --application/shared_components/logic/application_computations/simple_mode
begin
--   Manifest
--     APPLICATION COMPUTATION: SIMPLE_MODE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(3105485985491254991)
,p_computation_sequence=>40
,p_computation_item=>'SIMPLE_MODE'
,p_computation_point=>'AFTER_LOGIN'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT case when self_serve_org =1 and simple_mode  =''N'' then ''Self Serve Mode Activated''',
'            when self_serve_org =0 and simple_mode  =''Y'' then ''Simple Mode Activated''',
'            when self_serve_org =1 and simple_mode  =''Y'' then ''Self Serve Mode and Simple Mode Activated''',
'            else '''' end',
'from tbluser a join tbluserdetail b on a.user_id = b.user_id',
'where user_name=:APP_USER',
'and b.effective_from <= trunc(current_date)',
'and (b.effective_to is null or b.effective_to >= trunc(current_date))',
'and (self_serve_org=1 OR simple_mode  =''Y'')'))
,p_computation_error_message=>'No Data found.'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
