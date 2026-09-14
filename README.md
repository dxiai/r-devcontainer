# r-devcontainer
A working R-Devcontainer for the Data Sciences

## how to use 

### basic usage

Place the following json into the `.devcontainer/devcontainer.json` file within your repository.

```json
{
  "image":"ghcr.io/phish108/r-devcontainer:main",

  "customizations": {
        "vscode": {
          "extensions": [
            "reditorsupport.r",
            "reditorsupport.r-syntax",
            "janisdd.vscode-edit-csv",
            "mechatroner.rainbow-csv",
            "redhat.vscode-yaml"
          ]
        }
  }
}
```
