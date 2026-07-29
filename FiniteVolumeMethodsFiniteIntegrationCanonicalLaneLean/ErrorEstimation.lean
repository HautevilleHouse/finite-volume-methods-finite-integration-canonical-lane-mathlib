import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean

structure ErrorEstimation where
  aPrioriErrorBound : Prop
  aPosterioriErrorBound : Prop
  adaptivityIndicator : Prop
  aPrioriErrorBoundClosed : aPrioriErrorBound
  aPosterioriErrorBoundClosed : aPosterioriErrorBound
  adaptivityIndicatorClosed : adaptivityIndicator

def errorEstimationClosed (E : ErrorEstimation) : Prop :=
  E.aPrioriErrorBound ∧ E.aPosterioriErrorBound ∧ E.adaptivityIndicator

theorem errorEstimationClosedFromEvidence (E : ErrorEstimation) : errorEstimationClosed E :=
  And.intro E.aPrioriErrorBoundClosed (And.intro E.aPosterioriErrorBoundClosed E.adaptivityIndicatorClosed)

end FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean
end HautevilleHouse