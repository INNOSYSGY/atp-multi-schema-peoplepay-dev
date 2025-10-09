prompt --application/shared_components/user_interface/lovs/earnings_period_all_sec_notpaid
begin
--   Manifest
--     EARNINGS_PERIOD_ALL_SEC_NOTPAID
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>800
,p_default_id_offset=>221543258820678920
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(651166322725946215)
,p_lov_name=>'EARNINGS_PERIOD_ALL_SEC_NOTPAID'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select earn_description,a.id,Earn_pay_status,A.START_PAID_FOR,A.END_PAID_FOR',
'from VW_EARNall a --NOTPAID a',
'where exists (select 1',
'              from vw_useraccess x',
'              where x.org_id=a.org_id',
'              and x.employment_class_id=a.employment_class_id',
'              and upper(x.payment_type)=upper(a.payment_type))',
'and EXTRACT(year FROM start_date)||EXTRACT(month FROM start_date) =:P1350_PAY_PERIOD ',
' and earn_pay_status in (''OPEN'',''CL'')',
'order by start_date desc, end_date desc'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'ID'
,p_display_column_name=>'EARN_DESCRIPTION'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(651200383910957512)
,p_query_column_name=>'ID'
,p_display_sequence=>10
,p_data_type=>'NUMBER'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(651200787732957513)
,p_query_column_name=>'EARN_DESCRIPTION'
,p_heading=>'Earn Description'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(651201212759957513)
,p_query_column_name=>'EARN_PAY_STATUS'
,p_heading=>'Earn Pay Status'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(651201608444957513)
,p_query_column_name=>'START_PAID_FOR'
,p_heading=>'Start Paid For'
,p_display_sequence=>40
,p_data_type=>'DATE'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(651201993058957513)
,p_query_column_name=>'END_PAID_FOR'
,p_heading=>'End Paid For'
,p_display_sequence=>50
,p_data_type=>'DATE'
);
wwv_flow_imp.component_end;
end;
/
