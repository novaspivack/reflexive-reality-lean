/-!
# ReflexiveReality — Master Import Manifest

This file imports every library in the Reflexive Reality research program
in dependency order. Successfully elaborating this file means every theorem
in every paper cited in Paper 86 ("Reflexive Reality: A Philosophical
Exposition") has been machine-verified by Lean 4.

## The complete program

After `lake build ReflexiveReality`, Lean has verified:
- ~750 source files across 13 libraries
- Zero `sorry` in any theorem
- The complete chain from closure axioms to physical laws to consciousness to ground

## Dependency order

Libraries are imported bottom-up: foundations first, then the arcs that build on them.
-/

-- ============================================================
-- Tier 0: APS infrastructure (no program deps, mathlib only)
-- ============================================================

-- Rice's theorem, halting undecidability (dep of ugp-lean)
import APS

-- APS recursion / uniformization (dep of adequacy-architecture)
import APSUndecidabilityInterfaces
import APSRecursionCompositionUniformity
import APSUniformization

-- ============================================================
-- Tier 1: Core spines (dep on Tier 0 or mathlib only)
-- ============================================================

-- NEMS Papers 1–51: closure, diagonal barriers, physical incompleteness,
-- foundational finality, semantic floor, no-free-bits, arrow of time,
-- Gödel unification, Standard Model constraints, viable continuation structure
import NemS
import Closure
import SelfReference
import Reflection
import SelectorStrength
import Sieve
import SemanticSelfDescription
import ArrowOfTime
import RefinementFlow
import RecordEntropy
import ErrorCorrectingClosure
import LawCalibration
import SemanticNonlocality
import CausalNonlocality
import FTLConstraints
import HolographyUnderClosure
import CertificationLogic
import Hypercomputation
import GPTClosure
import InstitutionalEpistemics
import EpistemicAgency
import InternalitySchema
import SurvivorCalculus
import AdmissibleContinuation
import ForcedAdjudication
import StructuralNonExhaustibility

-- UGP Papers (Paper 25 + physics derivations):
-- Universal Generative Principle, GTE, Quarter-Lock, RSUC,
-- Standard Model gauge structure, Turing universality of UWCA,
-- gauge coupling derivation, NemS bridge
import UgpLean

-- Viable Continuation (Papers 71–72)
import ViableContinuation

-- Representational Incompleteness:
-- No parametric self-model captures its own diagonal.
-- Holds universally — no arithmetic or computability required.
-- Closes Observer Non-Exhaustibility Route A.
import RepresentationalIncompleteness

-- ============================================================
-- Tier 2: Reflexive Closure arc (Papers 52–70)
-- Deps: nems-lean
-- ============================================================

-- Paper 52: Direct self-semantic fixed points
import SemanticSelfReference
-- Paper 53: Syntax cannot exhaust semantics
import SyntaxSemantics
-- Paper 55: Qualia and the Semantic Ledger
import QualiaLedger
-- Paper 56: The Reflexive Closure Theorem (closure without collapse)
import ReflexiveClosure
-- Paper 57: The Reflexive Unfolding Theorem (why there is change)
import ReflexiveUnfolding
-- Paper 58: Necessary Reflexive Intelligence (not random, not robotic)
import NecessaryReflexiveIntelligence
-- Paper 59: A Calculus of Intelligence
import CalculusOfIntelligence
-- Paper 60: Reality as Recursive Intelligence
import RealityAsRecursiveIntelligence
-- Paper 61: Ghost Collapse and Ledger Finality
import GhostCollapse
-- Paper 62: No Self-Actualizing Ledger
import LedgerGround
-- Paper 63: The Alpha Theorem (necessary pre-categorial ground)
import Alpha
-- Paper 64: Primordial Ground and Grounded Existence
import GroundedExistence
-- Paper 65: Qualia as Alpha-Grounded Semantic Content
import QualiaAlphaGrounded
-- Paper 66: Phenomenal Presence and Ground-Manifestation
import GroundManifestation
-- Paper 67: Awareness as the Locus of Ground-Presence
import AwarenessGround
-- Paper 68: Alpha Is Not Null
import AlphaNonNull
-- Paper 69: Reality, Existence, and Awareness (three-aspect synthesis)
import UnifiedPresence
-- Paper 70: The Golden Bridge
import GoldenBridge

-- Reflective Fold Obstruction:
-- A fold is not an iterate. Invariant-preserving internal closure
-- cannot cross architectural sort boundaries.
-- Closes Observer Non-Exhaustibility Route B.
import ReflectiveFoldObstruction

-- ============================================================
-- Tier 3: Infinity Compression (no NEMS dep, mathlib only)
-- ============================================================

-- Canonical certification does not exhaust realization.
-- Fibers, obstruction laws, internal-origin theorem,
-- reflective non-exhaustion summit.
import InfinityCompression

-- ============================================================
-- Tier 4: Synthesis arcs (deps: Tier 1–3)
-- ============================================================

-- Observer Non-Exhaustibility:
-- Routes A (RI), B (RFO), C (semantic barrier) all blocked.
-- Route D (awareness-grounded residual) is the unique admissible
-- observer architecture. Route partition is exhaustive.
import Observer.Nonexhaustability

-- Reflexive Architecture — two summits:
-- Summit 1: Strata synthesis (NEMS + APS + IC unified; Non-Erasure biconditional)
-- Summit 2: Geometry of What Maps Forget (universal theory of information loss;
--           residual kernels, complete-clique fibers, Universal Forgetting Theorem)
import ReflexiveArchitecture

-- Adequacy Architecture:
-- All routes to outer admissibility collapse to one gate (Unification Theorem).
-- Functorial second layer forced. Irreducible residual band.
import AdequacyArchitecture

-- General Science of Reflexive Systems:
-- Three obstruction interfaces. Barriered Anchored Completion Impossible.
-- Structured Aftermath. Reflexive Development Law (refine | shift regime | reconfigure).
import ReflexiveArchitectureNonexhaustibilityLean

-- ============================================================
-- Portal modules: audience-specific alias surfaces
-- ============================================================

-- Paper 86 (Philosophy portal): alias surface for philosophical claims
import Philosophy

-- Paper 87 (Formal Theory portal): alias surface for formal-theory claims
import FormalTheory

-- Paper 88 (Physics portal): alias surface for physics claims
import Physics

-- Paper 89 (AI/Agents portal): alias surface for AI/agents claims
import AIAgents

-- Paper 92 (Consciousness, Phenomenology, and Mind portal):
-- alias surface for consciousness, qualia, awareness, and phenomenology claims
import ConsciousnessMind
