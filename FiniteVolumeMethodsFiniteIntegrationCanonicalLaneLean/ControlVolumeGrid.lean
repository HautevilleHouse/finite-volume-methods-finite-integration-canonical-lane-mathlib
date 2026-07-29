import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean

structure ControlVolumeGrid where
  cells : List Type
  faces : List Type
  cellToFaces : List (Nat × List Nat)
  faceNormal : List (List Float)
  cellVolume : List Float
  gridValid : Prop
  gridValidTerm : gridValid

structure ControlVolumeEvidence (CG : ControlVolumeGrid) where
  cellVolumeNonzero : ∀ v ∈ CG.cellVolume, v > 0
  faceNormalNonzero : ∀ n ∈ CG.faceNormal, n ≠ []
  gridConsistency : CG.gridValid

def ControlVolumeClosed (CG : ControlVolumeGrid) : Prop :=
  CG.gridValid ∧ (∀ v ∈ CG.cellVolume, v > 0) ∧ (∀ n ∈ CG.faceNormal, n ≠ [])

theorem control_volume_closed_from_evidence (CG : ControlVolumeGrid) (E : ControlVolumeEvidence CG) :
    ControlVolumeClosed CG := by
  exact And.intro E.gridConsistency (And.intro E.cellVolumeNonzero E.faceNormalNonzero)

end FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean
end HautevilleHouse