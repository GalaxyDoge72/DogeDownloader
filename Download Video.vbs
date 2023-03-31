set ghost = wscript.CreateObject("WScript.Shell")
videourl=InputBox("Please input YouTube video URL.")
ghost.run "cmd"
wscript.sleep 200
ghost.sendkeys "yt-dlp -f bestvideo{+}bestaudio " + videourl
ghost.sendkeys "{ENTER}"
wscript.sleep 20000
ghost.sendkeys "convertvideo.bat"
ghost.sendkeys "{ENTER}"
wscript.sleep 30000
ghost.sendkeys "del *.webm"
ghost.sendkeys "{ENTER}"
wscript.sleep 20000
ghost.sendkeys "exit"
ghost.sendkeys "{ENTER}"


