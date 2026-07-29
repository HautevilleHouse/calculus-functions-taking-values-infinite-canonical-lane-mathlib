import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

def ConstrainedInfiniteCalculusClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_infinite_calculus_endgame (A : AdmissibleClass) :
    ConstrainedInfiniteCalculusClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse