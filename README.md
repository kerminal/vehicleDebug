## Description
This is a utility for FiveM that allows the live editing of vehicle handling and some basic performance statistic tracking for top speed, acceleration, and deceleration.

## Installation and Use
- Download the GitHub repository code.
- Rename the folder to `vehicleDebug`
- Add to the `resources` folder.
- Ensure `vehicleDebug` in the server.cfg, or `ensure vehicleDebug` in <kbd>F8</kbd>.
- Use the **BETA** branch of FiveM. (Change this in the FiveM launcher.)
- Open <kbd>F8</kbd> and run the command `vehdebug` to toggle the UI on.
- If the UI does not open after running the command, ensure your account has the correct ACE perms:
  - `group.admin` or `command.vehdebug allow`
- Press <kbd>LALT</kbd> to open the handling editor.
- Enjoy!

## Editor
Press Left Alt while in a vehicle to bring up the menu, or change the key under the FiveM keybind settings. Click the input boxes for whichever value you would like to modify, and change it. That's it! The handling will immediately update as you type. Hover over the fields for a little more information on what that particular field does.

You can save the handling by clicking "Copy Handling" near the top. You will need to paste that over the handling file for the vehicle. Make sure you're replacing everything from **mass** to **monetary value**, nothing more, and nothing less.

![LiveHandling1](https://user-images.githubusercontent.com/8594390/113525001-6b17b380-9580-11eb-8411-5a7076a4514e.png)

## Statistics
In the top-middle of the screen, there are numbers to represent some "tops" for the vehicle. Falling or crashing will lead to irrelevant values. Reset the values within the editor by clicking "Reset Stats."
* Top speed - The fastest speed, in miles per hour, that the vehicle has reached.
* Top acceleration - An arbitrary value to represent how quickly the vehicle has accelerated.
* Top deceleration - An arbitrary value to represent how quickly the vehicle has decelerated.

![LiveHandling2](https://user-images.githubusercontent.com/8594390/113525004-6e12a400-9580-11eb-8ad2-a5fd70aef41d.png)

## Credits
Thanks to the post by V4D3R on 5Mods for describing the handling fields a little more:

https://forums.gta5-mods.com/topic/3842/tutorial-handling-meta
