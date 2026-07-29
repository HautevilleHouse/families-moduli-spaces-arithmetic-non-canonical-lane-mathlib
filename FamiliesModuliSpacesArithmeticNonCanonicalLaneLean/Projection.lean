import HautevilleHouse.FamiliesModuliSpacesArithmeticNonCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.FamiliesModuliSpacesArithmeticNonCanonicalLaneLean.FamiliesModuliSpacesArithmeticNonAdmittedObject

namespace HautevilleHouse
namespace FamiliesModuliSpacesArithmeticNonCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def familiesModuliSpacesArithmeticNonProjection : Projection FamiliesModuliSpacesArithmeticNonEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem families_moduli_spaces_arithmetic_non_projection_idempotent (x : FamiliesModuliSpacesArithmeticNonEndgameState) :
    familiesModuliSpacesArithmeticNonProjection.toFun (familiesModuliSpacesArithmeticNonProjection.toFun x) = familiesModuliSpacesArithmeticNonProjection.toFun x := by
  exact familiesModuliSpacesArithmeticNonProjection.idempotent x

end FamiliesModuliSpacesArithmeticNonCanonicalLaneLean
end HautevilleHouse