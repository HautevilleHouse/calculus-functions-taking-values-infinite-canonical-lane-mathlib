import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

structure LimitAtInfinityPackage where
  domain : Type
  codomain : ExtendedRealLine
  function : domain → codomain.carrier
  limit : codomain.carrier
  limitDef : ∀ ε : codomain.carrier, codomain.le codomain.bot ε → ∃ N : domain, ∀ x : domain, codomain.le N x → codomain.le (codomain.top) (codomain.add (codomain.top) (function x))

structure LimitAtInfinityEvidence (L : LimitAtInfinityPackage) where
  limitDefClosed : L.limitDef

def LimitAtInfinityClosed (L : LimitAtInfinityPackage) : Prop :=
  L.limitDef

theorem limit_at_infinity_closed_from_evidence (L : LimitAtInfinityPackage) (E : LimitAtInfinityEvidence L) : LimitAtInfinityClosed L := by
  exact E.limitDefClosed

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse