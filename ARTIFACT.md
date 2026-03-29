# reflexive-reality-lean — Artifact Documentation

**Version:** v1.5.0  
**Lean:** leanprover/lean4:v4.29.0-rc6  
**Mathlib:** v4.29.0-rc6  
**Build:** `lake build ReflexiveReality` — succeeds with 0 errors on the portal alias modules  
**Sorry status:** 0 sorry in portal alias modules (Philosophy, FormalTheory, Physics, AIAgents, ConsciousnessMind). Sorry accounting for underlying libraries: see per-library MANIFEST.md files (all primary theorem chains cited in portal papers carry 0 sorry per their manifests).  
**Custom axioms:** 0 in all portal alias modules and all primary theorem chains.

---

## What This Artifact Proves

This Lean 4 integration package verifies every major load-bearing claim across five audience-specific portal papers in the Reflexive Reality suite. It does so by providing named alias modules that import the verified theorem spine and expose each claim under a human-readable name.

### Portal modules and their companion papers

| Module | Companion paper | Claims covered |
|---|---|---|
| `Philosophy.lean` | Paper 86 — Reflexive Reality: A Philosophical Exposition | 46 named aliases covering closure, no-free-bits, diagonal barrier, Alpha arc, qualia, awareness, Golden Bridge, RDL |
| `FormalTheory.lean` | Paper 87 — A Survey for Formal Theory Specialists | 38 named aliases covering self-reference engine, NEMS classification, three impossibility engines, fiber architecture, SPEC_020 semantic type obstruction |
| `Physics.lean` | Paper 88 — A Survey for Physicists | 22 named aliases covering physical incompleteness, Standard Model arc, Born rule, arrow of time, extreme physics, transputation |
| `AIAgents.lean` | Paper 89 — A Survey for AI, Agents, and AGI Researchers | 28 named aliases covering self-knowledge limits, SIAM separation, simulation/realization split, multi-agent governance, RDL for AGI |
| `ConsciousnessMind.lean` | Paper 92 — Consciousness, Phenomenology, and Mind | 22 named aliases covering qualia arc (P55/P65/P66), awareness-locus (P67), Alpha non-null (P68), three-aspect synthesis (P69/P70), observer non-exhaustibility, semantic type obstruction |

### How to verify

```bash
lake update && lake exe cache get

# Verify a specific portal
lake build Philosophy
lake build FormalTheory
lake build Physics
lake build AIAgents
lake build ConsciousnessMind

# Verify all portals
lake build ReflexiveReality

# Check a specific claim
lean --run <<EOF
import ReflexiveReality
#check Philosophy.TheGoldenBridge
#check FormalTheory.SemanticTypePreorderNontrivial
#check AIAgents.SimulationIsNotRealization
#check ConsciousnessMind.AwarenessIsNotAnObject
EOF
```

---

## Underlying libraries

The portal alias modules import from the following primary libraries, all verified per their own MANIFEST.md files:

| Library | Sorry status (primary chains) | Key contribution to portals |
|---|---|---|
| nems-lean | 0 sorry on primary chain (6 in abstract SelfReference instance layer, 3 in GPTClosure/QuantumFinite — neither cited in portals) | Physical incompleteness, Born rule, Standard Model sieve, diagonal barrier, selector machinery |
| reflexive-closure-lean | 0 sorry | Alpha arc, qualia, manifestation, awareness-locus, Golden Bridge, observer non-exhaustion |
| ugp-lean | 0 sorry on core path | Standard Model / Lepton Seed / Quarter-Lock |
| viable-continuation-lean | 0 sorry on abstract spine | Viable continuation failure modes |
| sentience-lean | 0 sorry | SIAM seven invariants, separation theorems |
| phenomenology-lean | 0 sorry | Six-part ontology, uniqueness / survivor theorem |
| transputation-lean | 0 sorry on primary chain | Transputation forced at choice points |
| representational-incompleteness-lean | 0 sorry | Diagonal exclusion; OntologicalSlot sort wall |
| reflective-fold-obstruction-lean | 0 sorry | Fold obstruction; SPEC_020 semantic type obstruction (9 named results) |
| observer-non-exhaustability-lean | 0 sorry | Route A/B/C blocked; Route D unique admissible architecture |
| infinity-compression-lean | 0 sorry under InfinityCompression/ | Certification ≠ realization; fiber architecture |
| reflexive-architecture-lean | 0 sorry on summit routes | Universal Forgetting Theorem; Non-Erasure Law |
| adequacy-architecture-lean | 0 sorry | Admissibility unification theorem |
| reflexive-architecture-nonexhaustibility-lean | 0 sorry | RAN master law; RDL trilemma; structured aftermath |

---

## SPEC_020 — Semantic Type Obstruction

Version 1.5.0 adds the SPEC_020 semantic type obstruction extension to the portal alias surfaces. This extension, proved in `reflective-fold-obstruction-lean/SemanticType/`, establishes that Turing-completeness does not imply semantic-type completeness.

Nine named theorems are exposed across the portal modules:

| Theorem | Module | Lean anchor |
|---|---|---|
| `SemanticTypePreorderNontrivial` | FormalTheory | `semanticType_preorder_nontrivial` |
| `SelfModelDepthObstruction` | FormalTheory, AIAgents | `selfModelDepth_obstruction` |
| `AdjudicationTypeObstruction` | FormalTheory, AIAgents, Philosophy | `adjudication_semantic_obstruction` |
| `RISemanticTypeMismatch` | FormalTheory | `RI_semantic_type_mismatch` |
| `SimulationIsNotRealization` | FormalTheory, AIAgents, Physics, Philosophy, ConsciousnessMind | `typeReachable_pullback_iff_of_section` |
| `TypeGapPullsBackAlongSimulation` | FormalTheory, AIAgents | `typeGap_simulation_pullback` |
| `ComplementaryTagGap` | FormalTheory | `typeGap_of_complementary_tags` |
| `SeedLocalHullExclusion` | FormalTheory | `false_tag_not_mem_tagsOnHull_of_preserved_seed` |
| `TuringCompleteNotSemanticTypeComplete` | Philosophy | `semanticType_preorder_nontrivial` |

---

## Version history

| Version | Date | Changes |
|---|---|---|
| v1.0.0 | March 2026 | Initial integration: Philosophy.lean, ReflexiveReality.lean |
| v1.1.0 | March 2026 | Add portal modules: FormalTheory.lean, Physics.lean, AIAgents.lean |
| v1.2.0 | March 2026 | Add ConsciousnessMind.lean (Paper 92) |
| v1.3.0 | March 2026 | Update Philosophy.lean with SPEC_020 semantic type aliases |
| v1.4.0 | March 2026 | ReflexiveReality.lean imports all five portal modules |
| v1.5.0 | March 2026 | ARTIFACT.md and README.md updated; full portal coverage documented |

---

## Path

```
reflexive-reality-lean/ARTIFACT.md   ← this file
reflexive-reality-lean/MANIFEST.md   ← does not exist at integration level;
                                        see per-library MANIFEST.md files in
                                        .lake/packages/<library>/MANIFEST.md
reflexive-reality-lean/README.md     ← user-facing overview and build guide
```

The per-library MANIFEST.md files (e.g. `.lake/packages/nems-lean/MANIFEST.md`) contain the detailed theorem-level sorry accounting and theorem inventory for each component library. The integration package (`reflexive-reality-lean`) does not add new theorems; it provides alias surfaces.
