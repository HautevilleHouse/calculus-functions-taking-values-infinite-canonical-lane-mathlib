import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

structure InfiniteLimitBehaviorPackage where
  functionType : Type u
  limitPoint : Type v
  divergenceValue : Type w
  finiteLimitDefined : Prop
  infiniteLimitDefined : Prop
  plusMinusInfinitySeparate : Prop

structure InfiniteLimitBehaviorEvidence (P : InfiniteLimitBehaviorPackage) where
  finiteLimitDefinedClosed : P.finiteLimitDefined
  infiniteLimitDefinedClosed : P.infiniteLimitDefined
  plusMinusInfinitySeparateClosed : P.plusMinusInfinitySeparate

def InfiniteLimitBehaviorClosed (P : InfiniteLimitBehaviorPackage) : Prop :=
  P.finiteLimitDefined ∧ P.infiniteLimitDefined ∧ P.plusMinusInfinitySeparate

theorem infinite_limit_behavior_closed_from_evidence
    (P : InfiniteLimitBehaviorPackage) (E : InfiniteLimitBehaviorEvidence P) :
    InfiniteLimitBehaviorClosed P := by
  exact And.intro E.finiteLimitDefinedClosed
    (And.intro E.infiniteLimitDefinedClosed E.plusMinusInfinitySeparateClosed)

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse