prompt --application/shared_components/navigation/lists/employee_photos_src_cntr
begin
--   Manifest
--     LIST: EMPLOYEE_PHOTOS_SRC_CNTR
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>800
,p_default_id_offset=>221543258820678920
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(3853242021454157526)
,p_name=>'EMPLOYEE_PHOTOS_SRC_CNTR'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'  from',
'(select a.*,rownum rnum',
' from (select distinct',
'null,',
'initcap(salutation||''. ''||a.Surname || '', '' || nvl(a.First_Name, '''')) ||''<br><span class="doE">DOE: ''||to_char(DATE_EMPLOYED,''DD-MON-YYYY'')||''(''||pkg_global_fnts.fn_calcage(DATE_EMPLOYED, trunc(current_date))||'')''|| ''</span>'' ||',
'''<br><span class="EMPNO">EMP#:''||EMP_COMPANY_NO||''</span>'' label,',
'apex_util.prepare_url(''f?p=''||:APP_ID||'':1281:''||:APP_SESSION||''::::P1281_ID:''||b.id)  target,',
'''NO'' is_current_list_entry,',
'apex_util.prepare_url(''f?p=''||:APP_ID||'':inline:''||:APP_SESSION||''::NO::FILE_ID,FILE_TYPE:''||a.id||'',INDIVIDUAL'') as image,',
'null image_attribute,',
'null image_alt_attribute,',
'(select x.value_description from table(pkg_global_fnts.get_lookup_value(''TBLEMPLOYMENTCLASS'')) x where x.id=b.employment_class_id)||'', ''||(select x.value_description from table(pkg_global_fnts.get_lookup_value(''TBLEMPLOYMENTSTATUS'')) x where x.id=b.e'
||'mployment_status_id) ',
'||'' <br><i>''||b.position_name||''</i>'' A01',
', department_name||'' <br>DOB: ''||DOB||'' Age: ''||pkg_global_fnts.fn_calcage(dob, trunc(current_date))||'' Cell: ''||A.cell_phone ',
'||'' <br>''||pkg_global_fnts.fn_Address(''HOME'', A.ID, ''FULL'',TRUNC(current_date)) A02 ',
'from hr_rcm_individual a JOIN hr_rcm_employee b ON a.id = b.ind_id join VW_POSITION_LOCATION_V3 f on f.emp_id=b.id',
'where b.org_id=:APP_ORG_ID ',
'and photo is not null ',
'AND  b.EMPLOYMENT_CLASS_ID = :P1280_EMPLOYMENTCLASS_1 ',
'and (nvl(:P1280_ORGANISATION_STRUCTURE_1,0) =0 or :P1280_ORGANISATION_STRUCTURE_1 = b.orgdtl_id)',
'and (nvl(:P1280_TRADE_UNION_1,0) = 0 or :P1280_TRADE_UNION_1 = union_code_id )',
'and (nvl(:P1280_COMPUTE_GROSS_1,''A'') =''A'' or instr('':''||:P1280_COMPUTE_GROSS_1||'':'','':''|| upper(compute_gross)||'':'') > 0)',
'and (nvl(:P1280_EMPLOYMENT_STATUS_1,0) =0 or :P1280_EMPLOYMENT_STATUS_1 = EMPLOYMENT_STATUS_ID)',
'and (NVL(:P1280_POSITION_NAME_1,0) = 0 OR :P1280_POSITION_NAME_1=upper(trim(b.position_id)))',
'and (NVL(:P1280_SEX_1,''A'') =''A'' OR :P1280_SEX_1 = upper(trim(A.SEX_CODE)))',
'and (nvl(:P1280_EMPLOYEE_GRADE_1,0) = 0 or :P1280_EMPLOYEE_GRADE_1 = EMP_GRADE_ID )',
'and (nvl(:P1280_SEARCH_1,''A'')=''A'' or',
'            instr(upper(b.full_name),upper(:P1280_SEARCH_1)) > 0 or',
'                       instr(upper(a.first_name),upper(:P1280_SEARCH_1)) > 0 or',
'                       instr(upper(a.surname),upper(:P1280_SEARCH_1)) > 0 ',
'                  ) ',
'and  exists ( ',
'   	      select 1',
'              FROM VW_USERACCESS y  join VW_SELFREPORT_TO z on y.employee_no=z.employee_no',
'              where b.org_id = y.org_id',
'              and b.employment_class_id = y.employment_class_id',
'              and upper(b.payment_type) =  upper(y.payment_type)',
')      ',
') a',
')'))
,p_list_status=>'PUBLIC'
,p_version_scn=>41806891268417
);
wwv_flow_imp.component_end;
end;
/
