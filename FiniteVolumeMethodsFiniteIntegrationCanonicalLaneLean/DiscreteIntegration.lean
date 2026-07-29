import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean

structure DiscreteIntegration where
  fluxApproximation : Prop
  divergenceTheoremApplied : Prop
  reconstructionOperator : Prop
  fluxConservation : Prop
  stabilityProperty : Prop

structure DiscreteIntegrationEvidence (DI : DiscreteIntegration) where
  fluxApproximationClosed : DI.fluxApproximation
  divergenceTheoremAppliedClosed : DI.divergenceTheoremApplied
  reconstructionOperatorClosed : DI.reconstructionOperator
  fluxConservationClosed : DI.fluxConservation
  stabilityPropertyClosed : DI.stabilityProperty

def DiscreteIntegrationClosed (DI : DiscreteIntegration) : Prop :=
  DI.fluxApproximation ∧ DI.divergenceTheoremApplied ∧ DI.reconstructionOperator ∧ DI.fluxConservation ∧ DI.stabilityProperty

theorem discrete_integration_closed_from_evidence (DI : DiscreteIntegration) (E : DiscreteIntegrationEvidence DI) :
    DiscreteIntegrationClosed DI := by
  exact And.intro E.fluxApproximationClosed
    (And.intro E.divergenceTheoremAppliedClosed
      (And.intro E.reconstructionOperatorClosed
        (And.intro E.fluxConservationClosed E.stabilityPropertyClosed)))

end FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean
end HautevilleHouse