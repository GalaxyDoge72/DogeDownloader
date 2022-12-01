set ghost = wscript.CreateObject("WScript.Shell")
videourl=InputBox("Please input YouTube video URL.")
ghost.run "cmd"
wscript.sleep 200
ghost.sendkeys "yt-dlp " + videourl 
ghost.sendkeys "{ENTER}"

