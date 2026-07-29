import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean.ExtendedRealDomain
import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean.ExtendedRealFunction

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

structure IntegrationExtendedPackage (E : ExtendedRealPackage) (F : ExtendedRealFunctionPackage E) where
  integral : (∀ x, F.function x) → E.extendedReals
  integralLinear : Prop
  integralMonotone : Prop
  integralConvergence : Prop
  integralLinearClosed : integralLinear
  integralMonotoneClosed : integralMonotone
  integralConvergenceClosed : integralConvergence

structure IntegrationExtendedEvidence {E : ExtendedRealPackage} {F : ExtendedRealFunctionPackage E}
    (I : IntegrationExtendedPackage E F) where
  integralLinearClosed : I.integralLinearClosed
  integralMonotoneClosed : I.integralMonotoneClosed
  integralConvergenceClosed : I.integralConvergenceClosed

def IntegrationExtendedClosed {E : ExtendedRealPackage} {F : ExtendedRealFunctionPackage E}
    (I : IntegrationExtendedPackage E F) : Prop :=
  I.integralLinear ∧ I.integralMonotone ∧ I.integralConvergence

theorem integration_extended_closed_from_evidence
    {E : ExtendedRealPackage} {F : ExtendedRealFunctionPackage E}
    (I : IntegrationExtendedPackage E F) (Ev : IntegrationExtendedEvidence I) :
    IntegrationExtendedClosed I := by
  exact And.intro Ev.integralLinearClosed
    (And.intro Ev.integralMonotoneClosed Ev.integralConvergenceClosed)

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse