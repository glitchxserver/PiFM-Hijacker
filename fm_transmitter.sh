#!/bin/bash

# A simple script to transmit audio as an FM radio signal from a Raspberry Pi.
# Requires the 'pifm' program to be installed.

# --- Configuration ---
# Set the desired FM frequency in MHz (e.g., 100.0).
# Choose a frequency that is not being used by a local radio station.
FREQUENCY="100.0"

# Path to the audio file you want to transmit.
# The file must be a 16-bit, 22050 Hz, mono WAV file.
AUDIO_FILE="/home/pi/music/my_song.wav"

# Check if the audio file exists.
if [ ! -f "$AUDIO_FILE" ]; then
    echo "Error: Audio file not found at $AUDIO_FILE."
    exit 1
fi

# Check if pifm is installed.
if ! command -v pifm &> /dev/null; then
    echo "Error: 'pifm' is not installed. Please install it first."
    echo "You can find it on GitHub (https://github.com/markonde/PiFm)."
    exit 1
fi

echo "Starting FM transmission on ${FREQUENCY} MHz."
echo "Press Ctrl+C to stop."

# Transmit the audio file using pifm.
# The `sudo` command is needed to access the GPIO pins.
sudo pifm "$AUDIO_FILE" "$FREQUENCY"

# Cleanup message
echo "Transmission stopped."