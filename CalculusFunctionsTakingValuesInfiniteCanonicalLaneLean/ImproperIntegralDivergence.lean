import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

structure ImproperIntegralDivergencePackage where
  interval : Type u
  integrableFunction : Type v
  integralOverFiniteDiverges : Prop
  comparisonTestPassed : Prop
  integralDecomposition : Prop

structure ImproperIntegralDivergenceEvidence
    (I : ImproperIntegralDivergencePackage) where
  integralOverFiniteDivergesClosed : I.integralOverFiniteDiverges
  comparisonTestPassedClosed : I.comparisonTestPassed
  integralDecompositionClosed : I.integralDecomposition

def ImproperIntegralDivergenceClosed
    (I : ImproperIntegralDivergencePackage) : Prop :=
  I.integralOverFiniteDiverges ∧ I.comparisonTestPassed ∧ I.integralDecomposition

theorem improper_integral_divergence_closed_from_evidence
    (I : ImproperIntegralDivergencePackage)
    (E : ImproperIntegralDivergenceEvidence I) : ImproperIntegralDivergenceClosed I := by
  exact And.intro E.integralOverFiniteDivergesClosed
    (And.intro E.comparisonTestPassedClosed E.integralDecompositionClosed)

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse