import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

/-- Extended real numbers with two infinities. -/
inductive ExtendedReal : Type where
  | real (r : ℝ)
  | posInfinity
  | negInfinity

namespace ExtendedReal

/-- Addition on extended reals, with standard convention. -/
def add (x y : ExtendedReal) : ExtendedReal :=
  match x, y with
  | posInfinity, negInfinity => posInfinity
  | negInfinity, posInfinity => posInfinity
  | posInfinity, _ => posInfinity
  | _, posInfinity => posInfinity
  | negInfinity, _ => negInfinity
  | _, negInfinity => negInfinity
  | real a, real b => real (a + b)

/-- Order on extended reals. -/
def le (x y : ExtendedReal) : Prop :=
  match x, y with
  | negInfinity, _ => True
  | _, posInfinity => True
  | real a, real b => a ≤ b
  | _, _ => False

end ExtendedReal

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse