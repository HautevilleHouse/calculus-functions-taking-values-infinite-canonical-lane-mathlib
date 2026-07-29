import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean.ExtendedRealNumbers
import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean.ExtendedRealArithmetic
import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean.LimitsSupInf
import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean.ConvergenceWithInfinite

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

structure CalculusInfiniteAdmittedObject where
  extendedReals : ExtendedRealNumbers
  arithmetic : ExtendedRealArithmetic extendedReals
  limitSupInf : LimitSupInf extendedReals
  convergence : ConvergenceWithInfinite extendedReals
  conclusion : LimitSupInfClosed extendedReals limitSupInf

structure AdmissibleClass where
  object : CalculusInfiniteAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse