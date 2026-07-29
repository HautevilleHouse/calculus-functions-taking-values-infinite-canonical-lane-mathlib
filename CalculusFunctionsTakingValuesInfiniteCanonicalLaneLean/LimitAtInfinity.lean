import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean.ExtendedRealStructure

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

/-! Limits of functions at infinity in the extended real sense. -/

structure LimitAtInfinityPackage {P : ExtendedRealPackage} where
  domain : Type u
  f : domain → P.carrier
  limit : P.carrier
  filter : Filter domain
  limit_condition : ∀ U : Set P.carrier, IsOpen U → U.Contains limit →
    f ⁻¹' U ∈ filter

structure LimitAtInfinityEvidence {P : ExtendedRealPackage}
    (L : LimitAtInfinityPackage P) where
  limit_condition_closed : L.limit_condition

def LimitAtInfinityClosed {P : ExtendedRealPackage}
    (L : LimitAtInfinityPackage P) : Prop :=
  L.limit_condition

theorem limit_at_infinity_closed_from_evidence
    {P : ExtendedRealPackage} (L : LimitAtInfinityPackage P)
    (E : LimitAtInfinityEvidence L) : LimitAtInfinityClosed L := by
  exact E.limit_condition_closed

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse