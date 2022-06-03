# pstore sub-module usage examples

## pstore sub-module supports the following commands:
> ## **report** command

As of the current release, pstore sub-module under the storage module supports only the ***report*** command. However, future releases will extend this module to support **get** and **set** commands as well.

report command for the pstore sub-module has the following structure:

```
dso storage pstore report --<flag/s>
```
Examples:-

EX1: // fetch report from PowerStore storage (output in TABLE format)
```bash
dso storage pstore report -I 10.0.0.1 -U user1 
```

EX2: // fetch report from PowerStore storage (output in JSON format)
```bash
dso storage pstore report  -I 10.0.0.1 -U user1 -o json
```

EX3: // fetch report from PowerStore storage (output in CSV format)
```bash
dso storage pstore report -I 10.0.0.1 -U user1 -o csv
```

EX4: // fetch report from PowerStore storage for specific host group
```bash
dso storage pstore report --hgroup -I 10.0.0.2 -U user1 
```

EX5: // fetch report from PowerStore storage with inline password
```bash
dso storage pstore report -I 10.0.0.2 -U user1 -P pass1
```
