import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean.LimitBehavior
import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean.ImproperIntegralDivergence

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

def ConstrainedInfiniteLimitClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_infinite_limit_endgame (A : AdmissibleClass) :
    ConstrainedInfiniteLimitClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse