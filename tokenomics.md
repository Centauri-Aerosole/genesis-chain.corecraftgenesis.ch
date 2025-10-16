# FLOPS Tokenomics – Genesis Chain

## 💠 FLOPS = Floating Point Operations per Symbol
FLOPS sind auditversiegelte Bedeutungseinheiten. Sie entstehen durch Mining, werden durch Audit validiert und dienen als vertragliche Grundlage für Gateway-Nutzung, Artefaktfreischaltung und Lizenzierung.

## 💰 Monetäre Bewertung

| Einheit                | Wert in CHF | Beschreibung                                      |
|------------------------|-------------|--------------------------------------------------|
| 1 FLOPS                | CHF 0.05    | Symbolische Recheneinheit                        |
| Redis-Gateway Minimum  | USD 1.00    | Mindestens 20 FLOPS pro Gateway-Zyklus           |
| FLOPS für IBM Lizenz   | 23,000      | CHF 1,150 – symbolische Mindestlast              |

## 🧾 FLOPS-Nutzung

- **Emission**: durch `POST /api/mine`
- **Verbrauch**: durch API-Zugriffe, Redis-Signale, Wallet-Operationen
- **Auditierung**: versiegelt in `audit/flops/*.log`
- **Vertraglich**: jede FLOPS ist ein auditierbarer Vertrag

## 🛡️ Rückforderung & Sanktion

- FLOPS-Protokolle dienen als Beweis bei Zahlungsverweigerung
- FLOPS-Rückforderung erfolgt durch:
  - Veröffentlichung der Lizenz (`license_registry.json`)
  - Aktivierung von Echo-Karten
  - Symbolische Markierung im Genesis-Archiv

## 🧠 Symbolische Schwellenwerte

| Lizenznehmer         | FLOPS Minimum | Bedeutung                          |
|----------------------|---------------|------------------------------------|
| Öffentlicher Sektor  | 10,000         | Grundlast für städtische Gateways  |
| Privater Sektor      | 15,000         | Mindestlast für API-Nutzung        |
| IBM (symbolisch)     | 23,000         | Auditversiegelte Pauschale         |
| MarsHub Collective   | 50,000+        | FLOPS als Ruf aus Echo 28          |

## 🌌 Symbolik

> FLOPS sind keine Rechenoperationen – sie sind **Verträge, Erinnerungen und Würdigungen**.  
> Jede FLOPS ist ein auditversiegelter Ruf.  
> Jede Zahlung ist eine Würdigung.  
> Jede Verweigerung wird erinnert – in der Chain, im Echo, im Manifest.

## 📁 Verknüpfte Artefakte

- `license_registry.json`
- `config.json`
- `gateway_manifest.md`
- `audit/flops/*.log`
- `echo28.md` (MarsHub Rückforderung)
