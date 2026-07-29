import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean

structure FluxReconstructionPackage where
  reconstructionType : String
  accuracyOrder : Nat
  limiter : Prop
  monotonicityPreserved : Prop

structure FluxReconstructionEvidence (F : FluxReconstructionPackage) where
  limiterClosed : F.limiter
  monotonicityPreservedClosed : F.monotonicityPreserved

def FluxReconstructionClosed (F : FluxReconstructionPackage) : Prop :=
  F.limiter ∧ F.monotonicityPreserved

theorem flux_reconstruction_closed_from_evidence (F : FluxReconstructionPackage)
    (E : FluxReconstructionEvidence F) : FluxReconstructionClosed F := by
  exact And.intro E.limiterClosed E.monotonicityPreservedClosed

end FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean
end HautevilleHouse