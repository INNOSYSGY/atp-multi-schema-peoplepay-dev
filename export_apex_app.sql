set long 100000
SET LINESIZE 200
SET TRIMSPOOL ON
SET HEAD OFF
SET PAGESIZE 0
SET FEEDBACK OFF
SET VERIFY OFF
SET ECHO OFF

apex export -applicationid 112  -split  -overwrite-files -expSupportingObjects Y -expType APPLICATION_SOURCE ;
apex export -applicationid 112 -overwrite-files;

apex export -applicationid 120  -split  -overwrite-files -expSupportingObjects Y -expType APPLICATION_SOURCE ;
apex export -applicationid 120 -overwrite-files;