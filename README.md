# reflexive-primordialism-lean

**The first complete formally machine-verified philosophy.**

This package unifies every Lean 4 library in the Reflexive Primordialism
research program — 13 libraries, ~750 source files, all machine-verified
with zero `sorry` — into a single buildable package. It accompanies
Paper 86 of the NEMS Suite:

> *Nova Spivack, "Reflexive Primordialism: A Philosophical Exposition,"
> Paper 86 of the NEMS Suite, 2026.*

Running `lake build` formally verifies every philosophical claim in that paper.

---

## What this verifies

Every major claim in Paper 86 has a corresponding machine-checked theorem.
Selected highlights:

| Philosophical claim | Formal theorem | Library |
|---|---|---|
| The universe has no outside — closure is required | `NemS.foundational_finality` | nems-lean |
| Physical laws cannot be a complete self-description | `NemS.physical_incompleteness` | nems-lean |
| The Standard Model is forced by closure | `UgpLean.rsuc` | ugp-lean |
| No self-model captures its own diagonal | `RepresentationalIncompleteness.diagonal_exclusion` | RI |
| A fold is not an iterate | `ReflectiveFoldObstruction.fold_obstruction` | RFO |
| There must be something rather than nothing | `Alpha.alpha_theorem` | reflexive-closure-lean |
| Whatever exists is Alpha-grounded | `GroundedExistence.grounded_existence` | reflexive-closure-lean |
| Known qualia are irreducible semantic content | `QualiaLedger.known_qualia_ledger_theorem` | reflexive-closure-lean |
| The hard problem of consciousness is a category error | `QualiaLedger.hard_problem_category_error` | reflexive-closure-lean |
| Awareness is the locus of ground-presence, not an object | `AwarenessGround.awareness_not_object_level` | reflexive-closure-lean |
| Awareness-of-awareness needs no second observer | `AwarenessGround.self_illuminating` | reflexive-closure-lean |
| Observer exhaustion is impossible by all three routes | `Observer.Nonexhaustability.observer_non_exhaustibility_summit` | ONE |
| Every map has a structured residual kernel | `ReflexiveArchitecture.universal_forgetting_theorem` | RA |
| The Reflexive Development Law (refine / shift / reconfigure) | `ReflexiveArchitectureNonexhaustibilityLean.reflexive_development_law_standing_trilemma` | RAN |
| The Golden Bridge: one fact, three irreducible aspects | `GoldenBridge.golden_bridge_theorem` | reflexive-closure-lean |

See [`Philosophy.lean`](Philosophy.lean) for the complete named-theorem index.

---

## Component libraries

| Library | Papers / Program | Key results |
|---|---|---|
| [nems-lean](https://github.com/novaspivack/nems-lean) | Papers 1–51 | Physical Incompleteness, Foundational Finality, Semantic Floor, No-Free-Bits, Arrow of Time, Gödel unification |
| [ugp-lean](https://github.com/novaspivack/ugp-lean) | Paper 25 + UGP | Standard Model from closure, Quarter-Lock rigidity, Turing universality |
| [reflexive-closure-lean](https://github.com/novaspivack/reflexive-closure-lean) | Papers 52–70 | Reflexive Closure, Alpha Theorem, Qualia Ledger, Awareness as Locus, Golden Bridge |
| [viable-continuation-lean](https://github.com/novaspivack/viable-continuation-lean) | Papers 71–72 | Viable continuation theory |
| [representational-incompleteness-lean](https://github.com/novaspivack/representational-incompleteness-lean) | RI program | No parametric self-model captures its own diagonal (universal, no arithmetic required) |
| [reflective-fold-obstruction-lean](https://github.com/novaspivack/reflective-fold-obstruction-lean) | RFO program | A fold is not an iterate; sort-boundary obstruction |
| [observer-non-exhaustability-lean](https://github.com/novaspivack/observer-non-exhaustability-lean) | ONE program | Complete route classification; Route D is the unique admissible observer architecture |
| [infinity-compression-lean](https://github.com/novaspivack/infinity-compression-lean) | IC program | Canonical certification does not exhaust realization; fiber obstruction theory |
| [reflexive-architecture-lean](https://github.com/novaspivack/reflexive-architecture-lean) | RA Summits 1–2 | Strata synthesis; Non-Erasure biconditional; Geometry of What Maps Forget |
| [adequacy-architecture-lean](https://github.com/novaspivack/adequacy-architecture-lean) | AA program | Three-level certificate world forced by admissibility |
| [reflexive-architecture-nonexhaustibility-lean](https://github.com/novaspivack/reflexive-architecture-nonexhaustibility-lean) | RAN / General Science | Reflexive Development Law; Structured Aftermath; Adequacy Burden Relocation |
| aps-rice-lean | APS | Rice's theorem, halting undecidability |
| aps-recursion-* | APS | Recursion uniformization (dep of Adequacy Architecture) |

**Total: ~750 source files. Zero sorry. Lean 4 / Mathlib v4.29.0-rc6.**

---

## Building

```bash
# 1. Clone this repo
git clone https://github.com/novaspivack/reflexive-primordialism-lean
cd reflexive-primordialism-lean

# 2. Resolve all dependencies (downloads ~13 libraries via their pinned git hashes)
lake update

# 3. Download pre-built Mathlib .olean files (saves hours of compilation)
lake exe cache get

# 4. Build — verifies all ~750 source files
lake build

# 5. Or verify just the philosophical theorem index
lake build Philosophy
```

A successful build means every philosophical claim in Paper 86 is formally proved.

---

## Verifying a specific claim

After building, you can check any named theorem in `Philosophy.lean`:

```lean
#check Philosophy.AlphaExists
-- Philosophy.AlphaExists : ∃ α, NecessaryGround α R

#check Philosophy.HardProblemDissolvedTheorem
-- Philosophy.HardProblemDissolvedTheorem : ...

#check Philosophy.TheGoldenBridge
-- Philosophy.TheGoldenBridge : ThreeAspectSynthesis α
```

Or open any library file in VS Code with the Lean 4 extension to inspect
individual theorems interactively.

---

## Why this is new

Formal verification has been applied to mathematics (Lean, Coq, Isabelle),
to isolated logical results in epistemology, and to small formal ontology
fragments. But no prior work has formally verified:

- A complete philosophy of existence (why there is something rather than nothing)
- A theory of consciousness and qualia with machine-checked proofs
- Physical law derivations (the Standard Model gauge structure) proved formally
- A classification of all routes to observer self-exhaustion, with each route formally blocked
- A general science of reflexive systems including the dynamical law governing
  what happens when completion fails

This package is, to the authors' knowledge, the first complete formally
machine-verified philosophy — a philosophical system where every claim
marked as proved can be independently machine-checked in minutes.

---

## Toolchain

All libraries unified on `leanprover/lean4:v4.29.0-rc6` with
`mathlib4 @ v4.29.0-rc6`.

---

## Citation

```
Nova Spivack. "Reflexive Primordialism: A Philosophical Exposition."
Paper 86 of the NEMS Suite. 2026.

Nova Spivack. reflexive-primordialism-lean.
https://github.com/novaspivack/reflexive-primordialism-lean. 2026.
```
