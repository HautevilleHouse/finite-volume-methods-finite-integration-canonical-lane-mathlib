import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean

structure TimeIntegrationScheme where
  methodType : String
  stabilityCondition : Prop
  orderOfAccuracy : ℕ
  stabilityConditionClosed : stabilityCondition
  cflCondition : Prop
  cflConditionClosed : cflCondition

def timeIntegrationSchemeClosed (T : TimeIntegrationScheme) : Prop :=
  T.stabilityCondition ∧ T.cflCondition

theorem timeIntegrationSchemeClosedFromEvidence (T : TimeIntegrationScheme) :
  timeIntegrationSchemeClosed T :=
  And.intro T.stabilityConditionClosed T.cflConditionClosed

end FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean
end HautevilleHouse