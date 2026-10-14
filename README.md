# mc-serververwaltung

Alles, womit ich meinen Minecraft-Server **studiserver4** (Fabric, Minecraft 26.2) verwalte: eigene Server-Mods, Datenpakete und Skripte.

| Ordner | Inhalt |
|---|---|
| [`mods/loot-scaler`](mods/loot-scaler) | **Loot Scaler**: Erze und Mobs geben weniger Beute, Mengen statt Chancen (MIT, eigene [README](mods/loot-scaler/README.md)) |
| [`mods/stumm`](mods/stumm) | **Stumm**: Verwaltungs-Mod, nur Server (siehe unten) |
| [`datenpakete`](datenpakete) | Eigene Datenpakete der Welt |
| [`skripte`](skripte) | RCON, Vorgenerierung im Leerlauf, Telegram-Brücke, Bau- und Analyseskripte |

## Stumm

| Funktion | Befehl / Datei |
|---|---|
| Spieler stummschalten | `/stumm <Spieler>`, `/laut <Spieler>`, `/stumm liste` (Ops), Liste in `config/stumm.txt` |
| Spender | `/spende <Spieler> <Euro>`, `/spende setzen`, `/spende entfernen`, `/spende liste` (Ops), `/spender` für alle; Daten in `config/spender.txt` |
| Ehrentafel | schwebende Top-10-Spendertafel am Spawn (0.5 66.2 -8.5), Spender haben goldene Namen |
| Werkzeugwache | Log-Zeile `Werkzeugwache`, wenn einem Spieler ein Gegenstand mit Haltbarkeit aus dem Inventar verschwindet (Ort, Dimension, vermuteter Grund) |
| Log-Filter | blendet die Spam-Meldung „Invalid entity rotation: NaN“ aus |

## Bauen

Minecraft 26.2 ist nicht verschleiert, die Mods bauen mit normalem Gradle direkt gegen das Server-Jar, ohne Loom.
Java 25 und Gradle nötig:

```bash
tools/fetch-libs.sh   # Server-Jar, gebündelte Bibliotheken und Fabric-API-Module nach libs/
gradle build          # Jars in mods/*/build/libs/
```

`libs/` ist nicht im Repo, das Minecraft-Jar darf nicht weitergegeben werden.
Ein Tag `v*` baut beide Mods und hängt die Jars an ein GitHub-Release.

## Lizenz

[MIT](LICENSE)
