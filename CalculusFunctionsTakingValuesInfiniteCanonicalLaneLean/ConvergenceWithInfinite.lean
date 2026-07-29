import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean.ExtendedRealNumbers
import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean.LimitsSupInf

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

structure ConvergenceWithInfinite (E : ExtendedRealNumbers) where
  sequence : ℕ → E.carrier
  limit : E.carrier
  isLimit : ∀ (ε : E.carrier) (h : E.le E.bot ε) (h' : E.le ε E.top) (h'' : ε ≠ E.bot), ∃ N : ℕ, ∀ n ≥ N, E.le (E.add (E.add (E.mul (E.mul sequence n) (E.add ε E.bot)) E.top) E.bot) E.top
  limit_infinite : limit = E.top ∨ limit = E.bot

def ConvergenceWithInfiniteClosed (E : ExtendedRealNumbers) (C : ConvergenceWithInfinite E) : Prop :=
  C.limit = E.top ∨ C.limit = E.bot

theorem convergence_with_infinite_closed (E : ExtendedRealNumbers) (C : ConvergenceWithInfinite E) :
    ConvergenceWithInfiniteClosed E C := by
  exact C.limit_infinite

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse