import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsGeometricOriginHyperbolicityFoundationCanonicalLaneLean.DynamicalSystem

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityFoundationCanonicalLaneLean

structure StableManifoldTheorem (X : Type u) (DS : DynamicalSystem X) where
  hyperbolicFixedPoint : Prop
  localStableManifold : Prop
  localUnstableManifold : Prop
  persistenceUnderPerturbation : Prop

structure StableManifoldEvidence (X : Type u) (DS : DynamicalSystem X) (S : StableManifoldTheorem X DS) where
  localStableManifoldClosed : S.localStableManifold
  localUnstableManifoldClosed : S.localUnstableManifold

def StableManifoldClosed (X : Type u) (DS : DynamicalSystem X) (S : StableManifoldTheorem X DS) : Prop :=
  S.localStableManifold ∧ S.localUnstableManifold

theorem stable_manifold_closed_from_evidence (X : Type u) (DS : DynamicalSystem X) (S : StableManifoldTheorem X DS) (E : StableManifoldEvidence X DS S) :
    StableManifoldClosed X DS S := by
  exact And.intro E.localStableManifoldClosed E.localUnstableManifoldClosed

end DynamicalSystemsGeometricOriginHyperbolicityFoundationCanonicalLaneLean
end HautevilleHouse