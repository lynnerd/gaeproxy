#!/system/bin/sh

DIR=/data/data/org.gaeproxy

case $2 in

 GAE)
echo " 

[listen]
ip = 127.0.0.1
port = $4
visible = 0
debuginfo = 0

[gae]
appid = $3
password = $7 
path = /$6
profile = google_hk
crlf = 1
obfuscate = 0
validate = 0

[pac]
enable = 0
ip = 127.0.0.1
port = 8086
file = goagent.pac
gfwlist = http://autoproxy-gfwlist.googlecode.com/svn/trunk/gfwlist.txt

[paas]
enable = 0
password = 123456
validate = 0
listen = 127.0.0.1:8088
fetchserver = http://demophus.app.com/

[proxy]
enable = 0
autodetect = 1
host = 10.64.1.63
port = 8080
username = 
password = 

[google_cn]
mode = http
window = 2
hosts = 203.208.46.131|203.208.46.132|203.208.46.133|203.208.46.134|203.208.46.135|203.208.46.136|203.208.46.137|203.208.46.138
sites = .google.com|.googleusercontent.com|.googleapis.com|.google-analytics.com|.googlecode.com|.google.com.hk|.appspot.com|.android.com|.googlegroups.com
forcehttps = groups.google.com|code.google.com|mail.google.com|docs.google.com|profiles.google.com|developer.android.com
withgae = plus.google.com|plusone.google.com|reader.googleusercontent.com|music.google.com|apis.google.com

[google_hk]
mode = https
window = 4
hosts = $5
sites = .googleusercontent.com|.googleapis.com|.google-analytics.com|.googlecode.com|.google.com.hk|.googlegroups.com
forcehttps = www.google.com/url|groups.google.com|code.google.com|mail.google.com|docs.google.com|profiles.google.com|developer.android.com|www.google.com.hk|webcache.googleusercontent.com
withgae = translate.googleapis.com|plus.url.google.com|plus.google.com|plusone.google.com|reader.googleusercontent.com|music.google.com|apis.google.com|feedproxy.google.com|books.google.com|autoproxy-gfwlist.googlecode.com

[google_ipv6]
mode = http
hosts = 2404:6800:8005::2f|2a00:1450:8006::30|2404:6800:8005::84
sites = .google.com|.googleusercontent.com|.googleapis.com|.google-analytics.com|.googlecode.com|.google.com.hk|.googlegroups.com
forcehttps = groups.google.com|code.google.com|mail.google.com|docs.google.com|profiles.google.com|developer.android.com
withgae = 

[autorange]
hosts = *.c.youtube.com|*.atm.youku.com|*.googlevideo.com|*av.vimeo.com|smile-*.nicovideo.jp|video.*.fbcdn.net|s*.last.fm|x*.last.fm|*.x.xvideos.com|*.edgecastcdn.net|*.d.rncdn3.com|cdn*.public.tube8.com|videos.flv*.redtubefiles.com|cdn*.public.extremetube.phncdn.com|cdn*.video.pornhub.phncdn.com|*.mms.vlog.xuite.net|vs*.thisav.com|archive.rthk.hk|video*.modimovie.com
endswith = .f4v|.flv|.hlv|.m4v|.mp4|.mp3|.ogg|.avi|.exe|.zip|.iso|.rar|.bz2|.xz|.dmg
noendswith = .xml|.json|.html|.php|.py.js|.css|.jpg|.jpeg|.png|.gif|.ico
threads = 2
maxsize = 1048576
waitsize = 524288
bufsize = 8192

[dns]
enable = 0
listen = 127.0.0.1:53
remote = 8.8.8.8
cachesize = 5000
timeout = 2

[light]
enable = 0
password = 
listen = 127.0.0.1:8089
server = 127.0.0.1:443

[useragent]
enable = 0
string = Mozilla/5.0 (iPhone; U; CPU like Mac OS X; en) AppleWebKit/420+ (KHTML, like Gecko) Version/3.0 Mobile/1A543a Safari/419.3

[fetchmax]
local = 
server = 

[love]
enable = 0
tip = \u8bf7\u5173\u6ce8\u5317\u4eac\u5931\u5b66\u513f\u7ae5~~

[hosts]
talkx?\.google\.com:5222 =
^https?://upload\.facebook\.com = 
^https?://.+\.c\.youtube\.com/liveplay =

"> /data/data/org.gaeproxy/proxy.ini

;;

PaaS)

echo "

[listen]
ip = 127.0.0.1
port = 10090
visible = 0
debuginfo = 0

[gae]
appid = dummy
password = 123456
path = /fetch.py
profile = google_hk
crlf = 1
obfuscate = 0
validate = 0

[pac]
enable = 0
ip = 127.0.0.1
port = 8086
file = goagent.pac
gfwlist = http://autoproxy-gfwlist.googlecode.com/svn/trunk/gfwlist.txt

[paas]
enable = 1
password = $7
validate = 0
listen = 127.0.0.1:$4
fetchserver = $6

[proxy]
enable = 0
autodetect = 0
host = 10.64.1.63
port = 8080
username = 
password = 

[google_cn]
mode = http
window = 2
hosts = 203.208.46.131|203.208.46.132|203.208.46.133|203.208.46.134|203.208.46.135|203.208.46.136|203.208.46.137|203.208.46.138
sites = .google.com|.googleusercontent.com|.googleapis.com|.google-analytics.com|.googlecode.com|.google.com.hk|.appspot.com|.android.com|.googlegroups.com
forcehttps = groups.google.com|code.google.com|mail.google.com|docs.google.com|profiles.google.com|developer.android.com
withgae = plus.google.com|plusone.google.com|reader.googleusercontent.com|music.google.com|apis.google.com

[google_hk]
mode = https
window = 4
hosts = www.google.com
sites = .google.com|.googleusercontent.com|.googleapis.com|.google-analytics.com|.googlecode.com|.google.com.hk|.googlegroups.com
forcehttps = www.google.com/url|groups.google.com|code.google.com|mail.google.com|docs.google.com|profiles.google.com|developer.android.com|www.google.com.hk|webcache.googleusercontent.com
withgae = android.clients.google.com|translate.googleapis.com|plus.url.google.com|plus.google.com|plusone.google.com|reader.googleusercontent.com|music.google.com|apis.google.com|feedproxy.google.com|books.google.com|autoproxy-gfwlist.googlecode.com

[google_ipv6]
mode = http
hosts = 2404:6800:8005::2f|2a00:1450:8006::30|2404:6800:8005::84
sites = .google.com|.googleusercontent.com|.googleapis.com|.google-analytics.com|.googlecode.com|.google.com.hk|.googlegroups.com
forcehttps = groups.google.com|code.google.com|mail.google.com|docs.google.com|profiles.google.com|developer.android.com
withgae =

[autorange]
hosts = *.c.youtube.com|*.atm.youku.com|*.googlevideo.com|*av.vimeo.com|smile-*.nicovideo.jp|video.*.fbcdn.net|s*.last.fm|x*.last.fm|*.x.xvideos.com|*.edgecastcdn.net|*.d.rncdn3.com|cdn*.public.tube8.com|videos.flv*.redtubefiles.com|cdn*.public.extremetube.phncdn.com|cdn*.video.pornhub.phncdn.com|*.mms.vlog.xuite.net|vs*.thisav.com|archive.rthk.hk|video*.modimovie.com
endswith = .f4v|.flv|.hlv|.m4v|.mp4|.mp3|.ogg|.avi|.exe|.zip|.iso|.rar|.bz2|.xz|.dmg
noendswith = .xml|.json|.html|.php|.py.js|.css|.jpg|.jpeg|.png|.gif|.ico
threads = 2
maxsize = 1048576
waitsize = 524288
bufsize = 8192

[dns]
enable = 0
listen = 127.0.0.1:53
remote = 8.8.8.8
cachesize = 5000
timeout = 2

[light]
enable = 0
password = 
listen = 127.0.0.1:8089
server = 127.0.0.1:443

[useragent]
enable = 0
string = Mozilla/5.0 (iPhone; U; CPU like Mac OS X; en) AppleWebKit/420+ (KHTML, like Gecko) Version/3.0 Mobile/1A543a Safari/419.3

[fetchmax]
local = 
server = 

[love]
enable = 0
tip = \u8bf7\u5173\u6ce8\u5317\u4eac\u5931\u5b66\u513f\u7ae5~~

[hosts]
talkx?\.google\.com:5222 =
^https?://upload\.facebook\.com = 
^https?://.+\.c\.youtube\.com/liveplay =

"> /data/data/org.gaeproxy/proxy.ini

;;

esac
 
$DIR/python-cl $DIR/goagent.py

