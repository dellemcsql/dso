# Release v0.9.6
## Examples:-
* #### **Show** full report for the oracle database layer in **table** format
```powershell
dso db oracle report -I <db_ip> --svc <db_service_name> -U <db_username>
```
* #### **Show** full report for the oracle database layer in **json** format
```powershell
dso db oracle report -I <db_ip> --svc <db_service_name> -U <db_username> -o json
```
* #### **Generate** full report for the oracle database layer in **csv** format
```powershell
dso db oracle report -I <db_ip> --svc <db_service_name> -U <db_username> -o csv
```
* #### **Show** best practice settings with recomendations for oracle database layer
```powershell
dso db oracle get -I <db_ip> --svc <db_service_name> -U <db_username>
```
* #### **Show** best practice settings with recomendations for oracle database layer in **JSON** format
```powershell
dso db oracle get -I <db_ip> --svc <db_service_name> -U <db_username> -o json
```
* #### **Generate** best practice settings with recomendations for oracle database layer in **csv** format
```powershell
dso db oracle get -I <db_ip> --svc <db_service_name> -U <db_username> -o csv
```