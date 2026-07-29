import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FiniteVolumeWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean
end HautevilleHouse