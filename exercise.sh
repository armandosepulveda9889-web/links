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

curl -i -X GET http://$SITE:$PORT/links

curl -i -X POST -H 'Content-Type: application/json' -d '{ "title": "First", "description": "Eso", "link": "http://example.com" }' http://$SITE:$PORT/links
# see how to get id here

curl -i -X POST -H 'Content-Type: application/json' -d '{ "title": "Second", "description": "Aquello", "link": "http://google.com" }' http://$SITE:$PORT/links
# see how to get id here

curl -i -X GET http://$SITE:$PORT/links/1

curl -i -X PUT -H 'Content-Type: application/json' -d '{ "title": "First link", "description": "Ahora si", "link": "http://example.com" }' http://$SITE:$PORT/links/1

curl -i -X GET http://$SITE:$PORT/links

curl -i -X DELETE http://$SITE:$PORT/links/1

curl -i -X GET http://$SITE:$PORT/links
