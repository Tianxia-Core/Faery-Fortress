<p align="center">
  <img src="./brand-kit/01-logos/lockups-and-social/dual-lockup-rxm-x-tianxiaos.svg" alt="RASA-X-MACHINA · tianxiaOS" width="740"/>
</p>

# Faery Fortress

[![Architecture Tier](https://img.shields.io/badge/Architecture-Tier_2_Hardened_Enclave-ef4444)](https://github.com/Tianxia-Core)
[![tianxiaOS Substrate](https://img.shields.io/badge/Substrate-tianxiaOS_v8.7.0-7c5cff)](https://github.com/Tianxia-Core/tianxiaos-releases)
[![Nix Flake Closure](https://img.shields.io/badge/Nix_Flake-inputs.nixpkgs.follows-22d3ee)](#normalized-nix-flake-integration-zero-store-duplication)
[![DSS-14.2 Gate](https://img.shields.io/badge/DSS--14.2-%E2%89%A48_FFPs_Verified-34d399)](#function-feature-pair-ffp-manifest)

> **RASA-X-MACHINA Sovereign Polyglot Systems · Makers of `tianxiaOS`**
> *Entity Candor: **RASA-X-MACHINA** — Dealum Application `#179423` under active Estonian Startup Committee evaluation (§ 100¹ of the Estonian Aliens Act · Proposed entity upon approval: **RASA-X-MACHINA OÜ**, Tallinn, Estonia)*
> **Live Surface:** [fortress.rasaxmachina.com](https://fortress.rasaxmachina.com) · **Press & Brand Kit:** [rasaxmachina.com/press](https://rasaxmachina.com/press) · **Founder:** [rasaxmachina.com/collins](https://rasaxmachina.com/collins) · **Secure WhatsApp Relay:** [rasaxmachina.com/whatsapp](https://rasaxmachina.com/whatsapp)

**Faery Fortress** is the isolated **Tier-2 Hardened Perimeter, Capability & SIMD Safety Enclave** of **`tianxiaOS`**. Physically decoupled from rapid experimental velocity in Tier-1 cognitive orchestration (`KAI³` / `PARI`), it enforces `11.40 Mpps` `AF_XDP` wire-speed packet drops (`< 3.8 µs`), `< 1.0 ms` C/AVX2 SIMD `MANAS` System-1 safety pre-filtering, OCaml `virtwl` Wayland clipboard/selection isolation for untrusted microVMs, and systemd cgroup v2 / seccomp-bpf containment.

---

## Frontline-to-Founder Engineering Lineage

Architected by **Collins Takem** — forged from **10+ years on the FinTech incident-triage and ledger-forensics front lines** (*Blockchain.com*, *CoinLedger*, *SQUIRE*) while completing a Dual Major in **Pure Mathematics & Computer Science at SUNY (`4.00 / 4.00` GPA)**, followed by **3+ years** building **`tianxiaOS`** and its self-hosted autonomous compiler harnesses.

---

## Function-Feature Pair (`FFP`) Manifest (`<= 8` FFPs Bounded Law)

| FFP ID | Architectural Fitness Class | Language | Source Artifact & Capability |
| :--- | :--- | :--- | :--- |
| `FFP-MANAS-AVX2` | `compute-kernel` | `C (AVX2/FMA)` | `src/manas/tx_manas_cpu.c` — `< 1.0 ms` vectorized System-1 safety & intent cosine kernel |
| `FFP-MANAS-CUDA` | `compute-kernel` | `CUDA` | `src/manas/tx_manas_sm50.cu` — GPU tensor pre-filter kernel |
| `FFP-VIRTWL-PROXY` | `capability-proxy` | `OCaml` | `src/virtwl/tx_virtwl_proxy.ml` — Wayland `virtwl` capability firewall blocking clipboard snooping |
| `FFP-MANAS-DAEMON` | `ml-inference` | `Python` | `src/daemon/tx_manas.py` — `:9189` AHIMSA non-destructive gate & PRATYAKSA branch-halt server |
| `FFP-FORTRESS-NIX` | `declarative` | `Nix` | `nix/*.nix` — `AF_XDP`, nftables fail-closed perimeter, cgroup v2 & seccomp-bpf NixOS modules |
| `FFP-SECRET-SHIELD` | `capability-proxy` | `Python` | `security/secret_shield.py` — 24-rule credential scrubber & entropy guard |

---

## Stratified Wire & Boundary Contract

- **Tier Classification**: **Tier 2 — Hardened Security Enclave** (`tianxia-enclaves`).
- **Blast-Radius Isolation**: Zero dynamic imports from Tier-3 RGUs; pinned via signed Git tags and `inputs.nixpkgs.follows = "nixpkgs"`.
- **Runtime Endpoints**: `127.0.0.1:9189` (`/health`, `/triage`, `/evaluate`), NixOS `nixosModules.default`, and UNIX capability gates.

---

## Normalized Nix Flake Integration (Zero `/nix/store` Duplication)

Per the **RASA-X-MACHINA 3-Tier Stratified Flake Standard**, every Tier-2 Enclave and Tier-3 Organism normalizes `nixpkgs` and `tianxia-core` via `inputs.<x>.follows` so microVM closures compile against a single deterministic `/nix/store` hash:

```nix
{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
    tianxia-core = {
      url = "github:Tianxia-Core/TianxiaOS";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
}
```

---

## Quickstart & Verification

```bash
gcc -O3 -mavx2 -mfma -shared -fPIC src/manas/tx_manas_cpu.c -o libtx_manas_cpu.so -lm
python3 -m py_compile src/daemon/tx_manas.py
python3 security/secret_shield.py
```

---

## Security, Press & Governance (Bot-Shielded)

- **RFC 9116 Vulnerability Disclosure**: [`SECURITY.md`](./SECURITY.md) · [trust.rasaxmachina.com](https://trust.rasaxmachina.com)
- **Official Media, PR & Canonical Logos**: [rasaxmachina.com/press](https://rasaxmachina.com/press)
- **Encrypted Founder Dispatch**: [rasaxmachina.com/collins#encrypted-dispatch](https://rasaxmachina.com/collins#encrypted-dispatch) · [rasaxmachina.com/whatsapp](https://rasaxmachina.com/whatsapp)
