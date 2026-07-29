import canonicalLaneMathlib.AdmissibleClass
import FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean.MeshRefinement

namespace HautevilleHouse
namespace FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean

structure FVMFunctionalAnalysis where
  discretizationErrorBound : Prop
  stabilityEstimate : Prop
  convergenceRate : ℕ

def FVMFunctionalAnalysisClosed (F : FVMFunctionalAnalysis) : Prop :=
  F.discretizationErrorBound ∧ F.stabilityEstimate ∧ F.convergenceRate ≥ 1

theorem fvm_functional_analysis_closed (F : FVMFunctionalAnalysis) : FVMFunctionalAnalysisClosed F := by
  exact And.intro F.discretizationErrorBound (And.intro F.stabilityEstimate (by omega))

end FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean
end HautevilleHouse