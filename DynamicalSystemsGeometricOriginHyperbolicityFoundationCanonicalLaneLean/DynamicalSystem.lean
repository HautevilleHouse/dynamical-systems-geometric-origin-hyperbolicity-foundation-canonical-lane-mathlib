import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityFoundationCanonicalLaneLean

structure DynamicalSystem (X : Type u) where
  stateSpace : Type u
  timeDomain : Type v
  flow : timeDomain → stateSpace → stateSpace
  continuous : Prop
  groupAction : Prop

structure HyperbolicFlow (X : Type u) (DS : DynamicalSystem X) where
  invariantSet : Set X
  hyperbolicSplitting : Prop
  exponentialContraction : Prop
  exponentialExpansion : Prop

end DynamicalSystemsGeometricOriginHyperbolicityFoundationCanonicalLaneLean
end HautevilleHouse