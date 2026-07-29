import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean.ExtendedRealPackage

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

structure ExtendedRealFunction (X : Type u) where
  domain : Set X
  f : X → ExtendedReal
  finiteAlmostEverywhere : Prop
  measurable : Prop

structure AlmostEverywhereFinite (f : ExtendedRealFunction X) where
  finiteSet : Set X
  measureZero : MeasureTheory.measure (domain \ finiteSet) = 0
  finiteOnFiniteSet : ∀ x ∈ finiteSet, f.f x ≠ ∞ ∧ f.f x ≠ -∞

theorem almost_everywhere_finite_implies_integrability (f : ExtendedRealFunction X) (h : AlmostEverywhereFinite f) : Prop := sorry

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse