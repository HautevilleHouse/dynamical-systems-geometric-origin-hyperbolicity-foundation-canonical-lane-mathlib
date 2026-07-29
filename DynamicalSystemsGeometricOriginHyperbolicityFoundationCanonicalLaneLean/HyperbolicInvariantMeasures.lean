import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsGeometricOriginHyperbolicityFoundationCanonicalLaneLean.DynamicalSystemObject

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityFoundationCanonicalLaneLean

structure InvariantMeasurePackage {M : DynamicalSystem} {f : M.carrier → M.carrier} (H : HyperbolicSet M f) where
  measureExists : Prop
  ergodicDecomposition : Prop
  srBProperty : Prop

structure InvariantMeasureEvidence {M : DynamicalSystem} {f : M.carrier → M.carrier} {H : HyperbolicSet M f}
  (I : InvariantMeasurePackage H) where
  measureExistsClosed : I.measureExists
  ergodicDecompositionClosed : I.ergodicDecomposition
  srBPropertyClosed : I.srBProperty

def InvariantMeasureClosed {M : DynamicalSystem} {f : M.carrier → M.carrier} {H : HyperbolicSet M f}
  (I : InvariantMeasurePackage H) : Prop :=
  I.measureExists ∧ I.ergodicDecomposition ∧ I.srBProperty

theorem invariant_measure_closed_from_evidence {M : DynamicalSystem} {f : M.carrier → M.carrier}
  {H : HyperbolicSet M f} (I : InvariantMeasurePackage H) (E : InvariantMeasureEvidence I) :
  InvariantMeasureClosed I := by
  exact And.intro E.measureExistsClosed (And.intro E.ergodicDecompositionClosed E.srBPropertyClosed)

end DynamicalSystemsGeometricOriginHyperbolicityFoundationCanonicalLaneLean
end HautevilleHouse