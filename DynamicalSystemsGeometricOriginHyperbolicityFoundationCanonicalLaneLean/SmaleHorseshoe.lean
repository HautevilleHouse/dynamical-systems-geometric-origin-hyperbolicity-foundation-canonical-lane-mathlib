import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityFoundationCanonicalLaneLean

structure SmaleHorseshoePackage where
  horseshoeMap : Type u
  invariantSet : Type v
  hyperbolicStructure : Prop
  topologicalConjugacyToShift : Prop
  chaosProperties : Prop
  densePeriodicPoints : Prop
  sensitivityInitialConditions : Prop
  topologicalMixing : Prop

structure SmaleHorseshoeEvidence (H : SmaleHorseshoePackage) where
  hyperbolicStructureClosed : H.hyperbolicStructure
  topologicalConjugacyToShiftClosed : H.topologicalConjugacyToShift
  chaosPropertiesClosed : H.chaosProperties
  densePeriodicPointsClosed : H.densePeriodicPoints
  sensitivityInitialConditionsClosed : H.sensitivityInitialConditions
  topologicalMixingClosed : H.topologicalMixing

def SmaleHorseshoeClosed (H : SmaleHorseshoePackage) : Prop :=
  H.hyperbolicStructure ∧ H.topologicalConjugacyToShift ∧ H.chaosProperties ∧
  H.densePeriodicPoints ∧ H.sensitivityInitialConditions ∧ H.topologicalMixing

theorem smale_horseshoe_closed_from_evidence (H : SmaleHorseshoePackage)
    (E : SmaleHorseshoeEvidence H) : SmaleHorseshoeClosed H := by
  exact And.intro E.hyperbolicStructureClosed
    (And.intro E.topologicalConjugacyToShiftClosed
      (And.intro E.chaosPropertiesClosed
        (And.intro E.densePeriodicPointsClosed
          (And.intro E.sensitivityInitialConditionsClosed E.topologicalMixingClosed))))

end DynamicalSystemsGeometricOriginHyperbolicityFoundationCanonicalLaneLean
end HautevilleHouse