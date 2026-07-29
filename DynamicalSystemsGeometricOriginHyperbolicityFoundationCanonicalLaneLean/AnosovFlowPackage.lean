import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsGeometricOriginHyperbolicityFoundationCanonicalLaneLean.DynamicalSystemObject

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityFoundationCanonicalLaneLean

structure AnosovFlowPackage (M : DynamicalSystem) where
  flow : ℝ × M.carrier → M.carrier
  hyperbolicSplitting : Prop
  strongStableDistribution : Prop
  strongUnstableDistribution : Prop

structure AnosovFlowEvidence (M : DynamicalSystem) (A : AnosovFlowPackage M) where
  hyperbolicSplittingClosed : A.hyperbolicSplitting
  strongStableDistributionClosed : A.strongStableDistribution
  strongUnstableDistributionClosed : A.strongUnstableDistribution

def AnosovFlowClosed (M : DynamicalSystem) (A : AnosovFlowPackage M) : Prop :=
  A.hyperbolicSplitting ∧ A.strongStableDistribution ∧ A.strongUnstableDistribution

theorem anosov_flow_closed_from_evidence (M : DynamicalSystem) (A : AnosovFlowPackage M)
  (E : AnosovFlowEvidence M A) : AnosovFlowClosed M A := by
  exact And.intro E.hyperbolicSplittingClosed (And.intro E.strongStableDistributionClosed E.strongUnstableDistributionClosed)

end DynamicalSystemsGeometricOriginHyperbolicityFoundationCanonicalLaneLean
end HautevilleHouse