
# Help Module

DSO tool comes with inbuilt help command that showcases help about any module, sub-module, or command.  
The help module can be invoked by using any of the below-mentioned formats:
- by adding(-h) to any command
- by adding (--help) to any command
- bypassing any command to help module (dso help command_name)

1 Get help about dso tool
```bash
dso -h
```
![dso help 1](../images/dso_help.png)

OR

```bash
dso --help
```
![dso help 2](../images/dso_help_2.png)

2 To get help with any module (for ex- db module)
```bash
dso help db 
```
![dso help module](../images/dso_help_module.png)

3 To get help about sub-module (for ex- oracle sub-module under db module)
```bash
dso help db oracle
```
![dso help sub-module](../images/dso_help_module_subModule.png)

4 To get help with any command (for example report command under db module and oracle sub-module)
```bash
dso help db oracle report
```
![dso help command](../images/dso_help_module_subModule_command.png)

> **NOTE:** similarly help for any module, sub-module, command can be obtained.

