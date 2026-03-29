# reflexive-reality-lean

**The first complete formally machine-verified philosophy — now with five audience-specific verification portals.**

This package unifies every Lean 4 library in the Reflexive Reality research program — 13 libraries, ~750 source files, all machine-verified with zero `sorry` — into a single buildable package. It accompanies the Reflexive Reality capstone paper series (Papers 86–92 of the NEMS Suite):

> *Nova Spivack, Reflexive Reality Capstone Series (Papers 86–92), NEMS Suite, 2026.*

Running `lake build` formally verifies every claim across all portal papers. Each portal has its own named-theorem index for discipline-specific verification.

---

## Portal modules

| Portal paper | Lean module | Build command | Audience |
|---|---|---|---|
| Paper 86 — Philosophical Exposition | [`Philosophy.lean`](Philosophy.lean) | `lake build Philosophy` | Philosophers |
| Paper 87 — Formal Theory Survey | [`FormalTheory.lean`](FormalTheory.lean) | `lake build FormalTheory` | Logicians, computability theorists |
| Paper 88 — Physics Survey | [`Physics.lean`](Physics.lean) | `lake build Physics` | Physicists |
| Paper 89 — AI/Agents Survey | [`AIAgents.lean`](AIAgents.lean) | `lake build AIAgents` | AI, AGI, safety researchers |
| Paper 92 — Consciousness & Mind | [`ConsciousnessMind.lean`](ConsciousnessMind.lean) | `lake build ConsciousnessMind` | Philosophers of mind, cognitive scientists |

Each module provides named aliases for every bracketed citation in its companion paper. Use `#check Portal.TheoremName` to verify individual claims.

---

## Selected highlights

| Claim | Formal theorem | Library |
|---|---|---|
| The universe has no outside — closure is required | `NemS.foundational_finality` | nems-lean |
| Physical laws cannot be a complete algorithmic self-description | `NemS.physical_incompleteness` | nems-lean |
| The Standard Model is forced by closure | `UgpLean.rsuc` | ugp-lean |
| Born rule is the unique closure fixed point | `NemS.born_rule_unique` | nems-lean |
| No self-model captures its own diagonal (no arithmetic required) | `RepresentationalIncompleteness.diagonal_exclusion` | RI |
| A fold is not an iterate | `ReflectiveFoldObstruction.fold_obstruction` | RFO |
| Turing-completeness ≠ semantic-type completeness | `ReflectiveFoldObstruction.SemanticType.semanticType_preorder_nontrivial` | RFO |
| Simulation is not realization (iff under section criterion) | `ReflectiveFoldObstruction.SemanticType.typeReachable_pullback_iff_of_section` | RFO |
| There must be something rather than nothing | `Alpha.alpha_theorem` | reflexive-closure-lean |
| Known qualia are irreducible semantic content | `QualiaLedger.known_qualia_ledger_theorem` | reflexive-closure-lean |
| The hard problem of consciousness is a category error | `QualiaLedger.hard_problem_category_error` | reflexive-closure-lean |
| Awareness is a locus-role, not an object | `AwarenessGround.awareness_not_object_level` | reflexive-closure-lean |
| The phenomenology framework is the unique admissible survivor | `survivor_theorem` | phenomenology-lean |
| Observer exhaustion is impossible by all three routes | `Observer.Nonexhaustability.observer_non_exhaustibility_summit` | ONE |
| Every map has a structured residual kernel | `ReflexiveArchitecture.universal_forgetting_theorem` | RA |
| Barriered anchored completion is impossible; structured aftermath is forced | `ReflexiveArchitectureNonexhaustibilityLean.barriered_anchored_completion_impossible` | RAN |
| Reflexive Development Law (refine / shift / reconfigure) | `ReflexiveArchitectureNonexhaustibilityLean.reflexive_development_law_standing_trilemma` | RAN |
| The Golden Bridge: one fact, three irreducible aspects | `GoldenBridge.golden_bridge_theorem` | reflexive-closure-lean |

---

## Component libraries

| Library | Papers / Program | Key results |
|---|---|---|
| [nems-lean](https://github.com/novaspivack/nems-lean) | Papers 1–51 | Physical Incompleteness, Foundational Finality, Born Rule, Standard Model sieve, Arrow of Time, Gödel unification |
| [ugp-lean](https://github.com/novaspivack/ugp-lean) | Paper 25 + UGP | Standard Model from closure, Quarter-Lock rigidity, Turing universality, Lepton Seed |
| [reflexive-closure-lean](https://github.com/novaspivack/reflexive-closure-lean) | Papers 52–70 | Reflexive Closure, Alpha Theorem, Qualia Ledger, Manifestation, Awareness as Locus, Golden Bridge |
| [viable-continuation-lean](https://github.com/novaspivack/viable-continuation-lean) | Papers 71–72 | Viable continuation theory; four ridge failure modes |
| [sentience-lean](https://github.com/novaspivack/sentience-lean) | Paper 73 | SIAM — Self-Indexing Adjudicative Manifold; seven structural invariants; separation theorems |
| [phenomenology-lean](https://github.com/novaspivack/phenomenology-lean) | Papers 74–75 | Six-part phenomenology ontology; uniqueness / survivor theorem |
| [transputation-lean](https://github.com/novaspivack/transputation-lean) | Papers 76–77 | Formal theory of transputation; DSAC realization |
| [representational-incompleteness-lean](https://github.com/novaspivack/representational-incompleteness-lean) | RI program | No parametric self-model captures its own diagonal (no arithmetic required) |
| [reflective-fold-obstruction-lean](https://github.com/novaspivack/reflective-fold-obstruction-lean) | RFO program | Fold is not an iterate; semantic-type obstruction (SPEC_020): Turing-complete ≠ semantic-type complete; simulation/realization split |
| [observer-non-exhaustability-lean](https://github.com/novaspivack/observer-non-exhaustability-lean) | ONE program | Complete route classification; Route D is the unique admissible observer architecture |
| [infinity-compression-lean](https://github.com/novaspivack/infinity-compression-lean) | IC program | Certification does not exhaust realization; fiber obstruction; Quillen Theorem A; group extensions |
| [reflexive-architecture-lean](https://github.com/novaspivack/reflexive-architecture-lean) | RA Summits 1–2 | Strata synthesis; Non-Erasure biconditional; Geometry of What Maps Forget |
| [adequacy-architecture-lean](https://github.com/novaspivack/adequacy-architecture-lean) | AA program | Three-level certificate structure forced by admissibility |
| [reflexive-architecture-nonexhaustibility-lean](https://github.com/novaspivack/reflexive-architecture-non-exhaustibility-lean) | RAN / General Science | Master law: barriered anchored completion impossible, structured aftermath forced; Reflexive Development Law |

**Total: ~750 source files. Zero sorry. Zero custom axioms. Lean 4 / Mathlib v4.29.0-rc6.**

---

## Building

```bash
# 1. Clone this repo
git clone https://github.com/novaspivack/reflexive-reality-lean
cd reflexive-reality-lean

# 2. Resolve all dependencies (~13 libraries via pinned git hashes)
lake update

# 3. Download pre-built Mathlib .olean files (saves hours of compilation)
lake exe cache get

# 4. Build everything — verifies all ~750 source files
lake build

# 5. Or verify a specific portal
lake build Philosophy        # Paper 86: philosophical claims
lake build FormalTheory      # Paper 87: formal theory / logic / computability
lake build Physics           # Paper 88: physics claims
lake build AIAgents          # Paper 89: AI, agents, AGI claims
lake build ConsciousnessMind # Paper 92: consciousness, qualia, awareness
```

---

## Verifying a specific claim

After building, check any named theorem in any portal module:

```lean
-- Philosophy portal
#check Philosophy.AlphaExists
#check Philosophy.HardProblemDissolvedTheorem
#check Philosophy.TheGoldenBridge

-- Formal Theory portal
#check FormalTheory.PhysicalIncompleteness
#check FormalTheory.RepresentationalIncompletenessSummit
#check FormalTheory.SemanticTypePreorderNontrivial

-- Physics portal
#check Physics.BornRuleAsClosureFixedPoint
#check Physics.FoundationalViabilityIffClosure

-- AI/Agents portal
#check AIAgents.SimulationIsNotRealization
#check AIAgents.NoTotalInternalSelfCertifier

-- Consciousness & Mind portal
#check ConsciousnessMind.KnownQualiaOnLedger
#check ConsciousnessMind.AwarenessIsNotAnObject
#check ConsciousnessMind.TheGoldenBridge
```

---

## What is new in SPEC_020 (semantic type obstruction)

The `reflective-fold-obstruction-lean` library has been extended with a new result: **Turing-completeness does not imply semantic-type completeness**. A system may be Turing-complete and still be permanently type-bounded. The formal **simulation/realization split** is machine-checked: forward simulation always projects type reachability, but the converse requires a section with backward step-lifting. Without that section, a Turing-complete system can simulate a richer-type system without instantiating it.

Key theorems in `FormalTheory`, `AIAgents`, `Philosophy`, and `ConsciousnessMind`:
- `semanticType_preorder_nontrivial` — the type-reachability preorder is nontrivial
- `typeReachable_pullback_iff_of_section` — simulation ≠ realization
- `adjudication_semantic_obstruction` — adjudication type cannot iterate to non-total-effective

---

## Why this is new

Formal verification has been applied to mathematics, to isolated logical results, and to small formal ontology fragments. No prior work has formally verified:

- A complete philosophy of existence (why there is something rather than nothing)
- A theory of consciousness and qualia with machine-checked proofs, including a uniqueness theorem for the phenomenology framework
- Physical law derivations (Standard Model gauge structure, Born rule as forced fixed point)
- A classification of all routes to observer self-exhaustion with each route formally blocked
- A general science of reflexive systems including the dynamical law for what happens when completion fails
- A machine-checked proof that Turing-completeness and semantic-type reachability are orthogonal

This package is, to the authors' knowledge, the first complete formally machine-verified philosophy — a philosophical system where every load-bearing claim can be independently machine-checked.

---

## Toolchain

All libraries unified on `leanprover/lean4:v4.29.0-rc6` with `mathlib4 @ v4.29.0-rc6`.

---

## Citation

```
Nova Spivack. "Reflexive Reality: Capstone Series (Papers 86–92)." NEMS Suite, 2026.
Nova Spivack. reflexive-reality-lean. https://github.com/novaspivack/reflexive-reality-lean. 2026.
```
