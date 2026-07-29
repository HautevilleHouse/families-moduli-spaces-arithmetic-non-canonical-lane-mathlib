import HautevilleHouse.FamiliesModuliSpacesArithmeticNonCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace FamiliesModuliSpacesArithmeticNonCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end FamiliesModuliSpacesArithmeticNonCanonicalLaneLean
end HautevilleHouse