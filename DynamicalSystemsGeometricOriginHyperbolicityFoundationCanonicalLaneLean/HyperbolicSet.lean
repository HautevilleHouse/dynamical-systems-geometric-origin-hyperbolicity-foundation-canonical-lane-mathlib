import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsGeometricOriginHyperbolicityFoundationCanonicalLaneLean.DynamicalSystem

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityFoundationCanonicalLaneLean

structure HyperbolicSet (X : Type u) (DS : DynamicalSystem X) where
  invariantCompactSet : Set X
  hyperbolicSplitting : Prop
  shadowingProperty : Prop

structure HyperbolicSetEvidence (X : Type u) (DS : DynamicalSystem X) (H : HyperbolicSet X DS) where
  hyperbolicSplittingClosed : H.hyperbolicSplitting
  shadowingPropertyClosed : H.shadowingProperty

def HyperbolicSetClosed (X : Type u) (DS : DynamicalSystem X) (H : HyperbolicSet X DS) : Prop :=
  H.hyperbolicSplitting ∧ H.shadowingProperty

theorem hyperbolic_set_closed_from_evidence (X : Type u) (DS : DynamicalSystem X) (H : HyperbolicSet X DS) (E : HyperbolicSetEvidence X DS H) :
    HyperbolicSetClosed X DS H := by
  exact And.intro E.hyperbolicSplittingClosed E.shadowingPropertyClosed

end DynamicalSystemsGeometricOriginHyperbolicityFoundationCanonicalLaneLean
end HautevilleHouse