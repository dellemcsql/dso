# Release v0.9.6
## Examples:-
<details><summary>oracle db report</summary>

* #### **Show** full report for the oracle database layer in **table** format
```bash:
dso db oracle report -I <db_ip> --svc <db_service_name> -U <db_username>
```
* #### **Show** full report for the oracle database layer in **json** format
```bash:
dso db oracle report -I <db_ip> --svc <db_service_name> -U <db_username> -o json
```
* #### **Generate** full report for the oracle database layer in **csv** format
```bash:
dso db oracle report -I <db_ip> --svc <db_service_name> -U <db_username> -o csv
```
</details>
<details><summary>oracle db get best practice recomendations</summary>

* #### **Show** best practice settings with recomendations for oracle database layer
```bash:
dso db oracle get -I <db_ip> --svc <db_service_name> -U <db_username>
```
* #### **Show** best practice settings with recomendations for oracle database layer in **JSON** format
```bash:
dso db oracle get -I <db_ip> --svc <db_service_name> -U <db_username> -o json
```
* #### **Generate** best practice settings with recomendations for oracle database layer in **csv** format
```bash:
dso db oracle get -I <db_ip> --svc <db_service_name> -U <db_username> -o csv
```
</details>