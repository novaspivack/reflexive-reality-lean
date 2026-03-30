/-!
# ConsciousnessMind.lean — Formally Verified Claims in the Theory of Mind Portal

This file provides named aliases for the key theorems underlying each major
claim in Paper C5 ("Consciousness, Phenomenology, and Mind", Paper 92 of the
Reflexive Reality suite, Nova Spivack, 2026).

Every `theorem` or `def` below is either:
- a direct alias for an existing proved theorem in one of the component libraries, or
- a brief composition of such theorems

**Zero sorry. Zero admit.**

Running `lake build ConsciousnessMind` machine-verifies that every claim
in Paper C5 marked with a citation has a corresponding formal proof.

## How to verify a specific claim

```lean
#check ConsciousnessMind.KnownQualiaOnLedger
#check ConsciousnessMind.HardProblemDissolvedTheorem
#check ConsciousnessMind.AwarenessIsNotAnObject
-- etc.
```

Or run `lake build ConsciousnessMind` to verify the entire portal.

## Source papers

- [P55] Qualia and the Semantic Ledger: QualiaLedger library (reflexive-closure-lean)
- [P65] Qualia as Alpha-Grounded Semantic Content: QualiaAlphaGrounded library
- [P66] Phenomenal Presence and Ground-Manifestation: GroundManifestation library
- [P67] Awareness as the Locus of Ground-Presence: AwarenessGround library
- [P68] Alpha Is Not Null: AlphaNonNull library
- [P69] Reality, Existence, and Awareness: UnifiedPresence library
- [P70] The Golden Bridge: GoldenBridge library
- [P51] No Final Self-Theory: SemanticSelfDescription library (nems-lean)
- [P54] Observer Non-Self-Exhaustion: ReflexiveClosure library (reflexive-closure-lean)
- [P56] Reflexive Closure Theorem: ReflexiveClosure library
- [RP-RI] Representational Incompleteness: RepresentationalIncompleteness library
- [RP-RFO] Reflective Fold Obstruction: ReflectiveFoldObstruction library
- [RP-ONE] Observer Non-Exhaustibility: Observer.Nonexhaustability library

-/

import ReflexiveReality

namespace ConsciousnessMind

-- ============================================================
-- Part I — Qualia and the Semantic Ledger [P55]
-- ============================================================

/-- [P55, T55.5] Known qualia (qualitative content that a subject is aware of,
    can report, discriminate, remember, or self-model) must appear in the
    semantic ledger as irreducible semantic content. They cannot be reduced to
    purely syntactic structure. -/
theorem KnownQualiaOnLedger := @QualiaLedger.known_qualia_ledger_theorem

/-- [P55, Cor 55.6] The hard problem of consciousness, construed as demanding
    that pure syntax or computation generate qualia from outside the semantic
    ledger, is a category mistake. Qualia are already on the ledger. -/
theorem HardProblemDissolvedTheorem := @QualiaLedger.hard_problem_category_error

/-- [P53] No purely syntactic internal structure can totally and exactly exhaust
    the realized semantics of a sufficiently expressive reflexive system. -/
theorem SyntaxCannotExhaustSemantics :=
  @SyntaxSemantics.no_syntactic_semantic_exhaustion

-- ============================================================
-- Part II — Alpha-grounding and manifestation [P65, P66]
-- ============================================================

/-- [P65, Layer A — proved safe theorem] Known qualia are irreducible semantic
    content whose actuality is Alpha-grounded. This is the fully proved result
    without additional bridge principles. -/
theorem QualiaAreAlphaGrounded := @QualiaAlphaGrounded.alpha_grounded_qualia

/-- [P66] Known qualia are Alpha-manifestations: they are in ground-mode with
    phenomenal presence. The manifestation bridge theorem. -/
theorem QualiaAreAlphaManifestations :=
  @GroundManifestation.qualitative_manifestation

/-- [P66, non-collapse] Not everything that is Alpha-grounded is phenomenally
    manifested. Qualia are a typed subset of Alpha-grounded reality. -/
theorem NotEverythingRealIsPhenomenal := @GroundManifestation.non_collapse

-- ============================================================
-- Part III — Awareness as locus [P67]
-- ============================================================

/-- [P67, T67.1] Alpha-manifestation implies presence at an awareness-locus.
    Wherever there is phenomenal presence, there is a locus at which it is
    present. -/
theorem AlphaManifestationImpliesAwarenessLocus :=
  @AwarenessGround.awareness_locus_existence

/-- [P67, T67.3] The awareness-locus is not object-level content. Searching for
    consciousness as one more item in the physical world is a category error. -/
theorem AwarenessIsNotAnObject :=
  @AwarenessGround.awareness_not_object_level

/-- [P67] Seeking the source of consciousness as a same-level worldly object is
    a category error: the locus is the condition of presence, not one more thing
    among those present. -/
theorem SearchingForConsciousnessInBrainIsACategoryError :=
  @AwarenessGround.category_error_for_object_search

/-- [P67, T67.6--7] The realized awareness-locus is self-illuminating. Awareness
    of awareness does not require a second same-level observer. -/
theorem AwarenessIsSelfIlluminating := @AwarenessGround.self_illuminating

-- ============================================================
-- Part IV — Alpha: not null, not sterile, not inert [P68]
-- ============================================================

/-- [P68] Alpha is object-empty but not null, not semantically sterile, and not
    inert. Object-emptiness does not entail nullity. -/
theorem AlphaIsNonNull := @AlphaNonNull.alpha_not_null_thm

-- ============================================================
-- Part V — Three aspects, one fact [P69, P70]
-- ============================================================

/-- [P69.4] Ground, Articulation, and Manifestation-in-Awareness are three
    coordinated aspects of one primordial ontological fact. -/
theorem ThreeAspectCoordination := @UnifiedPresence.three_aspect_synthesis

/-- [P70] The Golden Bridge: the final integrated theorem. Ground, Articulation,
    and Manifestation-in-Awareness are coordinated irreducible aspects of one
    primordial ontological fact. Dissolves the hard problem, the object-search
    for consciousness, Alpha-as-nullity, syntax-only exhaustivism, and
    world/awareness alienation. -/
theorem TheGoldenBridge := @GoldenBridge.golden_bridge_theorem

-- ============================================================
-- Part VI — Observer non-self-exhaustion [P51, P54]
-- ============================================================

/-- [P51] No sufficiently expressive reflexive system can internally contain a
    final, total, exact theory of its own realized semantics. -/
theorem NoFinalSelfTheory := @SemanticSelfDescription.no_final_self_theory

/-- [P54] No reflexive observer can internally exhaust itself as a complete
    semantic object. -/
theorem ObserverCannotSelfExhaust :=
  @ReflexiveClosure.no_self_exhausting_observer

/-- [P56] Reflexive closure is possible without collapse: a reflexive system may
    close over itself but cannot coincide with its own complete internal semantic
    image. The minimal stable closure form is ternary. -/
theorem ClosureWithoutCollapse := @ReflexiveClosure.closure_without_collapse

/-- [P56] The minimal stable closure form (self-return, partial articulation,
    irreducible reflexive distance) is ternary. -/
theorem MinimalTernaryClosureForm :=
  @ReflexiveClosure.minimal_ternary_closure_form

-- ============================================================
-- Part VII — Representational and fold barriers [RP-RI, RP-RFO]
-- ============================================================

/-- [RP-RI] For any parametric self-model s : A → A → B and any fixed-point-free
    f : B → B, the diagonal function λa. f(s a a) is never a row of s. Scaling a
    self-model does not close this structural blind spot. -/
theorem RepresentationalIncompletenessSummit :=
  @RepresentationalIncompleteness.representational_incompleteness

/-- [RP-RFO] A genuine fold (architecture-changing transition) is not an iterate.
    If an invariant I is preserved along every primitive step, it is preserved
    along the full reflexive-transitive closure. You cannot reach the
    awareness-locus type by iterating within a type-bounded system. -/
theorem FoldIsNotAnIterate := @ReflectiveFoldObstruction.fold_obstruction

/-- [RP-RFO, SPEC_020] The type reachability preorder on semantic types is
    nontrivial: there exist pairs (T, T') with no connecting internal chain,
    regardless of Turing power. Turing-completeness does not imply semantic-type
    completeness. -/
theorem SemanticTypePreorderNontrivial :=
  @ReflectiveFoldObstruction.SemanticType.semanticType_preorder_nontrivial

/-- [RP-RFO, SPEC_020] Simulation (forward projection) does not imply realization.
    Type reachability is equivalent between a simulation and its pullback only
    when the simulation admits a section with backward step-lifting. Without such
    a section, a Turing-complete system can simulate a deeper type without
    instantiating it. -/
theorem SimulationIsNotRealization :=
  @ReflectiveFoldObstruction.SemanticType.typeReachable_pullback_iff_of_section

-- ============================================================
-- Part VIII — Observer non-exhaustibility [RP-ONE]
-- ============================================================

/-- [RP-ONE] Every internal reductive strategy for exhausting an observer falls
    into one of three blocked families (RI, RFO, semantic barrier). Route D
    (awareness-grounded residual) is the only provably admissible observer
    architecture. -/
theorem ObserverNonExhaustibilitySummit :=
  @Observer.Nonexhaustability.observer_non_exhaustibility_summit

end ConsciousnessMind
