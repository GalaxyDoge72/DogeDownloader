set ghost = wscript.CreateObject("WScript.Shell")
videourl=InputBox("Please input YouTube video URL.")
ghost.run "cmd"
wscript.sleep 2000
ghost.sendkeys "yt-dlp -f m4a " + videourl 
wscript.sleep 20000
WScript.Echo "Press [ENTER] to continue..."
ghost.sendkeys "{ENTER}"
