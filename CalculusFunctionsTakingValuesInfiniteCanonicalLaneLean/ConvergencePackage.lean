import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean.IntegrationPackage

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

structure ConvergenceOfFunctions (X : Type u) [TopologicalSpace X] (f_n : ℕ → X → ExtendedReal) (f : X → ExtendedReal) where
  pointwiseLimit : ∀ x : X, LimitOfFunction ℕ (fun n => f_n n x) (by exact 0)
  uniformLimit : Prop
  almostEverywhereConvergence : Prop
  convergenceInMeasure : Prop
  pointwiseLimitTerm : pointwiseLimit
  uniformLimitTerm : uniformLimit
  almostEverywhereConvergenceTerm : almostEverywhereConvergence
  convergenceInMeasureTerm : convergenceInMeasure

def ConvergenceClosed (C : ConvergenceOfFunctions X f_n f) : Prop :=
  C.uniformLimit ∧ C.almostEverywhereConvergence ∧ C.convergenceInMeasure

theorem convergence_closed_from_evidence (C : ConvergenceOfFunctions X f_n f) : ConvergenceClosed C := by
  exact And.intro C.uniformLimitTerm (And.intro C.almostEverywhereConvergenceTerm C.convergenceInMeasureTerm)

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse