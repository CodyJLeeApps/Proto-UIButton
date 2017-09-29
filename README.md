# Proto-UIButton

This project is meant for quick prototyping of UIButton sub-classing extensions.
Feel free to clone or fork depending on your uses, I'll most likely update this repo as I create extensions for my personal projects.

## Build Tools

* All code was written and compiled in [XCode](https://developer.apple.com/xcode/)
* Title picture was created by [TextCraft.net](https://textcraft.net)

## Getting Started

The main things I have done so far in this current prototype:
1. Created UIButton subclass    - RectangleButton.sift
2. Created UIButton Extension   - UIButtonExt.swift
3. Created custom initialization code inside the RectangleButton class, this essentially adds corner radius, adds shadow, sets shadow color, etc.
4. Added custom animation code inside the UIButtonExt, this adds four methods:
    * wiggle() - This method is used to literally wiggle the object left and right, as you would expect to happen if user input is incorrect (username and password?)
    * dim() - used to fade the alpha of the button out, and back in. This would be an animation used in a normal execution of a button possibly.
    * colorize() - This method is used to fade out the color of the button, and fade back into a random color. I'm not sure what I would use this for yet, but if it wasn't a random color I could see the possibility of combining this method with the dim() method for interesting effects.
    * setBackgroundColor() - This method is used to literally set the background color of the object (in this case a UIButton) to a specific color, for a specific state of the object.

## Running the Application
To run the application and try out the animations / extensions simply download the project, open in XCode 9, and click the run button. The iOS simulator should open and display the following screen:
![Example_Fun_with_Ext](https://github.com/CodyJLeeApps/Proto-UIButton/blob/master/readme_resources/Example_Fun_with_Ext.png)