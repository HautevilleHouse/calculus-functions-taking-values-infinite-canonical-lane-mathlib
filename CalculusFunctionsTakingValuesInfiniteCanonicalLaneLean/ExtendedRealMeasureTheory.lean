import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

structure ExtendedRealMeasurePackage where
  integrationPackage : ExtendedRealIntegrationPackage
  measureSpace : Type u
  measureDefined : Prop
  nullSetHandling : Prop
  infiniteMeasureHandling : Prop
  measureDefinedTerm : measureDefined
  nullSetHandlingTerm : nullSetHandling
  infiniteMeasureHandlingTerm : infiniteMeasureHandling

structure ExtendedRealMeasureEvidence (M : ExtendedRealMeasurePackage) where
  measureDefinedClosed : M.measureDefined
  nullSetHandlingClosed : M.nullSetHandling
  infiniteMeasureHandlingClosed : M.infiniteMeasureHandling

def ExtendedRealMeasureClosed (M : ExtendedRealMeasurePackage) : Prop :=
  M.measureDefined ∧ M.nullSetHandling ∧ M.infiniteMeasureHandling

theorem extended_real_measure_closed_from_evidence
    (M : ExtendedRealMeasurePackage) (E : ExtendedRealMeasureEvidence M) :
    ExtendedRealMeasureClosed M := by
  exact And.intro E.measureDefinedClosed
    (And.intro E.nullSetHandlingClosed E.infiniteMeasureHandlingClosed)

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse