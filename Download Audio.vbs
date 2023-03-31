set ghost = wscript.CreateObject("WScript.Shell")
videourl=InputBox("Please input YouTube video URL.")
waittime=InputBox("How long should the delay be after the video is finished downloading to converting it to mp3 in seconds?")*1000
ghost.run "cmd"
wscript.sleep 200
ghost.sendkeys "yt-dlp -f m4a " + videourl 
ghost.sendkeys "{ENTER}"
wscript.sleep waittime
ghost.sendkeys "convertaudio.bat"
ghost.sendkeys "{ENTER}"
wscript.sleep 15000
ghost.sendkeys "del *.m4a"
ghost.sendkeys "{ENTER}"
wscript.sleep 400
ghost.sendkeys "exit"
ghost.sendkeys "{ENTER}"
