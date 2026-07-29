import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean.ExtendedRealDomain

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

structure ExtendedRealFunctionPackage (E : ExtendedRealPackage) where
  domain : Type u
  function : domain → E.extendedReals
  measurable : Prop
  integrable : Prop
  measurableClosed : measurable
  integrableClosed : integrable

structure ExtendedRealFunctionEvidence {E : ExtendedRealPackage} (F : ExtendedRealFunctionPackage E) where
  measurableClosed : F.measurableClosed
  integrableClosed : F.integrableClosed

def ExtendedRealFunctionClosed {E : ExtendedRealPackage} (F : ExtendedRealFunctionPackage E) : Prop :=
  F.measurable ∧ F.integrable

theorem extended_real_function_closed_from_evidence
    {E : ExtendedRealPackage} (F : ExtendedRealFunctionPackage E) (Ev : ExtendedRealFunctionEvidence F) :
    ExtendedRealFunctionClosed F := by
  exact And.intro Ev.measurableClosed Ev.integrableClosed

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse