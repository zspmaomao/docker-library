#!/bin/sh

nodeName=`hostname`
networkHost=`hostname -i`

#server.name: kibana
#server.host: "0"

echo nodeName: $nodeName
echo networkHost: $networkHost
if [ -n "$nodeName" ];  then
sed -i "s/server.name: kibana/server.name: $nodeName/g" /usr/share/kibana/config/kibana.yml
fi
if [ -n "$networkHost" ];  then
sed -i "s/server.host: \"0\"/server.host: \"$networkHost\"/g" /usr/share/kibana/config/kibana.yml
fi

if [ ! -f "flag" ]; then
	#touch flag
	if [ "$ELASTICSEARCH_URL" ]; then
		sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 '$ELASTICSEARCH_URL'!" /usr/share/kibana/config/kibana.yml
	fi

	if [ -n "$installPluginsSh" ]; then
		echo installPluginsSh: "---"$installPluginsSh"---"
		if curl -S $installPluginsSh | bash; then
           echo plugin install success!
		fi
	fi
fi
echo finished start.sh!
/usr/share/kibana/bin/kibana
