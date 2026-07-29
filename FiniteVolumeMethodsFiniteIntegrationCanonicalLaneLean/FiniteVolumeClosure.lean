import FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean.ConvergenceAnalysis

namespace HautevilleHouse
namespace FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean

def FiniteVolumeAdmissibleClass (A : AdmissibleClass) : Prop :=
  match A with
  | { object := _, endpointSatisfied := ep, remainderRecorded := rr, gateWitness := gw } => ep ∨ rr

def ConstrainedFiniteVolumeClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_finite_volume_endgame (A : AdmissibleClass) : ConstrainedFiniteVolumeClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean
end HautevilleHouse