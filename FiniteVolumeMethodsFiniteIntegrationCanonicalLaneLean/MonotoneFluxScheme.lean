import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean

structure MonotoneFluxScheme where
  numericalFlux : Type
  lipschitzContinuous : Prop
  consistentWithPhysics : Prop
  monotonicityPreserving : Prop
  entropyStable : Prop

structure MonotoneFluxEvidence (MF : MonotoneFluxScheme) where
  lipschitzClosed : MF.lipschitzContinuous
  consistencyClosed : MF.consistentWithPhysics
  monotonicityClosed : MF.monotonicityPreserving
  entropyClosed : MF.entropyStable

def MonotoneFluxClosed (MF : MonotoneFluxScheme) : Prop :=
  MF.lipschitzContinuous ∧ MF.consistentWithPhysics ∧ MF.monotonicityPreserving ∧ MF.entropyStable

theorem monotone_flux_closed_from_evidence (MF : MonotoneFluxScheme) (E : MonotoneFluxEvidence MF) :
    MonotoneFluxClosed MF := by
  exact And.intro E.lipschitzClosed (And.intro E.consistencyClosed (And.intro E.monotonicityClosed E.entropyClosed))

end FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean
end HautevilleHouse