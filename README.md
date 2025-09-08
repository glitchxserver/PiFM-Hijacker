# PiFM-Hijacker
Transmitting radio signals from a Raspberry Pi can be achieved by using the GPIO pins to generate a frequency that can be picked up by a nearby radio. One of the most common methods is to use the pifm tool, which leverages the Pi's hardware to create a simple FM transmitter.

Requirements
Raspberry Pi: Any model will work.

3.5mm headphone jack: This is optional but can improve the signal quality by acting as a better antenna. Connect it to GPIO4.

Amplifier: A small amplifier can be helpful for boosting the signal range, but is not strictly necessary for short-range transmission.


How to Use the Script
Install pifm: The pifm tool is not part of the standard Raspberry Pi OS. You'll need to download and compile it from a source like GitHub. One popular version is available at https://github.com/markonde/PiFm. Follow the instructions in the repository to install it.

Prepare the Audio File: The pifm tool requires a specific audio format. You must convert your audio file (e.g., MP3) to a 16-bit, 22050 Hz, mono WAV file. You can use tools like sox or ffmpeg for this. For example, using sox:
sox my_song.mp3 -r 22050 -c 1 -b 16 my_song.wav

Create the Script: Save the script above as fm_transmitter.sh on your Raspberry Pi.

Make it Executable: Open a terminal and run chmod +x fm_transmitter.sh.

Run the Script: To start the transmission, simply execute the script with ./fm_transmitter.sh. You'll need to use sudo to run it, like sudo ./fm_transmitter.sh, to grant it access to the GPIO pins.

Tune In: On a nearby FM radio, tune to the frequency you specified in the script (e.g., 100.0 MHz) to hear your audio broadcast.

Note: This method is a low-power transmitter and should only be used for educational or hobby purposes. The signal range is very short, usually only a few meters. Always check local regulations regarding radio signal transmissions.
