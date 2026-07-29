import canonicalLaneMathlib.AdmissibleClass
import FiniteVolumeBridgeLemmas
import FiniteVolumeGateLemmas

namespace HautevilleHouse
namespace FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean

def ConstrainedFiniteVolumeClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_finite_volume_endgame (A : AdmissibleClass) :
    ConstrainedFiniteVolumeClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean
end HautevilleHouse