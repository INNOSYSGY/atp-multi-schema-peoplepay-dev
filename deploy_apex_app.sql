REM First setup the installation context in the target environment
begin
    apex_application_install.set_workspace('PPLPAYV8_AUTO');
    apex_application_install.set_application_id(800);
    apex_application_install.generate_offset();
    apex_application_install.set_schema('TEMPLATE_APPV8');
    apex_application_install.set_application_name( p_application_name => 'Multi Schema PeoplePay - Developer 1' );
    apex_application_install.set_application_alias('MULTI-SCHEMA-PEOPLEPAY-DEPLOY-TESTS');  -- set same alias as create app before
end;
/
REM Then install the application by running its exported SQL script
REM For "split" export run @f112/install.sql 
REM or @f112/install_component.sql instead
@f112/install.sql
