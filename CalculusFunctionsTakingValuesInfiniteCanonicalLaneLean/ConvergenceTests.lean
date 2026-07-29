import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

structure SeriesConvergencePackage (R : ExtendedRealLine) (A : ExtendedRealArithmetic R) where
  termSequence : ℕ → R.carrier
  partialSums : ℕ → R.carrier
  sumDefined : R.carrier
  convergenceProperty : Prop
  convergencePropertyTerm : convergenceProperty

structure SeriesConvergenceEvidence {R : ExtendedRealLine} {A : ExtendedRealArithmetic R} (S : SeriesConvergencePackage R A) where
  convergencePropertyClosed : S.convergenceProperty

def SeriesConvergenceClosed {R : ExtendedRealLine} {A : ExtendedRealArithmetic R} (S : SeriesConvergencePackage R A) : Prop :=
  S.convergenceProperty

theorem series_convergence_closed_from_evidence {R : ExtendedRealLine} {A : ExtendedRealArithmetic R} (S : SeriesConvergencePackage R A) (E : SeriesConvergenceEvidence S) : SeriesConvergenceClosed S := by
  exact E.convergencePropertyClosed

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse