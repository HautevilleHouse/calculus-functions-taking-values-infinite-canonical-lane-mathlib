import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean.AsymptoticBehavior

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

structure LogarithmicExponentialGrowthPackage {P : InfiniteLimitBehaviorPackage}
    {L : InfiniteLimitBehaviorEvidence P} {A : AsymptoticBehaviorPackage L}
    (E : AsymptoticBehaviorEvidence A) where
  logGrowthOrder : Prop
  exponentialGrowthOrder : Prop
  growthRateComparison : Prop
  logGrowthOrderClosed : logGrowthOrder
  exponentialGrowthOrderClosed : exponentialGrowthOrder
  growthRateComparisonClosed : growthRateComparison

structure LogarithmicExponentialGrowthEvidence {P : InfiniteLimitBehaviorPackage}
    {L : InfiniteLimitBehaviorEvidence P} {A : AsymptoticBehaviorPackage L}
    {E : AsymptoticBehaviorEvidence A}
    (G : LogarithmicExponentialGrowthPackage E) where
  logGrowthOrderClosed : G.logGrowthOrder
  exponentialGrowthOrderClosed : G.exponentialGrowthOrder
  growthRateComparisonClosed : G.growthRateComparison

def LogarithmicExponentialGrowthClosed {P : InfiniteLimitBehaviorPackage}
    {L : InfiniteLimitBehaviorEvidence P} {A : AsymptoticBehaviorPackage L}
    {E : AsymptoticBehaviorEvidence A}
    (G : LogarithmicExponentialGrowthPackage E) : Prop :=
  G.logGrowthOrder ∧ G.exponentialGrowthOrder ∧ G.growthRateComparison

theorem logarithmic_exponential_growth_closed_from_evidence
    {P : InfiniteLimitBehaviorPackage} {L : InfiniteLimitBehaviorEvidence P}
    {A : AsymptoticBehaviorPackage L} {E : AsymptoticBehaviorEvidence A}
    (G : LogarithmicExponentialGrowthPackage E)
    (Ev : LogarithmicExponentialGrowthEvidence G) :
    LogarithmicExponentialGrowthClosed G := by
  exact And.intro Ev.logGrowthOrderClosed
    (And.intro Ev.exponentialGrowthOrderClosed Ev.growthRateComparisonClosed)

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse