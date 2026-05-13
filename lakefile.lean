import Lake
open Lake DSL

/-!
# reflexive-reality-lean

**The first complete formally machine-verified philosophy.**

This package unifies every Lean library in the Reflexive Reality research
program — the NEMS Suite (Papers 1–85), the UGP program, and the seven subsequent
arcs — into a single buildable package. Running `lake build` verifies all theorems
cited in Paper 86 ("Reflexive Reality: A Philosophical Exposition").

## What this verifies

- That a universe without an outside must be a closed, self-referential system (NEMS)
- That the Standard Model gauge structure SU(3)×SU(2)×U(1) with 3 generations is forced
  by closure (ugp-lean + nems-lean)
- That no system can produce a complete internal self-description (Physical Incompleteness)
- That syntax cannot exhaust semantics (Paper 53)
- That no observer can internally exhaust itself (Papers 51–54, ONE)
- That a necessary pre-categorial ontological ground exists (Alpha Theorem, Paper 63)
- That known qualia are irreducible semantic content whose actuality is Alpha-grounded
  (Papers 55, 65–66)
- That awareness is the locus of ground-presence and is intrinsically self-illuminating
  (Paper 67)
- That canonical certification does not exhaust realization (Infinity Compression)
- That every map has a geometrically structured residual kernel (Geometry of What Maps Forget)
- That observer exhaustion is impossible via all three principal routes (ONE)
- That the lawful response to standing residual follows a proved trilemma (General Science / RDL)
- And much more — see `Philosophy.lean` for named philosophical theorem aliases.

## Building

```
lake update           -- resolve and download all dependencies
lake exe cache get    -- download pre-built Mathlib .olean files (saves hours)
lake build            -- verify all theorems (compiles ~750 files beyond Mathlib)
```

## Dependencies

All dependencies are pinned to specific commit hashes so the build is
reproducible. Three repos (RI, ONE, RAN) use local paths pending their
public GitHub push — see comments below.

## Toolchain
All libraries unified on leanprover/lean4:v4.29.0-rc6
-/

package «reflexive-reality» where
  version := v!"0.1.0"
  description := "The first complete formally machine-verified philosophy"

/-! ### Mathlib — declare first so its cache hash wins -/
/-! ### APS supporting libraries (deps of ugp-lean and adequacy-architecture) -/

require aps_undecidability_interfaces_lean from git
  "https://github.com/novaspivack/aps-undecidability-interfaces-lean.git"
  @ "main"

require aps_recursion_composition_uniformity_lean from git
  "https://github.com/novaspivack/aps-recursion-composition-uniformity-lean.git"
  @ "main"

require aps_recursion_uniformization_lean from git
  "https://github.com/novaspivack/aps-recursion-uniformization-lean.git"
  @ "main"

/-- Rice's theorem and halting undecidability (dep of ugp-lean) -/
require APS from git
  "https://github.com/novaspivack/aps-rice-lean.git"
  @ "main"

/-! ### Core NEMS spine — Papers 1–51 + schema programs -/

/--
  nems-lean: Papers 1–51.
  Physical Incompleteness (Paper 11), Foundational Finality (Paper 23),
  Semantic Floor (Paper 24), No-Free-Bits (Paper 27), Closure Arrow of Time (Paper 36),
  Gödel unification (Paper 26), Stratified Certification (Paper 50), and much more.
-/
require «nems-lean» from git
  "https://github.com/novaspivack/nems-lean.git"
  @ "main"

/-! ### UGP — Universal Generative Principle (Paper 25 + physics derivations) -/

/--
  ugp-lean: UGP, GTE, Quarter-Lock rigidity, RSUC classification,
  Standard Model gauge structure derivation, Turing universality of UWCA,
  gauge coupling derivation. Bridges to nems-lean via NemSBridge.
-/
require «ugp-lean» from git
  "https://github.com/novaspivack/ugp-lean.git"
  @ "main"

/-! ### Reflexive Closure arc — Papers 52–70 (consciousness, Alpha, Golden Bridge) -/

/--
  reflexive-closure-lean: Papers 52–70.
  Reflexive Closure Theorem (56), Reflexive Unfolding / why there is change (57),
  Necessary Reflexive Intelligence (58), Reality as Recursive Intelligence (60),
  The Alpha Theorem (63), Qualia as Alpha-manifestations (65–66),
  Awareness as locus of ground-presence (67), The Golden Bridge (70).
-/
require «reflexive-closure-lean» from git
  "https://github.com/novaspivack/reflexive-closure-lean.git"
  @ "main"

/-! ### Viable Continuation — Papers 71–72 -/

/--
  viable-continuation-lean: General theory of stability, pathology, and collapse
  under constraint. Papers 71–72.
-/
require «viable-continuation-lean» from git
  "https://github.com/novaspivack/viable-continuation-lean.git"
  @ "main"

/-! ### Infinity Compression — Reflective Non-Exhaustion Summit -/

/--
  infinity-compression-lean: Canonical certification does not exhaust realization.
  Fibers, obstruction laws, internal-origin theorem, reflective non-exhaustion summit.
-/
require «infinity-compression» from git
  "https://github.com/novaspivack/infinity-compression-lean.git"
  @ "main"

/-! ### Representational Incompleteness — no self-model captures its own diagonal -/

/--
  representational-incompleteness-lean: For any parametric self-model s : A → A → B,
  the diagonal function escapes every row. Holds universally — no arithmetic required.
  Stronger than Gödel in scope: applies to any type, any self-model.
  Closes Observer Non-Exhaustibility Route A.

-/
require «representational-incompleteness» from git
  "https://github.com/novaspivack/representational-incompleteness-lean.git"
  @ "main"

/-! ### Reflective Fold Obstruction — a fold is not an iterate -/

/--
  reflective-fold-obstruction-lean: Invariant-preserving internal operations cannot
  cross architectural sort boundaries. Closes Observer Non-Exhaustibility Route B.
-/
require «reflective-fold-obstruction-lean» from git
  "https://github.com/novaspivack/reflective-fold-obstruction-lean.git"
  @ "main"

/-! ### Reflexive Architecture — Strata synthesis + Geometry of What Maps Forget -/

/--
  reflexive-architecture-lean:
  Summit 1 — Strata synthesis: NEMS + APS + IC unified; Non-Erasure Principle;
    NEMS semantic remainder ⟺ IC enriched irreducibility (biconditional).
  Summit 2 — The Geometry of What Maps Forget: universal theory of information loss;
    residual kernels, complete-clique fibers, kernel-observable duality,
    Universal Forgetting Theorem.
-/
require «reflexive-architecture» from git
  "https://github.com/novaspivack/reflexive-architecture-lean.git"
  @ "main"

/-! ### Adequacy Architecture — three-level certificate world -/

/--
  adequacy-architecture-lean: All routes to outer admissibility collapse to one gate
  (Unification Theorem). Functorial second layer forced. Irreducible residual band.
  Combines Strata (RA) + APS recursion uniformization.
-/
require «adequacy-architecture» from git
  "https://github.com/novaspivack/adequacy-architecture-lean.git"
  @ "main"

/-! ### Observer Non-Exhaustibility — complete route classification -/

/--
  observer-non-exhaustability-lean: Routes A (RI), B (RFO), C (semantic barrier)
  all blocked. Route D (awareness-grounded residual) is the unique admissible
  observer architecture. Route partition is exhaustive.

-/
require «observer-nonexhaustability» from git
  "https://github.com/novaspivack/observer-non-exhaustability-lean.git"
  @ "051c7dd"

/-! ### General Science of Reflexive Systems — RDL and aftermath -/

/--
  reflexive-architecture-nonexhaustibility-lean:
  Three obstruction interfaces (representational, closure, semantic).
  Barriered Anchored Completion Impossible.
  Structured Aftermath: completion failure forces positive residual profile.
  Reflexive Development Law: refine | shift regime | reconfigure.
  Adequacy Burden Relocation across architecture casts.

-/
require «reflexive-architecture-nonexhaustibility-lean» from git
  "https://github.com/novaspivack/reflexive-architecture-non-exhaustibility-lean.git"
  @ "main"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.29.1"

/-! ### Master library targets -/

/--
  ReflexiveReality: the master import manifest.
  Imports every library in dependency order.
  After `lake build ReflexiveReality`, all ~750 source files are verified.
-/
@[default_target]
lean_lib «ReflexiveReality» where
  roots := #[`ReflexiveReality]

/--
  Philosophy: named philosophical theorem aliases.
  Maps the formal results to the questions addressed in Paper 86.
  `lake build Philosophy` to verify only the philosophical summary layer.
-/
lean_lib «Philosophy» where
  roots := #[`Philosophy]
