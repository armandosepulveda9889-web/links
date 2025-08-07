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

print(){ echo -e ${cr}${bold}$1$2${rst}; }

print ${red} GET
curl -i -X GET http://$SITE:$PORT/links

print ${red} POST
curl -i -X POST -H 'Content-Type: application/json' -d '{ "title": "First", "description": "Eso", "link": "http://example.com" }' http://$SITE:$PORT/links
# see how to get id here

print ${red} POST
curl -i -X POST -H 'Content-Type: application/json' -d '{ "title": "Second", "description": "Aquello", "link": "http://google.com" }' http://$SITE:$PORT/links
# see how to get id here


print ${red} GET
curl -i -X GET http://$SITE:$PORT/links


print ${red} PUT 
curl -i -X PUT -H 'Content-Type: application/json' -d '{ "title": "First link", "description": "Ahora si", "link": "http://example.com" }' http://$SITE:$PORT/links/1

print ${red} GET
curl -i -X GET http://$SITE:$PORT/links

print ${red} DELETE
curl -i -X DELETE http://$SITE:$PORT/links/1

print ${red} GET
curl -i -X GET http://$SITE:$PORT/links
