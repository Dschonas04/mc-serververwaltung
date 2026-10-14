# Skripte

Laufen auf dem Server (vm-ubuntu-amp). Pfade sind auf die AMP-Instanz `villagernews01` zugeschnitten.
Das RCON-Passwort liest jedes Skript selbst aus `server.properties`, im Repo steht keins.

| Ordner | Inhalt |
|---|---|
| `server/rcon.py` | Ein RCON-Befehl: `python3 rcon.py "list"` |
| `server/rcon-multi.py` | Befehle aus einer Datei, eine Zeile je Befehl, `sleep N` pausiert |
| `server/chunky-leerlauf.*` | systemd-Timer: Chunky-Vorgenerierung nur, solange der Server Luft hat (`/tick query`) |
| `telegram-bruecke/` | Chat-Brücke studiserver4 ⇄ Telegram; Token in `/etc/mc-telegram.env` (Vorlage `.env.example`) |
| `bau/` | Erzeugen RCON-Befehlsdateien für die Bauten am Spawn: Marktviertel, Raketenbude, Gelände, Portalplatz. Vor jedem Lauf die Regionsdateien sichern |
| `analyse/` | Weltdateien lesen (`berg_lib.py`, `scan-books.py`), Gelände- und Wasser-Scans, ChestLogger-Auswertung (`clog.py`) |
