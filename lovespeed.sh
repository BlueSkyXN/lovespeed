rm -rf "/tmp/speed"
"/root/speedtest"  >  "/tmp/speed"
ls1=cat /tmp/speed | grep Upload | awk '{gsub(/^\s+|\s+$/, "");print}'
ls2=cat /tmp/speed | grep Download | awk '{gsub(/^\s+|\s+$/, "");print}'
lsn=hostname
curl --data chat_id="『聊天ID』" --data-urlencode "text=§$lsn§

$ls1
$ls2" "https://api.telegram.org/bot『API』/sendMessage?parse_mode=HTML"
