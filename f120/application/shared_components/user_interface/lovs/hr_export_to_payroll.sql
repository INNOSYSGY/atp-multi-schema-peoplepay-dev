prompt --application/shared_components/user_interface/lovs/hr_export_to_payroll
begin
--   Manifest
--     HR_EXPORT_TO_PAYROLL
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>221824690189185566
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3722061676564217282)
,p_lov_name=>'HR_EXPORT_TO_PAYROLL'
,p_lov_query=>'.'||wwv_flow_imp.id(3722061676564217282)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3722062014221217284)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Activity( e.g. Training)'
,p_lov_return_value=>'ACTIVITY_ATTEND'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3763385275795492025)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Appraisal Incentives'
,p_lov_return_value=>'APPRAISAL_INCENTIVE'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3722406743751098439)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Disciplinary Actions'
,p_lov_return_value=>'DISCIPLINE'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3722064034128259572)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Partial and Prorated Deductions  (e.g. Maternity)'
,p_lov_return_value=>'MAKEUP_PAY'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3722065002881290024)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Gratuity Payment :- Computed'
,p_lov_return_value=>'GRATUITY'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3722066541134306636)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Severance Like Gratuity :- Computed'
,p_lov_return_value=>'SP'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3755647162847971594)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Short Payments:- Computed'
,p_lov_return_value=>'SHORT_PAYMENT'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3722062411059217285)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'Payment in-lieu of Leave'
,p_lov_return_value=>'LEAVEPAY'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3492312373822104301)
,p_lov_disp_sequence=>8
,p_lov_disp_value=>'Retroactive Incomes'
,p_lov_return_value=>'RET'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3722406528447098438)
,p_lov_disp_sequence=>9
,p_lov_disp_value=>'Separation Benefits'
,p_lov_return_value=>'SEPARATION'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3763571111845816042)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Separation Deduction'
,p_lov_return_value=>'MOV_SEPARATION_DED'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3721619848432873318)
,p_lov_disp_sequence=>13
,p_lov_disp_value=>'Time Sheet Absence Deduction'
,p_lov_return_value=>'ATTENDANCE_DED'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3492311968986104300)
,p_lov_disp_sequence=>14
,p_lov_disp_value=>'Time Sheet Absence Payment'
,p_lov_return_value=>'ATTENDANCE_INC_ABS'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3606619386385462031)
,p_lov_disp_sequence=>15
,p_lov_disp_value=>'Time Sheet Incomes'
,p_lov_return_value=>'ATTENDANCE_INC'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3722065589437295334)
,p_lov_disp_sequence=>16
,p_lov_disp_value=>'Vacation Allowance'
,p_lov_return_value=>'LEAVEPASS'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(665560031458485099)
,p_lov_disp_sequence=>17
,p_lov_disp_value=>'Leave Request Payments'
,p_lov_return_value=>'LEAVE_INC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(665560323502487408)
,p_lov_disp_sequence=>18
,p_lov_disp_value=>'Leave Request Deductions'
,p_lov_return_value=>'LEAVE_DED'
);
wwv_flow_imp.component_end;
end;
/
