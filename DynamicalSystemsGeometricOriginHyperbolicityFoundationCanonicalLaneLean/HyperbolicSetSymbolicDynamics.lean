import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityFoundationCanonicalLaneLean

structure HyperbolicSetPackage where
  invariantSet : Type u
  hyperbolicity : Prop
  MarkovPartition : Prop
  symbolicDynamicsExists : Prop
  topologicalPressure : Prop
  zetaFunction : Prop
  equilibriumStates : Prop

structure HyperbolicSetEvidence (H : HyperbolicSetPackage) where
  hyperbolicityClosed : H.hyperbolicity
  MarkovPartitionClosed : H.MarkovPartition
  symbolicDynamicsExistsClosed : H.symbolicDynamicsExists
  topologicalPressureClosed : H.topologicalPressure
  zetaFunctionClosed : H.zetaFunction
  equilibriumStatesClosed : H.equilibriumStates

def HyperbolicSetClosed (H : HyperbolicSetPackage) : Prop :=
  H.hyperbolicity ∧ H.MarkovPartition ∧ H.symbolicDynamicsExists ∧
  H.topologicalPressure ∧ H.zetaFunction ∧ H.equilibriumStates

theorem hyperbolic_set_closed_from_evidence (H : HyperbolicSetPackage)
    (E : HyperbolicSetEvidence H) : HyperbolicSetClosed H := by
  exact And.intro E.hyperbolicityClosed
    (And.intro E.MarkovPartitionClosed
      (And.intro E.symbolicDynamicsExistsClosed
        (And.intro E.topologicalPressureClosed
          (And.intro E.zetaFunctionClosed E.equilibriumStatesClosed))))

end DynamicalSystemsGeometricOriginHyperbolicityFoundationCanonicalLaneLean
end HautevilleHouse