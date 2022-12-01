### mac_dynamic_desktop_wallpaper

1. With this app, you can set the Mac desktop wallpaper automatically. The application will run every time the user logs in to the computer.
2. The application retrieves the "image of the day" from bing.com and sets it as the desktop wallpaper.

Note: The image will change on every new day, not when the application is run multiple times during the current day.
Steps:
1. Copy contents of file set_wallpaper.sh in you favourite text editor.
2. start Automator.app
3. select Application
4. add Run shell script (from the Actions/Utilities)
5. copy & paste your set_wallpaper.sh script into the window
6. test it
7. save somewhere using "File" menu in application bar (for example on desktop, you will get an your_name.app)
8. go to System Preferences -> Users & Groups -> Login items (or System Preferences -> Accounts -> Login items / depending of your MacOS version)
9. add this app
10. test & done ;)
11. Testing can be done also via loggin out and logging back in.
