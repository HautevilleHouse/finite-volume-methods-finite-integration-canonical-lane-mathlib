import canonicalLaneMathlib.AdmissibleClass
import FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean.DiscreteFluxStencil

namespace HautevilleHouse
namespace FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean

structure MeshRefinementPolicy where
  initialCellSize : ℝ
  refinementRatio : ℝ
  maxRefinementLevels : ℕ
  localRefinementCriterion : Prop

structure MeshRefinementPolicyEvidence (M : MeshRefinementPolicy) where
  initialCellSizeClosed : M.initialCellSize > 0
  refinementRatioClosed : M.refinementRatio > 1
  maxRefinementLevelsClosed : M.maxRefinementLevels ≥ 1
  localRefinementCriterionClosed : M.localRefinementCriterion

def MeshRefinementPolicyClosed (M : MeshRefinementPolicy) : Prop :=
  M.initialCellSize > 0 ∧ M.refinementRatio > 1 ∧ M.maxRefinementLevels ≥ 1 ∧ M.localRefinementCriterion

theorem mesh_refinement_policy_closed_from_evidence (M : MeshRefinementPolicy) (E : MeshRefinementPolicyEvidence M) : MeshRefinementPolicyClosed M := by
  exact And.intro E.initialCellSizeClosed (And.intro E.refinementRatioClosed (And.intro E.maxRefinementLevelsClosed E.localRefinementCriterionClosed))

end FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean
end HautevilleHouse