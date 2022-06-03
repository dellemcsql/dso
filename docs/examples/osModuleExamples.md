# rhel sub-module usage examples

## rhel sub-module supports the following commands:
> ## **report** command

report command for the rhel sub-module has the following structure:

```
dso os rhel report --<flag/s>
```
Examples:-

EX1: // fetch report from RedHat Linux OS for oracle workload (output in TABLE format)
```bash
dso os rhel report -w oracle -I 10.0.0.1 -U user1 
```

EX2: // fetch report from RedHat Linux OS for SQL Server workload (output in JSON format)
```bash
dso os rhel report -w sql -I 10.0.0.1 -U user1 -o json
```

EX3: // fetch report from RedHat Linux OS for oracle workload (output in CSV format)
```bash
dso os rhel report -w oracle -I 10.0.0.1 -U user1 -o json
```

EX4: // fetch report from RedHat Linux OS for oracle workload with inline password
```bash
dso os rhel report -w oracle -I 10.0.0.1 -U user1 -P pass1
```

EX5: // fetch report from RedHat Linux OS for SQL Server workload with non-default ssh port
```bash
dso os rhel report -w oracle -I 10.0.0.1 --portSSH 2222 -U user1 -P pass1
```


> ## **get** command

get command for the rhel sub-module has the following structure:

```
dso os rhel get --<flag/s>
```
Examples:-

EX1: // validate all best practice recommendations on RedHat Linux OS for oracle workload (output in TABLE format)
```bash
dso os rhel get -w oracle --bps -I 10.0.0.1 -U user1 
```

EX2: // validate kernel parameters best practice recommendation on RedHat Linux OS for oracle workload (output in JSON format)
```bash
dso os rhel get -w oracle --tunedadm -I 10.0.0.1 -U user1 -o json
```

EX3: // validate Hugepages best practice recommendation on RedHat Linux OS for oracle workload (output in CSV format)
```bash
dso os rhel get -w oracle --hpage -I 10.0.0.1 -U user1 -o csv
```

EX4: // validate all best practice recommendations on RedHat Linux OS for SQL Server workload (output in TABLE format)
```bash
dso os rhel get -w sql --bps -I 10.0.0.1 -U user1 
```

EX5: // validate kernel parameters best practice recommendation on RedHat Linux OS for SQL Server workload (output in JSON format)
```bash
dso os rhel get -w sql --tunedadm -I 10.0.0.1 -U user1 -o json
```

EX6: // validate disk-related best practice recommendation on RedHat Linux OS for SQL Server workload (output in CSV format)
```bash
dso os rhel get -w sql --disk -I 10.0.0.1 -U user1 -o csv
```

EX7: // validate MSSQL Configuration related best practice recommendation on RedHat Linux OS for SQL Server workload
```bash
dso os rhel get -w sql --msconf -I 10.0.0.1 -U user1 -o csv
```

EX8: // validate kernel parameters and MSSQL Configuration related best practice recommendation on RedHat Linux OS for SQL Server workload 
```bash
dso os rhel get -w sql --tunedadm --msconf -I 10.0.0.1 -U user1
```

EX9: // validate best practice recommendation on RedHat Linux OS for SQL Server workload with inline password
```bash
dso os rhel get -w sql --bps -I 10.0.0.2 -U user1 -P pass1
```

EX10: // validate best practice recommendation on RedHat Linux OS for SQL Server workload with non-default ssh port
```bash
dso os rhel get -w sql --bps -I 10.0.0.2 --portSSH 2222 -U user1 -P pass1
```


> ## **set** command

set command for the rhel sub-module has the following structure:

```
dso os rhel set --<flag/s>
```
Examples:-

EX01: // apply all best practice recommendations on RedHat Linux OS for oracle workload 
```bash
dso os rhel set -w oracle --bps -I 10.0.0.1 -U user1 
```
	
EX02: // apply kernel parameters best practice recommendation on RedHat Linux OS for oracle workload
```bash 
dso os rhel set -w oracle --tunedadm -I 10.0.0.1 -U user1 
```
	
EX03: // apply Hugepages best practice recommendation on RedHat Linux OS for oracle workload 
```bash
dso os rhel set -w oracle --hpage -I 10.0.0.1 -U user1 
```
	
EX04: // apply all best practice recommendations on RedHat Linux OS for SQL Server workload 
```bash
dso os rhel set -w sql --bps -I 10.0.0.1 -U user1 
```
	
EX05: // apply kernel parameters best practice recommendation on RedHat Linux OS for SQL Server workload
```bash 
dso os rhel set -w sql --tunedadm -I 10.0.0.1 -U user1 
```
	
EX06: // apply disk-related best practice recommendation on RedHat Linux OS for SQL Server workload
```bash 
dso os rhel set -w sql --disk -I 10.0.0.1 -U user1 
```
	
EX07: // apply MSSQL Configuration related best practice recommendation on RedHat Linux OS for SQL Server workload
```bash
dso os rhel set -w sql --msconf -I 10.0.0.1 -U user1 
```
	
EX08: // apply kernel parameters and MSSQL Configuration related best practice recommendation on RedHat Linux OS for SQL Server workload 
```bash
dso os rhel set -w sql --tunedadm --msconf -I 10.0.0.1 -U user1
```
	
EX09: // apply best practice recommendation on RedHat Linux OS for SQL Server workload with inline password
```bash
dso os rhel set -w sql --bps -I 10.0.0.2 -U user1 -P pass1
```

EX10: // apply best practice recommendation on RedHat Linux OS for SQL Server workload with non-default ssh port
```bash
dso os rhel set -w sql --bps -I 10.0.0.2 --portSSH 2222 -U user1 -P pass1
```
	
Ex11:- // apply custom SQL Server memory limit using mssql-conf on RedHat Linux OS for SQL Server workload
```bash
dso os rhel set -w sql -A "memory.memorylimitmb=8192" -I 10.0.0.1 -U user1 -P pass1
```

Ex12:- // enable custom SQL Server traceflag
```bash
dso os rhel set -w sql -A "traceflag=834" -I 10.0.0.1 -U user1 -P pass1 
```

