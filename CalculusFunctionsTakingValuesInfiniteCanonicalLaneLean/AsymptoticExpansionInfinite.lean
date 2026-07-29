import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

structure AsymptoticExpansionPackage where
  baseFunction : InfiniteLimitPackage
  expansionTerms : List (InfiniteLimitPackage.domain → InfiniteLimitPackage.codomain)
  expansionOrder : ℕ
  remainderGoesToInfinite : Prop
  expansionValid : Prop

def AsymptoticExpansionClosed (A : AsymptoticExpansionPackage) : Prop :=
  A.expansionValid ∧ A.remainderGoesToInfinite

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse