prompt --application/shared_components/user_interface/lovs/hr_export_to_payroll
begin
--   Manifest
--     HR_EXPORT_TO_PAYROLL
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>1000
,p_default_id_offset=>221683928681757931
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3721920915056789647)
,p_lov_name=>'HR_EXPORT_TO_PAYROLL'
,p_lov_query=>'.'||wwv_flow_imp.id(3721920915056789647)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3721921252713789649)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Activity( e.g. Training)'
,p_lov_return_value=>'ACTIVITY_ATTEND'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3763244514288064390)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Appraisal Incentives'
,p_lov_return_value=>'APPRAISAL_INCENTIVE'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3722265982243670804)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Disciplinary Actions'
,p_lov_return_value=>'DISCIPLINE'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3721923272620831937)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Partial and Prorated Deductions  (e.g. Maternity)'
,p_lov_return_value=>'MAKEUP_PAY'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3721924241373862389)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Gratuity Payment :- Computed'
,p_lov_return_value=>'GRATUITY'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3721925779626879001)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Severance Like Gratuity :- Computed'
,p_lov_return_value=>'SP'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3755506401340543959)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Short Payments:- Computed'
,p_lov_return_value=>'SHORT_PAYMENT'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3721921649551789650)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'Payment in-lieu of Leave'
,p_lov_return_value=>'LEAVEPAY'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3492171612314676666)
,p_lov_disp_sequence=>8
,p_lov_disp_value=>'Retroactive Incomes'
,p_lov_return_value=>'RET'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3722265766939670803)
,p_lov_disp_sequence=>9
,p_lov_disp_value=>'Separation Benefits'
,p_lov_return_value=>'SEPARATION'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3763430350338388407)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Separation Deduction'
,p_lov_return_value=>'MOV_SEPARATION_DED'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3721479086925445683)
,p_lov_disp_sequence=>13
,p_lov_disp_value=>'Time Sheet Absence Deduction'
,p_lov_return_value=>'ATTENDANCE_DED'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3492171207478676665)
,p_lov_disp_sequence=>14
,p_lov_disp_value=>'Time Sheet Absence Payment'
,p_lov_return_value=>'ATTENDANCE_INC_ABS'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3606478624878034396)
,p_lov_disp_sequence=>15
,p_lov_disp_value=>'Time Sheet Incomes'
,p_lov_return_value=>'ATTENDANCE_INC'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3721924827929867699)
,p_lov_disp_sequence=>16
,p_lov_disp_value=>'Vacation Allowance'
,p_lov_return_value=>'LEAVEPASS'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(665419269951057464)
,p_lov_disp_sequence=>17
,p_lov_disp_value=>'Leave Request Payments'
,p_lov_return_value=>'LEAVE_INC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(665419561995059773)
,p_lov_disp_sequence=>18
,p_lov_disp_value=>'Leave Request Deductions'
,p_lov_return_value=>'LEAVE_DED'
);
wwv_flow_imp.component_end;
end;
/
