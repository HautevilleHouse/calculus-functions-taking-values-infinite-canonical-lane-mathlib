import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

structure IntegralPackage (R : ExtendedRealLine) (A : ExtendedRealArithmetic R) where
  integrand : ℝ → R.carrier
  domain : Set ℝ
  integral : R.carrier
  integralDef : Prop
  integralDefTerm : integralDef

structure IntegralEvidence {R : ExtendedRealLine} {A : ExtendedRealArithmetic R} (I : IntegralPackage R A) where
  integralDefClosed : I.integralDef

def IntegralClosed {R : ExtendedRealLine} {A : ExtendedRealArithmetic R} (I : IntegralPackage R A) : Prop :=
  I.integralDef

theorem integral_closed_from_evidence {R : ExtendedRealLine} {A : ExtendedRealArithmetic R} (I : IntegralPackage R A) (E : IntegralEvidence I) : IntegralClosed I := by
  exact E.integralDefClosed

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse