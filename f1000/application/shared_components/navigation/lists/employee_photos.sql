prompt --application/shared_components/navigation/lists/employee_photos
begin
--   Manifest
--     LIST: EMPLOYEE_PHOTOS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>1000
,p_default_id_offset=>221683928681757931
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(3819997672486844316)
,p_name=>'EMPLOYEE_PHOTOS'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'  from',
'(select a.*,rownum rnum',
' from (select distinct',
'null,',
'initcap(a.Surname || '', '' || nvl(a.First_Name, '''')) ||''<br><span class="dob">DOB: ''||to_char(dob,''DD-MON-YYYY'')||''</span>'' label,',
'apex_util.prepare_url(''f?p=''||:APP_ID||'':1281:''||:APP_SESSION||''::::P1281_ID:''||b.id)  target,',
'''NO'' is_current_list_entry,',
'apex_util.prepare_url(''f?p=''||:APP_ID||'':inline:''||:APP_SESSION||''::NO::FILE_ID,FILE_TYPE:''||a.id||'',INDIVIDUAL'') as image,',
'null image_attribute,',
'null image_alt_attribute,',
'(select x.value_description from table(pkg_global_fnts.get_lookup_value(''TBLEMPLOYMENTCLASS'')) x where x.id=b.employment_class_id)||'', ''||(select x.value_description from table(pkg_global_fnts.get_lookup_value(''TBLEMPLOYMENTSTATUS'')) x where x.id=b.e'
||'mployment_status_id) ',
'||'' <br><i>''||position_name||''</i>'' A01',
',''DOE: ''||date_employed||'' <br>Cell: ''||A.cell_phone A02',
'from hr_rcm_individual a JOIN hr_rcm_employee b ON a.id = b.ind_id',
'where b.org_id=:APP_ORG_ID',
'and a.PHOTO is not null',
'AND EMPLOYMENT_CLASS_ID= :P1279_EMPLOYMENT_CLASS  ',
'AND EMPLOYMENT_STATUS_ID= nvl(:P1279_EMPLOYMENT_STATUS, EMPLOYMENT_STATUS_ID)',
'and lower(b.full_name||A.cell_phone||position_name||regexp_replace(''A.cell_phone'',''[^0-9.]'','''')) like ''%'' || :p1279_search || ''%'' ',
'and  exists ( ',
'   	      select 1',
'              FROM VW_USERACCESS y  join VW_SELFREPORT_TO z on y.employee_no=z.employee_no',
'              where b.org_id = y.org_id',
'              and b.employment_class_id = y.employment_class_id',
'              and upper(b.payment_type) =  upper(y.payment_type)',
'              and b.report_to = decode(pkg_global_fnts.fn_selfReport_to(:APP_ORG_ID), 1, z.employee_no, b.id)',
'	           )    ',
') a',
' --where rownum <=(4*(:P1279_RANGE-1))+4',
')',
'--where rnum >= (4*(:P1279_RANGE-1))+1'))
,p_list_status=>'PUBLIC'
,p_version_scn=>41806891373269
);
wwv_flow_imp.component_end;
end;
/
