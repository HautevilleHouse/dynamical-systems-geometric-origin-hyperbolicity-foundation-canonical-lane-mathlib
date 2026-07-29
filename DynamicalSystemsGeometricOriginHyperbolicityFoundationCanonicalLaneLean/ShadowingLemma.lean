import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsGeometricOriginHyperbolicityFoundation.AnosovFlow

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityFoundation

structure ShadowingLemmaPackage {H : HyperbolicMetricSpacePackage}
    {A : AnosovFlowPackage H} where
  epsilonShadowing : Prop
  uniqueShadowing : Prop
  hyperbolicImpliesShadowing : Prop

structure ShadowingLemmaEvidence {H : HyperbolicMetricSpacePackage}
    {A : AnosovFlowPackage H} (S : ShadowingLemmaPackage A) where
  epsilonShadowingClosed : S.epsilonShadowing
  uniqueShadowingClosed : S.uniqueShadowing
  hyperbolicImpliesShadowingClosed : S.hyperbolicImpliesShadowing

def ShadowingLemmaClosed {H : HyperbolicMetricSpacePackage}
    {A : AnosovFlowPackage H} (S : ShadowingLemmaPackage A) : Prop :=
  S.epsilonShadowing ∧ S.uniqueShadowing ∧ S.hyperbolicImpliesShadowing

theorem shadowing_lemma_closed_from_evidence {H : HyperbolicMetricSpacePackage}
    {A : AnosovFlowPackage H} (S : ShadowingLemmaPackage A)
    (E : ShadowingLemmaEvidence S) : ShadowingLemmaClosed S := by
  exact And.intro E.epsilonShadowingClosed (And.intro E.uniqueShadowingClosed E.hyperbolicImpliesShadowingClosed)

end DynamicalSystemsGeometricOriginHyperbolicityFoundation
end HautevilleHouse