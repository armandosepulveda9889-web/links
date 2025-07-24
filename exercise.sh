curl -i -X GET http://localhost:4567/links

curl -i -X POST -H 'Content-Type: application/json' -d '{ "title": "First", "desctiption": "Eso", "link": "http://example.com" }' http://localhost:4567/links
# see how to get id here

curl -i -X POST -H 'Content-Type: application/json' -d '{ "title": "Second", "desctiption": "Aquello", "link": "http://google.com" }' http://localhost:4567/links
# see how to get id here

curl -i -X GET http://localhost:4567/links/1

curl -i -X PUT -H 'Content-Type: application/json' -d '{ "title": "First link", "desctiption": "Ahora si", "link": "http://example.com" }' http://localhost:4567/links/1

curl -i -X GET http://localhost:4567/links

curl -i -X DELETE http://localhost:4567/links/1

curl -i -X GET http://localhost:4567/links
