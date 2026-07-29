import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

structure InfiniteLimitPackage where
  domain : Type u
  codomain : Type v
  function : domain → codomain
  limitPoint : domain
  infiniteSays : Prop
  epsilonNbd : Prop
  deltaNbd : Prop
  functionTendsToInfinite : Prop

structure InfiniteLimitEvidence (P : InfiniteLimitPackage) where
  infiniteSaysClosed : P.infiniteSays
  epsilonNbdClosed : P.epsilonNbd
  deltaNbdClosed : P.deltaNbd
  functionTendsToInfiniteClosed : P.functionTendsToInfinite

def InfiniteLimitClosed (P : InfiniteLimitPackage) : Prop :=
  P.infiniteSays ∧ P.epsilonNbd ∧ P.deltaNbd ∧ P.functionTendsToInfinite

theorem infinite_limit_closed_from_evidence (P : InfiniteLimitPackage)
    (E : InfiniteLimitEvidence P) : InfiniteLimitClosed P := by
  exact And.intro E.infiniteSaysClosed
    (And.intro E.epsilonNbdClosed (And.intro E.deltaNbdClosed E.functionTendsToInfiniteClosed))

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse