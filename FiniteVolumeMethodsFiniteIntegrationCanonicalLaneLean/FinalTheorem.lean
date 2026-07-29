import canonicalLaneMathlib.AdmissibleClass
import FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean

def ConstrainedFVClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_fv_endgame (A : AdmissibleClass) : ConstrainedFVClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean
end HautevilleHouse
