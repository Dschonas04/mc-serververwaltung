import socket, struct, sys
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
for line in open('/home/amp/.ampdata/instances/villagernews01/Minecraft/server.properties'):
    if line.startswith('rcon.password='):
        pw = line.split('=',1)[1].strip()
s = socket.create_connection(('127.0.0.1', 25577), timeout=10)
send(s, 1, 3, pw)
rid,_,_ = recv(s)
if rid == -1:
    print('AUTH FAILED'); sys.exit(1)
send(s, 2, 2, sys.argv[1])
print(recv(s)[2])
s.close()
