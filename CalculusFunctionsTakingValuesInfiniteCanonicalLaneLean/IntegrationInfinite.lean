import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean.ExtendedRealStructure
import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean.InfiniteValuedFunction

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

/-! Integration of extended real-valued functions. -/

structure IntegrationPackage {P : ExtendedRealPackage}
    (F : InfiniteValuedFunctionPackage P) where
  integral : P.carrier
  integral_defined : Prop
  integral_finite : Prop
  integral_additive : Prop

structure IntegrationEvidence {P : ExtendedRealPackage}
    {F : InfiniteValuedFunctionPackage P} (I : IntegrationPackage F) where
  integral_defined_closed : I.integral_defined
  integral_finite_closed : I.integral_finite
  integral_additive_closed : I.integral_additive

def IntegrationClosed {P : ExtendedRealPackage}
    {F : InfiniteValuedFunctionPackage P} (I : IntegrationPackage F) : Prop :=
  I.integral_defined ∧ I.integral_finite ∧ I.integral_additive

theorem integration_closed_from_evidence
    {P : ExtendedRealPackage} {F : InfiniteValuedFunctionPackage P}
    (I : IntegrationPackage F) (E : IntegrationEvidence I) : IntegrationClosed I := by
  exact And.intro E.integral_defined_closed (And.intro E.integral_finite_closed E.integral_additive_closed)

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse