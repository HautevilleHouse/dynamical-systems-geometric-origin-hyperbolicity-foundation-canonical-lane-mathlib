import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityFoundationCanonicalLaneLean

structure HyperbolicSetSetup where
  manifold : Type u
  topology : TopologicalSpace manifold
  diffeomorphism : manifold → manifold
  invariantSet : Set manifold
  tangentBundle : Type v
  hyperbolicSplitting : Type w
  dim : Nat
  smoothStructure : Prop
  diffeomorphismSmooth : Prop
  invariantSetClosed : Prop
  smoothStructureTerm : smoothStructure
  diffeomorphismSmoothTerm : diffeomorphismSmooth
  invariantSetClosedTerm : invariantSetClosed

structure HyperbolicSetPackage where
  setup : HyperbolicSetSetup
  expandingSubbundle : Prop
  contractingSubbundle : Prop
  dominance : Prop
  shadowingProperty : Prop
  expandingSubbundleTerm : expandingSubbundle
  contractingSubbundleTerm : contractingSubbundle
  dominanceTerm : dominance
  shadowingPropertyTerm : shadowingProperty

structure HyperbolicSetEvidence (P : HyperbolicSetPackage) where
  expandingSubbundleClosed : P.expandingSubbundle
  contractingSubbundleClosed : P.contractingSubbundle
  dominanceClosed : P.dominance
  shadowingPropertyClosed : P.shadowingProperty

def HyperbolicSetClosed (P : HyperbolicSetPackage) : Prop :=
  P.expandingSubbundle ∧ P.contractingSubbundle ∧ P.dominance ∧ P.shadowingProperty

theorem hyperbolic_set_closed_from_evidence (P : HyperbolicSetPackage)
    (E : HyperbolicSetEvidence P) : HyperbolicSetClosed P := by
  exact And.intro E.expandingSubbundleClosed
    (And.intro E.contractingSubbundleClosed
      (And.intro E.dominanceClosed E.shadowingPropertyClosed))

end DynamicalSystemsGeometricOriginHyperbolicityFoundationCanonicalLaneLean
end HautevilleHouse
