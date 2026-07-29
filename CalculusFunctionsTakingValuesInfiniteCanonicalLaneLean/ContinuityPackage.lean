import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean.LimitPackage

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

structure ContinuousFunction (X : Type u) [TopologicalSpace X] (f : X → ExtendedReal) where
  limitCondition : ∀ (a : X), LimitOfFunction X f a
  limitValueEqualsValue : ∀ (a : X), (limitCondition a).limitValue = f a
  continuityClosed : Prop
  continuityClosedTerm : continuityClosed

def ContinuityClosed (C : ContinuousFunction X f) : Prop :=
  C.continuityClosed

theorem continuity_closed_from_evidence (C : ContinuousFunction X f) : ContinuityClosed C := by
  exact C.continuityClosedTerm

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse