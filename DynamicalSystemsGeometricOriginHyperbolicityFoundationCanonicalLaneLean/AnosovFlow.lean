import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsGeometricOriginHyperbolicityFoundation.HyperbolicMetricSpace

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityFoundation

structure AnosovFlowPackage {H : HyperbolicMetricSpacePackage} where
  flowMap : ℝ → H.carrier → H.carrier
  invariantSplitting : Prop
  exponentialExpansionContraction : Prop
  structuralStability : Prop

structure AnosovFlowEvidence {H : HyperbolicMetricSpacePackage} (A : AnosovFlowPackage H) where
  invariantSplittingClosed : A.invariantSplitting
  exponentialExpansionContractionClosed : A.exponentialExpansionContraction
  structuralStabilityClosed : A.structuralStability

def AnosovFlowClosed {H : HyperbolicMetricSpacePackage} (A : AnosovFlowPackage H) : Prop :=
  A.invariantSplitting ∧ A.exponentialExpansionContraction ∧ A.structuralStability

theorem anosov_flow_closed_from_evidence {H : HyperbolicMetricSpacePackage}
    (A : AnosovFlowPackage H) (E : AnosovFlowEvidence A) : AnosovFlowClosed A := by
  exact And.intro E.invariantSplittingClosed (And.intro E.exponentialExpansionContractionClosed E.structuralStabilityClosed)

end DynamicalSystemsGeometricOriginHyperbolicityFoundation
end HautevilleHouse