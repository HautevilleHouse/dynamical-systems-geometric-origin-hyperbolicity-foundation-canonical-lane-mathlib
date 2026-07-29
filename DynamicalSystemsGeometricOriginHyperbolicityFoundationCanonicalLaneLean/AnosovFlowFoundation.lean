import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityFoundationCanonicalLaneLean

structure AnosovFlowFoundation where
  compactManifold : Prop
  flowSmooth : Prop
  invariantSplitting : Prop
  hyperbolicEstimates : Prop
  strongTransitivity : Prop
  topologicalTransitivity : Prop
  mixingProperty : Prop
  closingLemma : Prop
  shadowingProperty : Prop

structure AnosovFlowEvidence (F : AnosovFlowFoundation) where
  compactManifoldClosed : F.compactManifold
  flowSmoothClosed : F.flowSmooth
  invariantSplittingClosed : F.invariantSplitting
  hyperbolicEstimatesClosed : F.hyperbolicEstimates
  strongTransitivityClosed : F.strongTransitivity
  topologicalTransitivityClosed : F.topologicalTransitivity
  mixingPropertyClosed : F.mixingProperty
  closingLemmaClosed : F.closingLemma
  shadowingPropertyClosed : F.shadowingProperty

def AnosovFlowClosed (F : AnosovFlowFoundation) : Prop :=
  F.compactManifold ∧ F.flowSmooth ∧ F.invariantSplitting ∧ F.hyperbolicEstimates ∧
  F.strongTransitivity ∧ F.topologicalTransitivity ∧ F.mixingProperty ∧
  F.closingLemma ∧ F.shadowingProperty

theorem anosov_flow_closed_from_evidence (F : AnosovFlowFoundation)
    (E : AnosovFlowEvidence F) : AnosovFlowClosed F := by
  exact And.intro E.compactManifoldClosed
    (And.intro E.flowSmoothClosed
      (And.intro E.invariantSplittingClosed
        (And.intro E.hyperbolicEstimatesClosed
          (And.intro E.strongTransitivityClosed
            (And.intro E.topologicalTransitivityClosed
              (And.intro E.mixingPropertyClosed
                (And.intro E.closingLemmaClosed E.shadowingPropertyClosed)))))))

end DynamicalSystemsGeometricOriginHyperbolicityFoundationCanonicalLaneLean
end HautevilleHouse