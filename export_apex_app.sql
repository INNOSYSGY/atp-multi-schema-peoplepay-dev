set long 100000
SET LINESIZE 200
SET TRIMSPOOL ON
SET HEAD OFF
SET PAGESIZE 0
SET FEEDBACK OFF
SET VERIFY OFF
SET ECHO OFF

apex export -applicationid '${APEX_APP_ID}'  -split  -overwrite-files -expSupportingObjects Y -expType APPLICATION_SOURCE ;

apex export -applicationid '${APEX_APP_ID}' -overwrite-files;

