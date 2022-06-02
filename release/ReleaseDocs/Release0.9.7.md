# Release v0.9.6

### Release v0.9.7 has following following functions being added/modified to the DSO tool:
- ### Added **info** command functionality for each commands (get, set, and report) for all modules
    
- ### Reworked on example module which got integrated with info command along with help module
- ### Minor improvement in oracle report command 
- ### Minor improvement in server report command 


<br>

---

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