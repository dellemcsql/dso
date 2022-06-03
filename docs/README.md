# DSO [Database Solution Optimizer]

### The Database Solution Optimizer (DSO) is a free command-line utility/toolkit provided by Dell Engineering to collect, report, and automate the application of best practices. 
### DSO tool benefit includes: 

-	Reporting on the configuration of different layers in the database solution stack. Administrators can quickly generate reports to evaluate if best practices have been implemented.  
-	Automating best practices. The administrator can apply best practices using the toolkit and save time.  
-	The DSO toolkit can be deployed and works on Windows, Linux, and Mac operating systems.  
-	This toolkit collects and displays data in a single format. As of now, this tool supports displaying/saving data in the table, JSON, or CSV format.
-	Help and examples for almost all commands and operations are inbuilt within this toolkit.
-	DSO toolkit also provides auto-completion support for PowerShell, Bash Shell, and ZSH (zee shell)
-	It provides a consistent and intuitive command flow which is very much helpful in its usability.
-	This toolkit provides an agentless approach for collecting and applying best practices. It does not depend on any external client or tools hence simplifying its setup and maintenance. 

Go through the followings sections for more details:
> [Release Information](../release/README.md)

> [Usage Examples](examples/README.md)

> [Install Instruction](../README.md#install-instructions)


The DSO toolkit is designed and organized by functional models based on its area of applicability and also follows a completely modular approach with minimal or zero dependencies.  

![DSO modular architecture](images/1_logicalArch.png)

As can be seen from the above representation, functional components are represented by hexagons and those highlighted in green colors are ready to ship with this release. The white-colored hexagons represent functional modules that will be added to the toolkit in a future release. 

Some common modules are shown in brown colors that work alongside all functional modules and provide required capabilities across modules.  
Black-colored Automation handler shown in the above image binds together all the functional and common modules.  


### Below sections describe different components in the DSO toolkit: -

## Automation handler
The automation handler is the main component and is the heart and brain of this utility/toolkit. End-user will be interacting with this toolkit through the functions and options provided by this handler.  
This handler will also provide help for all module commands and also provide examples for all modules and commands. Followings are some of the tasks carried out by this handler. Automation handler 
-	Will collect the input provided by the end-user
-	Perform basic validation check 
-	Call respective module functions from the different modules for the operation to begin.
-	Collect the response and/or error from module functions.
-	Pass relevant data to the log module to be captured in the log file.
-	Display result/information/help/error to the end-user in the requested format.

The below diagram showcases the operation flow for the DSO toolkit or the automation handler.

![DSO Operation Flow ](images/2_operationFlow.png)

As can be seen from the above operation flow diagram, the following steps occur within dso tools:

- The user will provide commands and inputs from the shell 
- The automation handler will receive the command and inputs and will decide on
  - It will parse the input command and flags
  - If the command looking for help, it will fetch help for the given command from the help module.
  - If the command looking for log data, it will fetch log records for the dso
  - If the command belongs to GET, SET or REPORT categories for any functional module, it will interact with corresponding modules and perform the operation required.
- If any errors are present in command input, display the error as well as help for that command
- If any errors are present during execution, display the error for the user
- Finally, if there is no error, display the outcome of the command to the user in the requested format.

DSO toolkit also provides consistent and intuitive command flow which is very much helpful in its usability. Below representation showcase the command flow process as: -
```text 
<tool> <module> <sub-module> <command> <flag> <values>
```
Ex: - 	
```bash
dso os rhel report -I xxx.xxx.xxx.xxx -U <username> -P <password>  
```

![DSO Command Flow](images/3_commandFlow.png)

<br>

## Connectivity Module

DSO tool comes with an inbuilt connectivity module which solves the problem of deploying separate client connectivity packages or software.

This module currently implements the following client packages/component out of the box which gets leveraged by different modules to access remote deployments:
- [SSH Client](https://www.ssh.com/academy/ssh/client)
- [HTTP Client](https://developer.mozilla.org/en-US/docs/Web/HTTP/Overview)
- [SQL Server client](https://docs.microsoft.com/en-us/sql/database-engine/configure-windows/client-network-configuration?view=sql-server-ver16)
- [Oracle client](https://www.oracle.com/in/database/technologies/instant-client.html#:~:text=Oracle%20Instant%20Client%20enables%20development,full%20use%20of%20Oracle%20Database.)

Based on the future requirement, we will be adding more clients' packages to this list. Some of them in consideration are VMware and Kubernetes clients


## Help Module

DSO tool comes with inbuilt help command that showcases help about any module, sub-module, or command.  
The help module can be invoked by using any of the below-mentioned formats:
- by adding(-h) to any command
- by adding (--help) to any command
- by passing any command to the help module (dso help command_name)

The Help module interacts with all modules, sub-modules, and commands and showcases the following information:

- Short description
- Long description
- Usage format
- All available flags with a short description


## Example module and Info command
DSO tool comes with an inbuilt example module which gets accessed by the **info** command.

The info command showcases usage examples of the command along with help about the command. 

> **NOTE:** Info commands showcase examples only for get, set and report commands for each module and sub-module. For module and sub-module, it displays only help about that module.

<br>

**info** command uses the following syntax format to display the details:
```
dso info <module> <sub-module> <command> 
```
For ex:-
```bash
dso info db sql get 
```
or
```bash
dso info os rhel report 
```

## Completion Module

To further help with ease of usage, this tool comes up with an auto-completion module that requires very minimal configuration from the user end.

The dso tool supports auto-completion features for four different shell environments and users with a choice for working with shell environments as per their needs/requirements:
- [PowerShell](https://docs.microsoft.com/en-us/powershell/scripting/overview?view=powershell-7.2)
- [Bash Shell](https://en.wikipedia.org/wiki/Bash_(Unix_shell))
- [Zsh Shell](https://en.wikipedia.org/wiki/Z_shell)
- [Fish Shell](https://fishshell.com/)

Refer [completion configuration example section](examples/completionExamples.md) that covers auto-completion configuration instructions for DSO.


## Reporting Module 
The reporting module is a common module that works in sync with other functional modules. It enables the administrator to collect current configuration values within different layers of the infrastructure. The reporting module allows fast analysis of several configurations within your database solution platform.  

There are two types of reporting structures present in this utility:
- report command -This kind of report has extra relevant details apart from best practices related to specific modules
- get commands: - This kind of report will capture current and recommended values only for best practices related to specific modules

This module will have the logic inbuilt to collect current values for the desired parameters/settings and the recommended values. This way user can validate the present values and could decide to set the best practice configuration. 

Users can also filter reports by providing applicable flags to the module so that the report will get generated only for that specific part of the module. 

For example, if the user wants to generate a report only for OS kernel settings, the user can use the command as shown below: -

```bash
dso os rhel report -w sql --tunedadm -I <Ip address> -U <username> -P <password> 
```
if the user wants to generate the report for all functional areas of the OS RHEL module, it can be done using the below command: 

```bash
dso os rhel report -w sql -I <Ip address> -U <username> -P <password> 
```

## Server BIOS Module 
PowerEdge BIOS configuration reports are important to quickly evaluate if the server is optimized for the database workload. This PowerEdge BIOS module uses IDRAC Redfish REST API to pull the BIOS configuration. With this report, an administrator can understate these settings: 
-	System workload profile setting 
-	System profile setting for performance 
-	Status of Integrated Devices 
-	X2APIC Support 
-	Any other user-provided settings

Refer to the [BIOS module example section](examples/serverModuleExamples.md) for details about how to advantage of this module with DSO.

## RHEL OS Module 
The Linux operating system module allows an administrator to report on the Huge Pages configuration. It also checks several OS kernel settings using a custom Microsoft SQL Server-tuned profile. This profile was created by the Dell engineering team to quickly apply OS settings that improve database performance. The tuned profile is used by the existing Linux tuned-adm tool to:  
-	Report on the differences between the current OS configuration and the settings recommended in the custom Microsoft SQL Server-tuned profile. 
-	Apply the recommended OS configuration changes from the custom-tuned profile 
-	Report on mssql-config settings for SQL Server Instance
-	Apply the recommended mssql-config settings

Refer to the [RHEL OS module example section](examples/osModuleExamples.md) for details about how to advantage of this module with DSO.


## SQL Server Module 
The Microsoft SQL Server module enables the database administrator to report and apply the different settings at the database layer of the solution. These settings could be Instance specific, database-specific, or specific configuration settings. Some examples of the settings are: -
-	CPU affinity setting
-	Database file growth
-	Min and Max memory setting for SQL Server instance
-	Query optimizer hotfixes setting

>Other settings will be added in this module in future releases of this module/tool.

Apart from the best practice reporting and its application, users also have the option to generate the general report for the database layer for inventory purposes.

Refer to the [SQL Server db module example section](examples/dbSqlModuleExamples.md) for details about how to advantage of this module with DSO.

## Oracle Module 
The Oracle database module enables the database administrator to report and apply the different settings at the database layer of the solution. These settings could be Instance specific, database-specific, or specific configuration settings. Some examples of the settings are: -
-	Increase the number and size of the Redo Log file
-	Change High Priority Processes
-	Optimize SGA_Max_size and SGA_Target

>Other settings will be added to this module in future releases of this module/tool.

Apart from the best practice reporting and its application, users also have the option to generate the general report for the database layer for inventory purposes.

Refer to the [Oracle db module example section](examples/dbOracleModuleExamples.md) for details about how to advantage of this module with DSO.

## Storage Module (future functionality) 
Physical storage configuration and other related settings can be challenging and time-consuming. The storage module reports on the PowerMax storage directors and the storage LUNs. This enables the database administrator to analyze the PowerMax storage configuration and collaborate with the PowerMax administrator.  
The storage module also provides functionality for reporting on ASM and VMware configurations. Here is the full list of capabilities: 
 
-	Reports on storage director ports and interface emulations 
-	Reports and adds storage LUNs  
-	Applying different settings on LUNs as per the requirement.
 
As of now this module is partially complete and provides minimal reporting capabilities for **Dell PowerStore** storage.

Refer to the [PowerStore storage module example section](examples/dbSqlModuleExamples.md) for details about how to advantage of this module with DSO.

## Network Module (future functionality) 
The network module will help to work with physical and virtual network components by providing options to report and apply best practice settings. For example, this module will allow reporting on the Maximum Transmission Unit. If supported by the network switch, a maximum MTU of 9,000 will improve network performance and significantly improve actively moving a virtualized database from one server to another.  
 
## Virtual Module (future functionality) 
The virtual module will help to work with the virtualization component by providing options to report and apply best practice settings. Initially, this module will include a VMware ESXi sub-module to work with vSphere and vCenter settings. Some of the examples for working with settings related to the virtualization layer of the solution include: 

VMware 
-	VMware ESXi: Round Robin Path Policy 
-	VMware vSphere: Power Management Policy 
-	VMware ESXi: HBA Queue Depth
-	VMware vSphere: Virtual Machine Latency Sensitivity
-	VMware Storage I/O Control: Threshold

## Log and Debug Module (future functionality) 
Debugging and logging are important functions for any tool. This module will help capture every operation in the toolkit into a log file. The log module will also help format a report for the administrator to review toolkit usage and its actions. 
