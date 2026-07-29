import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

structure ExtendedRealIntegrationPackage where
  sourceSpace : InfiniteValuedFunctionSpace
  integralDefined : Prop
  lebesgueIntegralAgreement : Prop
  monotoneConvergenceHolds : Prop
  fatouLemmaHolds : Prop
  integralDefinedTerm : integralDefined
  lebesgueIntegralAgreementTerm : lebesgueIntegralAgreement
  monotoneConvergenceHoldsTerm : monotoneConvergenceHolds
  fatouLemmaHoldsTerm : fatouLemmaHolds

structure ExtendedRealIntegrationEvidence (I : ExtendedRealIntegrationPackage) where
  integralDefinedClosed : I.integralDefined
  lebesgueIntegralAgreementClosed : I.lebesgueIntegralAgreement
  monotoneConvergenceHoldsClosed : I.monotoneConvergenceHolds
  fatouLemmaHoldsClosed : I.fatouLemmaHolds

def ExtendedRealIntegrationClosed (I : ExtendedRealIntegrationPackage) : Prop :=
  I.integralDefined ∧ I.lebesgueIntegralAgreement ∧
  I.monotoneConvergenceHolds ∧ I.fatouLemmaHolds

theorem extended_real_integration_closed_from_evidence
    (I : ExtendedRealIntegrationPackage) (E : ExtendedRealIntegrationEvidence I) :
    ExtendedRealIntegrationClosed I := by
  exact And.intro E.integralDefinedClosed
    (And.intro E.lebesgueIntegralAgreementClosed
      (And.intro E.monotoneConvergenceHoldsClosed E.fatouLemmaHoldsClosed))

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse