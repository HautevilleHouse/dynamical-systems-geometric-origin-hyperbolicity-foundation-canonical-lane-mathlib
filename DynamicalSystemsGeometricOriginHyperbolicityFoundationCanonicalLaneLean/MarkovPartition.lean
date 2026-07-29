import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsGeometricOriginHyperbolicityFoundation.AnosovFlow

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityFoundation

structure MarkovPartitionPackage {H : HyperbolicMetricSpacePackage}
    {A : AnosovFlowPackage H} where
  partitionExists : Prop
  codingProperty : Prop
  topologicalConjugacy : Prop

structure MarkovPartitionEvidence {H : HyperbolicMetricSpacePackage}
    {A : AnosovFlowPackage H} (M : MarkovPartitionPackage A) where
  partitionExistsClosed : M.partitionExists
  codingPropertyClosed : M.codingProperty
  topologicalConjugacyClosed : M.topologicalConjugacy

def MarkovPartitionClosed {H : HyperbolicMetricSpacePackage}
    {A : AnosovFlowPackage H} (M : MarkovPartitionPackage A) : Prop :=
  M.partitionExists ∧ M.codingProperty ∧ M.topologicalConjugacy

theorem markov_partition_closed_from_evidence {H : HyperbolicMetricSpacePackage}
    {A : AnosovFlowPackage H} (M : MarkovPartitionPackage A)
    (E : MarkovPartitionEvidence M) : MarkovPartitionClosed M := by
  exact And.intro E.partitionExistsClosed (And.intro E.codingPropertyClosed E.topologicalConjugacyClosed)

end DynamicalSystemsGeometricOriginHyperbolicityFoundation
end HautevilleHouse