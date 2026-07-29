import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean.InfiniteLimitBehavior

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

structure ImproperIntegralsPackage {P : InfiniteLimitBehaviorPackage}
    (L : InfiniteLimitBehaviorEvidence P) where
  infiniteIntervalDefined : Prop
  integrabilityCondition : Prop
  convergenceTests : Prop
  infiniteIntervalDefinedClosed : infiniteIntervalDefined
  integrabilityConditionClosed : integrabilityCondition
  convergenceTestsClosed : convergenceTests

structure ImproperIntegralsEvidence {P : InfiniteLimitBehaviorPackage}
    {L : InfiniteLimitBehaviorEvidence P} (I : ImproperIntegralsPackage L) where
  infiniteIntervalDefinedClosed : I.infiniteIntervalDefined
  integrabilityConditionClosed : I.integrabilityCondition
  convergenceTestsClosed : I.convergenceTests

def ImproperIntegralsClosed {P : InfiniteLimitBehaviorPackage}
    {L : InfiniteLimitBehaviorEvidence P} (I : ImproperIntegralsPackage L) : Prop :=
  I.infiniteIntervalDefined ∧ I.integrabilityCondition ∧ I.convergenceTests

theorem improper_integrals_closed_from_evidence
    {P : InfiniteLimitBehaviorPackage} {L : InfiniteLimitBehaviorEvidence P}
    (I : ImproperIntegralsPackage L) (E : ImproperIntegralsEvidence I) :
    ImproperIntegralsClosed I := by
  exact And.intro E.infiniteIntervalDefinedClosed
    (And.intro E.integrabilityConditionClosed E.convergenceTestsClosed)

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse