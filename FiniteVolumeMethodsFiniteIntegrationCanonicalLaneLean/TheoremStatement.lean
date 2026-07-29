import FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean.AdmissibleClass
import FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean

structure FiniteVolumeTheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : FiniteVolumeTheoremStatement :=
  {
    sourceKey := "finite-volume-methods-finite-integration-canonical-lane"
    theoremName := "FiniteVolumeMethodsFiniteIntegration"
    theoremObject := "Finite Volume Methods Finite Integration"
    classicalBoundary := "open classical boundary carried"
    manifoldConstrainedStatement := "manifold-constrained theorem certificate internalized"
    certificateLane := "manifold_constrained"
    carriedRemainder := "classical source boundary carried"
  }

end FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean
end HautevilleHouse