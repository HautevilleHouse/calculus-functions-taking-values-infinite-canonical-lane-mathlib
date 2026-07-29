import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

structure MonotoneInfiniteLimitPackage where
  functionPackage : InfiniteLimitPackage
  monotoneIncreasing : Prop
  unboundedAbove : Prop
  limitIsInfinite : Prop

def MonotoneInfiniteLimitClosed (M : MonotoneInfiniteLimitPackage) : Prop :=
  M.monotoneIncreasing ∧ M.unboundedAbove ∧ M.limitIsInfinite

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse