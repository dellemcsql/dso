# oracle sub-module usage examples

## oracle sub-module under db module supports different commands to work with the oracle database layer withing solution. Currently, the oracle sub-module supports the following commands:
> ## **report** Command 

report command for the oracle sub-module has the following structure:

```
dso db oracle report --<flag/s>
```
Examples:-

EX1: // fetch report from oracle database (output in TABLE format)
```bash
dso db oracle report  -I 10.0.0.1 --svc orcl -U user1 
```
EX2: // fetch report from oracle database (output in JSON format)
```bash
dso db oracle report  -I 10.0.0.1 --svc orcl -U user1 -o json
```
EX3: // fetch report from oracle database (output in CSV format)
```bash
dso db oracle report  -I 10.0.0.1 --svc orcl -U user1 -o csv
```
EX4: // fetch report from oracle database on a non-default port
```bash
dso db oracle report -I 10.0.0.2 --port 2341 --svc orcl2 -U user1 
```
EX5: // fetch report from oracle database with inline password
```bash
dso db oracle report -I 10.0.0.2 --svc orcl2 -U user1 -P pass1
```

> ## **get** command

get command for the oracle sub-module has the following structure:

```
dso db oracle get --<flag/s>
```
Examples:-

EX1: // validate best practice recommendation for oracle database (output in TABLE format)
```bash
dso db oracle get  -I 10.0.0.1 --svc orcl -U user1 
```
EX2: // validate best practice recommendation for oracle database (output in JSON format)
```bash
dso db oracle get  -I 10.0.0.1 --svc orcl -U user1 -o json
```
EX3: // validate best practice recommendation for oracle database (output in CSV format)
```bash
dso db oracle get  -I 10.0.0.1 --svc orcl -U user1 -o csv
```
EX4: // validate best practice recommendation for oracle database on non-default port
```bash
dso db oracle get -I 10.0.0.2 --port 2341 --svc orcl2 -U user1 
```
EX5: // validate best practice recommendation for oracle database with inline password
```bash
dso db oracle get -I 10.0.0.2 --svc orcl2 -U user1 -P pass1
```

> ## **set** command

set command for the oracle sub-module has the following structure:

```
dso db oracle set --<flag/s>
```
Examples:-

EX1: // apply _high_priority_processes as per best practice recommendation
```bash
dso db oracle set --hpprocess -I 10.0.0.1 --svc orcl -U user1 
```
EX2: // apply sga_max_size as per best practice recommendation
```bash
dso db oracle set --sgaMax -I 10.0.0.2 --port 2341 --svc orcl2 -U user1 
```
EX3: // apply sga_target as per best practice recommendation
```bash
dso db oracle set --sgaTarget -I 10.0.0.1 --svc orcl -U user1 
```
EX4: // apply all best practices as per the recommendation
```bash
dso db oracle set --bps -I 10.0.0.1 --svc orcl -U user1 
```
EX5 //  apply individual best practices with custom value
```bash
dso db oracle set -A "sga_max_size=24G" -I 10.0.0.1 --svc orcl -U user1 -P pass1
```
or
```bash
dso db oracle set -A "_high_priority_processes=LMS*|VKTM|LGWR" -I 10.0.0.1 --svc orcl -U user1 -P pass1
```
EX6: // apply redo log file best practice recommendation
```bash
dso db oracle set --log -I 10.0.0.1 --svc orcl -U user1 
```
