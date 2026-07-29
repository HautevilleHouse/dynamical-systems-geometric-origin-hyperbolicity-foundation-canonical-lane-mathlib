import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityFoundationCanonicalLaneLean

structure StableManifoldPackage where
  hyperbolicFixedPoint : Prop
  localStableManifoldExists : Prop
  localUnstableManifoldExists : Prop
  smoothnessOfManifolds : Prop
  tangentSpaceMatches : Prop
  exponentialContraction : Prop
  exponentialExpansion : Prop

structure StableManifoldEvidence (S : StableManifoldPackage) where
  hyperbolicFixedPointClosed : S.hyperbolicFixedPoint
  localStableManifoldExistsClosed : S.localStableManifoldExists
  localUnstableManifoldExistsClosed : S.localUnstableManifoldExists
  smoothnessOfManifoldsClosed : S.smoothnessOfManifolds
  tangentSpaceMatchesClosed : S.tangentSpaceMatches
  exponentialContractionClosed : S.exponentialContraction
  exponentialExpansionClosed : S.exponentialExpansion

def StableManifoldClosed (S : StableManifoldPackage) : Prop :=
  S.hyperbolicFixedPoint ∧ S.localStableManifoldExists ∧ S.localUnstableManifoldExists ∧
  S.smoothnessOfManifolds ∧ S.tangentSpaceMatches ∧ S.exponentialContraction ∧ S.exponentialExpansion

theorem stable_manifold_closed_from_evidence (S : StableManifoldPackage)
    (E : StableManifoldEvidence S) : StableManifoldClosed S := by
  exact And.intro E.hyperbolicFixedPointClosed
    (And.intro E.localStableManifoldExistsClosed
      (And.intro E.localUnstableManifoldExistsClosed
        (And.intro E.smoothnessOfManifoldsClosed
          (And.intro E.tangentSpaceMatchesClosed
            (And.intro E.exponentialContractionClosed E.exponentialExpansionClosed)))))

end DynamicalSystemsGeometricOriginHyperbolicityFoundationCanonicalLaneLean
end HautevilleHouse