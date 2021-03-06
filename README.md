# DucktalesNESAutoSplitter
Ducktales (NES) Autosplitter for LiveSplit

- [LiveSplit](http://livesplit.github.io/) - Here you can find out more about and download LiveSplit. It is a popular timer program typically used for speedruns.
- [ASL](https://github.com/LiveSplit/LiveSplit/blob/master/Documentation/Auto-Splitters.md) - Here you can find more information about ASL (basically C#) and autosplitters in general.

**Supported emulators:**
 - FCEUX 2.2.3
 - Nestopia 1.40
 - Let me know if you need support for another emulator
 
## Features

- Automatically start the timer when you start a run. Timer starts When you have control of the character in the first level you select
- Automatically reset the timer when you restart the game 
- Automatically split when areas are completed

## Installation 

- Go to "Edit Splits.." in LiveSplit
- Enter the name of the game in "Game Name"
  - This must be entered correctly for LiveSplit to know which script to load
- Click the "Activate" button to download and enable the autosplitter script
  - If you ever want to stop using the autosplitter altogether, just click "Desactivate"

## Manual Installation (skip if you used the 'Activate' Button)

- Download https://raw.githubusercontent.com/saturnin55/DucktalesNESAutoSplitter/master/ducktales.asl
- Edit Layout
- Add Other /Scriptable Componment / Script Path: Browse to the "ducktales.asl" file you downloaded previously
- Enable Start/Split/Reset feature here
  
## Set-up (if auto-installed)

- Go to "Edit Splits..." in LiveSplit
- Click "Settings" to configure the autosplitter
  - **Note:** If for some reason LiveSplit does not automatically load the script, click "Browse...", navigate to "\LiveSplit\Components\" and select the appropriate script.
- Enable Start/Split/Reset feature here
- Set 'Start Timer at' to **-0.60**
  
Here you can enable/disable the options for auto start, auto reset, and auto splitting.

## Bugs

- Let me know of any bugs
- Support for BizHawk soon

## Contact

If you encounter any issues or have feature requests, please let me know! 

- [saturnin55](http://twitch.tv/saturnin55) or saturnin55#2730 on Discord
