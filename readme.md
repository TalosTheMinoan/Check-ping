# Ping Command

A simple FiveM script that adds a ping command to check the player's ping and additional features.

## Features

- **Ping Display**: Check your current ping using the `/checkping` command.
- **Color-Coded Ping**: Display ping in different colors based on predefined thresholds.
- **High Ping Kick**: Automatically kick players with high ping.

## Installation

1. Place the `ping_command` folder in your server's resources directory.
2. Add `start ping_command` to your `server.cfg` file.

## Configuration

- No additional configuration required for basic functionality.
- Adjust color thresholds and kick thresholds in the `server.lua` file if needed.

## Usage

- Use the `/checkping` command in the game to check your ping.
- Colors will indicate the status of your ping (green for good, yellow for moderate, red for high).
- The ping graph will display a visual representation of your ping over time.
- Players with high ping will be automatically kicked from the server.

## Commands

- `/checkping`: Check your current ping.

## Known Issues

- No known issues at the moment.

## Credits

- Ping Command is developed by Talos.

## License

This project is licensed under the [MIT License](LICENSE).


