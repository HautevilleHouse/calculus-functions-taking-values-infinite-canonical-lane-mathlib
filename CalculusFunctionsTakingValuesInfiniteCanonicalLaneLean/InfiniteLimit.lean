import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean.ExtendedRealLine

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

def limitAtInfinity (f : ℝ → ExtendedReal) : Prop :=
  ∃ (L : ExtendedReal), Filter.Tendsto f Filter.atTop (𝓝 L)

theorem limit_unique (f : ℝ → ExtendedReal) (L1 L2 : ExtendedReal) :
  Filter.Tendsto f Filter.atTop (𝓝 L1) → Filter.Tendsto f Filter.atTop (𝓝 L2) → L1 = L2 := by
  intro h1 h2
  exact tendsto_nhds_unique h1 h2

theorem limit_add (f g : ℝ → ExtendedReal) (Lf Lg : ExtendedReal) :
  Filter.Tendsto f Filter.atTop (𝓝 Lf) → Filter.Tendsto g Filter.atTop (𝓝 Lg) → 
  Filter.Tendsto (λ x => f x + g x) Filter.atTop (𝓝 (Lf + Lg)) := by
  sorry

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse