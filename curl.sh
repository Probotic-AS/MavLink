curl -X POST http://127.0.0.1:5000/api/command      -H "Content-Type: application/json"      -d '{"command": "status"}'
curl -X POST http://127.0.0.1:5000/api/command      -H "Content-Type: application/json"      -d '{"command": "long 42428", "timeout": "1", "threaded": true}'


# curl -X POST http://100.65.88.111:5000/api/command      -H "Content-Type: application/json"      -d '{"command": "status"}'
# curl -X POST http://100.65.88.111:5000/api/command      -H "Content-Type: application/json"      -d '{"command": "long 42428", "timeout": "0.5", "threaded": true}'