import canonicalLaneMathlib.AdmissibleClass
import FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean.DiscreteFluxStencil

namespace HautevilleHouse
namespace FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DiscreteFluxStencilClosed (A.object : DiscreteFluxStencil)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean
end HautevilleHouse