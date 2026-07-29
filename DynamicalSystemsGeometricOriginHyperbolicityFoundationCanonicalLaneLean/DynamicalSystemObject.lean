import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityFoundationCanonicalLaneLean

structure DynamicalSystem where
  carrier : Type
  topology : TopologicalSpace carrier
  differentiableStructure : Prop
  dimension : Nat
  dimension_eq_n : dimension = 1 := by rfl

structure HyperbolicSet (M : DynamicalSystem) (f : M.carrier → M.carrier) where
  isInvariant : f '' carrier = carrier
  isHyperbolic : ForAll x, ∃ (Es : Submodule ℝ (TangentSpace x)) (Eu : Submodule ℝ (TangentSpace x)),
    Es ⊕ Eu = TangentSpace x ∧ ∃ (c>0) (λ>1),
      ∀ v ∈ Es, ‖df_x(v)‖ ≤ c * λ^(-1) * ‖v‖ ∧
      ∀ v ∈ Eu, ‖df_x(v)‖ ≥ c * λ * ‖v‖

structure AdmittedHyperbolicObject where
  space : DynamicalSystem
  diffeomorphism : space.carrier → space.carrier
  hyperbolicSet : HyperbolicSet space diffeomorphism
  conclusion : hyperbolicSet.isHyperbolic

end DynamicalSystemsGeometricOriginHyperbolicityFoundationCanonicalLaneLean
end HautevilleHouse