import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean.ExtendedRealNumbers

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

structure ExtendedRealArithmetic (E : ExtendedRealNumbers) where
  add : E.carrier → E.carrier → E.carrier
  mul : E.carrier → E.carrier → E.carrier
  add_comm : ∀ x y : E.carrier, add x y = add y x
  add_assoc : ∀ x y z : E.carrier, add (add x y) z = add x (add y z)
  add_top_left : ∀ x : E.carrier, add E.top x = E.top
  add_bot_left : ∀ x : E.carrier, add E.bot x = E.bot
  mul_comm : ∀ x y : E.carrier, mul x y = mul y x
  mul_assoc : ∀ x y z : E.carrier, mul (mul x y) z = mul x (mul y z)
  mul_top_nonzero : ∀ x : E.carrier, x ≠ E.bot → mul x E.top = E.top
  mul_zero : ∀ x : E.carrier, mul x E.bot = E.bot

def ExtendedRealArithmeticClosed (E : ExtendedRealNumbers) (A : ExtendedRealArithmetic E) : Prop :=
  (∀ x : E.carrier, A.add E.top x = E.top) ∧
  (∀ x : E.carrier, A.add E.bot x = E.bot) ∧
  (∀ x : E.carrier, x ≠ E.bot → A.mul x E.top = E.top) ∧
  (∀ x : E.carrier, A.mul x E.bot = E.bot)

theorem extended_real_arithmetic_closed (E : ExtendedRealNumbers) (A : ExtendedRealArithmetic E) :
    ExtendedRealArithmeticClosed E A := by
  exact And.intro A.add_top_left (And.intro A.add_bot_left (And.intro A.mul_top_nonzero A.mul_zero))

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse