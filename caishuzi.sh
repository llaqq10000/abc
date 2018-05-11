#!/bin/bash
guess=$[RANDOM%10]

for i in {1..3}
do
	read -p "读入你猜的数字：" num
	if [ -z $num ];then
		echo "空值再次输入"
	else
		expr $num "+" 10 &> /dev/null
		if [ $? -eq 0 ];then
			if [[ $num -le 10 && $num -ge 0 ]];then
				if [ $num -gt $guess ];then
					echo "大了"
				elif [ $num -lt $guess ];then
					echo "小了"
				else
					echo "对了"
					exit
				fi
			else
				echo "输入0-9数字"
			fi
		else
			echo "再次输入"
		fi
	fi
done
