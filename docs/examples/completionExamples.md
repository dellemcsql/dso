# completion mudule setup example

> ## PowerShell completion
<br>

### PowerShell completion in Windows:

    ```bash
    dso completion powershell | Out-String | Invoke-Expression
    ```

> **NOTE:** To load completions for every new session, add the output of the above command to your PowerShell profile.
>
<br>
<br>

> ## BASH completion
<br>

### BASH completion In Linux:
```bash
dso completion bash > /etc/bash_completion.d/dso
```
<br>

### BASH completion In macOS:
```bash
dso completion bash > /usr/local/etc/bash_completion.d/dso
```

> **NOTE:** You will need to start a new shell for this setup to take effect.

<br>
<br>

> ## ZSH completion
<br>

### ZSH completion In Linux:
```bash
dso completion zsh > "${fpath[1]}/_dso"
```

### ZSH completion In macOS:
```bash
dso completion zsh > /usr/local/share/zsh/site-functions/_dso
```

> **NOTE:** You will need to start a new shell for this setup to take effect.

<br>
<br>

> ## FISH completion
<br>

### To load completions in your current shell session
```bash
dso completion fish | source
```

### To load completions for every new session, execute once
```bash
dso completion fish > ~/.config/fish/completions/dso.fish
```

> **NOTE:** You will need to start a new shell for this setup to take effect
