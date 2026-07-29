import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean.ExtendedRealNumbers

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

structure LimitSupInf (E : ExtendedRealNumbers) where
  sequence : ℕ → E.carrier
  limsup : E.carrier
  liminf : E.carrier
  limsup_ge_liminf : E.le liminf limsup
  limsup_infinite_exists : E.limsup = E.top ∨ E.limsup = E.bot
  liminf_infinite_exists : E.liminf = E.top ∨ E.liminf = E.bot

def LimitSupInfClosed (E : ExtendedRealNumbers) (L : LimitSupInf E) : Prop :=
  E.le L.liminf L.limsup ∧
  (L.limsup = E.top ∨ L.limsup = E.bot) ∧
  (L.liminf = E.top ∨ L.liminf = E.bot)

theorem limit_sup_inf_closed (E : ExtendedRealNumbers) (L : LimitSupInf E) :
    LimitSupInfClosed E L := by
  exact And.intro L.limsup_ge_liminf (And.intro L.limsup_infinite_exists L.liminf_infinite_exists)

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse