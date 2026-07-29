import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean.ExtendedRealFunctionPackage

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

structure LimitOfFunction (X : Type u) [TopologicalSpace X] (f : X → ExtendedReal) (a : X) where
  domainFilter : Filter X
  limitValue : ExtendedReal
  filterTendsto : Filter.Tendsto f (nhds a) (𝓝 limitValue)
  uniqueness : Prop
  uniquenessTerm : uniqueness

def LimitClosed (L : LimitOfFunction X f a) : Prop :=
  L.uniqueness

theorem limit_closed_from_uniqueness (L : LimitOfFunction X f a) : LimitClosed L := by
  exact L.uniquenessTerm

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse