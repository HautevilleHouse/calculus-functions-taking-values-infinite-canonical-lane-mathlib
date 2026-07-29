import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean.ExtendedRealDomain

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

structure LimitInfinityPackage (E : ExtendedRealPackage) where
  limit : (ℕ → E.extendedReals) → E.extendedReals
  limitInfiniteDefined : Prop
  limitUnique : Prop
  limitInfiniteDefinedClosed : limitInfiniteDefined
  limitUniqueClosed : limitUnique

structure LimitInfinityEvidence {E : ExtendedRealPackage} (L : LimitInfinityPackage E) where
  limitInfiniteDefinedClosed : L.limitInfiniteDefinedClosed
  limitUniqueClosed : L.limitUniqueClosed

def LimitInfinityClosed {E : ExtendedRealPackage} (L : LimitInfinityPackage E) : Prop :=
  L.limitInfiniteDefined ∧ L.limitUnique

theorem limit_infinity_closed_from_evidence
    {E : ExtendedRealPackage} (L : LimitInfinityPackage E) (Ev : LimitInfinityEvidence L) :
    LimitInfinityClosed L := by
  exact And.intro Ev.limitInfiniteDefinedClosed Ev.limitUniqueClosed

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse