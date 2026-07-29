import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

structure InfiniteDerivativePackage where
  limitPackage : InfiniteLimitPackage
  differenceQuotient : limitPackage.domain → limitPackage.codomain
  derivativeInfinite : Prop
  derivativeDefinition : Prop

def InfiniteDerivativeClosed (D : InfiniteDerivativePackage) : Prop :=
  InfiniteLimitClosed D.limitPackage ∧ D.derivativeInfinite ∧ D.derivativeDefinition

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse