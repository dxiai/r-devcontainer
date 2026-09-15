# r-devcontainer
A working R-Devcontainer for the Data Sciences

## how to use 

### basic usage

Place the following json into the `.devcontainer/devcontainer.json` file within your repository.

```json
{
  "image":"ghcr.io/dxiai/r-devcontainer:latest",

  "customizations": {
        "vscode": {
          "extensions": [
            "reditorsupport.r",
            "reditorsupport.r-syntax",

            "janisdd.vscode-edit-csv",
            "mechatroner.rainbow-csv",
            "redhat.vscode-yaml"
          ],
          "settings": {
            "r.rterm.linux": "/usr/local/bin/radian",
            "r.bracketedPaste": true,
            "workbench.editor.tabActionReserveSpace": true,
            "editor.tabSize": 4
          }
        }
  }
}
```
