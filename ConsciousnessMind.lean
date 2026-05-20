-- ConsciousnessMind.lean — Formally Verified Claims in the Theory of Mind Portal (Paper 92)
import QualiaLedger
import QualiaAlphaGrounded
import GroundManifestation
import AwarenessGround
import AlphaNonNull
import UnifiedPresence
import GoldenBridge
import SemanticSelfDescription
import ReflexiveClosure
import ReflectiveFoldObstruction

namespace ConsciousnessMind

-- ============================================================
-- Part I — Qualia and the Semantic Ledger [P55]
-- ============================================================

/-- [P55, T55.5] Known qualia (qualitative content that a subject is aware of,
    can report, discriminate, remember, or self-model) must appear in the
    semantic ledger as irreducible semantic content. They cannot be reduced to
    purely syntactic structure. -/
abbrev KnownQualiaOnLedger := @QualiaLedger.known_qualia_ledger_theorem

/-- [P55, Cor 55.6] The hard problem of consciousness, construed as demanding
    that pure syntax or computation generate qualia from outside the semantic
    ledger, is a category mistake. Qualia are already on the ledger. -/
abbrev HardProblemDissolvedTheorem := @QualiaLedger.hard_problem_category_error

/-- [P53] No purely syntactic internal structure can totally and exactly exhaust
    the realized semantics of a sufficiently expressive reflexive system. -/
abbrev SyntaxCannotExhaustSemantics :=
  @SyntaxSemantics.no_syntactic_semantic_exhaustion

-- ============================================================
-- Part II — Alpha-grounding and manifestation [P65, P66]
-- ============================================================

/-- [P65, Layer A — proved safe theorem] Known qualia are irreducible semantic
    content whose actuality is Alpha-grounded. This is the fully proved result
    without additional bridge principles. -/
abbrev QualiaAreAlphaGrounded := @QualiaAlphaGrounded.alpha_grounded_qualia

/-- [P66] Known qualia are Alpha-manifestations: they are in ground-mode with
    phenomenal presence. The manifestation bridge theorem. -/
abbrev QualiaAreAlphaManifestations :=
  @GroundManifestation.qualitative_manifestation

/-- [P66, non-collapse] Not everything that is Alpha-grounded is phenomenally
    manifested. Qualia are a typed subset of Alpha-grounded reality. -/
abbrev NotEverythingRealIsPhenomenal := @GroundManifestation.non_collapse

-- ============================================================
-- Part III — Awareness as locus [P67]
-- ============================================================

/-- [P67, T67.1] Alpha-manifestation implies presence at an awareness-locus.
    Wherever there is phenomenal presence, there is a locus at which it is
    present. -/
abbrev AlphaManifestationImpliesAwarenessLocus :=
  @AwarenessGround.awareness_locus_existence

/-- [P67, T67.3] The awareness-locus is not object-level content. Searching for
    consciousness as one more item in the physical world is a category error. -/
abbrev AwarenessIsNotAnObject :=
  @AwarenessGround.awareness_not_object_level

/-- [P67] Seeking the source of consciousness as a same-level worldly object is
    a category error: the locus is the condition of presence, not one more thing
    among those present. -/
abbrev SearchingForConsciousnessInBrainIsACategoryError :=
  @AwarenessGround.category_error_for_object_search

/-- [P67, T67.6--7] The realized awareness-locus is self-illuminating. Awareness
    of awareness does not require a second same-level observer. -/
abbrev AwarenessIsSelfIlluminating := @AwarenessGround.self_illuminating

-- ============================================================
-- Part IV — Alpha: not null, not sterile, not inert [P68]
-- ============================================================

/-- [P68] Alpha is object-empty but not null, not semantically sterile, and not
    inert. Object-emptiness does not entail nullity. -/
abbrev AlphaIsNonNull := @AlphaNonNull.alpha_not_null_thm

-- ============================================================
-- Part V — Three aspects, one fact [P69, P70]
-- ============================================================

/-- [P69.4] Ground, Articulation, and Manifestation-in-Awareness are three
    coordinated aspects of one primordial ontological fact. -/
abbrev ThreeAspectCoordination := @UnifiedPresence.three_aspect_synthesis

/-- [P70] The Golden Bridge: the final integrated theorem. Ground, Articulation,
    and Manifestation-in-Awareness are coordinated irreducible aspects of one
    primordial ontological fact. Dissolves the hard problem, the object-search
    for consciousness, Alpha-as-nullity, syntax-only exhaustivism, and
    world/awareness alienation. -/
abbrev TheGoldenBridge := @GoldenBridge.golden_bridge_theorem

-- ============================================================
-- Part VI — Observer non-self-exhaustion [P51, P54]
-- ============================================================

/-- [P51] No sufficiently expressive reflexive system can internally contain a
    final, total, exact theory of its own realized semantics. -/
abbrev NoFinalSelfTheory := @SemanticSelfDescription.no_final_self_theory

/-- [P54] No reflexive observer can internally exhaust itself as a complete
    semantic object. -/
abbrev ObserverCannotSelfExhaust :=
  @ReflexiveClosure.no_self_exhausting_observer

/-- [P56] Reflexive closure is possible without collapse: a reflexive system may
    close over itself but cannot coincide with its own complete internal semantic
    image. The minimal stable closure form is ternary. -/
abbrev ClosureWithoutCollapse := @ReflexiveClosure.closure_without_collapse

/-- [P56] The minimal stable closure form (self-return, partial articulation,
    irreducible reflexive distance) is ternary. -/
abbrev MinimalTernaryClosureForm :=
  @ReflexiveClosure.minimal_ternary_closure_form

-- ============================================================
-- Part VII — Representational and fold barriers [RP-RI, RP-RFO]
-- ============================================================

/-- [RP-RI] For any parametric self-model s : A → A → B and any fixed-point-free
    f : B → B, the diagonal function λa. f(s a a) is never a row of s. Scaling a
    self-model does not close this structural blind spot. -/
abbrev RepresentationalIncompletenessSummit :=
  @RepresentationalIncompleteness.representational_incompleteness

/-- [RP-RFO] A genuine fold (architecture-changing transition) is not an iterate.
    If an invariant I is preserved along every primitive step, it is preserved
    along the full reflexive-transitive closure. You cannot reach the
    awareness-locus type by iterating within a type-bounded system. -/
abbrev FoldIsNotAnIterate := @ReflectiveFoldObstruction.fold_obstruction

/-- [RP-RFO, SPEC_020] The type reachability preorder on semantic types is
    nontrivial: there exist pairs (T, T') with no connecting internal chain,
    regardless of Turing power. Turing-completeness does not imply semantic-type
    completeness. -/
abbrev SemanticTypePreorderNontrivial :=
  @ReflectiveFoldObstruction.SemanticType.semanticType_preorder_nontrivial

/-- [RP-RFO, SPEC_020] Simulation (forward projection) does not imply realization.
    Type reachability is equivalent between a simulation and its pullback only
    when the simulation admits a section with backward step-lifting. Without such
    a section, a Turing-complete system can simulate a deeper type without
    instantiating it. -/
abbrev SimulationIsNotRealization :=
  @ReflectiveFoldObstruction.SemanticType.typeReachable_pullback_iff_of_section

-- ============================================================
-- Part VIII — Observer non-exhaustibility [RP-ONE]
-- ============================================================

/-- [RP-ONE] Every internal reductive strategy for exhausting an observer falls
    into one of three blocked families (RI, RFO, semantic barrier). Route D
    (awareness-grounded residual) is the only provably admissible observer
    architecture. -/
abbrev ObserverNonExhaustibilitySummit :=
  @Observer.Nonexhaustability.observer_non_exhaustibility_summit

-- ============================================================
-- Part IX — Sentience / SIAM [P73]
-- ============================================================

/-- [P73] Feedforward controllers cannot satisfy OSIAM: absence of recursive
    self-update witness is structurally incompatible with operational sentience. -/
theorem FeedforwardDoesNotImplyOSIAM {F : NemS.Framework} (σ : Sentience.Core.ProcessWindow F)
    (h : Sentience.Classification.IsFeedforward σ) : ¬ Sentience.Core.OSIAM σ :=
  Sentience.Classification.feedforward_not_OSIAM σ h

-- ============================================================
-- Part X — Phenomenology survivor / uniqueness [P74, P75]
-- ============================================================

/-- [P74, P75] Survivor theorem: every admissible theory candidate is equivalent
    to the Paper 74 six-part phenomenology framework. -/
theorem PhenomenologySurvivorTheorem (c : Phenomenology.Meta.TheoryCandidate)
    (hAdm : Phenomenology.Meta.Admissible c) (hSurv : Phenomenology.Meta.Survives c) :
    Phenomenology.Meta.Equiv c Phenomenology.Meta.paper74AsCandidate :=
  Phenomenology.Meta.survivor_theorem c hAdm hSurv

end ConsciousnessMind
