import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

structure ExtendedReal where
  value : Option ℝ
  infinity : Bool
  negativeInfinity : Bool

def ExtendedRealOrder (x y : ExtendedReal) : Prop := sorry

structure ExtendedRealArithmetic where
  addition : ExtendedReal → ExtendedReal → ExtendedReal
  multiplication : ExtendedReal → ExtendedReal → ExtendedReal
  additionAssociative : Prop
  additionCommutative : Prop
  multiplicationAssociative : Prop
  multiplicationCommutative : Prop
  distributive : Prop
  additionAssociativeTerm : additionAssociative
  additionCommutativeTerm : additionCommutative
  multiplicationAssociativeTerm : multiplicationAssociative
  multiplicationCommutativeTerm : multiplicationCommutative
  distributiveTerm : distributive

structure ExtendedRealArithmeticEvidence (E : ExtendedRealArithmetic) where
  additionAssociativeClosed : E.additionAssociative
  additionCommutativeClosed : E.additionCommutative
  multiplicationAssociativeClosed : E.multiplicationAssociative
  multiplicationCommutativeClosed : E.multiplicationCommutative
  distributiveClosed : E.distributive

def ExtendedRealArithmeticClosed (E : ExtendedRealArithmetic) : Prop :=
  E.additionAssociative ∧ E.additionCommutative ∧
  E.multiplicationAssociative ∧ E.multiplicationCommutative ∧
  E.distributive

theorem extended_real_arithmetic_closed_from_evidence
    (E : ExtendedRealArithmetic) (Ev : ExtendedRealArithmeticEvidence E) :
    ExtendedRealArithmeticClosed E := by
  exact And.intro Ev.additionAssociativeClosed
    (And.intro Ev.additionCommutativeClosed
      (And.intro Ev.multiplicationAssociativeClosed
        (And.intro Ev.multiplicationCommutativeClosed
          Ev.distributiveClosed)))

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse