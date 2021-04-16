# lovespeed
Shell脚本：自动测速speedtest并推送结果至tg(Telegram) 燃烧流量，锻炼小鸡

## 自定义参数

测速命令：/root/speedtest -s 8888    指定测速点，也可以不加，则默认。测速点id可以从某些脚本开头获取，或者去web版查

ls1/ls2 ： 从测速报告提取数据行，并移除开头空空格，可以根据格式修改

lsn：自定义文字，我用来做机器名，你也可以根据格式自定义

cid：tg识别id，用户为纯数字，群组频道为-100开头数字或者@xxx 其他写法不一定可用，id可从nekogramx看到，或者用@mychatinfobot。用户需要先对话，群组频道可能需要管理员

api：从@botfather获取的bot API

Text：后面为发送的字符，变量要加符号，直接换行空格都行，apitext相关语法 https://www.coder.work/article/1757059

## 进阶玩法

### 定时任务

方法很多，推荐宝塔面板自带定时任务，直接用./或者脚本路径或者bash xxx.sh等方法，根据提示设置即可

不过，我自己实验宝塔会出错，请在/var/spool/cron/root中　根据格式编辑 [分 时 日 月 星期]

比如：　30 21 * * * bash /root/lovespeed.sh >> /dev/null 2>&1

### 循环测速

最简单就是多来点定时任务，或者你直接把脚本copy进去放一块

### 自定义测速点

根据变量说明修改测速点，大部分测速脚本都有标id，或者自己去web找

### 私聊/频道/群组推送

参考变量说明，获取id上权限，id获取方法自行搜索，我用nekox

### 多测速点

参考脚本写法，copy一下，改个名字，复读就完事

### 计算单次消耗

speedtest友好的帮你把消耗量计算好了

### 推送内容自定义

参考脚本语法，改起来很简单，框架原理就这样

# 安装问题
直接把speedtest程序和脚本下载到机器上，运行就行

wget -O "/root/speedtest" "https://raw.githubusercontent.com/BlueSkyXN/ChangeSource/master/speedtest" --no-check-certificate -T 30 -t 5 -d

chmod +x "/root/speedtest"

chmod 777 "/root/speedtest"

wget -O "/root/lovespeed.sh" "https://raw.githubusercontent.com/BlueSkyXN/lovespeed/main/lovespeed.sh" --no-check-certificate -T 30 -t 5 -d

chmod +x "/root/lovespeed.sh"

chmod 777 "/root/lovespeed.sh"

# 扩展用法
参考语法，可以把各种脚本都做成这样，跑完发送结果到tg
