import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

structure InfiniteIntegralTestPackage where
  integrand : InfiniteLimitPackage
  interval : Set ℝ
  integralDiverges : Prop
  comparisonFunction : InfiniteLimitPackage
  testCriterion : Prop
  testApplied : Prop

def InfiniteIntegralTestClosed (I : InfiniteIntegralTestPackage) : Prop :=
  I.integralDiverges ∧ I.testCriterion ∧ I.testApplied

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse