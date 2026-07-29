import HautevilleHouse.DynamicalSystemsGeometricOriginHyperbolicityFoundation.MarkovPartition

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityFoundation

structure DynamicalAdmittedObject where
  hyperbolicMetricPackage : HyperbolicMetricSpacePackage
  anosovFlowPackage : AnosovFlowPackage hyperbolicMetricPackage

structure AdmissibleClass where
  object : DynamicalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (HyperbolicMetricSpaceClosed A.object.hyperbolicMetricPackage) ∧
  (AnosovFlowClosed A.object.anosovFlowPackage) ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicalSystemsGeometricOriginHyperbolicityFoundation
end HautevilleHouse