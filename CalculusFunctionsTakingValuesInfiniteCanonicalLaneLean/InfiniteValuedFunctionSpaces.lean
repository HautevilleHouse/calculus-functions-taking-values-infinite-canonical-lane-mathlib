import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

structure InfiniteValuedFunctionSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  extendedRealValued : Prop
  measurableStructure : Prop
  infiniteValueAllowed : Prop
  extendedRealValuedTerm : extendedRealValued
  measurableStructureTerm : measurableStructure

structure InfiniteValuedFunctionSpaceEvidence (S : InfiniteValuedFunctionSpace) where
  extendedRealValuedClosed : S.extendedRealValued
  measurableStructureClosed : S.measurableStructure

def InfiniteValuedFunctionSpaceClosed (S : InfiniteValuedFunctionSpace) : Prop :=
  S.extendedRealValued ∧ S.measurableStructure

theorem infinite_valued_function_space_closed_from_evidence
    (S : InfiniteValuedFunctionSpace) (E : InfiniteValuedFunctionSpaceEvidence S) :
    InfiniteValuedFunctionSpaceClosed S := by
  exact And.intro E.extendedRealValuedClosed E.measurableStructureClosed

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse