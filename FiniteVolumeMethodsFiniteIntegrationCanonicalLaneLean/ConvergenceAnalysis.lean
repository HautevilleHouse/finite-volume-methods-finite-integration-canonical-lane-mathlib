import FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean.StabilityAnalysis

namespace HautevilleHouse
namespace FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean

structure ConsistencyOrder where
  order : ℕ
  errorEstimate : Prop
  errorTerm : errorEstimate

structure ConvergenceAnalysis {M : FiniteVolumeMesh} {Flux : FluxReconstruction M} {Scheme : FiniteVolumeScheme Flux} (Stab : StabilityAnalysis Scheme) where
  consistencyOrder : ConsistencyOrder
  laxEquivalence : Prop
  convergence : Prop
  convergenceTerm : convergence

def ConvergenceClosed {M : FiniteVolumeMesh} {Flux : FluxReconstruction M} {Scheme : FiniteVolumeScheme Flux} (C : ConvergenceAnalysis (Stab : StabilityAnalysis Scheme)) : Prop :=
  C.convergence ∧ C.consistencyOrder.errorEstimate

theorem convergence_closed_from_evidence {M : FiniteVolumeMesh} {Flux : FluxReconstruction M} {Scheme : FiniteVolumeScheme Flux} (C : ConvergenceAnalysis (Stab : StabilityAnalysis Scheme)) (h : C.convergence ∧ C.consistencyOrder.errorEstimate) : ConvergenceClosed C :=
  h

end FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean
end HautevilleHouse