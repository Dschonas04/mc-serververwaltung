# Runs RCON commands from a file, one per line; "sleep N" pauses, "#" lines are skipped.
import os, socket, struct, sys, time
def recv(s):
    ln = struct.unpack('<i', s.recv(4))[0]
    data = b''
    while len(data) < ln:
        data += s.recv(ln - len(data))
    rid, typ = struct.unpack('<ii', data[:8])
    return rid, typ, data[8:-2].decode('utf-8','ignore')
def send(s, rid, typ, body):
    d = struct.pack('<ii', rid, typ) + body.encode() + b'\x00\x00'
    s.sendall(struct.pack('<i', len(d)) + d)
pw = ''
port = 25575
MC_DIR = os.environ.get('MC_DIR', '/srv/minecraft')  # Server-Verzeichnis (mit server.properties)
for line in open(MC_DIR + '/server.properties'):
    if line.startswith('rcon.password='):
        pw = line.split('=',1)[1].strip()
    if line.startswith('rcon.port='):
        port = int(line.split('=',1)[1].strip())
s = socket.create_connection(('127.0.0.1', port), timeout=120)
send(s, 1, 3, pw)
if recv(s)[0] == -1:
    print('AUTH FAILED'); sys.exit(1)
n = 2
for cmd in open(sys.argv[1]).read().splitlines():
    cmd = cmd.strip()
    if not cmd or cmd.startswith('#'): continue
    if cmd.startswith('sleep '):
        time.sleep(float(cmd.split()[1])); continue
    send(s, n, 2, cmd); n += 1
    out = recv(s)[2]
    if out: print('>', cmd[:60], '|', out[:200])
s.close()
