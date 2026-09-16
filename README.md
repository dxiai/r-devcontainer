# r-devcontainer - A working R-Devcontainer for the Data Sciences

This gives you a unique working environment on your Laptop and in GitHub Code Spaces (and similar environments and editors).

## Getting started 

### Preparations

1. Install [Docker](https://www.docker.com/products/docker-desktop/)
   a. on Windows only: Install [WSL](https://learn.microsoft.com/en-us/windows/wsl/install)
2. Install [VSCode](https://code.visualstudio.com)
3. Install the VSCode extension `Remote Development`

### Using the Dev-Container 

1. In VSCode open a new terminal.
2. Run the following command in the terminal.
   ```
   docker pull ghcr.io/dxiai/r-devcontainer:latest
   ```
3. Open the project of your choice or start a new project.
4. Place the following json into the `.devcontainer/devcontainer.json` file within your project.

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

5. Click on the double arrows in the bottom left corner of VSCode.
6. Select `Reopen in Container`.
7. Be patient, this takes up to five minutes on *first* startup.
8. Check that there is a green label stating `Dev Container @ desktop-linux` in the bottom left corner of VSCode.
9. **DO NOT** add the `.devcontainer` folder to your `.gitignore` list and track it with your project.
