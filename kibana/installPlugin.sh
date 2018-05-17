#!/bin/sh
plugins=("http:://ip:prot/plugin.zip")


for ((i = 0; i < ${#plugins[*]}; i++)); do
	echo start install ${plugins[i]}
    wget -O $i.zip ${plugins[i]}
    /usr/share/kibana/bin/kibana-plugin install file:///usr/share/kibana/$i.zip
done
