import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

structure LimitBehaviorPackage where
  domain : Type u
  codomain : Type v
  function : domain → codomain
  limitPoint : Type u
  limitValue : codomain
  divergesToInfinity : Prop
  finiteLimitNotAchieved : Prop
  divergenceStructure : Prop

structure LimitBehaviorEvidence (L : LimitBehaviorPackage) where
  divergesToInfinityClosed : L.divergesToInfinity
  finiteLimitNotAchievedClosed : L.finiteLimitNotAchieved
  divergenceStructureClosed : L.divergenceStructure

def LimitBehaviorClosed (L : LimitBehaviorPackage) : Prop :=
  L.divergesToInfinity ∧ L.finiteLimitNotAchieved ∧ L.divergenceStructure

theorem limit_behavior_closed_from_evidence (L : LimitBehaviorPackage)
    (E : LimitBehaviorEvidence L) : LimitBehaviorClosed L := by
  exact And.intro E.divergesToInfinityClosed
    (And.intro E.finiteLimitNotAchievedClosed E.divergenceStructureClosed)

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse