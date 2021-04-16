rm -rf "/tmp/speed"
"/root/speedtest" -s 17129  >  "/tmp/speed"
ls1=`cat /tmp/speed | grep Upload | awk '{gsub(/^\s+|\s+$/, "");print}'`
ls2=`cat /tmp/speed | grep Download | awk '{gsub(/^\s+|\s+$/, "");print}'`
lsn=hostname
tgid=
tgbotapi=
curl --data chat_id="$tgid" --data-urlencode "text=§$lsn§

$ls1
$ls2" "https://api.telegram.org/bot$tgbotapi/sendMessage?parse_mode=HTML"
