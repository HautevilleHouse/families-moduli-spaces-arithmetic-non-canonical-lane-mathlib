import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FamiliesModuliSpacesArithmeticNonCanonicalLaneLean

structure AdmissibleClass where
  object : FamiliesModuliSpacesArithmeticNonAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FamiliesModuliSpacesArithmeticNonWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FamiliesModuliSpacesArithmeticNonCanonicalLaneLean
end HautevilleHouse