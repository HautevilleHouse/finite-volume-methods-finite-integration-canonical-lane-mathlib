import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean

structure FiniteVolumeAdmissibleObject where
  domain : Type
  mesh : Type
  controlVolumes : List domain
  fluxApproximation : Prop
  boundaryFluxConsistent : Prop
  conservedQuantities : List String
  conclusion : boundaryFluxConsistent

def FiniteVolumeWitnessClosed (O : FiniteVolumeAdmissibleObject) : Prop :=
  O.boundaryFluxConsistent

end FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean
end HautevilleHouse