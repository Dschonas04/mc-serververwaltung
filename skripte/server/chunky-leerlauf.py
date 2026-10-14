#!/usr/bin/env python3
import os
"""Chunky nebenbei, aber nur so viel, wie der Server verkraftet.

Misst die Tickzeit (/tick query). Laeuft der Server locker, rechnet Chunky
weiter; wird es eng, pausiert er, bis wieder Luft ist. So wird auch beim
Spielen vorerzeugt, ohne dass es ruckelt. Kennwort und Port kommen aus
server.properties, nie aus einer Befehlszeile."""
import re, socket, struct, sys

EIG = os.environ.get("MC_DIR", "/srv/minecraft") + "/server.properties"
# Schwellen in Millisekunden (Ziel sind 50 ms pro Tick)
WEITER_MITTEL, WEITER_P95 = 25.0, 40.0   # darunter darf Chunky rechnen
PAUSE_MITTEL, PAUSE_P95 = 32.0, 48.0     # darueber pausiert er

w = dict(z.strip().split("=", 1) for z in open(EIG, encoding="utf-8") if "=" in z and not z.startswith("#"))


def paket(s, nr, art, text):
    rumpf = struct.pack("<ii", nr, art) + text.encode() + b"\x00\x00"
    s.sendall(struct.pack("<i", len(rumpf)) + rumpf)


def lies(s):
    laenge = struct.unpack("<i", s.recv(4))[0]
    d = b""
    while len(d) < laenge:
        d += s.recv(laenge - len(d))
    return struct.unpack("<i", d[:4])[0], d[8:-2].decode("utf-8", "replace")


try:
    s = socket.create_connection(("127.0.0.1", int(w.get("rcon.port", "25575"))), timeout=20)
    paket(s, 1, 3, w["rcon.password"])
    if lies(s)[0] == -1:
        sys.exit("RCON abgelehnt")
    paket(s, 2, 2, "tick query")
    text = lies(s)[1]
    mittel = float(re.search(r"Average time per tick: ([\d.]+)ms", text).group(1))
    p95 = float(re.search(r"P95: ([\d.]+)ms", text).group(1))
    if mittel > PAUSE_MITTEL or p95 > PAUSE_P95:
        befehl = "chunky pause"
    elif mittel < WEITER_MITTEL and p95 < WEITER_P95:
        befehl = "chunky continue"
    else:
        befehl = None  # dazwischen: so lassen, wie es ist
    if befehl:
        paket(s, 3, 2, befehl)
        lies(s)
    print(f"Tick {mittel} ms, P95 {p95} ms -> {befehl or 'unveraendert'}")
except (OSError, ValueError, IndexError, AttributeError):
    pass  # Server startet gerade oder ist aus -- beim naechsten Lauf wieder
