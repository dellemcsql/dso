# report module example

<br>
The reporting module is a common module that works in sync with other functional modules. It enables the administrator to collect current configuration values within different layers of the infrastructure. The reporting module allows fast analysis of several configurations within your database solution platform.  

There are two types of reporting structures present in this utility:
- report command -This kind of report has extra relevant details apart from best practices related to specific modules
- get commands: - This kind of report will capture current and recommended values only for best practices related to specific modules

This module will have the logic inbuilt to collect current values for the desired parameters/settings and the recommended values. This way user can validate the present values and could decide to set the best practice configuration. 

Users can also filter reports by providing applicable flags to the module so that the report will get generated only for that specific part of the module. 

For example, if the user wants to generate a report only for RHEL operating system, the user can use the command as shown below: -

```bash
dso os rhel report -w sql -I <Ip address> -U <username> -P <password> 
```
if the user wants to validate best-practice kernel settings on RHEL operating system, it can be done using the below command: 

```bash
dso os rhel get -w sql --tunedadm -I <Ip address> -U <username> -P <password> 
```

<br>

>  By default, report commands for each module display the result/outcome in table format on command line. However, user could choose to display the result in JSON format (by passing -o json flag) at the end of any **report** or **get** command.

>  Also, users can save report outcomes in CSV format (by passing -o csv flag) at the end of any **report** or **get** command.