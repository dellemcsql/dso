# Release v0.9.6

### Release v0.9.6 has the following functions being added/modified to the DSO tool:
- ### Added set command functionality for db oracle module
    With help of this set command, the user will be able to apply oracle database best practices. This set command has the following flow:
    ```bash
    dso db oracle set <flags> 
    ```
    The following flags can be used with this command:
    
- ### Improved db oracle module get command functionality
- ### Improved db oracle module report command functionality

<br>

---

## Examples:-
<details><summary>oracle db report</summary>

* #### **Show** full report for the oracle database layer in **table** format
```bash:
dso db oracle report -I <db_ip> --svc <db_service_name> -U <db_username>
```
* #### **Show** full report for the oracle database layer in **JSON** format
```bash:
dso db oracle report -I <db_ip> --svc <db_service_name> -U <db_username> -o json
```

* #### **Generate** a full report for the oracle database layer in CSV** format
```bash:
dso db oracle report -I <db_ip> --svc <db_service_name> -U <db_username> -o csv
```
</details>
<details><summary>oracle db get best practice recomendations</summary>

* #### **Show** best practice settings with recommendations for the oracle database layer
```bash:
dso db oracle get -I <db_ip> --svc <db_service_name> -U <db_username>
```
* #### **Show** best practice settings with recommendations for the oracle database layer in **JSON** format
```bash:
dso db oracle get -I <db_ip> --svc <db_service_name> -U <db_username> -o json
```
* #### **Generate** best practice settings with recommendations for the oracle database layer in **CSV** format
```bash:
dso db oracle get -I <db_ip> --svc <db_service_name> -U <db_username> -o csv
```
</details>