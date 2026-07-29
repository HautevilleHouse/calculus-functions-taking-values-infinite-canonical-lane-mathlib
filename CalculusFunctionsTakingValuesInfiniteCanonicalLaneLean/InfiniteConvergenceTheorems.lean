import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

structure InfiniteConvergenceTheoremsPackage where
  inequalitiesPackage : ExtendedRealInequalitiesPackage
  dominatedConvergenceHolds : Prop
  monotoneConvergenceExtendedHolds : Prop
  fatouExtendedHolds : Prop
  dominatedConvergenceHoldsTerm : dominatedConvergenceHolds
  monotoneConvergenceExtendedHoldsTerm : monotoneConvergenceExtendedHolds
  fatouExtendedHoldsTerm : fatouExtendedHolds

structure InfiniteConvergenceTheoremsEvidence (C : InfiniteConvergenceTheoremsPackage) where
  dominatedConvergenceHoldsClosed : C.dominatedConvergenceHolds
  monotoneConvergenceExtendedHoldsClosed : C.monotoneConvergenceExtendedHolds
  fatouExtendedHoldsClosed : C.fatouExtendedHolds

def InfiniteConvergenceTheoremsClosed (C : InfiniteConvergenceTheoremsPackage) : Prop :=
  C.dominatedConvergenceHolds ∧ C.monotoneConvergenceExtendedHolds ∧ C.fatouExtendedHolds

theorem infinite_convergence_theorems_closed_from_evidence
    (C : InfiniteConvergenceTheoremsPackage) (E : InfiniteConvergenceTheoremsEvidence C) :
    InfiniteConvergenceTheoremsClosed C := by
  exact And.intro E.dominatedConvergenceHoldsClosed
    (And.intro E.monotoneConvergenceExtendedHoldsClosed E.fatouExtendedHoldsClosed)

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse