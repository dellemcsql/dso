# DSO (Database Solution Optimizer)
A CLI utility to automate best practices settings and reporting for SQL Server and Oracle database solution
<br>

> [Release Info](release/README.md)

> [Documentation](docs/README.md)

> [Examples](docs/examples/README.md)

> [Install Instruction](#install-instructions)

---

Reporting, validating, and applying best practices to a database solution is a cumbersome and time-consuming process. To perform any best practice setup activities, the deployment team/administrators need to: -
-	gather data about any setting/s in a specific layer, 
-	decide if the current value set for the setting is optimal or not and
-	set the values as per the recommendation.

Applying recommendations manually at each layer in any given solution stack increases the chances of human error and it involves working with multiple tools as mentioned below to apply any settings.

Changing any: -
-	BIOS setting requires working with iDRAC 
-	Virtual machine setting requires working with vSphere client or vCenter client
-	Operating system settings require an SSH client
-	Database settings (like SQL Server or Oracle) require SQL Server client.
-	Storage settings require that a specific storage client
-	Network setting requires a network client.

It gets even more complex, cumbersome, difficult, and most importantly human error-prone when working with a large number of resources as part of any solution, or with more than one solution to maintain.

The ***Database Solution Optimizer (DSO)*** is a free command-line utility/tool provided by Dell Engineering to validate, report, and automate the application of the best practices.

DSO tool has many benefits, some of which are listed below: 

-	Reporting on the configuration of different layers in the database solution stack. Administrators can quickly generate reports to evaluate if the best practices have been implemented to a particular layer within a solution or not.  
-	Automating best practices deployment. The administrator can apply best practices using the dso tool and save time.  
-	The DSO toolkit can be deployed and works on Windows, Linux, and Mac operating systems.  
-	This toolkit collects and displays data in a single format. As of now, this tool supports displaying/saving data in the table, JSON, and CSV format.
-	Help and examples for almost all commands and operations are inbuilt within this toolkit.
-	DSO toolkit also provides auto-completion support for PowerShell, bash Shell, zsh (zee shell), and fish shell.
- It provides a consistent and intuitive command flow which is very much helpful in the usability of this tool.
-	This toolkit provides an agentless approach for collecting and applying best practices. It does not depend on any external client or tools hence simplifying its setup and maintenance. 

> **_NOTE:_** The DSO toolkit is not a supported product, but it is provided to customers for use and customize their own database environments. 

<br>

 The DSO toolkit is designed and organized by functional models based on its area of applicability. Check [dso design](docs/README.md) and [examples](docs/examples.md) for more details.
<br>

--- 
# Install instructions

<br>

### Users can choose two approaches to deploy the dso tool to Linux or Windows operating system:
- Manual method
- Automated method

<br>

> ## For Windows environment (Manual method)

<br>

- [x] 1. Find the latest released binary from [release notes](release/README.md)
- [x] 2. Download the zip file as per your operating system.
- [x] 3. Extract the zip file and keep the executable at the location of your choice.
- [x] 4. Add the binary executable path to your system path variable.
- [x] 5. Set [auto-completion](docs/examples/completionExamples.md) for your terminal environment.
- [x] 6. Now you can start using this tool.


> ### For Windows environment (Automated method)

<br>

Above mentioned steps can also be performed with a single command in a **Windows environment** using PowerShell. 
```Powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/dellemcsql/dso/main/install/v1.0.0/dso_windows_install.ps1'))
```
<br>

### Reffer [examples](docs/examples/README.md) to familiarize yourself with the DSO tool.

<br>

> ## For Linux environment (Manual method)
<br>

- [x] Find the latest released binary from [release notes](release/README.md)
- [x] Download the zip file as per your operating system (Linux_x64 in this case)
- [x] Unzip the downloaded file and keep the executable at the location of your choice
- [x] Make the binary file executable using the below command.
   ```
   chmod +x <binary_path> 
- [x] 5. Add binary location to your executable path using the below command.
    - For bash shell
        ```bash
        echo "export PATH=$PATH:<binary_location>" >> ~/.bash_profile
        source ~/.bash_profile
        ```
    - For zsh shell
        ```bash
        echo "export PATH=$PATH:<binary_location>" >> ~/.zshrc
        source ~/.zshrc
        ```
- [x] Set auto-completion for your terminal environment
    ```bash
    sudo sh -c 'dso completion bash > /etc/bash_completion.d/dso'
    source ~/.bashrc
    ```
Now you can start using this tool.

> ## For Linux environment (Automated method)
<br>

Above mentioned all steps can also be performed with a single step in a **Linux environment** using the below command.

```bash
curl -o dso_linux_x64.zip https://raw.githubusercontent.com/dellemcsql/dso/main/release/downloads/v1.0.0/dso_linux_x64.zip && sudo unzip dso_linux_x64.zip -d /usr/local/bin/ && chmod +x /usr/local/bin/dso && sudo sh -c 'dso completion bash > /etc/bash_completion.d/dso' && source ~/.bashrc
```

### Reffer [examples](docs/examples/README.md) to familiarize yourself with the DSO tool.