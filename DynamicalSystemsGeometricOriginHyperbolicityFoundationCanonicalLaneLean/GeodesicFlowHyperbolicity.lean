import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityFoundationCanonicalLaneLean

structure GeodesicFlowPackage where
  manifold : Type u
  metric : Type v
  tangentBundle : Type w
  geodesicFlow : Type w
  hyperbolicStructure : Prop
  uniformExpansion : Prop
  stableUnstableSplitting : Prop
  smoothness : Prop

def GeodesicFlowClosed (G : GeodesicFlowPackage) : Prop :=
  G.hyperbolicStructure ∧ G.uniformExpansion ∧ G.stableUnstableSplitting ∧ G.smoothness

end DynamicalSystemsGeometricOriginHyperbolicityFoundationCanonicalLaneLean
end HautevilleHouse