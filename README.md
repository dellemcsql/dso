# DSO (Database Solution Optimizer)
A CLI utility to automate best practices settings and reporting for SQL Server and Oracle database solution
<br>

[Release Info](release/README.md)

[Documentation](docs/README.md)

[Examples](docs/examples/README.md)

[Install Instruction](#install-instructions)

---

Reporting and applying best practices to the overall solution is a cumbersome and time-consuming process. To complete best practice setup activities, deployment team/administrators need to: -
-	gather data about any setting/s in a specific layer, 
-	decide if the current value set for the setting is optimal or not and
-	set the values as per the recommendation.

Applying recommendations manually at each layer increases the chances of human error and it requires multiple tools as mentioned below to apply the recommendations which further increases the complexity of the work/process. 

Changing any: -
-	BIOS setting requires working with iDRAC 
-	Virtual machine setting requires working with vSphere client or vCenter client
-	Operating system settings require an SSH client
-	Database settings (like SQL Server or Oracle) require SQL Server client.
-	Storage settings require that a specific storage client
-	Network setting requires a network client.

It gets even more complex, cumbersome, difficult, and most importantly human error-prone with a large number of resources as part of any solution, or with more than one solution to set up or maintain.

The Database Solution Optimizer (DSO) is a free command-line utility/toolkit provided by Dell Engineering to collect, report, and automate the application of best practices.

DSO tool benefit includes: 

-	Reporting on the configuration of different layers in the database solution stack. Administrators can quickly generate reports to evaluate if best practices have been implemented.  
-	Automating best practices. The administrator can apply best practices using the toolkit and save time.  
-	The DSO toolkit can be deployed and works on Windows, Linux, and Mac operating systems.  
-	This toolkit collects and displays data in a single format. As of now, this tool supports displaying/saving data in the table, JSON, and CSV format.
-	Help and examples for almost all commands and operations are inbuilt within this toolkit.
-	DSO toolkit also provides auto-completion support for PowerShell, Bash Shell, and zsh (zee shell)
- It provides a consistent and intuitive command flow which is very much helpful in its usability.
-	This toolkit provides an agentless approach for collecting and applying best practices. It does not depend on any external client or tools hence simplifying its setup and maintenance. 

> **_NOTE:_** The DSO toolkit is not a supported product, but it is provided to customers for use and customize their own database environments. 

<br>

#### The DSO toolkit is designed and organized by functional models based on its area of applicability. Check [dso design](docs/README.md) and [examples](docs/examples.md) for more details.
<br>

--- 
## Install instructions
> For Windows environment

1. Find the latest released binary from [release notes](release/README.md)
2. Download the zip file as per your operating system 
3. Extract the zip file and keep the executable at the location of your choice
4. Add binary path to your executable path
5. Set auto-completion for your terminal environment
6. Now you can start using this tool.

Above mentioned steps can also be done in a Windows environment using PowerShell (in administrative mode) 
```Powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/dellemcsql/dso/main/install/dso_windows_install.ps1'))
```

> For Linux environment

1. Find the latest released binary from [release notes](release/README.md)
2. Download the zip file as per your operating system (Linux_x64 in this case)
3. Unzip the downloaded file and keep the executable at the location of your choice
4. Make the binary file executable using the below command.
   ```
   chmod +x <binary_path> 
5. Add binary location to your executable path using the below command.
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
6. Set auto-completion for your terminal environment
    ```bash
    sudo sh -c 'dso completion bash > /etc/bash_completion.d/dso'
    source ~/.bashrc
    ```
7. Now you can start using this tool.


Above mentioned steps can also be done using below mentioned commands in a **bash** shell:
```bash
curl -o dso_linux_x64.zip https://raw.githubusercontent.com/dellemcsql/dso/main/release/downloads/v0.9.6/dso_linux_x64.zip && sudo unzip dso_linux_x64.zip -d /usr/local/bin/ && chmod +x /usr/local/bin/dso && sudo sh -c 'dso completion bash > /etc/bash_completion.d/dso' && source ~/.bashrc
```
