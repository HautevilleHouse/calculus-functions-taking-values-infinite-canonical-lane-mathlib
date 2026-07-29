import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

structure ExtendedRealLine where
  carrier : Type
  le : carrier → carrier → Prop
  top : carrier
  bot : carrier
  le_refl : ∀ x : carrier, le x x
  le_trans : ∀ x y z : carrier, le x y → le y z → le x z
  le_antisymm : ∀ x y : carrier, le x y → le y x → x = y
  top_greatest : ∀ x : carrier, le x top
  bot_least : ∀ x : carrier, le bot x
  top_ne_bot : top ≠ bot

structure ExtendedRealArithmetic (R : ExtendedRealLine) where
  add : R.carrier → R.carrier → R.carrier
  mul : R.carrier → R.carrier → R.carrier
  add_comm : ∀ x y : R.carrier, add x y = add y x
  add_assoc : ∀ x y z : R.carrier, add (add x y) z = add x (add y z)
  add_zero : ∀ x : R.carrier, add x (R.bot) = x
  zero_add : ∀ x : R.carrier, add (R.bot) x = x
  mul_comm : ∀ x y : R.carrier, mul x y = mul y x
  mul_assoc : ∀ x y z : R.carrier, mul (mul x y) z = mul x (mul y z)
  mul_one : ∀ x : R.carrier, mul x (R.top) = x
  one_mul : ∀ x : R.carrier, mul (R.top) x = x
  distrib : ∀ x y z : R.carrier, mul x (add y z) = add (mul x y) (mul x z)

structure ExtendedRealEvidence (R : ExtendedRealLine) (A : ExtendedRealArithmetic R) where
  le_refl_closed : R.le_refl
  le_trans_closed : R.le_trans
  le_antisymm_closed : R.le_antisymm
  top_greatest_closed : R.top_greatest
  bot_least_closed : R.bot_least
  top_ne_bot_closed : R.top_ne_bot
  add_comm_closed : A.add_comm
  add_assoc_closed : A.add_assoc
  add_zero_closed : A.add_zero
  zero_add_closed : A.zero_add
  mul_comm_closed : A.mul_comm
  mul_assoc_closed : A.mul_assoc
  mul_one_closed : A.mul_one
  one_mul_closed : A.one_mul
  distrib_closed : A.distrib

def ExtendedRealClosed (R : ExtendedRealLine) (A : ExtendedRealArithmetic R) : Prop :=
  (∀ x y z : R.carrier, R.le x y → R.le y z → R.le x z) ∧
  (∀ x y : R.carrier, R.le x y → R.le y x → x = y) ∧
  (∀ x : R.carrier, R.le x R.top) ∧
  (∀ x : R.carrier, R.le R.bot x) ∧
  (R.top ≠ R.bot) ∧
  (∀ x y : R.carrier, A.add x y = A.add y x) ∧
  (∀ x y z : R.carrier, A.add (A.add x y) z = A.add x (A.add y z)) ∧
  (∀ x : R.carrier, A.add x R.bot = x) ∧
  (∀ x : R.carrier, A.add R.bot x = x) ∧
  (∀ x y : R.carrier, A.mul x y = A.mul y x) ∧
  (∀ x y z : R.carrier, A.mul (A.mul x y) z = A.mul x (A.mul y z)) ∧
  (∀ x : R.carrier, A.mul x R.top = x) ∧
  (∀ x : R.carrier, A.mul R.top x = x) ∧
  (∀ x y z : R.carrier, A.mul x (A.add y z) = A.add (A.mul x y) (A.mul x z))

theorem extended_real_closed_from_evidence (R : ExtendedRealLine) (A : ExtendedRealArithmetic R) (E : ExtendedRealEvidence R A) : ExtendedRealClosed R A := by
  exact And.intro E.le_trans_closed (And.intro E.le_antisymm_closed (And.intro E.top_greatest_closed (And.intro E.bot_least_closed (And.intro E.top_ne_bot_closed (And.intro E.add_comm_closed (And.intro E.add_assoc_closed (And.intro E.add_zero_closed (And.intro E.zero_add_closed (And.intro E.mul_comm_closed (And.intro E.mul_assoc_closed (And.intro E.mul_one_closed (And.intro E.one_mul_closed E.distrib_closed))))))))))))

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse