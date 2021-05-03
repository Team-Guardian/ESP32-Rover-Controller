# Software

## Compilation & Flashing
1. [Setup ESP-IDF using VS Code Extension.](https://github.com/espressif/vscode-esp-idf-extension/blob/HEAD/docs/tutorial/install.md)
2. Ensure VS Code is pointing to the src directory.
3. Press F1 and select "Build, Flash and start a monitor on your device". Make sure your port is pointing to the correct COM port on Windows. See [basic use instructions](https://github.com/espressif/vscode-esp-idf-extension/blob/2332c89d2a316bff7ce2677c235459e062b579db/docs/tutorial/basic_use.md).

# Troubleshooting

## ESP-IDF
- When doing a fresh installation of Python, check the box for the option to add a PATH for Python
  - If you didn’t or want to check, visit [https://docs.python.org/3/using/windows.html](https://docs.python.org/3/using/windows.html)
- Check that you only have one Python version installed.
  - When in doubt, uninstall the rest and do a fresh installation of Python
- Check your pip version and packages are up-to-date
- Check the path of your pip and packages
- You may need to run install.bat on the ESP-IDF folder
- Sometimes, the Python 3.9 dependencies do not work. Check this [link](https://github.com/espressif/esp-idf/issues/6111) if that's an issue.
