import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean

structure FVMObject where
  discreteFluxStencil : DiscreteFluxStencil
  conservationLawParameters : Prop
  convergenceOrder : ℕ
  conclusion : DiscreteFluxStencilClosed discreteFluxStencil ∧ conservationLawParameters ∧ convergenceOrder ≥ 1

structure FVMAdmissibleClass extends AdmissibleClass where
  object : FVMObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean
end HautevilleHouse