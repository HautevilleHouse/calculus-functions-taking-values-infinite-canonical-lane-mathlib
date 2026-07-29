import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean.InfiniteLimitBehavior

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

structure AsymptoticBehaviorPackage {P : InfiniteLimitBehaviorPackage}
    (L : InfiniteLimitBehaviorEvidence P) where
  limitComparisonTest : Prop
  lHopitalRule : Prop
  dominantTermIdentification : Prop
  limitComparisonTestClosed : limitComparisonTest
  lHopitalRuleClosed : lHopitalRule
  dominantTermIdentificationClosed : dominantTermIdentification

structure AsymptoticBehaviorEvidence {P : InfiniteLimitBehaviorPackage}
    {L : InfiniteLimitBehaviorEvidence P} (A : AsymptoticBehaviorPackage L) where
  limitComparisonTestClosed : A.limitComparisonTest
  lHopitalRuleClosed : A.lHopitalRule
  dominantTermIdentificationClosed : A.dominantTermIdentification

def AsymptoticBehaviorClosed {P : InfiniteLimitBehaviorPackage}
    {L : InfiniteLimitBehaviorEvidence P} (A : AsymptoticBehaviorPackage L) : Prop :=
  A.limitComparisonTest ∧ A.lHopitalRule ∧ A.dominantTermIdentification

theorem asymptotic_behavior_closed_from_evidence
    {P : InfiniteLimitBehaviorPackage} {L : InfiniteLimitBehaviorEvidence P}
    (A : AsymptoticBehaviorPackage L) (E : AsymptoticBehaviorEvidence A) :
    AsymptoticBehaviorClosed A := by
  exact And.intro E.limitComparisonTestClosed
    (And.intro E.lHopitalRuleClosed E.dominantTermIdentificationClosed)

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse