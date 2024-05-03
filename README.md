# NPC Controller for FiveM

## Introduction
This FiveM script is designed to control the density of NPCs (both vehicles and pedestrians) within the game, allowing for better performance and a more customized gameplay experience, particularly useful for busy or roleplay-focused servers.

## Features
- Reduces the density of vehicles and pedestrians dynamically.
- Improves server performance by reducing unnecessary NPC clutter.

## Installation Instructions
To install the NPC Controller script on your FiveM server, follow these simple steps:

1. **Download the Script**:
   Download the entire `npc_controller` folder.

2. **Place the Folder**:
   Place the `npc_controller` folder inside your server's `resources` directory.

3. **Activate the Script**:
   Open your server's `server.cfg` file and add the following line:

ensure npc_controller

vbnet
Copy code
This command ensures that the NPC Controller script is loaded with the server.

## Usage
Once installed, the script automatically adjusts the NPC density each frame based on the configured settings within the script. You can modify the density levels directly in the `npc_reducer.lua` file by adjusting the `vehicleDensity` and `pedDensity` variables to suit your needs.

## Contributing
If you would like to contribute to the development of this script or suggest improvements, please fork the repository and submit a pull request, or open an issue with your suggestions.

## License
This script is released under the MIT License. See the LICENSE file in the repository for more details.

## Credits
- Script developed by [Your Name or GitHub Username]. 
- Thanks to the FiveM community for support and testing.
