import FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean.FluxReconstruction

namespace HautevilleHouse
namespace FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean

structure FiniteVolumeScheme {M : FiniteVolumeMesh} (Flux : FluxReconstruction M) where
  cellAverage : M.cell → ℝ
  updateRule : M.cell → ℝ
  conservativity : ∀ (f : M.face), sum over cells of updateRule = 0
  conservativityTerm : conservativity

def FiniteVolumeSchemeClosed {M : FiniteVolumeMesh} {Flux : FluxReconstruction M} (S : FiniteVolumeScheme Flux) : Prop :=
  S.conservativity

theorem finite_volume_scheme_closed_from_evidence {M : FiniteVolumeMesh} {Flux : FluxReconstruction M} (S : FiniteVolumeScheme Flux) (h : S.conservativity) : FiniteVolumeSchemeClosed S :=
  h

end FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean
end HautevilleHouse