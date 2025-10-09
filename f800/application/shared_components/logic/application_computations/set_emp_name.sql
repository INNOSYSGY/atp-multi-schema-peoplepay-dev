prompt --application/shared_components/logic/application_computations/set_emp_name
begin
--   Manifest
--     APPLICATION COMPUTATION: SET_EMP_NAME
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
 p_id=>wwv_flow_imp.id(3713046550799527615)
,p_computation_sequence=>10
,p_computation_item=>'SET_EMP_NAME'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'FUNCTION_BODY'
,p_computation_language=>'PLSQL'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_FULL_NAME VARCHAR2(255);',
'BEGIN',
'',
'IF :P51_ID IS NOT NULL THEN ',
'',
'  SELECT ''<html><span style color = ''''red'''';>'' ',
'          || (case when upper(sex_code) = ''M'' then ''Mr. '' else ''Ms. '' end) ',
'          || FIRST_NAME || '' '' || NVL(MIDDLE_NAME,NULL) || '' '' || SURNAME || '' '' ||',
'          (select ''<i><b>''|| initcap(CHANGE_TYPE) || ''</i></b>'' from hr_mov_empmovement_new where id = :P51_ID) || '' Record'' ',
'          || ''</span></html>'' INTO V_FULL_NAME',
'   FROM HR_RCM_INDIVIDUAL ',
'   WHERE ID = (select ind_id from hr_mov_empmovement_new',
'                 where id = :P51_ID);',
'',
'else V_FULL_NAME := ''Create/ Edit Employment Movement'';',
'',
'END IF;',
'',
'RETURN V_FULL_NAME;',
'',
'END;'))
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
