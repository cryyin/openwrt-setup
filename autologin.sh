ping -c 1 www.baidu.com > /dev/null 2>&1
if [ $? -eq 0 ];then
    echo "检测网络正常"
else
    echo "检测网络连接异常,尝试连接"
	echo "尝试自动登录中"
    curl 'http://10.10.42.3/drcom/login?callback=dr1599472142854&DDDDD=18301105&upass=50879853&0MKKey=123456&R1=0&R3=0&R6=0&para=00&v6ip=&_=1599472129063'
	ping -c 1 www.baidu.com > /dev/null 2>&1
	if [ $? -eq 0 ];then
		echo "网络连接成功"
    else
		echo "网络连接失败"
	fi
fi
echo "运行结束"
