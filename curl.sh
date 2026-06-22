# MavLink command examples.
#
# mavproxy_api no longer exposes an HTTP server; commands go over the Unix-socket hook
# (MAVLINK_HOOK_SOCKET) or through the main ProbotSub API at /api/mavlink/command.

# Hook CLI (run from repo root):
python3 -m subprocesses.lib.mavlink_hook command --command "status" --wait
python3 -m subprocesses.lib.mavlink_hook command --command "long 42428" --timeout 1 --threaded --wait

# Or via the HTTP API:
# curl -X POST http://127.0.0.1:8000/api/mavlink/command -H "Content-Type: application/json" -d '{"command": "status"}'
# curl -X POST http://127.0.0.1:8000/api/mavlink/command -H "Content-Type: application/json" -d '{"command": "long 42428", "timeout": 1, "threaded": true}'
