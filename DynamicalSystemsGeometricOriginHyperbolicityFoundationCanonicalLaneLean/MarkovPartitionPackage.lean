import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsGeometricOriginHyperbolicityFoundationCanonicalLaneLean.DynamicalSystemObject

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityFoundationCanonicalLaneLean

structure MarkovPartitionPackage {M : DynamicalSystem} {f : M.carrier → M.carrier} (H : HyperbolicSet M f) where
  partitionCoverage : Prop
  rectangleProperty : Prop
  symbolicDynamics : Prop

structure MarkovPartitionEvidence {M : DynamicalSystem} {f : M.carrier → M.carrier} {H : HyperbolicSet M f}
  (P : MarkovPartitionPackage H) where
  partitionCoverageClosed : P.partitionCoverage
  rectanglePropertyClosed : P.rectangleProperty
  symbolicDynamicsClosed : P.symbolicDynamics

def MarkovPartitionClosed {M : DynamicalSystem} {f : M.carrier → M.carrier} {H : HyperbolicSet M f}
  (P : MarkovPartitionPackage H) : Prop :=
  P.partitionCoverage ∧ P.rectangleProperty ∧ P.symbolicDynamics

theorem markov_partition_closed_from_evidence {M : DynamicalSystem} {f : M.carrier → M.carrier}
  {H : HyperbolicSet M f} (P : MarkovPartitionPackage H) (E : MarkovPartitionEvidence P) :
  MarkovPartitionClosed P := by
  exact And.intro E.partitionCoverageClosed (And.intro E.rectanglePropertyClosed E.symbolicDynamicsClosed)

end DynamicalSystemsGeometricOriginHyperbolicityFoundationCanonicalLaneLean
end HautevilleHouse