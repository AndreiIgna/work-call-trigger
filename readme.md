# Work call trigger for Home Assistant

This is what I use to start an automation in Home Assistant when I open the Zoom app.
For me, it starts a scene that prepares the lights for video calls and pauses the Sonos speakers.

> ⚠️ Requires macOS & [Home Assistant](https://www.home-assistant.io/) installed and working

How to use it:
- Create your perfect scene (lights, audio, notificatios, etc) for video calls in Home Asisstant
- Create an automation that starts the scene
- Set the trigger for automation as "Webhook", and give the webhook a name like `work_call`
- Download the file `zoom-trigger.scpt` to `~/Downloads/`
- Download the file `com.home.workcall.plist` to `~/Library/LaunchAgents/` on your computer
- Open terminal.app and run `launchctl load -w ~/Library/LaunchAgents/com.home.workcall.plist`
- 🎉 When you open Zoom app, your Automation & Scene in Home Assistant is started

Bonus commands:
- `launchctl start com.home.workcall` if service doesn't start when loaded as agent
- `launchctl unload -w ~/Library/LaunchAgents/NAME-OF-YOUR-PLIST.plist` to stop the agent/script

