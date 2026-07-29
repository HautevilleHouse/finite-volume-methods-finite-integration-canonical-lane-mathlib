import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean

structure ControlVolumeMesh where
  cells : List (Type u)
  faces : List (Type u)
  vertices : List (Type u)
  cellVolumes : List ℝ
  faceAreas : List ℝ
  meshRegularity : Prop
  meshRegularityTerm : meshRegularity
  cellVolumePositive : ∀ v ∈ cellVolumes, v > 0
  faceAreaPositive : ∀ a ∈ faceAreas, a > 0

def controlVolumeMeshClosed (M : ControlVolumeMesh) : Prop :=
  M.meshRegularity ∧ (∀ v ∈ M.cellVolumes, v > 0) ∧ (∀ a ∈ M.faceAreas, a > 0)

theorem controlVolumeMeshClosedFromEvidence (M : ControlVolumeMesh) : controlVolumeMeshClosed M :=
  And.intro M.meshRegularityTerm (And.intro M.cellVolumePositive M.faceAreaPositive)

end FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean
end HautevilleHouse