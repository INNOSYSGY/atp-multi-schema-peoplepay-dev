prompt --application/shared_components/navigation/lists/attendance_m_quick_menu
begin
--   Manifest
--     LIST: Attendance M Quick Menu
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(3253945393624966473)
,p_name=>'Attendance M Quick Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3253945052977966472)
,p_list_item_display_sequence=>2
,p_list_item_link_text=>'Assign Shift Rotation'
,p_list_item_link_target=>'f?p=&APP_ID.:119:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-box-arrow-in-ne fam-arrow-up fam-is-info fa-lg'
,p_list_text_01=>'This is done to link an employee with a shift rotation so that they will have the right working dats and shifts'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3253943506222966470)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Employee Loaded Timesheet'
,p_list_item_link_target=>'f?p=&APP_ID.:1371:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-text-o fam-75-percent fam-is-success fa-lg'
,p_list_text_01=>'This is the data that was fixed up from the previous step (raw loaded data) and made into date for processing so that different types of information can be gathered'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3253943106488966469)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Employee Timesheet Summary'
,p_list_item_link_target=>'f?p=&APP_ID.:139:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-text fam-100-percent fam-is-success fa-lg'
,p_list_text_01=>'All the time in''s and out''s for a person is rolled up into one readable row for the user to view within a period for a person'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3253942690684966469)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Load to Payroll'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-box-arrow-in-east fam-arrow-right fam-is-success fa-lg'
,p_list_text_01=>'After the data had been processed, absences and incomes can now be deduced from it so that it can be loaded into the payroll and the relevant payment can be made'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3253942234367966469)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Timesheet Incomes'
,p_list_item_link_target=>'f?p=&APP_ID.:162:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-dollar fam-plus fam-is-success fa-lg'
,p_list_text_01=>'Adding different types of incomes to person depending on different rules and hours of work. This is done per day for the employee'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3253941871299966468)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Timesheet Deductions (Absences)'
,p_list_item_link_target=>'f?p=&APP_ID.:94:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-x fam-minus fam-is-warning fa-lg'
,p_list_text_01=>'Absence is linked to leave, any type of absence is a type of leave and this relationship can be used to help determine if a person is paid for the day or not.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
