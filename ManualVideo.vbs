set ghost = wscript.CreateObject("WScript.Shell")
videourl=InputBox("Please input YouTube video URL.")
ghost.run "cmd"
wscript.sleep 2000
ghost.sendkeys "yt-dlp -f bestvideo{+}bestaudio " + videourl
ghost.sendkeys "{ENTER}"


