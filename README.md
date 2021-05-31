# Table of Contents
- [Table of Contents](#table-of-contents)
- [How to get started](#how-to-get-started)
  - [Typical workflow](#typical-workflow)
    - [Branch naming convenctions](#branch-naming-convenctions)
  - [Hardware](#hardware)
    - [Setting up environment](#setting-up-environment)
  - [Software](#software)
    - [Setting up environment](#setting-up-environment-1)
- [Troubleshooting](#troubleshooting)
  - [ESP-IDF](#esp-idf)
  - [KiCAD](#kicad)
- [Useful Resources & References](#useful-resources--references)
  - [Hardware](#hardware-1)
  - [Software](#software-1)


# How to get started

## Typical workflow
1. Create and/or claim an [issue](https://github.com/Team-Guardian/ESP32-Rover-Controller/issues) you would like to tackle. Ideally, choose something that is scheduled for a near milestone.
2. Create a new branch from the 'dev' branch. See the branch naming conventions below for more information.
3. Implement the solution to the issue. Feel free to make as many commits as you like. Ask questions or notify problems through making comments on the issue itself.
4. If you are creating a generalised solution (e.g a library that can be reused in the future), visit [ESP-IDF's official documentation on the matter](https://docs.espressif.com/projects/esp-idf/en/latest/esp32/api-guides/build-system.html#component-requirements)
5. When the issue is completed, make a pull request and link the pull request to the issue via a comment. Be prepared for the reviewer to ask questions and to make revisions.

### Branch naming convenctions
- feature/*
  - New feature or enhancement
- bugfix/*
  - Bugfix to an existing feature or enhancement
- dev
  - Developers will branch off from here
  - New features, after subjected to review, will be merged here
  - Only hotfix commits can be done
- stage
  - Will not accept any commits
  - Commits from 'dev' merged into 'stage' are for proposed milestone and tag releases
- main
  - Will not accept any commits
  - 'stage' will be merged into 'main' upon a milestone/tag release completion

## Hardware

### Setting up environment
1. Download [KiCAD](https://www.kicad.org/download/) any version equal or greater than 5.1.10.
2. Download the BOM plugin ['KiBOM'](https://github.com/SchrodingersGat/KiBoM).

## Software

### Setting up environment
1. Install Python 3.X. On Windows, check that your PATH is pointing to your Python executable.
2. [Setup ESP-IDF using VS Code Extension.](https://github.com/espressif/vscode-esp-idf-extension/blob/HEAD/docs/tutorial/install.md)
3. Ensure VS Code is pointing to the src directory.
4. Press F1 and select "Build, Flash and start a monitor on your device". Make sure your port is pointing to the correct COM port on Windows. See [basic use instructions](https://github.com/espressif/vscode-esp-idf-extension/blob/2332c89d2a316bff7ce2677c235459e062b579db/docs/tutorial/basic_use.md).

# Troubleshooting

## ESP-IDF
- When doing a fresh installation of Python, check the box for the option to add a PATH for Python
  - If you didn’t or want to check, visit [https://docs.python.org/3/using/windows.html](https://docs.python.org/3/using/windows.html)
- Check that you only have one Python version installed.
  - When in doubt, uninstall the rest and do a fresh installation of Python
- Check your pip version and packages are up-to-date
- Check the path of your pip and packages
- You may need to run install.bat on the ESP-IDF folder
- If you attempted to build the project, make sure to delete the 'build' folder.
- Sometimes, the Python 3.9 dependencies do not work. Check this [link](https://github.com/espressif/esp-idf/issues/6111) if that's an issue.
- Do not include spaces in your project paths (i.e filenames, folder names).
- If the bootloader.bin fails, check this [link](https://github.com/espressif/esp-idf/issues/2936) and this [link](https://github.com/micropython/micropython-esp32/issues/136)
- Inside component and main directories, if there is nothing to include, ensure there is at least an empty file included when commiting

## KiCAD
- If there are no global, shared librarues, you may need to [reset the library tables to default settings](https://forum.kicad.info/t/library-management-in-kicad-version-5/14636#:~:text=resetting%20the%20library%20tables%20to%20default%20settings).
- If the default, shared libraries are not found, download the [KiCAD shared libraries](https://kicad.github.io/) into "C:\Program Files\KiCad\share\kicad\library"

# Useful Resources & References
## Hardware
- [Sparkfun's KiCAD beginner guide](https://learn.sparkfun.com/tutorials/beginners-guide-to-kicad)

## Software
- [Google C++ Style Guide](https://google.github.io/styleguide/cppguide.html)
