import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityFoundationCanonicalLaneLean

structure HyperbolicManifold where
  underlyingManifold : Type
  riemannianMetric : Type
  negativeCurvatureBoundedBelow : Prop
  geodesicFlowComplete : Prop
  fundamentalGroupGrowth : Prop

structure HyperbolicManifoldEvidence (M : HyperbolicManifold) where
  negativeCurvatureBoundedBelowClosed : M.negativeCurvatureBoundedBelow
  geodesicFlowCompleteClosed : M.geodesicFlowComplete
  fundamentalGroupGrowthClosed : M.fundamentalGroupGrowth

def HyperbolicManifoldClosed (M : HyperbolicManifold) : Prop :=
  M.negativeCurvatureBoundedBelow ∧ M.geodesicFlowComplete ∧ M.fundamentalGroupGrowth

theorem hyperbolic_manifold_closed_from_evidence
    (M : HyperbolicManifold) (E : HyperbolicManifoldEvidence M) :
    HyperbolicManifoldClosed M := by
  exact And.intro E.negativeCurvatureBoundedBelowClosed
    (And.intro E.geodesicFlowCompleteClosed E.fundamentalGroupGrowthClosed)

end DynamicalSystemsGeometricOriginHyperbolicityFoundationCanonicalLaneLean
end HautevilleHouse
