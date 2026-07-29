import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

open scoped Real

/-- Extended real numbers: ℝ ∪ { -∞, +∞ }. -/
inductive ExtendedReal : Type where
  | negInf : ExtendedReal
  | real : ℝ → ExtendedReal
  | posInf : ExtendedReal
deriving Repr, DecidableEq

namespace ExtendedReal

protected def le : ExtendedReal → ExtendedReal → Prop
  | negInf, _ => True
  | real a, negInf => False
  | real a, real b => a ≤ b
  | real _, posInf => True
  | posInf, negInf => False
  | posInf, real _ => False
  | posInf, posInf => True

instance : LE ExtendedReal := ⟨ExtendedReal.le⟩

protected def add : ExtendedReal → ExtendedReal → ExtendedReal
  | negInf, negInf => negInf
  | negInf, _ => negInf
  | _, negInf => negInf
  | real a, real b => real (a + b)
  | posInf, _ => posInf
  | _, posInf => posInf

instance : Add ExtendedReal := ⟨ExtendedReal.add⟩

end ExtendedReal

/-- Package for functions taking values in extended reals, possibly infinite. -/
structure ExtendedRealValuedFunctionPackage where
  domain : Type u
  measureSpace : Prop
  functionClass : Type v
  pointwiseFinite : Prop
  integrable : Prop
  essentialSupremum : ExtendedReal

/-- Evidence that the package is closed under admissible operations. -/
structure ExtendedRealValuedFunctionEvidence (P : ExtendedRealValuedFunctionPackage) where
  pointwiseFiniteClosed : P.pointwiseFinite
  integrableClosed : P.integrable
  essentialSupremumClosed : P.essentialSupremum = ExtendedReal.posInf ∨ P.essentialSupremum = ExtendedReal.negInf

def ExtendedRealValuedFunctionClosed (P : ExtendedRealValuedFunctionPackage) : Prop :=
  P.pointwiseFinite ∧ P.integrable ∧ (P.essentialSupremum = ExtendedReal.posInf ∨ P.essentialSupremum = ExtendedReal.negInf)

theorem extended_real_valued_function_closed_from_evidence
    (P : ExtendedRealValuedFunctionPackage) (E : ExtendedRealValuedFunctionEvidence P) :
    ExtendedRealValuedFunctionClosed P := by
  exact And.intro E.pointwiseFiniteClosed (And.intro E.integrableClosed E.essentialSupremumClosed)

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse