import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityFoundationCanonicalLaneLean

structure AnosovFlowData where
  manifold : HyperbolicManifold
  vectorField : Type
  stableDistribution : Type
  unstableDistribution : Type
  exponentialExpansion : Prop
  exponentialContraction : Prop
  transverseIntersection : Prop

structure AnosovFlowEvidence (A : AnosovFlowData) where
  exponentialExpansionClosed : A.exponentialExpansion
  exponentialContractionClosed : A.exponentialContraction
  transverseIntersectionClosed : A.transverseIntersection

def AnosovFlowClosed (A : AnosovFlowData) : Prop :=
  A.exponentialExpansion ∧ A.exponentialContraction ∧ A.transverseIntersection

theorem anosov_flow_closed_from_evidence (A : AnosovFlowData)
    (E : AnosovFlowEvidence A) : AnosovFlowClosed A := by
  exact And.intro E.exponentialExpansionClosed
    (And.intro E.exponentialContractionClosed E.transverseIntersectionClosed)

end DynamicalSystemsGeometricOriginHyperbolicityFoundationCanonicalLaneLean
end HautevilleHouse
