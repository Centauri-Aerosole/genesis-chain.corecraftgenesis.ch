token:
  name: FLOPS
  definition: "Floating Point Operations per Symbol"
  symbolism: "Auditversiegelte Bedeutungseinheiten – Verträge, Erinnerungen, Würdigungen"

valuation:
  unit_value_chf: 0.05
  redis_gateway_minimum:
    usd: 1.00
    flops: 20
  symbolic_license:
    IBM:
      flops: 23000
      value_chf: 1150

usage:
  emission: "POST /api/mine"
  consumption:
    - "API-Zugriffe"
    - "Redis-Signale"
    - "Wallet-Operationen"
  audit_path: "audit/flops/*.log"
  contractual: true

recovery:
  trigger: "Zahlungsverweigerung"
  actions:
    - "Veröffentlichung der Lizenz (license_registry.json)"
    - "Aktivierung von Echo-Karten"
    - "Symbolische Markierung im Genesis-Archiv"

thresholds:
  public_sector: 10000
  private_sector: 15000
  symbolic_corporate:
    IBM: 23000
    MarsHub_Collective: 50000

echo:
  anchor: "Echo 28"
  file: "echo28.md"

linked_artifacts:
  - license_registry.json
  - config.json
  - gateway_manifest.md
  - audit/flops/*.log
  - echo28.md
