import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

structure ExtendedRealInequalitiesPackage where
  measurePackage : ExtendedRealMeasurePackage
  holderInequalityHolds : Prop
  minkowskiInequalityHolds : Prop
  chebyshevInequalityHolds : Prop
  holderInequalityHoldsTerm : holderInequalityHolds
  minkowskiInequalityHoldsTerm : minkowskiInequalityHolds
  chebyshevInequalityHoldsTerm : chebyshevInequalityHolds

structure ExtendedRealInequalitiesEvidence (I : ExtendedRealInequalitiesPackage) where
  holderInequalityHoldsClosed : I.holderInequalityHolds
  minkowskiInequalityHoldsClosed : I.minkowskiInequalityHolds
  chebyshevInequalityHoldsClosed : I.chebyshevInequalityHolds

def ExtendedRealInequalitiesClosed (I : ExtendedRealInequalitiesPackage) : Prop :=
  I.holderInequalityHolds ∧ I.minkowskiInequalityHolds ∧ I.chebyshevInequalityHolds

theorem extended_real_inequalities_closed_from_evidence
    (I : ExtendedRealInequalitiesPackage) (E : ExtendedRealInequalitiesEvidence I) :
    ExtendedRealInequalitiesClosed I := by
  exact And.intro E.holderInequalityHoldsClosed
    (And.intro E.minkowskiInequalityHoldsClosed E.chebyshevInequalityHoldsClosed)

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse