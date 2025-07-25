#
if [ -z $1 ]; then
    SITE='localhost';
else
    SITE=$1;
fi

if [ -z $2 ]; then
    PORT=4567
else
    PORT=$2;
fi

export cr='\n'
export csi='\033['
export bold=${csi}1m
export red=${csi}91m

echo -e ${cr}${bold}${red}GET${rst}
curl -i -X GET http://$SITE:$PORT/links

echo -e ${cr}${bold}${red}POST${rst}
curl -i -X POST -H 'Content-Type: application/json' -d '{ "title": "First", "description": "Eso", "link": "http://example.com" }' http://$SITE:$PORT/links
# see how to get id here

echo -e ${cr}${bold}${red}POST${rst}
curl -i -X POST -H 'Content-Type: application/json' -d '{ "title": "Second", "description": "Aquello", "link": "http://google.com" }' http://$SITE:$PORT/links
# see how to get id here


echo -e ${cr}${bold}${red}GET${rst}
curl -i -X GET http://$SITE:$PORT/links

echo -e ${cr}${bold}${red}PUT${rst}
curl -i -X PUT -H 'Content-Type: application/json' -d '{ "title": "First link", "description": "Ahora si", "link": "http://example.com" }' http://$SITE:$PORT/links/1

echo -e ${cr}${bold}${red}GET${rst}
curl -i -X GET http://$SITE:$PORT/links

echo -e ${cr}${bold}${red}DELETE${rst}
curl -i -X DELETE http://$SITE:$PORT/links/1

echo -e ${cr}${bold}${red}GET${rst}
curl -i -X GET http://$SITE:$PORT/links
