import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean

structure FiniteVolumeMesh where
  cell : Type u
  face : Type v
  neighbor : cell → cell → Prop
  measure : cell → ℝ
  faceArea : face → ℝ
  cellCenter : cell → ℝ^3
  faceNormal : face → ℝ^3
  meshRegularity : Prop
  meshRegularityTerm : meshRegularity

end FiniteVolumeMethodsFiniteIntegrationCanonicalLaneLean
end HautevilleHouse