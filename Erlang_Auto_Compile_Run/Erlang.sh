#!/bin/bash

#alias erl.='bash /home/zhangyi/Erlang/Erlang.sh'

if [ -z $1 ]
then

	echo "请输入要编译的Erlang源文件 PS: erl. hello.erl"

else
	
	erlc $1
	Data=`echo $1 | awk -F '.' '{print $1}'`
	erl -noshell -s $Data start -s init stop
fi
