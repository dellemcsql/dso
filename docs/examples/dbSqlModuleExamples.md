# sql sub-module usage examples

## sql sub-module supports the following commands:
> 
<details><summary>report</summary>
report command for the sql sub-module has the following structure:

```
dso db sql report --<flag/s>
```
Examples:-
EX1: // fetch report from SQL Server database (output in TABLE format)
```bash
dso db sql report  -I 10.0.0.1 -U user1 
```
EX2: // fetch report from SQL Server database (output in JSON format)
```bash
dso db sql report  -I 10.0.0.1 -U user1 -o json
```
EX3: // fetch report from SQL Server database (output in CSV format)
```bash
dso db sql report  -I 10.0.0.1 -U user1 -o csv
```
EX4: // fetch report from SQL Server database on non default port
```bash
dso db sql report -I 10.0.0.2 --port 2341 -U user1 
```
EX5: // fetch report from SQL Server database with inline password
```bash
dso db sql report -I 10.0.0.2 -U user1 -P pass1
```
</details>

>
<details><summary>get</summary>
get command for the sql sub-module has the following structure:

```
dso db sql get --<flag/s>
```
Examples:-

EX1: // validate best practice recommendation from SQL Server database (output in TABLE format)
```bash
dso db sql get  -I 10.0.0.1 -U user1 
```
EX2: // validate best practice recommendation from SQL Server database (output in JSON format)
```bash
dso db sql get  -I 10.0.0.1 -U user1 -o json
```
EX3: // validate best practice recommendation from SQL Server database (output in CSV format)
```bash
dso db sql get  -I 10.0.0.1 -U user1 -o csv
```
EX4: // validate best practice recommendation from SQL Server database on non default port
```bash
dso db sql get -I 10.0.0.2 --port 2341 -U user1 
```
EX5: // validate best practice recommendation from SQL Server database with inline password
```bash
dso db sql get -I 10.0.0.2 -U user1 -P pass1
```
</details>

>
<details><summary>set</summary>
set command for the sql sub-module has the following structure:

```
dso db sql set --<flag/s>
```
Examples:-

EX1: // apply CPU affinity mask as per best practice recommendation
```bash
	dso db sql set --affinity -I 10.0.0.1 -U user1 
```

EX2: // apply Min and Max memory settings as per best practice recommendation
```bash
dso db sql set --sqlmem -I 10.0.0.1 -U user1 
```

EX3: // apply db file auto-growth as per best practice recommendation
```bash
dso db sql set --autogrowth -I 10.0.0.1 -U user1 
```
EX4: // apply Query Optimizer HotFixes as per best practice recommendation
```bash
dso db sql set --qohf -I 10.0.0.1 -U user1 
```
EX5: // apply Dedicated remote admin connection as per best practice recommendation
```bash
dso db sql set --dac -I 10.0.0.1 -U user1 
```
EX6: // apply all best practices per best practice recommendation
```bash
dso db sql set --bps -I 10.0.0.1 -U user1
```
EX7: // apply best practice recommendation with inline password
```bash
	dso db sql set --bps -I 10.0.0.1 -U user1 -P pass1
```
</details>

