import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean

structure CalculusAdmittedObject where
  functionFamily : Type u
  infiniteLimitBehavior : Prop
  conclusion : infiniteLimitBehavior

def calculusWitnessClosed (O : CalculusAdmittedObject) : Prop :=
  O.infiniteLimitBehavior

end CalculusFunctionsTakingValuesInfiniteCanonicalLaneLean
end HautevilleHouse
