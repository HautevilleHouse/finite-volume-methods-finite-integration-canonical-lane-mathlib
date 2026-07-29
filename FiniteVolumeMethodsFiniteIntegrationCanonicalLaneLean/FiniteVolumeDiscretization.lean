import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean

structure FiniteVolumeDiscretization where
  mesh : ControlVolumeMesh
  fluxApproximation : Prop
  sourceTermDiscretization : Prop
  boundaryConditions : Prop
  fluxApproximationClosed : fluxApproximation
  sourceTermDiscretizationClosed : sourceTermDiscretization
  boundaryConditionsClosed : boundaryConditions

def finiteVolumeDiscretizationClosed (D : FiniteVolumeDiscretization) : Prop :=
  D.fluxApproximation ∧ D.sourceTermDiscretization ∧ D.boundaryConditions

theorem finiteVolumeDiscretizationClosedFromEvidence (D : FiniteVolumeDiscretization) :
  finiteVolumeDiscretizationClosed D :=
  And.intro D.fluxApproximationClosed (And.intro D.sourceTermDiscretizationClosed D.boundaryConditionsClosed)

end FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean
end HautevilleHouse