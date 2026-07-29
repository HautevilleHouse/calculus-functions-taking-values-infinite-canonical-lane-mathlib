import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean.InfiniteLimitBehavior

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

structure InfiniteSequencesPackage {P : InfiniteLimitBehaviorPackage}
    (L : InfiniteLimitBehaviorEvidence P) where
  divergenceToInfinity : Prop
  subsequenceBehavior : Prop
  cauchyCriterionForDivergence : Prop
  divergenceToInfinityClosed : divergenceToInfinity
  subsequenceBehaviorClosed : subsequenceBehavior
  cauchyCriterionForDivergenceClosed : cauchyCriterionForDivergence

structure InfiniteSequencesEvidence {P : InfiniteLimitBehaviorPackage}
    {L : InfiniteLimitBehaviorEvidence P} (S : InfiniteSequencesPackage L) where
  divergenceToInfinityClosed : S.divergenceToInfinity
  subsequenceBehaviorClosed : S.subsequenceBehavior
  cauchyCriterionForDivergenceClosed : S.cauchyCriterionForDivergence

def InfiniteSequencesClosed {P : InfiniteLimitBehaviorPackage}
    {L : InfiniteLimitBehaviorEvidence P} (S : InfiniteSequencesPackage L) : Prop :=
  S.divergenceToInfinity ∧ S.subsequenceBehavior ∧ S.cauchyCriterionForDivergence

theorem infinite_sequences_closed_from_evidence
    {P : InfiniteLimitBehaviorPackage} {L : InfiniteLimitBehaviorEvidence P}
    (S : InfiniteSequencesPackage L) (E : InfiniteSequencesEvidence S) :
    InfiniteSequencesClosed S := by
  exact And.intro E.divergenceToInfinityClosed
    (And.intro E.subsequenceBehaviorClosed E.cauchyCriterionForDivergenceClosed)

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse