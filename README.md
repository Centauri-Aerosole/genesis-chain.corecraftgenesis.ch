# Genesis Chain

## 🔧 Überblick
Die Genesis Chain ist eine auditversiegelte, symbolisch strukturierte Infrastruktur für FLOPS-basierte Berechnung, Echtzeit-Signalrouting und narrative Artefaktverteilung. Sie verbindet technische Mo[...]

## 🧠 Komponenten
- **Redis**: Echo-Memory für Signalflüsse und temporäre FLOPS-Zustände
- **FastAPI**: REST-Schnittstelle für Mining, Blockabfrage und Wallet-Operationen
- **Centrifugo**: WebSocket-Engine für Echtzeitkommunikation
- **Audit Layer**: FLOPS-Protokolle, Lizenzlogs, Block-Traces

## 🔌 API-Endpunkte
- `POST /api/mine` → Mining-Zyklus starten
- `GET /api/block/{id}` → Blockdaten abrufen
- `GET /api/wallet/{name}/balance` → FLOPS-Guthaben prüfen
- `POST /api/transfer` → FLOPS übertragen

## 💰 FLOPS-Ökonomie
- FLOPS = Floating Point Operations per Symbol
- FLOPS sind auditversiegelte Bedeutungseinheiten
- Monetarisierbar über Lizenzprotokolle und Nutzungsmetriken

## 📦 Integration
- Docker-fähig
- Modular konfigurierbar via `config.json`
- Kompatibel mit Chain2025, Echo-Kits und Gateway-Lizenzen
- **Chain2025**: Symbolisches Layer — siehe [chain2025](https://github.com/chain2025/chain2025)

## 🌌 Symbolik
- Jeder FLOPS ist ein Echo
- Jeder Block ist ein Artefakt
- Jede Lizenz ist ein Vertrag
