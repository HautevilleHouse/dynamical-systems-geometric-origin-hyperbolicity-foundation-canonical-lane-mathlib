import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.NormedSpace.BanachSteinhaus

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityFoundation

structure HyperbolicMetricSpacePackage where
  carrier : Type u
  metric : carrier → carrier → ℝ
  negativeCurvatureBound : Prop
  geodesicSpaceProperty : Prop
  boundedDistortionControl : Prop

structure HyperbolicMetricSpaceEvidence (H : HyperbolicMetricSpacePackage) where
  negativeCurvatureBoundClosed : H.negativeCurvatureBound
  geodesicSpacePropertyClosed : H.geodesicSpaceProperty
  boundedDistortionControlClosed : H.boundedDistortionControl

def HyperbolicMetricSpaceClosed (H : HyperbolicMetricSpacePackage) : Prop :=
  H.negativeCurvatureBound ∧ H.geodesicSpaceProperty ∧ H.boundedDistortionControl

theorem hyperbolic_metric_space_closed_from_evidence (H : HyperbolicMetricSpacePackage)
    (E : HyperbolicMetricSpaceEvidence H) : HyperbolicMetricSpaceClosed H := by
  exact And.intro E.negativeCurvatureBoundClosed (And.intro E.geodesicSpacePropertyClosed E.boundedDistortionControlClosed)

end DynamicalSystemsGeometricOriginHyperbolicityFoundation
end HautevilleHouse