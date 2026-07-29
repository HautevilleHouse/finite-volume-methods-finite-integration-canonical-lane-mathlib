import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean

structure FluxReconstruction where
  numericalFlux : Type u
  riemannSolver : Type v
  reconstructionPolynomial : Type w
  consistencyOrder : ℕ
  stabilityCondition : Prop
  convergenceRate : ℝ
  fluxDefinitionClosed : Prop
  reconstructionClosed : Prop

structure FluxReconstructionEvidence (F : FluxReconstruction) where
  fluxDefinitionClosedTerm : F.fluxDefinitionClosed
  reconstructionClosedTerm : F.reconstructionClosed

def FluxReconstructionClosed (F : FluxReconstruction) : Prop :=
  F.fluxDefinitionClosed ∧ F.reconstructionClosed

theorem flux_reconstruction_closed_from_evidence (F : FluxReconstruction)
    (E : FluxReconstructionEvidence F) : FluxReconstructionClosed F := by
  exact And.intro E.fluxDefinitionClosedTerm E.reconstructionClosedTerm

end FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean
end HautevilleHouse
