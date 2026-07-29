import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

structure ExtendedRealPackage where
  extendedReals : Type u
  topology : TopologicalSpace extendedReals
  order : PartialOrder extendedReals
  plusInfinity : extendedReals
  minusInfinity : extendedReals
  infinityDistinct : plusInfinity ≠ minusInfinity
  sequentialCompact : Prop

structure ExtendedRealEvidence (E : ExtendedRealPackage) where
  infinityDistinctClosed : E.infinityDistinct
  sequentialCompactClosed : E.sequentialCompact

def ExtendedRealClosed (E : ExtendedRealPackage) : Prop :=
  E.infinityDistinct ∧ E.sequentialCompact

theorem extended_real_closed_from_evidence (E : ExtendedRealPackage) (Ev : ExtendedRealEvidence E) : ExtendedRealClosed E := by
  exact And.intro Ev.infinityDistinctClosed Ev.sequentialCompactClosed

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse