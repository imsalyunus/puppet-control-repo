#!/bin/bash

su - oracle -c '
# Set environment
export ORACLE_HOME=/u01/app/oracle/product/19.3.0/dbhome_1
export ORACLE_SID=orcl
export PATH=$PATH:$ORACLE_HOME/bin

# Jalankan query
echo "Menjalankan query role & switchover status..."
sqlplus -s / as sysdba <<EOF
SET LINESIZE 150
SET PAGESIZE 100
SET FEEDBACK OFF
SET TRIMSPOOL ON
SET ECHO OFF

SELECT database_role, switchover_status FROM v\$database;

EXIT;
EOF
'
