import FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean.FiniteVolumeScheme

namespace HautevilleHouse
namespace FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean

structure StabilityAnalysis {M : FiniteVolumeMesh} {Flux : FluxReconstruction M} (Scheme : FiniteVolumeScheme Flux) where
  cflCondition : ℝ → Prop
  numericalStability : Prop
  cflTerm : ∀ dt, cflCondition dt
  stabilityTerm : numericalStability

def StabilityClosed {M : FiniteVolumeMesh} {Flux : FluxReconstruction M} (A : StabilityAnalysis (Scheme : FiniteVolumeScheme Flux)) : Prop :=
  A.numericalStability

theorem stability_closed_from_evidence {M : FiniteVolumeMesh} {Flux : FluxReconstruction M} (A : StabilityAnalysis (Scheme : FiniteVolumeScheme Flux)) (h : A.numericalStability) : StabilityClosed A :=
  h

end FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean
end HautevilleHouse