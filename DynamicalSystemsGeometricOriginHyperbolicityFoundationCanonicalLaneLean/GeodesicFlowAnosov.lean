import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityFoundationCanonicalLaneLean

structure GeodesicFlowSetup where
  manifold : Type u
  topology : TopologicalSpace manifold
  riemannianMetric : Type v
  geodesicFlow : Type w
  tangentBundle : Type x
  contactStructure : Prop
  smoothRiemannian : Prop
  geodesicFlowDefined : Prop
  contactStructureTerm : contactStructure
  smoothRiemannianTerm : smoothRiemannian
  geodesicFlowDefinedTerm : geodesicFlowDefined

structure GeodesicFlowPackage where
  setup : GeodesicFlowSetup
  anosovProperty : Prop
  strongTransitivity : Prop
  topologicalMixing : Prop
  closedOrbitsDense : Prop
  anosovPropertyTerm : anosovProperty
  strongTransitivityTerm : strongTransitivity
  topologicalMixingTerm : topologicalMixing
  closedOrbitsDenseTerm : closedOrbitsDense

structure GeodesicFlowEvidence (P : GeodesicFlowPackage) where
  anosovPropertyClosed : P.anosovProperty
  strongTransitivityClosed : P.strongTransitivity
  topologicalMixingClosed : P.topologicalMixing
  closedOrbitsDenseClosed : P.closedOrbitsDense

def GeodesicFlowClosed (P : GeodesicFlowPackage) : Prop :=
  P.anosovProperty ∧ P.strongTransitivity ∧ P.topologicalMixing ∧ P.closedOrbitsDense

theorem geodesic_flow_closed_from_evidence (P : GeodesicFlowPackage)
    (E : GeodesicFlowEvidence P) : GeodesicFlowClosed P := by
  exact And.intro E.anosovPropertyClosed
    (And.intro E.strongTransitivityClosed
      (And.intro E.topologicalMixingClosed E.closedOrbitsDenseClosed))

end DynamicalSystemsGeometricOriginHyperbolicityFoundationCanonicalLaneLean
end HautevilleHouse
