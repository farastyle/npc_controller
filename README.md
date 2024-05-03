# NPC Controller for FiveM

## Introduction
This FiveM script is designed to control the density of NPCs (both vehicles and pedestrians) within the game, allowing for better performance and a more customized gameplay experience, particularly useful for busy or roleplay-focused servers.

## Features
- Reduces the density of vehicles and pedestrians dynamically.
- Improves server performance by reducing unnecessary NPC clutter.
- 
## Configuration

The NPC Controller script includes several adjustable parameters to fine-tune the density of NPCs in your game environment. You can modify these settings directly in the `npc_reducer.lua` file:

- `vehicleDensity`: Controls the density of vehicles in the game. The value ranges from `0.0` (no vehicles) to `1.0` (normal vehicle density). Default is set to `0.1`, which significantly reduces the number of vehicles compared to normal levels. Adjust this value based on your server's performance needs and gameplay style.

- `pedDensity`: Controls the density of pedestrians in the game. Similar to `vehicleDensity`, it ranges from `0.0` (no pedestrians) to `1.0` (normal pedestrian density). The default setting is `0.1`, offering a reduced number of pedestrians to enhance server performance.

- `updateInterval`: This value determines how frequently (in milliseconds) the density settings are applied within the game. The default is set to `1000` milliseconds (or 1 second), meaning the density adjustments are updated every second. Reduce this interval to make the density updates more frequent, or increase it to reduce the frequency, depending on how dynamic you want the NPC density changes to be.

### Adjusting the Configuration
To change any of these settings, open the `npc_reducer.lua` file with a text editor and locate the section at the top where these variables are defined. Modify the values as described above and save the file. These changes will take effect the next time your server is restarted or the resource is reloaded.


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
- Script developed by Rafael Oliveira / https://github.com/farastyle . 
- Thanks to the FiveM community for support and testing.
