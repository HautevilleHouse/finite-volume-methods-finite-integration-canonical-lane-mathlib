import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean

structure FiniteControlVolume where
  cell : Type u
  measure : cell -> ℝ
  boundary : cell -> Type v
  outwardNormal : cell -> boundary cell -> ℝ
  faceArea : cell -> boundary cell -> ℝ
  centroid : cell -> ℝ³
  discretizationConsistent : Prop
  conservationLawCompatible : Prop

structure FiniteControlVolumeEvidence (C : FiniteControlVolume) where
  discretizationConsistentClosed : C.discretizationConsistent
  conservationLawCompatibleClosed : C.conservationLawCompatible

def FiniteControlVolumeClosed (C : FiniteControlVolume) : Prop :=
  C.discretizationConsistent ∧ C.conservationLawCompatible

theorem finite_control_volume_closed_from_evidence (C : FiniteControlVolume)
    (E : FiniteControlVolumeEvidence C) : FiniteControlVolumeClosed C := by
  exact And.intro E.discretizationConsistentClosed E.conservationLawCompatibleClosed

end FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean
end HautevilleHouse
