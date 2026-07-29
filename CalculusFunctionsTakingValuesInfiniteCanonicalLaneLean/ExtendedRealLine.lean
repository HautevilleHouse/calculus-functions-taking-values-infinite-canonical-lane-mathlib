import Mathlib.Data.Real.Basic
import Mathlib.Topology.Order

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

inductive ExtendedReal where
  | real (r : ℝ)
  | posInf
  | negInf

instance : TopologicalSpace ExtendedReal := by
  refine TopologicalSpace.induced (fun x : ExtendedReal => match x with
    | ExtendedReal.real r => some r
    | ExtendedReal.posInf => none
    | ExtendedReal.negInf => none) ?_
  sorry

theorem extendedRealLimits : Prop :=
  ∀ (f : ℝ → ExtendedReal), (∃ L : ExtendedReal, Filter.Tendsto f Filter.atTop (𝓝 L)) ∨ (∀ L, ¬ Filter.Tendsto f Filter.atTop (𝓝 L))

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse