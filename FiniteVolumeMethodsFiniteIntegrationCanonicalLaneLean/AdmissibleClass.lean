import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean

structure AdmissibleClass where
  object : FVMAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FVMWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean
end HautevilleHouse