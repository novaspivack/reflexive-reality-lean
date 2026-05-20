-- FormalTheory.lean — Formally Verified Claims for the Formal Theory Portal (Paper 87)
import ReflexiveReality

namespace FormalTheory

-- ============================================================
-- Part I — The Self-Reference Engine [P26, P28]
-- ============================================================

/-- [P26] Master Fixed-Point Theorem (MFP-1): for every F in the representable class,
    there exists a fixed point p ≃ F(quote(p)). Gödel, Kleene, Löb, and Tarski are
    instances of the same SRI interface. -/
abbrev MasterDiagonalBarrier := @SelfReference.Consequences.no_total_decider

/-- [P28] Diagonal Closure Theorem: if representability class R is diagonally closed,
    every F ∈ R has a mixed fixed point. Method-level separation when R is not
    diagonally closed. -/
abbrev DiagonalClosureTheoremAndSeparation :=
  @Reflection.restricted_master_fixed_point

/-- [P11] Physical Incompleteness: no total computable law decides all record-truth
    on the diagonal-capable fragment of a self-contained universe with stable records
    and universal computation. Zero custom axioms; reduction to Mathlib halting
    undecidability. -/
abbrev PhysicalIncompleteness := @NemS.Physical.physical_incompleteness

/-- [P27] Selector-Quotient Splitting Equivalence: world-selectors are in canonical
    bijection with quotient selectors (sections of the world-type quotient map). -/
abbrev SelectorQuotientSplittingEquiv := @NemS.Framework.selectorSectionEquiv

-- ============================================================
-- Part II — NEMS Model-Theoretic Classification [P02, P04]
-- ============================================================

/-- [P79] Foundational viability iff closure compatibility: the biconditional
    governing the first selection sieve on cosmological possibility space. -/
abbrev FoundationalViabilityIffClosure :=
  @NemS.Cosmology.foundationally_viable_implies_closure_compatible

/-- [P23] Foundational Finality: no external runner can ground a self-contained
    universe without violation, redundancy, or isomorphism. -/
abbrev NoExternalRunner := @NemS.Reflexive.ReflexiveTheorySpace.foundational_finality

-- ============================================================
-- Part III — Three Independent Impossibility Engines
-- ============================================================

/-- [P51] No final self-theory: no diagonal-capable realized system can internally
    contain a total and exact theory of its own realized semantics. Reduction route. -/
abbrev NoFinalSelfTheory := @SemanticSelfDescription.no_final_self_theory

/-- [P52] Direct intrinsic no-final-self-theory: the impossibility is constructed
    directly via an anti-verdict fixed-point code, without the barrier as prior lemma. -/
abbrev DirectNoFinalSelfTheory :=
  @SemanticSelfReference.direct_no_final_self_theory

/-- [P53] Syntax cannot exhaust semantics: no syntactic internal structure can be
    total and exact for realized semantic truth. -/
abbrev SyntaxCannotExhaustSemantics :=
  @SyntaxSemantics.no_syntactic_semantic_exhaustion

/-- [RP-RI] Representational Incompleteness: for any parametric self-model
    s : A → A → B and fixed-point-free f : B → B, λa. f(s a a) is never a row of s.
    No arithmetic or computability hypothesis required. -/
abbrev RepresentationalIncompletenessSummit :=
  @RepresentationalIncompleteness.representational_incompleteness

/-- [RP-RFO] Fold is not an iterate: invariant preservation under reflexive-transitive
    closure. Architectural transitions cannot be reached by internal iteration. -/
abbrev FoldIsNotAnIterate :=
  @ReflectiveFoldObstruction.Obstruction.ReflectiveFold.reflective_architecture_fold_obstruction

/-- [RP-ONE] Observer Non-Exhaustibility: every internal reductive strategy falls
    into one of three blocked families. Route D is the unique admissible architecture. -/
abbrev ObserverNonExhaustibilitySummit :=
  @Observer.Nonexhaustability.observer_non_exhaustibility_summit

-- ============================================================
-- Part IV — The Closure and Admissibility Framework [P27, P29, P30, P50, P83--P85]
-- ============================================================

/-- [P83] Generic Outsourcing Barrier: if a task is load-bearing and not internally
    realizable, any completion witness is non-internal. NEMS trichotomy is a corollary. -/
abbrev GenericOutsourcingBarrier := @InternalitySchema.outsourcing_barrier

/-- [P83] Fundamentality as Internal Completion: a framework is foundational iff
    it is observationally categorical or has an admissible internal selector. -/
abbrev FundamentalityAsInternalCompletion :=
  @InternalitySchema.foundational_iff_internal_completion

/-- [P30] No total internal self-certifier: no diagonal-capable system admits a
    total internal self-certifier for any nontrivial extensional claim. -/
abbrev NoTotalInternalSelfCertifier := @Learning.no_total_self_certifier

/-- [P50, T50.1] Soundness of the stratified certification calculus. -/
abbrev CertificationLogicSoundness := @CertificationLogic.soundness

/-- [P85] Closure-Compatible Continuation: ClosureCompatible ∧ BurdenBearing implies
    AdmissibleContinuation. -/
abbrev ClosureCompatibleContinuation :=
  @AdmissibleContinuation.closure_compatible_continuation

/-- [P84] Monotone Cascade Theorem: in a constraint cascade, residual class R_{k+1}
    is a subset of R_k. -/
abbrev MonotoneCascadeTheorem := @SurvivorCalculus.residual_inclusion

-- ============================================================
-- Part V — Fiber Architecture and Classical Math [RP-IC, RP-RA, RP-AA]
-- ============================================================

/-- [RP-IC] Canonical certification does not exhaust realization: structured residue
    persists in fibers above the certification level. -/
abbrev CertificationDoesNotExhaustRealization :=
  @InfinityCompression.GeneralMethod.Summit.reflective_non_exhaustion_existential

/-- [RP-RA] Universal Forgetting Theorem: for any map π : Real → Bare, residual
    kernels have complete-clique fiber geometry, kernel-observable duality, and
    chromatic resolution cost. -/
abbrev UniversalForgettingTheorem :=
  @ReflexiveArchitecture.Universal.Residual.universal_fundamental_equivalence

/-- [RP-RA] Non-Erasure Principle: NEMS semantic remainder iff IC enriched
    irreducibility. Representation does not erase the represented. -/
abbrev RepresentationDoesNotEraseTheRepresented :=
  @ReflexiveArchitecture.Bridge.universal_nonerasure_law

/-- [RP-AA] Admissibility Unification: all routes to outer admissibility collapse
    to one gate. Three-level structure (gate, second layer, residual band) is forced. -/
abbrev AdmissibilityUnificationTheorem :=
  @AdequacyArchitecture.Instances.program1FiniteGAdm_iff_program1AdmissibilityPullbackDisplayWitness

-- ============================================================
-- Part VI — Semantic Type Obstruction [RP-RFO, SPEC_020]
-- ============================================================

/-- [RP-RFO, SPEC_020] Turing-completeness does not imply semantic-type completeness.
    The type-reachability preorder is nontrivial. -/
abbrev SemanticTypePreorderNontrivial :=
  @ReflectiveFoldObstruction.SemanticType.semanticType_preorder_nontrivial

/-- [RP-RFO, SPEC_020] Self-modeling depth obstruction: a depth-n system cannot
    iterate to depth n+1. -/
abbrev SelfModelDepthObstruction :=
  @ReflectiveFoldObstruction.SemanticType.Instances.SelfModelDepth.selfModelDepth_obstruction

/-- [RP-RFO, SPEC_020] Adjudication type obstruction: total-effective adjudication
    cannot iterate to non-total-effective type. -/
abbrev AdjudicationTypeObstruction :=
  @ReflectiveFoldObstruction.SemanticType.Instances.AdjudicationType.adjudication_semantic_obstruction

/-- [RP-RFO, SPEC_020] RI diagonal as semantic type mismatch: the RI diagonal
    exclusion is a type mismatch, not a computational insufficiency. -/
abbrev RISemanticTypeMismatch :=
  @ReflectiveFoldObstruction.SemanticType.Instances.RIDiagonal.RI_semantic_type_mismatch

/-- [RP-RFO, SPEC_020] Simulation vs realization iff under section: type reachability
    is equivalent between simulation and pullback only when a section with backward
    step-lifting exists. -/
abbrev SimulationIsNotRealization :=
  @ReflectiveFoldObstruction.SemanticType.typeReachable_pullback_iff_of_section

/-- [RP-RFO, SPEC_020] Type gap pulls back along simulation: gaps from the codomain
    typing propagate to any simulating dynamics. -/
abbrev TypeGapPullsBackAlongSimulation :=
  @ReflectiveFoldObstruction.SemanticType.typeGap_simulation_pullback

/-- [RP-RFO, SPEC_020] Complementary tag gap under one-sided preservation. -/
abbrev ComplementaryTagGap :=
  @ReflectiveFoldObstruction.SemanticType.typeGap_of_complementary_tags

/-- [RP-RFO, SPEC_020] Seed-local hull excludes ¬P-tag: the ¬P-tag never appears
    on the hull from P-seeds under one-sided preservation. -/
abbrev SeedLocalHullExclusion :=
  @ReflectiveFoldObstruction.SemanticType.false_tag_not_mem_tagsOnHull_of_preserved_seed

-- ============================================================
-- Part VII — Application Consequences [P36, P37, P38, P43, P47, P48, P57, P59]
-- ============================================================

/-- [P57] Change is structurally necessary: no terminal reflexive completion. -/
abbrev ChangeIsStructurallyNecessary :=
  @ReflexiveUnfolding.no_terminal_reflexive_completion

/-- [P59] No intelligence without frontier: nontrivial intelligence requires a live
    semantic frontier. -/
abbrev NoIntelligenceWithoutFrontier :=
  @CalculusOfIntelligence.no_intelligence_without_frontier

/-- [P36] Arrow of time from stable records: structural irreversibility follows from
    record growth monotonicity. -/
abbrev ArrowOfTimeFromClosure := @ArrowOfTime.closure_arrow_theorem

/-- [P47] No spooky-to-signal compiler: EPR-style correlations cannot be
    total-effectively upgraded to controllable signaling. -/
abbrev NoSpookyToSignalCompiler :=
  @FTLConstraints.no_spooky_to_signal_compiler

/-- [P48] Holography is a closure theorem; no total-effective boundary decoder
    for nontrivial bulk predicates on diagonal-capable fragments. -/
abbrev HolographyClosureTheorem :=
  @HolographyUnderClosure.no_total_effective_boundary_decoder

/-- [RP-RAN] Reflexive Development Law: response to standing residual is lawfully
    one of refinement, regime shift, or bookkeeping reconfiguration. -/
abbrev ReflexiveDevelopmentLaw :=
  @StructuredNonexhaustibility.reflexive_development_law_standing_trilemma

/-- [RP-RAN] Barriered anchored completion impossible. -/
abbrev AnchoredCompletionImpossible :=
  @StructuredNonexhaustibility.barriered_architecture_admits_no_true_honest_anchored_internal_completion

end FormalTheory
