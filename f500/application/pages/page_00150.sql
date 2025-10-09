prompt --application/pages/page_00150
begin
--   Manifest
--     PAGE: 00150
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>500
,p_default_id_offset=>221402556581611694
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>150
,p_name=>'rptEmployeePhotos'
,p_alias=>'RPTEMPLOYEEPHOTOS'
,p_step_title=>'Search Employee Files'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(571155704675225316)
,p_step_template=>2526643373347724467
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3806736716975971898)
,p_protection_level=>'C'
,p_page_component_map=>'22'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2279173871186067605)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988176195002489210)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5968557437792890960)
,p_plug_name=>'rptEmployeePhotos'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select (select nvl(max(sal.id),0) from hr_rcm_salary sal where sal.emp_id =b.id) max_sal_id,',
'(select nvl(max(empent.id),0) from hr_rcm_empentitle empent where empent.emp_id =b.id) max_empent_id,',
'(select nvl(max(netpay.id),0) from HR_RCM_DISBURSEMENT netpay where netpay.emp_id_disp =b.id) max_netpay_id,',
'(select nvl(max(Emprule.id),0) from hr_rcm_emprule Emprule where Emprule.emp_id =b.id) max_Emprule_id,',
'(select nvl(max(lventitle.id),0) from hr_rcm_empleaveentitle lventitle where lventitle.emp_id =b.id) max_lventitle_id,',
'',
' (select nvl(max(empwk.id),0) from hr_rcm_empworkpermit empwk where empwk.emp_id =b.id) max_work_id,',
'(select nvl(max(empctk.id),0) from hr_rcm_empcontract empctk where empctk.emp_id =b.id) max_contract_id,',
'(select nvl(max(emptrain.id),0) from hr_rcm_training emptrain where emptrain.emp_id =b.id) max_training_id,',
'(select nvl(max(EmpResp.id),0) from hr_rcm_empresponsibility EmpResp where EmpResp.emp_id =b.id) max_duties_id,',
'(select nvl(max(EmpDoc.id),0) from Hr_Rcm_Empdocument EmpDoc where EmpDoc.emp_id =b.id) max_doc_id,',
'',
'b.id Emp_ID, a.id Ind_ID, a.photo, ''No. ''||Emp_company_no Emp_company_no,',
'initcap(a.salutation ||'' ''||a.Surname || '', '' || nvl(a.First_Name, '''')) Name_DOB,',
'''''||pkg_global_fnts.fn_calcage(b.date_employed, NVL(date_separated,current_date)) YRSSERV,',
'''''||to_char(date_employed,''DD-MON-YYYY'') BADGE,',
'''''||to_char(date_separated,''DD-MON-YYYY'') SEPDATE,',
'initcap(employment_class)||'' ''|| initcap(employment_status) ||'' ''|| position_name Emp_details,',
'apex_util.prepare_url(''f?p=''||:APP_ID||'':1281:''||:APP_SESSION||''::::P1281_ID:''||b.id)  target,',
'EMPLOYMENT_STATUS,EMPLOYMENT_CLASS,PAYMENT_TYPE,SEPARATED_STATUS,EMPLOYMENT_TYPE_ID',
',POSITION_NAME,ORG_STRUCTURE,EMPLOYEE_STATUS, SEX_CODE, COMPUTE_GROSS, ORGDTL_ID,',
' to_number(PKG_GLOBAL_FNTS.fn_calcage(nvl(DOB,current_date),current_date)) AGE, UNION_CODE, REPORT_TO, WKLOCATION_ID,',
' (select job_id from hr_hcf_position pos where pos.id=b.position_id) job_id, EMP_GRADE_ID',
'from  hr_rcm_individual a JOIN hr_rcm_employee b ON a.id = b.ind_id',
'where b.org_id=  :APP_ORG_ID',
'and date_separated is null',
'and   exists(select 1',
'           from HR_HCF_ORGSTRUCTUREDTL z left outer join VW_USERORGSTRUCT y on ( NVL(z.id, 1)=y.ORG_STRUCTURE_ID  and nvl(y.user_name,''1'') = decode(y.user_name, null, ''1'', :APP_USER))',
'           where NVL(z.id, 1)= NVL(b.ORGDTL_ID,1)',
'           and NVL(z.id, 1) = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0,  NVL(z.id, 1), y.org_structure_id)         ',
'          )                        ',
'and  exists ( ',
'              select 1',
'              FROM VW_USERACCESS v ',
'              where v.org_id=b.org_id',
'              and v.employment_class_id=b.employment_class_id',
'              and upper(v.payment_type)=b.payment_type             ',
'              )   ',
'order by surname              '))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>true
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(647729290967547104)
,p_region_id=>wwv_flow_imp.id(5968557437792890960)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'NAME_DOB'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'EMP_DETAILS'
,p_body_adv_formatting=>true
,p_body_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul>',
'    <li><em style="align:center;font-size:13px"><b>Date of Employment: </b>&BADGE.</em></li>',
'    <li><em style="align:center;font-size:13px"><b>Date of Separation: </b>&SEPDATE.</em></li>',
'    <li><em style="align:center;font-size:13px"><b>Years of Service: </b>&YRSSERV.</em></li>',
'    ',
'</ul>'))
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'BLOB'
,p_icon_blob_column_name=>'PHOTO'
,p_icon_position=>'START'
,p_badge_column_name=>'EMP_COMPANY_NO'
,p_media_adv_formatting=>false
,p_pk1_column_name=>'EMP_ID'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(647729777138547104)
,p_card_id=>wwv_flow_imp.id(647729290967547104)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:1281:P1281_ID,P1281_NAVIGATOR,P1281_ID_IND,GLOBAL_IND:&EMP_ID.,150,&IND_ID.,&IND_ID.'
,p_link_attributes=>'title="View Detailed Information for &NAME_DOB."'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(647730388433547103)
,p_card_id=>wwv_flow_imp.id(647729290967547104)
,p_action_type=>'BUTTON'
,p_position=>'SECONDARY'
,p_display_sequence=>20
,p_label=>'Salary'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:1282:&SESSION.::&DEBUG.:1282:P1282_ID,P1282_EMP_ID,GLOBAL_IND,GLOBAL_EMP:&MAX_SAL_ID.,&EMP_ID.,&IND_ID.,&EMP_ID.'
,p_link_attributes=>'Title="View Salary" Style="background-color: #1a6600; Padding: 10px; Border-radius: 5px; Color: White; "class="fa Fa-home"'
,p_button_display_type=>'ICON'
,p_icon_css_classes=>'fa-money'
,p_is_hot=>false
,p_condition_type=>'EXISTS'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from hr_rcm_salary',
'where emp_id= :EMP_ID',
'and end_date is null'))
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(647730939586547103)
,p_card_id=>wwv_flow_imp.id(647729290967547104)
,p_action_type=>'BUTTON'
,p_position=>'SECONDARY'
,p_display_sequence=>30
,p_label=>'Other Remuneration'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:1285:&SESSION.::&DEBUG.:1285:P1285_ID,P1285_EMP_ID,GLOBAL_IND,GLOBAL_EMP:&MAX_EMPENT_ID.,&EMP_ID.,&IND_ID.,&EMP_ID.'
,p_link_attributes=>'	title="View  Remuneration" Style="background-color: #39e600; Padding: 10px; Border-radius: 5px; Color: White; "class="fa Fa-home"'
,p_button_display_type=>'ICON'
,p_icon_css_classes=>'fa-dollar'
,p_is_hot=>false
,p_condition_type=>'EXISTS'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from hr_rcm_empentitle',
'where emp_id= :EMP_ID',
'and end_date is null'))
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(647731569181547103)
,p_card_id=>wwv_flow_imp.id(647729290967547104)
,p_action_type=>'BUTTON'
,p_position=>'SECONDARY'
,p_display_sequence=>40
,p_label=>'NetPay Disbursement'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:9982:&SESSION.::&DEBUG.:9982:P9982_ID,P9982_EMP_ID_DISP,GLOBAL_IND,GLOBAL_EMP:&MAX_NETPAY_ID.,&EMP_ID.,&IND_ID.,&EMP_ID.'
,p_link_attributes=>'	title="View NetPay Disbursement" style="background-color: #ff9900; padding: 10px; border-radius: 5px; color: white; "class="fa fa-home"'
,p_button_display_type=>'ICON'
,p_icon_css_classes=>'fa-building-o'
,p_is_hot=>false
,p_condition_type=>'EXISTS'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from HR_RCM_DISBURSEMENT',
'where emp_id_disp=:EMP_ID',
'and end_date is null'))
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(647732127349547102)
,p_card_id=>wwv_flow_imp.id(647729290967547104)
,p_action_type=>'BUTTON'
,p_position=>'SECONDARY'
,p_display_sequence=>50
,p_label=>'Requirements'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:1283:&SESSION.::&DEBUG.:1283:P1283_EMP_ID,P1283_ID,GLOBAL_IND,GLOBAL_EMP:&EMP_ID.,&MAX_EMPRULE_ID.,&IND_ID.,&EMP_ID.'
,p_link_attributes=>'	title="View Requirements" style="background-color: #ffcc00; padding: 10px; border-radius: 5px; color: white; "class="fa fa-home"'
,p_button_display_type=>'ICON'
,p_icon_css_classes=>'fa-server-user'
,p_is_hot=>false
,p_condition_type=>'EXISTS'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from hr_rcm_emprule',
'where emp_id= :EMP_ID',
'and end_date is null'))
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(647732762159547102)
,p_card_id=>wwv_flow_imp.id(647729290967547104)
,p_action_type=>'BUTTON'
,p_position=>'SECONDARY'
,p_display_sequence=>60
,p_label=>'Leave Entitlement'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:1284:&SESSION.::&DEBUG.:1284:P1284_EMP_ID,P1284_ID,GLOBAL_IND,GLOBAL_EMP:&EMP_ID.,&MAX_LVENTITLE_ID.,&IND_ID.,&EMP_ID.'
,p_link_attributes=>'title="View Leave Entitlements" style="background-color: #ff0066; padding: 10px; border-radius: 5px; color: white; "class="fa fa-home"'
,p_button_display_type=>'ICON'
,p_icon_css_classes=>'fa-plane'
,p_is_hot=>false
,p_condition_type=>'EXISTS'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from HR_RCM_EMPLEAVEENTITLE',
'where emp_id= :EMP_ID',
'and end_date is null'))
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(647733317183547102)
,p_card_id=>wwv_flow_imp.id(647729290967547104)
,p_action_type=>'BUTTON'
,p_position=>'SECONDARY'
,p_display_sequence=>70
,p_label=>'Documents_License'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:1291:&SESSION.::&DEBUG.:1291:P1291_EMP_ID,P1291_ID,GLOBAL_IND,GLOBAL_EMP:&EMP_ID.,&MAX_DOC_ID.,&IND_ID.,&EMP_ID.'
,p_link_attributes=>'title="View Document License" style="background-color: #33bbff; padding: 10px; border-radius: 5px; color: white; "class="fa fa-home"cc3399'
,p_button_display_type=>'ICON'
,p_icon_css_classes=>'fa-id-card'
,p_is_hot=>false
,p_condition_type=>'EXISTS'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from HR_RCM_EMPDOCUMENT',
'where emp_id= :EMP_ID',
''))
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(647733975275547101)
,p_card_id=>wwv_flow_imp.id(647729290967547104)
,p_action_type=>'BUTTON'
,p_position=>'SECONDARY'
,p_display_sequence=>80
,p_label=>'Specific Duties'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:3000:&SESSION.::&DEBUG.:3000:P3000_EMP_ID,P3000_ID,GLOBAL_IND,GLOBAL_EMP:&EMP_ID.,&MAX_DUTIES_ID.,&IND_ID.,&EMP_ID.'
,p_link_attributes=>'	title="View Specific Duties" style="background-color: #bf8040; padding: 10px; border-radius: 5px; color: white; "class="fa fa-home"'
,p_button_display_type=>'ICON'
,p_icon_css_classes=>'fa-network-hub'
,p_is_hot=>false
,p_condition_type=>'EXISTS'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from HR_RCM_EMPRESPONSIBILITY',
'where emp_id= :EMP_ID',
'and end_date is null'))
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(647734579269547101)
,p_card_id=>wwv_flow_imp.id(647729290967547104)
,p_action_type=>'BUTTON'
,p_position=>'SECONDARY'
,p_display_sequence=>90
,p_label=>'Training'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:1289:&SESSION.::&DEBUG.:1289:P1289_ID,P1289_EMP_ID,GLOBAL_IND,GLOBAL_EMP:&MAX_TRAINING_ID.,&EMP_ID.,&IND_ID.,&EMP_ID.'
,p_link_attributes=>'	title="View Training" style="background-color: #ac39ac; padding: 10px; border-radius: 5px; margin-top:3px; color: white; "class="fa fa-home"'
,p_button_display_type=>'ICON'
,p_icon_css_classes=>'fa-bicycle'
,p_is_hot=>false
,p_condition_type=>'EXISTS'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from HR_RCM_TRAINING',
'where emp_id= :EMP_ID'))
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(647735175368547101)
,p_card_id=>wwv_flow_imp.id(647729290967547104)
,p_action_type=>'BUTTON'
,p_position=>'SECONDARY'
,p_display_sequence=>100
,p_label=>'Contract'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:1287:&SESSION.::&DEBUG.:1287:P1287_EMP_ID,P1287_ID,GLOBAL_IND,GLOBAL_EMP:&EMP_ID.,&MAX_CONTRACT_ID.,&IND_ID.,&EMP_ID.'
,p_link_attributes=>'title="View Contract" style="background-color: #4da6ff; padding: 10px;margin-top:3px; border-radius: 5px; color: white; "class="fa fa-home"'
,p_button_display_type=>'ICON'
,p_icon_css_classes=>'fa-file-word-o'
,p_is_hot=>false
,p_condition_type=>'EXISTS'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from HR_RCM_EMPCONTRACT',
'where emp_id= :EMP_ID'))
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(647735807778547100)
,p_card_id=>wwv_flow_imp.id(647729290967547104)
,p_action_type=>'BUTTON'
,p_position=>'SECONDARY'
,p_display_sequence=>110
,p_label=>'Work Permit'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:1290:&SESSION.::&DEBUG.:1290:P1290_EMP_ID,P1290_ID,GLOBAL_IND,GLOBAL_EMP:&EMP_ID.,&MAX_WORK_ID.,&IND_ID.,&EMP_ID.'
,p_link_attributes=>'title="View Work Permit" style="background-color: #ff3333; padding: 10px;margin-top:3px; border-radius: 5px; color: white; "class="fa fa-home"'
,p_button_display_type=>'ICON'
,p_icon_css_classes=>'fa-file-pdf-o'
,p_is_hot=>false
,p_condition_type=>'EXISTS'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from HR_RCM_EMPWORKPERMIT',
'where emp_id= :EMP_ID'))
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(647736336666547100)
,p_card_id=>wwv_flow_imp.id(647729290967547104)
,p_action_type=>'BUTTON'
,p_position=>'SECONDARY'
,p_display_sequence=>120
,p_label=>'NEW_STINT'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:109:&SESSION.::&DEBUG.:109::'
,p_link_attributes=>'title="New Stint" title="New Stint" style="background-color: #ff28fb; padding: 10px; border-radius: 5px; color: white; " class="fa fa-file-user"'
,p_button_display_type=>'ICON'
,p_icon_css_classes=>'fa-file-user'
,p_is_hot=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(651825513359852464)
,p_card_id=>wwv_flow_imp.id(647729290967547104)
,p_action_type=>'BUTTON'
,p_position=>'SECONDARY'
,p_display_sequence=>130
,p_label=>'Employee_Items'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:1286:&SESSION.::&DEBUG.:1286:P1286_EMP_ID,GLOBAL_IND,GLOBAL_EMP:&EMP_ID.,&IND_ID.,&EMP_ID.'
,p_link_attributes=>'title="View Employee Items" style="background-color: #FFDE59; padding: 10px; border-radius: 5px; color: white; "class="fa fa-tools"cc3399'
,p_button_display_type=>'ICON'
,p_icon_css_classes=>'fa-tools'
,p_is_hot=>false
,p_condition_type=>'EXISTS'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from HR_RCM_EMPITEM',
'where emp_id= :EMP_ID',
''))
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(651825607359852465)
,p_card_id=>wwv_flow_imp.id(647729290967547104)
,p_action_type=>'BUTTON'
,p_position=>'SECONDARY'
,p_display_sequence=>140
,p_label=>'Alternate_Role'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:1299:&SESSION.::&DEBUG.:1299:P1299_EMP_ID,GLOBAL_IND,GLOBAL_EMP:&EMP_ID.,&IND_ID.,&EMP_ID.'
,p_link_attributes=>'title="View Alternate Roles" style="background-color: #DF82F9; padding: 10px; border-radius: 5px; color: white; "class="fa fa-users"'
,p_button_display_type=>'ICON'
,p_icon_css_classes=>'fa-users'
,p_is_hot=>false
,p_condition_type=>'EXISTS'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from HR_RCM_ALT_POSIT_LOC',
'where emp_id= :EMP_ID',
''))
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(651825659555852466)
,p_card_id=>wwv_flow_imp.id(647729290967547104)
,p_action_type=>'BUTTON'
,p_position=>'SECONDARY'
,p_display_sequence=>150
,p_label=>'Employee Awards'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:1288:&SESSION.::&DEBUG.:1288:P1288_EMP_ID,GLOBAL_IND,GLOBAL_EMP:&EMP_ID.,&IND_ID.,&EMP_ID.'
,p_link_attributes=>'title="View Employee Award" style="background-color: #98F5F9; padding: 10px; border-radius: 5px; color: white; "class="fa fa-users"'
,p_button_display_type=>'ICON'
,p_icon_css_classes=>'fa-trophy'
,p_is_hot=>false
,p_condition_type=>'EXISTS'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from HR_RCM_AWARD',
'where emp_id= :EMP_ID',
''))
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(651825738417852467)
,p_card_id=>wwv_flow_imp.id(647729290967547104)
,p_action_type=>'BUTTON'
,p_position=>'SECONDARY'
,p_display_sequence=>160
,p_label=>'Travel Details'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:1292:&SESSION.::&DEBUG.:1292:P1292_EMP_ID,GLOBAL_IND,GLOBAL_EMP:&EMP_ID.,&IND_ID.,&EMP_ID.'
,p_link_attributes=>'title="View Travel Details" style="background-color: #A7E88C; padding: 10px; border-radius: 5px; color: white; "class="fa fa-plane"'
,p_button_display_type=>'ICON'
,p_icon_css_classes=>'fa-plane'
,p_is_hot=>false
,p_condition_type=>'EXISTS'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from HR_RCM_TRAVELHISTORY',
'where emp_id= :EMP_ID',
''))
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5968579942791944215)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(5968557437792890960)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'batch_facet_search', 'N',
  'compact_numbers_threshold', '10000',
  'display_chart_for_top_n_values', '10',
  'show_charts', 'Y',
  'show_current_facets', 'Y',
  'show_total_row_count', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(647727706459547105)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2279173871186067605)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:150:&SESSION.::&DEBUG.:RR,1278::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(647728070449547105)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2279173871186067605)
,p_button_name=>'INTERACTIVE_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Detail'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.:1280::'
,p_icon_css_classes=>'fa-clipboard-list'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(647728467569547105)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2279173871186067605)
,p_button_name=>'ADD_EMPLOYEE_2'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:109:&SESSION.::&DEBUG.:RP,109::'
,p_icon_css_classes=>'fa-table-new'
,p_security_scheme=>wwv_flow_imp.id(3806738072662971899)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2182618427635218389)
,p_name=>'150_1200_150_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5968579942791944215)
,p_prompt=>'Search'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'input_field', 'FACET',
  'search_type', 'ROW')).to_clob
,p_fc_show_label=>true
,p_fc_filter_values=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2182618843979218391)
,p_name=>'P150_EMPLOYMENT_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5968579942791944215)
,p_prompt=>'Employment Status'
,p_source=>'EMPLOYMENT_STATUS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_show_label=>true
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>true
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>true
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2182619220136218391)
,p_name=>'P150_EMPLOYEE_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5968579942791944215)
,p_prompt=>'Employee Status'
,p_source=>'EMPLOYEE_STATUS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_show_label=>true
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>true
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2182619661079218392)
,p_name=>'P150_EMPLOYMENTCLASS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(5968579942791944215)
,p_prompt=>'Employment Class'
,p_source=>'EMPLOYMENT_CLASS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_show_label=>true
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>true
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2182620045729218392)
,p_name=>'P150_EMPLOYMENT_TYPE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(5968579942791944215)
,p_prompt=>'Employment Type'
,p_source=>'EMPLOYMENT_TYPE_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Temporary'', 1',
'from dual',
'union',
'SELECT ''Permanent'', 2',
'from dual',
'union',
'SELECT ''Other'', 3',
'from dual',
'union',
'SELECT ''Contract'', 4',
'from dual'))
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_show_label=>true
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>true
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2182620414369218393)
,p_name=>'P150_ORGANISATION_STRUCTURE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(5968579942791944215)
,p_prompt=>'Organisation Structure'
,p_source=>'ORGDTL_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ''Level: ''||Unit_Level||'' ''|| Unit_Name||'' ''||value_description A, m.Id',
'From Hr_Hcf_Orgstructuredtl M Join Hr_Hcf_Lookup N On M.Classification=N.Id',
'Where Trunc(M.Start_Date) <= Trunc(current_date)',
'and (trunc(m.end_date) is null or m.end_date >= trunc(current_date -4/24))',
'and exists(select 1',
'           from hr_rcm_employee y',
'           where y.orgdtl_id = m.id)',
'order by 1'))
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_show_label=>true
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>true
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>true
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2182620875273218393)
,p_name=>'P150_PAYMENT_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(5968579942791944215)
,p_prompt=>'Payment Type'
,p_source=>'PAYMENT_TYPE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_show_label=>true
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>true
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2182621222381218393)
,p_name=>'P150_COMPUTE_GROSS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(5968579942791944215)
,p_prompt=>'Compute Gross'
,p_source=>'COMPUTE_GROSS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct Initcap(replace(compute_gross,''_'','' '')) a, compute_gross',
'from hr_rcm_employee'))
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_show_label=>true
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>true
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2182621656629218394)
,p_name=>'P150_SEX'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(5968579942791944215)
,p_prompt=>'Sex'
,p_source=>'SEX_CODE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'SEX CODE'
,p_lov=>'.'||wwv_flow_imp.id(3853796393995864589)||'.'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'hide_radio_buttons', 'N')).to_clob
,p_fc_show_label=>true
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>true
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2182622026048218394)
,p_name=>'P150_AGE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(5968579942791944215)
,p_prompt=>'Age'
,p_source=>'AGE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_lov=>'STATIC:<=21;|21,22 - 30;22|30,31 - 40;31|40,41 - 50;41|50,51 - 55;51|55,>=56;56|'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'manual_entry', 'Y',
  'select_multiple', 'Y')).to_clob
,p_fc_show_label=>true
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>100
,p_fc_filter_values=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>true
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2182622419766218395)
,p_name=>'P150_REPORT_TO_ADMIN'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(5968579942791944215)
,p_prompt=>'Report To Admin'
,p_source=>'REPORT_TO'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EMPLOYEE_ALL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  initcap(Surname || '', '' || nvl(First_Name, '''')) ||'' ''||nvl(Middle_Name,'''') ||''(No.:''||EMP_COMPANY_NO||'')(''||PKG_GLOBAL_FNTS.Get_Lookup_Col(employment_class_id, ''TABLE_VALUE'' )||case when x.verified_by is null then '' Unverified)'' else ',
'        case when DATE_SEPARATED is null then '' Active'' else '' Separated'' end|| '')'' end a,x.ID b',
'        from vw_employee x join hr_rcm_individual z on z.id=x.ind_id',
'        where exists(select 1        ',
'                     from vw_useraccess_finegrain k',
'                     where NVL(k.grade_id, nvl(x.emp_grade_id,1)) = nvl(x.emp_grade_id,1)',
'                     and user_name=:APP_USER)  ',
'        and exists(select 1',
'                from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER))',
'                where  t.id=x.ORGDTL_ID',
'                and X.ORGDTL_ID=decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, X.ORGDTL_ID, w.org_structure_id)         ',
'                  )',
'        and org_id=:APP_ORG_ID             ',
'        order by 1'))
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'hide_radio_buttons', 'N')).to_clob
,p_fc_show_label=>true
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>true
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>true
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2182622823045218395)
,p_name=>'P150_WORK_LOCATION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(5968579942791944215)
,p_prompt=>'Work Location'
,p_source=>'WKLOCATION_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'WORK_LOCATION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''-- All --'' a, 99999 id',
'from dual',
'union',
'select distinct initcap(LOCATION_DESCRIPTION) a,id',
'from HR_HCF_WORKLOCATION a',
'where  org_id= :APP_ORG_ID',
'order by 1'))
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_show_label=>true
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>true
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>true
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2182623290428218396)
,p_name=>'P150_JOB'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(5968579942791944215)
,p_prompt=>'Job'
,p_source=>'JOB_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(DESCRIPTION) a, id',
'from hr_hcf_job V',
'where  org_id= :APP_ORG_ID'))
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_show_label=>true
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>true
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>true
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2182623616895218396)
,p_name=>'P150_POSITION_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(5968579942791944215)
,p_prompt=>'Position Name'
,p_source=>'POSITION_NAME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_show_label=>true
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>true
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>true
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2182624044484218397)
,p_name=>'P150_EMPLOYEE_GRADE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(5968579942791944215)
,p_prompt=>'Employee Grade'
,p_source=>'EMP_GRADE_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select grade_description||''(''||grade_code||'') as at ''||EFFECTIVE_FROMDATE a, id',
'from hr_hcf_positiongrade V',
'where trunc(EFFECTIVE_FROMDATE) <= trunc(current_date -4/24)',
'and (trunc(EFFECTIVE_TODATE) is null or EFFECTIVE_TODATE >= trunc(current_date -4/24))',
'and verified_by is not null',
'AND  exists ( ',
'              select 1',
'              FROM hr_rcm_employee A ',
'              where v.id=a.emp_grade_id                     ',
'              )',
'order by 1'))
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_show_label=>true
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>true
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>true
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2182624415037218397)
,p_name=>'P150_TRADE_UNION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(5968579942791944215)
,p_prompt=>'Trade Union'
,p_source=>'UNION_CODE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select organisation_name,x.id',
'from PA_PCF_DEDUCTIONCODE w join vw_organisationCUR x on w.ENTITY_ABBREVIATION=x.id',
'where organisation_type=''REMITTANCE''',
'and UNION_DEDUCTION=1',
'and exists(select 1',
'           from hr_rcm_employee y',
'           where y.union_code_id = x.id)',
'order by 1'))
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_show_label=>true
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>true
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp.component_end;
end;
/
