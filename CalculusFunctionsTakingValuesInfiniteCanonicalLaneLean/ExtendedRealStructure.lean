import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

/-! The extended real line with positive and negative infinity. -/

structure ExtendedRealPackage where
  carrier : Type u
  le : carrier → carrier → Prop
  top : carrier
  bot : carrier
  le_refl : ∀ x : carrier, le x x
  le_trans : ∀ x y z : carrier, le x y → le y z → le x z
  le_antisymm : ∀ x y : carrier, le x y → le y x → x = y
  top_greatest : ∀ x : carrier, le x top
  bot_least : ∀ x : carrier, le bot x
  top_ne_bot : top ≠ bot

structure ExtendedRealEvidence (P : ExtendedRealPackage) where
  le_refl_closed : P.le_refl
  le_trans_closed : P.le_trans
  le_antisymm_closed : P.le_antisymm
  top_greatest_closed : P.top_greatest
  bot_least_closed : P.bot_least
  top_ne_bot_closed : P.top_ne_bot

def ExtendedRealClosed (P : ExtendedRealPackage) : Prop :=
  P.le_refl ∧ P.le_trans ∧ P.le_antisymm ∧
  P.top_greatest ∧ P.bot_least ∧ P.top_ne_bot

theorem extended_real_closed_from_evidence (P : ExtendedRealPackage)
    (E : ExtendedRealEvidence P) : ExtendedRealClosed P := by
  exact And.intro E.le_refl_closed (And.intro E.le_trans_closed
    (And.intro E.le_antisymm_closed (And.intro E.top_greatest_closed
      (And.intro E.bot_least_closed E.top_ne_bot_closed))))

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse