import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean.ExtendedRealStructure

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

/-! Functions taking values in the extended reals. -/

structure InfiniteValuedFunctionPackage (P : ExtendedRealPackage) where
  domain : Type u
  f : domain → P.carrier
  measurable : Prop
  integrable : Prop
  finite_ae : Prop

structure InfiniteValuedFunctionEvidence {P : ExtendedRealPackage}
    (F : InfiniteValuedFunctionPackage P) where
  measurable_closed : F.measurable
  integrable_closed : F.integrable
  finite_ae_closed : F.finite_ae

def InfiniteValuedFunctionClosed {P : ExtendedRealPackage}
    (F : InfiniteValuedFunctionPackage P) : Prop :=
  F.measurable ∧ F.integrable ∧ F.finite_ae

theorem infinite_valued_function_closed_from_evidence
    {P : ExtendedRealPackage} (F : InfiniteValuedFunctionPackage P)
    (E : InfiniteValuedFunctionEvidence F) : InfiniteValuedFunctionClosed F := by
  exact And.intro E.measurable_closed (And.intro E.integrable_closed E.finite_ae_closed)

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse