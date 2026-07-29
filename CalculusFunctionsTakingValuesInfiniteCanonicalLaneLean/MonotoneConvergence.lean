import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean.InfiniteLimit

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

theorem monotone_convergence (f : ℕ → ℝ → ExtendedReal) (x : ℝ) :
  (∀ n, f n x ≤ f (n+1) x) →
  (∃ L : ExtendedReal, Filter.Tendsto (λ n : ℕ => f n x) Filter.atTop (𝓝 L)) := by
  intro h
  apply exists_monotone_limit h

theorem monotone_convergence_integral (f : ℕ → ℝ → ExtendedReal) :
  (∀ n x, f n x ≤ f (n+1) x) →
  (∫ x, limsup (λ n => f n x) dx) = limsup (λ n => ∫ x, f n x dx) := by
  intro h
  sorry

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse