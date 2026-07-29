import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean

structure DiscreteFluxStencil where
  cellCenters : Type u
  faceNormals : Type v
  fluxFunction : cellCenters → faceNormals → ℝ
  consistencyOrder : ℕ
  conservativity : Prop

structure DiscreteFluxStencilEvidence (D : DiscreteFluxStencil) where
  consistencyOrderClosed : D.consistencyOrder ≥ 1
  conservativityClosed : D.conservativity

def DiscreteFluxStencilClosed (D : DiscreteFluxStencil) : Prop :=
  D.consistencyOrder ≥ 1 ∧ D.conservativity

theorem discrete_flux_stencil_closed_from_evidence (D : DiscreteFluxStencil) (E : DiscreteFluxStencilEvidence D) : DiscreteFluxStencilClosed D := by
  exact And.intro E.consistencyOrderClosed E.conservativityClosed

end FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean
end HautevilleHouse