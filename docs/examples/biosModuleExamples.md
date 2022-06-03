# bios sub-module usage examples

## bios sub-module supports the following commands:
> ## **report** command

report command for the bios sub-module has the following structure:

```
dso server bios report --<flag/s>
```
Examples:-

EX1: // fetch report from intel based server BIOS (output in TABLE format)
```bash
dso server bios report -I 10.0.0.1 -U user1 
```

EX2: // fetch report from intel based server BIOS (output in JSON format)
```bash
dso server bios report -I 10.0.0.1 -U user1  -o json
```

EX3: // fetch report from intel based server BIOS (output in CSV format)
```bash
dso server bios report -I 10.0.0.1 -U user1  -o csv
```

EX4: // fetch report from intel based server BIOS with an inline password
```bash
dso server bios report -I 10.0.0.1 -U user1 -P pass1
```

> ## **get** command

get command for the bios sub-module has the following structure:

```
dso server bios get --<flag/s>
```
Examples:-

EX1: // validate intel based server BIOS best practice recommendation for database workload (output in TABLE format)
```bash
dso server bios get -I 10.0.0.1 -U user1 
```

EX2: // validate intel based server BIOS best practice recommendation for database workload (output in JSON format)
```bash
dso server bios get -I 10.0.0.1 -U user1  -o json
```

EX3: // validate intel based server BIOS best practice recommendation for database workload (output in CSV format)
```bash
dso server bios get -I 10.0.0.1 -U user1  -o csv
```

EX4: // validate intel based server BIOS best practice recommendation for database workload with inline password
```bash
dso server bios get -I 10.0.0.1 -U user1 -P pass1
```

EX5: // check BIOS config job status based on job_id on intel based server  
```bash
dso server bios get --jobStatus=JID_526269044866 -I 10.0.0.1 -U user1 -P pass1
```
or
```bash
dso server bios get -j JID_526269044866 -I 10.0.0.1 -U user1 
```
<br>

> ## **set** command

set command for the bios sub-module has the following structure:

```
dso server bios set --<flag/s>
```
Examples:-

EX01: // Apply System Profile on intel based server BIOS
```bash 
dso server bios set -A "SysProfile:PerfOptimized" -I 10.0.0.1 -U user1 
```

EX02: // Enable Processor Virtualization on intel based server BIOS 
```bash
dso server bios set -A "ProcVirtualization:Enabled" -I 10.0.0.1 -U user1 -P pass1
``` 

EX03: // Enable ProcX2Apic for processor on intel based server BIOS 
```bash
dso server bios set -A "ProcX2Apic:Enabled" -I 10.0.0.1 -U user1 
```

EX04: // Enable Logical Processor/threads on intel based server BIOS
```bash 
dso server bios set -A "LogicalProc:Enabled" -I 10.0.0.1 -U user1 -P pass1
```

EX05: // Apply Memory Operating Mode  on intel based server BIOS 
```bash
dso server bios set -A "MemOpMode:OptimizerMode" -I 10.0.0.1 -U user1 
```

EX06: // Disable Serial Communication on intel based server BIOS 
```bash
dso server bios set -A "SerialComm:Off" -I 10.0.0.1 -U user1 -P pass1
```

EX07: // Disable USB Ports on intel based server BIOS 
```bash
dso server bios set -A "ProcVirtualization:Enabled" -I 10.0.0.1 -U user1 -P pass1
```

EX08: // Disable USB Managed Port attribute on intel based server BIOS 
```bash
dso server bios set -A "UsbManagedPort:Off" -I 10.0.0.1 -U user1 
```

EX09: // apply Workload Profile on intel based server BIOS 
```bash
dso server bios set -A "WorkloadProfile:DbOptimizedProfile" -I 10.0.0.1 -U user1 -P pass1
```

EX10: // apply all best practice recommendations on intel based server BIOS 
```bash
dso server bios set --bps -I 10.0.0.1 -U user1 -P pass1
```

EX11: // create BIOS config job on intel based server  
```bash
dso server bios set --bps -I 10.0.0.1 -U user1 -P pass1
```

EX12: // reboot intel based server using iDRAC 
```bash
dso server bios set --bps -I 10.0.0.1 -U user1 -P pass1
```

EX13: // check BIOS config job status (in a continuous loop) based on job_id on intel based server  
```bash
dso server bios set --jobStatus=JID_526269044866 -I 10.0.0.1 -U user1 -P pass1
```
or
```bash
dso server bios set -j JID_526269044866 -I 10.0.0.1 -U user1 -P pass1
```


