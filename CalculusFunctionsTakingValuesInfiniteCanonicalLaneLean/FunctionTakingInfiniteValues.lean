import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

open ExtendedReal

structure FunctionTakingInfiniteValues (α : Type u) where
  toFun : α → ExtendedReal
  isMeasurable : Prop  -- placeholder for measurability condition
  isConvex : Prop     -- placeholder for convexity condition

structure AdmittedFunction (α : Type u) where
  func : FunctionTakingInfiniteValues α
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse